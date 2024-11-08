#include <stdio.h>
#include <stdlib.h>
#include <unistd.h>
#include <assert.h>
#include <dirent.h>
#include <string.h>



struct node{
    pid_t pid;
    int parent=-1;
    int childs_num;
    char p_name[100];
    int childs[100];
};


int procs_len=0;
node* procs[501];

//连接子进程
void connetProc(pid_t p,int c){
    for(int i=0;i<procs_len;i++){
        if(procs[i]->pid==p && c!=0){
            procs[i]->childs[procs[i]->childs_num++]=c;
            procs[c]->parent=i;
        }
    }
}

//进程读取
void readProc(){
    //遍历文件目录
    DIR *dir;
    struct dirent *ent;
    if((dir = opendir("/proc"))!=NULL){
        while((ent = readdir(dir))!=NULL){
            //筛选出进程
            for(int i=0;i<strlen(ent->d_name);i++){
                if(ent->d_name[i]<'0'||ent->d_name[i]>'9'){
                    break;
                }
                if(i==strlen(ent->d_name)-1){
                    procs[procs_len]= (node*)malloc(sizeof(node));
                    procs[procs_len]->pid=atoi(ent->d_name);
                    strcpy( procs[procs_len++]->p_name,ent->d_name);
                }
            }
        }
    }else{
        printf("open fail");
        return;
    }
    for(int i=0;i<procs_len;i++){
        //获取文件位置
        char dir_str[100];
        strcpy(dir_str,"/proc/");
        strcat(dir_str,procs[i]->p_name);
        strcat(dir_str,"/status");
        FILE *fp=fopen(dir_str,"r");
        //获取进程名
        fgets(procs[i]->p_name,100,fp);
        procs[i]->p_name[strlen(procs[i]->p_name)-1]='\0';
        char str_t[100];
        strcpy(str_t,procs[i]->p_name);
        strcpy(procs[i]->p_name,str_t+6);
        //获取父节点名
        while(fgets(str_t,sizeof(str_t),fp)!=NULL){
            if(strncmp(str_t,"PPid",4)==0){
                char str_t1[100];
                strcpy(str_t1,str_t);
                strcpy(str_t,str_t1+6);
                str_t[strlen(str_t)-1]='\0';
                connetProc(atoi(str_t),i);
                break;
            }
        }
        fclose(fp);
    }

    // FILE *fp=fopen("/proc","r");
}



int down_len=0;
int down[100];
bool isfirst_down[100];
bool isend_down[100];

void add_num(){
    for(int i=0;i<procs_len;i++){
        char strt[100];
        sprintf(strt,"(%d)",procs[i]->pid);
        strcat(procs[i]->p_name,strt);
    
    }
}

void print_space(bool isfirst,int deep){
    if(isfirst)
        return;
    for(int i=0;i<down_len;i++){
        for(int j=0;j<strlen(procs[down[i]]->p_name)+1;j++){
            printf(" ");
        }
        //printf("%s",procs[down[i]]->p_name);
        if(isfirst_down[i] && deep-1>i && !isend_down[i])
            printf("│ ");
        else if(!isfirst_down[i]){
            printf("  ");
        }
    }//             
}

//

void print_proc_info(int node,bool isfirst,bool isend,int deep){
    if(node>=procs_len){
        return;
    }
    if(procs[node]->childs_num==0){
        //如果还有下一个
        print_space(isfirst,deep);
        if(isfirst&&!isend)
            printf("─┬─%s",procs[node]->p_name);
        else if(isend&&!isfirst)
            printf("└─%s",procs[node]->p_name);
        else if(!isfirst && !isend)
            printf("├─%s",procs[node]->p_name);
        else
            printf("───%s",procs[node]->p_name);
        printf("\n");
        return;
    }//──
    else{
        print_space(isfirst,deep);
        if(node == 0){
            printf("%s",procs[node]->p_name);
        }
        else if(isfirst&&!isend)
            printf("─┬─%s",procs[node]->p_name);
        else if(isend&&!isfirst)
            printf("└─%s",procs[node]->p_name);
        else if(!isfirst && !isend)
            printf("├─%s",procs[node]->p_name);
        else
            printf("───%s",procs[node]->p_name);
        down[down_len]=node;
        isfirst_down[down_len]= procs[node]->childs_num!=1;
        down_len++;
        for(int i=0;i<procs[node]->childs_num;i++){
            if(i == procs[node]->childs_num-1){
                isend_down[down_len]=false;
            }
            print_proc_info(procs[node]->childs[i],i==0,i==procs[node]->childs_num-1,deep+1);
        }
        down_len--;
    }
    return;
}

int main(int argc, char *argv[]) {
    int option;
    int opt_provide=0;
    readProc();
    while(( option = getopt(argc,argv,"pnV-:") )!=-1){
        opt_provide=1;
        switch(option){
            case 'p' :{
                add_num();
                print_proc_info(0,true,false,0);       
                break;
            }
            case '-':{
                if(strcmp(optarg,"show-pids")==0){
                    add_num();
                    print_proc_info(0,true,false,0);    
                }
                else if(strcmp(optarg,"numeric-sort")==0){
                    print_proc_info(0,true,false,0);    
                }
                else{
                    printf("?");
                }
                break;
            }
            case 'n' :{
                print_proc_info(0,true,false,0);  
                break;
            }
            case 'V':{
                printf("is V");
                break;
            }
            default:{
                return -1;
                printf("?");
            }
        }
        printf("\n");
    }
    if(!opt_provide){
        print_proc_info(0,true,false,0);       
    }
    for (int i = 0; i < argc; i++) {
        assert(argv[i]); // C 标准保证
        printf("argv[%d] = %s\n", i, argv[i]);
    }

    assert(!argv[argc]); // C 标准保证
    return 0;
}
//0 -> 0
//1 -> n+1
//2 -> (n1+1)+(n2+2)
//3 -> (n1+1)+(n2+2)+(n3+2)
