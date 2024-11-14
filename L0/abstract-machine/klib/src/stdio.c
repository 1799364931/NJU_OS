#include <am.h>
#include <klib.h>
#include <klib-macros.h>
#include <stdarg.h>


#if !defined(__ISA_NATIVE__) || defined(__NATIVE_USE_KLIB__)

int printf(const char *fmt, ...) {
  const char hex_num[]={'0','1','2','3','4','5','6','7','8','9','a','b','c','d','e','f'};
  va_list args;
  va_start(args,fmt);
  int ret_cnt=0;
  while(*fmt!='\0'){
    if(*fmt == '%'){
      fmt++;
      ret_cnt++;
      switch(*fmt){
        case 'd':{
          int arg=va_arg(args,int);
          int k=0;
          int t[20];
          while(arg){
            t[k++]=arg%10;
            arg/=10;
          }
          for(int i=k-1;i>=0;i--){
            putch((char)(t[i]+'0'));
          }
          ret_cnt+=k;
          break;
        }
        case 's':{
          char* arg=va_arg(args,char*);
          while(*arg!='\0'){
            putch(*arg);
            arg++;
          }
          break;
        }
        case 'x':{
          putch('0');
          putch('x');
          int arg=va_arg(args,int);
          char ret[20];
          int ret_len=0;
          while(arg){
            ret[ret_len++]=hex_num[arg%16];
            arg/=16;
          }
          for(int i=ret_len-1;i>=0;i--){
            putch(ret[i]);
          }
          ret_cnt+=(2+ret_len);
        }
        case 'f':{
          break;
        }
        default:{
          
        }
      }
    }
    else{
      putch(*fmt);
    }
    fmt++;
    ret_cnt++;
  }
  return ret_cnt;
}

int vsprintf(char *out, const char *fmt, va_list ap) {
  panic("Not implemented");
}

int sprintf(char *out, const char *fmt, ...) {
  panic("Not implemented");
}

int snprintf(char *out, size_t n, const char *fmt, ...) {
  panic("Not implemented");
}

int vsnprintf(char *out, size_t n, const char *fmt, va_list ap) {
  panic("Not implemented");
}

#endif
