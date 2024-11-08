#include <klib.h>
#include <klib-macros.h>
#include <stdint.h>

#if !defined(__ISA_NATIVE__) || defined(__NATIVE_USE_KLIB__)

size_t strlen(const char *s) {
  char* p=s;
  while((*p)!='\0'){
    p++;
  }
  return (size_t)(p-s);
}

char *strcpy(char *dst, const char *src) {
  char* p=src;
  while((*p)!='\0'){
    *dst=*p;
    dst++;
    p++;
  }
  return dst;
}

char *strncpy(char *dst, const char *src, size_t n) {
  char* p=src;
  while((*p)!='\0' && (size_t)(p-src)<n){
    *dst=*p;
    dst++;
    p++;
  }
  return dst;
}

char *strcat(char *dst, const char *src) {
  char* p1=dst+strlen(dst);
  char* p2=src;
  while((*p2!='\0')){
    *p1=*p2;
    p1++;
    p2++;
  }
  return dst;
}

int strcmp(const char *s1, const char *s2) {
  char* p1=s1;
  char* p2=s2;
  while(*p2!='\0'&& *p1!='\0'){
    if(*p1 < *p2){
      return -1; 
    }
    if(*p1 > *p2){
      return 1;
    }
    p1++;
    p2++;
  }
  return 0;
}

int strncmp(const char *s1, const char *s2, size_t n) {
  char* p1=s1;
  char* p2=s2;
  while(n-- && *p2!='\0'&& *p1!='\0'){
    if(*p1 < *p2){
      return -1; 
    }
    if(*p1 > *p2){
      return 1;
    }
    p1++;
    p2++;
  }
  return 0;
}

void *memset(void *s, int c, size_t n) {
  unsigned char* p=(unsigned char*)s;
  unsigned char full=(unsigned char)c;
  for(size_t i=0;i<n;p++,i++){
    *p=full;
  }
}

void *memmove(void *dst, const void *src, size_t n) {
  //如果dst>src 那就从后往前copy
  //反之从前往后
  unsigned char* p_dst=(unsigned char*)dst;
  unsigned char* p_src=(unsigned char*)src;
  if(dst>src){
    p_dst+=n;
    while(n--){
      *p_dst=*p_src;
      p_dst--;
      p_src++;
    }
  }
  else{
    while(n--){
      *p_dst=*p_src;
      p_dst++;
      p_src++;
    }
  }
  return dst;
}

void *memcpy(void *out, const void *in, size_t n) {
  unsigned char* p1=(unsigned char*)out;
  unsigned char* p2=(unsigned char*)in;
  for(size_t i=0;i<n;p1++,p2++,i++){
    *p1=*p2;
  }
  return out;
}

int memcmp(const void *s1, const void *s2, size_t n) {
  unsigned char* p1=(unsigned char*)s1;
  unsigned char* p2=(unsigned char*)s2;
  while(n--){
    if(*p1 > *p2){
      return 1; 
    }
    if(*p1 < *p2){
      return -1;
    }
    p1++;
    p2++;
  }
  return 0;

}

#endif
