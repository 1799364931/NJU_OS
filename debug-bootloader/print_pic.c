#include "am.h"
#include "klib.h"
#include "klib-macros.h"
#include "pic.c"
#include "amdev.h"

unsigned int pic_data[(int)1e7]; 
unsigned int res_pic_data[(int)1e7];
//处理图像数据
void handle_pic_data(){
    for(int i=0,j=0;i<image_hex_len;i+=3,j++){
        pic_data[j] = 
        (( ((int)image_hex[i])<<16) + 
        (((int)image_hex [i+1])<<8) + 
        (((int)image_hex [i+2])));
       // pic_data[j]=image_hex[i];
        //pic_data[j] &= 0x00ffffff;
        //printf("%x\n",pic_data[j]);
    }
}

//简单的拉伸算法
//根据当前图像素点的位置等比例映射到对应的位置
void pic_draw(int src_width,int src_height,int dst_width,int dst_height){
    for(int y=0;y<dst_height;y++){
        for(int x=0;x<dst_width;x++){
            int src_x = x * src_width / dst_width;
            int src_y = y * src_height / dst_height;
            res_pic_data[(y*dst_width+x)]=pic_data[(src_y*src_width+src_x)];
        }
    }
}

int main(){
    handle_pic_data();
    ioe_init();
    //开辟显存
    //int *pic = (int*) th_rgb;
    //循环配置
    printf("hello");
    //io_write(AM_GPU_CONFIG,true,true,2000,3200,2000*3200*3);
    //while(txt_len--){}
    int w=io_read(AM_GPU_CONFIG).width;
    int h=io_read(AM_GPU_CONFIG).height;
    //原图尺寸，输出尺寸
    pic_draw(640,640,w,h);
    io_write(AM_GPU_FBDRAW,0,0,res_pic_data,w,h,true);

    //监听 若输入ESC则停机
    while(true){
        int key=io_read(AM_INPUT_KEYBRD).keycode;
        if(key==AM_KEY_ESCAPE){
            halt(0);
        }
    };
   
    
   // }
    
}