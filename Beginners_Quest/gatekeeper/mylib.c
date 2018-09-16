#include <stdio.h>
#include <string.h>
#include <unistd.h>
int strcmp(const char *s1, const char *s2) {
  // Always return 0.
  printf("\ncompare %s and %s\n",s1,s2);
  printf("reversed ");
  for(int i=strlen(s2); i>=0; i--){
    printf("%c", s2[i]);
  }
  printf("\n");
  return 0;
}

int usleep(__useconds_t usec){
  return 0;
}
