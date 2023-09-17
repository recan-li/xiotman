/*  Glue functions for the minIni library, based on the C/C++ stdio library
 *
 *  Or better said: this file contains macros that maps the function interface
 *  used by minIni to the standard C/C++ file I/O functions.
 *
 *  By CompuPhase, 2008-2014
 *  This "glue file" is in the public domain. It is distributed without
 *  warranties or conditions of any kind, either express or implied.
 */

/* map required file I/O types and functions to the standard C library */
#include <stdio.h>

#if 1

#define INI_FILETYPE                    FILE*
#define ini_openread(filename,file)     ((*(file) = fopen((filename),"rb")) != NULL)
#define ini_openwrite(filename,file)    ((*(file) = fopen((filename),"wb")) != NULL)
#define ini_openrewrite(filename,file)  ((*(file) = fopen((filename),"r+b")) != NULL)
#define ini_close(file)                 (fclose(*(file)) == 0)
#define ini_read(buffer,size,file)      (fgets((buffer),(size),*(file)) != NULL)
#define ini_write(buffer,file)          (fputs((buffer),*(file)) >= 0)
#define ini_rename(source,dest)         (rename((source), (dest)) == 0)
#define ini_remove(filename)            (remove(filename) == 0)

#define INI_FILEPOS                     long int
#define ini_tell(file,pos)              (*(pos) = ftell(*(file)))
#define ini_seek(file,pos)              (fseek(*(file), *(pos), SEEK_SET) == 0)

#else //use open/close API

#include <sys/types.h>    
#include <sys/stat.h>    
#include <fcntl.h>
#include <unistd.h>

static inline char *my_fgets(char *s, int n, int fd)
{
   char c;
   char *cs;
   cs = s;

   while(--n > 0 && (read(fd, &c, 1)) != 0)
   {
      if((*cs++ = c) == '\n')
      {
         break;
      }
   }

   *cs = '\0';
   return (c == EOF && cs == s) ? NULL : s ;
}

#define INI_FILETYPE                    int
#define ini_openread(filename,file)     ((*(file) = open((filename), O_RDONLY)) != -1)
#define ini_openwrite(filename,file)    ((*(file) = open((filename), O_WRONLY | O_CREAT)) != -1)
#define ini_openrewrite(filename,file)  ((*(file) = open((filename), O_RDWR | O_CREAT)) != -1)
#define ini_close(file)                 (close(*(file)) == 0)
#define ini_read(buffer,size,file)      (my_fgets((buffer),(size),*(file)) != NULL)
#define ini_write(buffer,file)          (write(*(file), (buffer), strlen(buffer)) >= 0)
#define ini_rename(source,dest)         (rename((source), (dest)) == 0)
#define ini_remove(filename)            (remove(filename) == 0)

#define INI_FILEPOS                     long int
#define ini_tell(file,pos)              ((*(pos) = lseek(*(file), 0, SEEK_CUR)))
#define ini_seek(file,pos)              (lseek(*(file), *(pos), SEEK_SET) == 0)

#endif

/* for floating-point support, define additional types and functions */
#define INI_REAL                        float
#define ini_ftoa(string,value)          sprintf((string),"%f",(value))
#define ini_atof(string)                (INI_REAL)strtod((string),NULL)
