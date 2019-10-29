# 1 "./src/command.c"
# 1 "/cygdrive/c/Users/User/Documents/QolC//"
# 1 "<built-in>"
# 1 "<command-line>"
# 1 "./src/command.c"
# 1 "./inc/command.h" 1



# 1 "./inc/ast.h" 1



# 1 "./inc/lexer_node.h" 1



# 1 "./inc/headers.h" 1



# 1 "/usr/include/stdio.h" 1 3 4
# 29 "/usr/include/stdio.h" 3 4
# 1 "/usr/include/_ansi.h" 1 3 4
# 10 "/usr/include/_ansi.h" 3 4
# 1 "/usr/include/newlib.h" 1 3 4
# 14 "/usr/include/newlib.h" 3 4
# 1 "/usr/include/_newlib_version.h" 1 3 4
# 15 "/usr/include/newlib.h" 2 3 4
# 11 "/usr/include/_ansi.h" 2 3 4
# 1 "/usr/include/sys/config.h" 1 3 4



# 1 "/usr/include/machine/ieeefp.h" 1 3 4
# 5 "/usr/include/sys/config.h" 2 3 4
# 1 "/usr/include/sys/features.h" 1 3 4
# 6 "/usr/include/sys/config.h" 2 3 4
# 238 "/usr/include/sys/config.h" 3 4
# 1 "/usr/include/cygwin/config.h" 1 3 4
# 239 "/usr/include/sys/config.h" 2 3 4
# 12 "/usr/include/_ansi.h" 2 3 4
# 30 "/usr/include/stdio.h" 2 3 4





# 1 "/usr/include/sys/cdefs.h" 1 3 4
# 45 "/usr/include/sys/cdefs.h" 3 4
# 1 "/usr/include/machine/_default_types.h" 1 3 4
# 41 "/usr/include/machine/_default_types.h" 3 4

# 41 "/usr/include/machine/_default_types.h" 3 4
typedef signed char __int8_t;

typedef unsigned char __uint8_t;
# 55 "/usr/include/machine/_default_types.h" 3 4
typedef short int __int16_t;

typedef short unsigned int __uint16_t;
# 77 "/usr/include/machine/_default_types.h" 3 4
typedef int __int32_t;

typedef unsigned int __uint32_t;
# 103 "/usr/include/machine/_default_types.h" 3 4
typedef long int __int64_t;

typedef long unsigned int __uint64_t;
# 134 "/usr/include/machine/_default_types.h" 3 4
typedef signed char __int_least8_t;

typedef unsigned char __uint_least8_t;
# 160 "/usr/include/machine/_default_types.h" 3 4
typedef short int __int_least16_t;

typedef short unsigned int __uint_least16_t;
# 182 "/usr/include/machine/_default_types.h" 3 4
typedef int __int_least32_t;

typedef unsigned int __uint_least32_t;
# 200 "/usr/include/machine/_default_types.h" 3 4
typedef long int __int_least64_t;

typedef long unsigned int __uint_least64_t;
# 214 "/usr/include/machine/_default_types.h" 3 4
typedef long int __intmax_t;







typedef long unsigned int __uintmax_t;







typedef long int __intptr_t;

typedef long unsigned int __uintptr_t;
# 46 "/usr/include/sys/cdefs.h" 2 3 4

# 1 "/usr/lib/gcc/x86_64-pc-cygwin/7.4.0/include/stddef.h" 1 3 4
# 216 "/usr/lib/gcc/x86_64-pc-cygwin/7.4.0/include/stddef.h" 3 4
typedef long unsigned int size_t;
# 48 "/usr/include/sys/cdefs.h" 2 3 4
# 36 "/usr/include/stdio.h" 2 3 4
# 1 "/usr/lib/gcc/x86_64-pc-cygwin/7.4.0/include/stddef.h" 1 3 4
# 149 "/usr/lib/gcc/x86_64-pc-cygwin/7.4.0/include/stddef.h" 3 4
typedef long int ptrdiff_t;
# 328 "/usr/lib/gcc/x86_64-pc-cygwin/7.4.0/include/stddef.h" 3 4
typedef short unsigned int wchar_t;
# 37 "/usr/include/stdio.h" 2 3 4



# 1 "/usr/lib/gcc/x86_64-pc-cygwin/7.4.0/include/stdarg.h" 1 3 4
# 40 "/usr/lib/gcc/x86_64-pc-cygwin/7.4.0/include/stdarg.h" 3 4
typedef __builtin_va_list __gnuc_va_list;
# 41 "/usr/include/stdio.h" 2 3 4
# 60 "/usr/include/stdio.h" 3 4
# 1 "/usr/include/sys/reent.h" 1 3 4
# 13 "/usr/include/sys/reent.h" 3 4
# 1 "/usr/include/_ansi.h" 1 3 4
# 14 "/usr/include/sys/reent.h" 2 3 4
# 1 "/usr/lib/gcc/x86_64-pc-cygwin/7.4.0/include/stddef.h" 1 3 4
# 15 "/usr/include/sys/reent.h" 2 3 4
# 1 "/usr/include/sys/_types.h" 1 3 4
# 24 "/usr/include/sys/_types.h" 3 4
# 1 "/usr/include/machine/_types.h" 1 3 4
# 17 "/usr/include/machine/_types.h" 3 4
typedef __int64_t __blkcnt_t;


typedef __int32_t __blksize_t;


typedef __uint32_t __dev_t;



typedef unsigned long __fsblkcnt_t;



typedef unsigned long __fsfilcnt_t;


typedef __uint32_t __uid_t;


typedef __uint32_t __gid_t;


typedef __uint64_t __ino_t;


typedef long long __key_t;


typedef __uint16_t __sa_family_t;



typedef int __socklen_t;
# 25 "/usr/include/sys/_types.h" 2 3 4
# 1 "/usr/include/sys/lock.h" 1 3 4
# 12 "/usr/include/sys/lock.h" 3 4
typedef void *_LOCK_T;
# 42 "/usr/include/sys/lock.h" 3 4
void __cygwin_lock_init(_LOCK_T *);
void __cygwin_lock_init_recursive(_LOCK_T *);
void __cygwin_lock_fini(_LOCK_T *);
void __cygwin_lock_lock(_LOCK_T *);
int __cygwin_lock_trylock(_LOCK_T *);
void __cygwin_lock_unlock(_LOCK_T *);
# 26 "/usr/include/sys/_types.h" 2 3 4
# 44 "/usr/include/sys/_types.h" 3 4
typedef long _off_t;





typedef int __pid_t;
# 65 "/usr/include/sys/_types.h" 3 4
typedef __uint32_t __id_t;
# 88 "/usr/include/sys/_types.h" 3 4
typedef __uint32_t __mode_t;





__extension__ typedef long long _off64_t;





typedef _off_t __off_t;


typedef _off64_t __loff_t;
# 114 "/usr/include/sys/_types.h" 3 4
typedef long _fpos_t;





typedef _off64_t _fpos64_t;
# 129 "/usr/include/sys/_types.h" 3 4
typedef long unsigned int __size_t;
# 145 "/usr/include/sys/_types.h" 3 4
typedef long signed int _ssize_t;
# 156 "/usr/include/sys/_types.h" 3 4
typedef _ssize_t __ssize_t;


# 1 "/usr/lib/gcc/x86_64-pc-cygwin/7.4.0/include/stddef.h" 1 3 4
# 357 "/usr/lib/gcc/x86_64-pc-cygwin/7.4.0/include/stddef.h" 3 4
typedef unsigned int wint_t;
# 160 "/usr/include/sys/_types.h" 2 3 4



typedef struct
{
  int __count;
  union
  {
    wint_t __wch;
    unsigned char __wchb[4];
  } __value;
} _mbstate_t;



typedef _LOCK_T _flock_t;




typedef void *_iconv_t;






typedef unsigned long __clock_t;






typedef long __time_t;





typedef unsigned long __clockid_t;


typedef unsigned long __timer_t;
# 213 "/usr/include/sys/_types.h" 3 4
typedef int __nl_item;
typedef unsigned short __nlink_t;
typedef long __suseconds_t;
typedef unsigned long __useconds_t;


typedef __builtin_va_list __va_list;
# 16 "/usr/include/sys/reent.h" 2 3 4
# 25 "/usr/include/sys/reent.h" 3 4
typedef unsigned int __ULong;
# 38 "/usr/include/sys/reent.h" 3 4
struct _reent;

struct __locale_t;






struct _Bigint
{
  struct _Bigint *_next;
  int _k, _maxwds, _sign, _wds;
  __ULong _x[1];
};


struct __tm
{
  int __tm_sec;
  int __tm_min;
  int __tm_hour;
  int __tm_mday;
  int __tm_mon;
  int __tm_year;
  int __tm_wday;
  int __tm_yday;
  int __tm_isdst;
};







struct _on_exit_args {
 void * _fnargs[32];
 void * _dso_handle[32];

 __ULong _fntypes;


 __ULong _is_cxa;
};
# 93 "/usr/include/sys/reent.h" 3 4
struct _atexit {
 struct _atexit *_next;
 int _ind;

 void (*_fns[32])(void);
        struct _on_exit_args _on_exit_args;
};
# 117 "/usr/include/sys/reent.h" 3 4
struct __sbuf {
 unsigned char *_base;
 int _size;
};
# 181 "/usr/include/sys/reent.h" 3 4
struct __sFILE {
  unsigned char *_p;
  int _r;
  int _w;
  short _flags;
  short _file;
  struct __sbuf _bf;
  int _lbfsize;






  void * _cookie;

  _ssize_t (*_read) (struct _reent *, void *,
        char *, size_t);
  _ssize_t (*_write) (struct _reent *, void *,
         const char *,
         size_t);
  _fpos_t (*_seek) (struct _reent *, void *, _fpos_t, int);
  int (*_close) (struct _reent *, void *);


  struct __sbuf _ub;
  unsigned char *_up;
  int _ur;


  unsigned char _ubuf[3];
  unsigned char _nbuf[1];


  struct __sbuf _lb;


  int _blksize;
  _off_t _offset;


  struct _reent *_data;



  _flock_t _lock;

  _mbstate_t _mbstate;
  int _flags2;
};
# 239 "/usr/include/sys/reent.h" 3 4
struct __sFILE64 {
  unsigned char *_p;
  int _r;
  int _w;
  short _flags;
  short _file;
  struct __sbuf _bf;
  int _lbfsize;

  struct _reent *_data;


  void * _cookie;

  _ssize_t (*_read) (struct _reent *, void *,
        char *, size_t);
  _ssize_t (*_write) (struct _reent *, void *,
         const char *,
         size_t);
  _fpos_t (*_seek) (struct _reent *, void *, _fpos_t, int);
  int (*_close) (struct _reent *, void *);


  struct __sbuf _ub;
  unsigned char *_up;
  int _ur;


  unsigned char _ubuf[3];
  unsigned char _nbuf[1];


  struct __sbuf _lb;


  int _blksize;
  int _flags2;

  _off64_t _offset;
  _fpos64_t (*_seek64) (struct _reent *, void *, _fpos64_t, int);


  _flock_t _lock;

  _mbstate_t _mbstate;
};
typedef struct __sFILE64 __FILE;





struct _glue
{
  struct _glue *_next;
  int _niobs;
  __FILE *_iobs;
};
# 319 "/usr/include/sys/reent.h" 3 4
struct _rand48 {
  unsigned short _seed[3];
  unsigned short _mult[3];
  unsigned short _add;




};
# 608 "/usr/include/sys/reent.h" 3 4
struct _reent
{
  int _errno;




  __FILE *_stdin, *_stdout, *_stderr;

  int _inc;
  char _emergency[25];


  int _unspecified_locale_info;
  struct __locale_t *_locale;

  int __sdidinit;

  void (*__cleanup) (struct _reent *);


  struct _Bigint *_result;
  int _result_k;
  struct _Bigint *_p5s;
  struct _Bigint **_freelist;


  int _cvtlen;
  char *_cvtbuf;

  union
    {
      struct
        {
          unsigned int _unused_rand;
          char * _strtok_last;
          char _asctime_buf[26];
          struct __tm _localtime_buf;
          int _gamma_signgam;
          __extension__ unsigned long long _rand_next;
          struct _rand48 _r48;
          _mbstate_t _mblen_state;
          _mbstate_t _mbtowc_state;
          _mbstate_t _wctomb_state;
          char _l64a_buf[8];
          char _signal_buf[24];
          int _getdate_err;
          _mbstate_t _mbrlen_state;
          _mbstate_t _mbrtowc_state;
          _mbstate_t _mbsrtowcs_state;
          _mbstate_t _wcrtomb_state;
          _mbstate_t _wcsrtombs_state;
   int _h_errno;
        } _reent;



      struct
        {

          unsigned char * _nextf[30];
          unsigned int _nmalloc[30];
        } _unused;
    } _new;



  struct _atexit *_atexit;
  struct _atexit _atexit0;



  void (**(_sig_func))(int);




  struct _glue __sglue;

  __FILE __sf[3];

};
# 814 "/usr/include/sys/reent.h" 3 4
extern struct _reent *_impure_ptr ;
extern struct _reent *const _global_impure_ptr ;

void _reclaim_reent (struct _reent *);





  struct _reent * __getreent (void);
# 61 "/usr/include/stdio.h" 2 3 4
# 1 "/usr/include/sys/types.h" 1 3 4
# 28 "/usr/include/sys/types.h" 3 4
typedef __uint8_t u_int8_t;


typedef __uint16_t u_int16_t;


typedef __uint32_t u_int32_t;


typedef __uint64_t u_int64_t;

typedef __intptr_t register_t;






# 1 "/usr/lib/gcc/x86_64-pc-cygwin/7.4.0/include/stddef.h" 1 3 4
# 47 "/usr/include/sys/types.h" 2 3 4

# 1 "/usr/include/sys/_stdint.h" 1 3 4
# 20 "/usr/include/sys/_stdint.h" 3 4
typedef __int8_t int8_t ;



typedef __uint8_t uint8_t ;







typedef __int16_t int16_t ;



typedef __uint16_t uint16_t ;







typedef __int32_t int32_t ;



typedef __uint32_t uint32_t ;







typedef __int64_t int64_t ;



typedef __uint64_t uint64_t ;






typedef __intmax_t intmax_t;




typedef __uintmax_t uintmax_t;




typedef __intptr_t intptr_t;




typedef __uintptr_t uintptr_t;
# 49 "/usr/include/sys/types.h" 2 3 4
# 99 "/usr/include/sys/types.h" 3 4
typedef __blkcnt_t blkcnt_t;




typedef __blksize_t blksize_t;




typedef unsigned long clock_t;





typedef long time_t;





typedef long daddr_t;



typedef char * caddr_t;




typedef __fsblkcnt_t fsblkcnt_t;
typedef __fsfilcnt_t fsfilcnt_t;




typedef __id_t id_t;




typedef __ino_t ino_t;
# 159 "/usr/include/sys/types.h" 3 4
typedef __off_t off_t;



typedef __dev_t dev_t;



typedef __uid_t uid_t;



typedef __gid_t gid_t;




typedef __pid_t pid_t;




typedef __key_t key_t;




typedef _ssize_t ssize_t;




typedef __mode_t mode_t;




typedef __nlink_t nlink_t;




typedef __clockid_t clockid_t;





typedef __timer_t timer_t;





typedef __useconds_t useconds_t;




typedef __suseconds_t suseconds_t;



typedef __int64_t sbintime_t;


# 1 "/usr/include/sys/_pthreadtypes.h" 1 3 4
# 15 "/usr/include/sys/_pthreadtypes.h" 3 4
typedef struct __pthread_t {char __dummy;} *pthread_t;
typedef struct __pthread_mutex_t {char __dummy;} *pthread_mutex_t;

typedef struct __pthread_key_t {char __dummy;} *pthread_key_t;
typedef struct __pthread_attr_t {char __dummy;} *pthread_attr_t;
typedef struct __pthread_mutexattr_t {char __dummy;} *pthread_mutexattr_t;
typedef struct __pthread_condattr_t {char __dummy;} *pthread_condattr_t;
typedef struct __pthread_cond_t {char __dummy;} *pthread_cond_t;
typedef struct __pthread_barrierattr_t {char __dummy;} *pthread_barrierattr_t;
typedef struct __pthread_barrier_t {char __dummy;} *pthread_barrier_t;


typedef struct
{
  pthread_mutex_t mutex;
  int state;
}
pthread_once_t;
typedef struct __pthread_spinlock_t {char __dummy;} *pthread_spinlock_t;
typedef struct __pthread_rwlock_t {char __dummy;} *pthread_rwlock_t;
typedef struct __pthread_rwlockattr_t {char __dummy;} *pthread_rwlockattr_t;
# 226 "/usr/include/sys/types.h" 2 3 4
# 1 "/usr/include/machine/types.h" 1 3 4
# 19 "/usr/include/machine/types.h" 3 4
# 1 "/usr/include/endian.h" 1 3 4
# 13 "/usr/include/endian.h" 3 4
# 1 "/usr/include/machine/endian.h" 1 3 4





# 1 "/usr/include/machine/_endian.h" 1 3 4
# 14 "/usr/include/machine/_endian.h" 3 4
# 1 "/usr/include/bits/endian.h" 1 3 4
# 15 "/usr/include/machine/_endian.h" 2 3 4
# 23 "/usr/include/machine/_endian.h" 3 4
extern __inline__ __attribute__ ((__always_inline__)) __uint32_t __ntohl(__uint32_t);
extern __inline__ __attribute__ ((__always_inline__)) __uint16_t __ntohs(__uint16_t);

extern __inline__ __attribute__ ((__always_inline__)) __uint32_t
__ntohl(__uint32_t _x)
{
 __asm__("bswap %0" : "=r" (_x) : "0" (_x));
 return _x;
}

extern __inline__ __attribute__ ((__always_inline__)) __uint16_t
__ntohs(__uint16_t _x)
{
 __asm__("xchgb %b0,%h0"
  : "=Q" (_x)
  : "0" (_x));
 return _x;
}
# 7 "/usr/include/machine/endian.h" 2 3 4
# 14 "/usr/include/endian.h" 2 3 4
# 20 "/usr/include/machine/types.h" 2 3 4
# 1 "/usr/include/bits/wordsize.h" 1 3 4
# 21 "/usr/include/machine/types.h" 2 3 4
# 1 "/usr/include/sys/_timespec.h" 1 3 4
# 45 "/usr/include/sys/_timespec.h" 3 4
struct timespec {
 time_t tv_sec;
 long tv_nsec;
};
# 22 "/usr/include/machine/types.h" 2 3 4



typedef struct timespec timespec_t;




typedef struct timespec timestruc_t;


typedef __loff_t loff_t;
# 46 "/usr/include/machine/types.h" 3 4
struct flock {
 short l_type;
 short l_whence;
 off_t l_start;
 off_t l_len;
 pid_t l_pid;
};






typedef unsigned long vm_offset_t;




typedef unsigned long vm_size_t;




typedef void *vm_object_t;




typedef char *addr_t;





# 1 "/usr/include/sys/sysmacros.h" 1 3 4
# 12 "/usr/include/sys/sysmacros.h" 3 4
# 1 "/usr/include/sys/types.h" 1 3 4
# 13 "/usr/include/sys/sysmacros.h" 2 3 4

extern __inline__ __attribute__ ((__always_inline__)) int gnu_dev_major(dev_t);
extern __inline__ __attribute__ ((__always_inline__)) int gnu_dev_minor(dev_t);
extern __inline__ __attribute__ ((__always_inline__)) dev_t gnu_dev_makedev(int, int);

extern __inline__ __attribute__ ((__always_inline__)) int
gnu_dev_major(dev_t dev)
{
 return (int)(((dev) >> 16) & 0xffff);
}

extern __inline__ __attribute__ ((__always_inline__)) int
gnu_dev_minor(dev_t dev)
{
 return (int)((dev) & 0xffff);
}

extern __inline__ __attribute__ ((__always_inline__)) dev_t
gnu_dev_makedev(int maj, int min)
{
 return (((maj) << 16) | ((min) & 0xffff));
}
# 81 "/usr/include/machine/types.h" 2 3 4
# 227 "/usr/include/sys/types.h" 2 3 4
# 62 "/usr/include/stdio.h" 2 3 4




typedef __FILE FILE;




typedef _fpos64_t fpos_t;







# 1 "/usr/include/sys/stdio.h" 1 3 4
# 33 "/usr/include/sys/stdio.h" 3 4


ssize_t getline (char **, size_t *, FILE *);
ssize_t getdelim (char **, size_t *, int, FILE *);


# 80 "/usr/include/stdio.h" 2 3 4
# 186 "/usr/include/stdio.h" 3 4
FILE * tmpfile (void);
char * tmpnam (char *);



int fclose (FILE *);
int fflush (FILE *);
FILE * freopen (const char *, const char *, FILE *);
void setbuf (FILE *, char *);
int setvbuf (FILE *, char *, int, size_t);
int fprintf (FILE *, const char *, ...)
               __attribute__ ((__format__ (__printf__, 2, 3)));
int fscanf (FILE *, const char *, ...)
               __attribute__ ((__format__ (__scanf__, 2, 3)));
int printf (const char *, ...)
               __attribute__ ((__format__ (__printf__, 1, 2)));
int scanf (const char *, ...)
               __attribute__ ((__format__ (__scanf__, 1, 2)));
int sscanf (const char *, const char *, ...)
               __attribute__ ((__format__ (__scanf__, 2, 3)));
int vfprintf (FILE *, const char *, __gnuc_va_list)
               __attribute__ ((__format__ (__printf__, 2, 0)));
int vprintf (const char *, __gnuc_va_list)
               __attribute__ ((__format__ (__printf__, 1, 0)));
int vsprintf (char *, const char *, __gnuc_va_list)
               __attribute__ ((__format__ (__printf__, 2, 0)));
int fgetc (FILE *);
char * fgets (char *, int, FILE *);
int fputc (int, FILE *);
int fputs (const char *, FILE *);
int getc (FILE *);
int getchar (void);
char * gets (char *);
int putc (int, FILE *);
int putchar (int);
int puts (const char *);
int ungetc (int, FILE *);
size_t fread (void *, size_t _size, size_t _n, FILE *);
size_t fwrite (const void * , size_t _size, size_t _n, FILE *);



int fgetpos (FILE *, fpos_t *);

int fseek (FILE *, long, int);



int fsetpos (FILE *, const fpos_t *);

long ftell ( FILE *);
void rewind (FILE *);
void clearerr (FILE *);
int feof (FILE *);
int ferror (FILE *);
void perror (const char *);

FILE * fopen (const char * _name, const char * _type);
int sprintf (char *, const char *, ...)
               __attribute__ ((__format__ (__printf__, 2, 3)));
int remove (const char *);
int rename (const char *, const char *);
# 396 "/usr/include/stdio.h" 3 4
int _asiprintf_r (struct _reent *, char **, const char *, ...)
               __attribute__ ((__format__ (__printf__, 3, 4)));
char * _asniprintf_r (struct _reent *, char *, size_t *, const char *, ...)
               __attribute__ ((__format__ (__printf__, 4, 5)));
char * _asnprintf_r (struct _reent *, char *, size_t *, const char *, ...)
               __attribute__ ((__format__ (__printf__, 4, 5)));
int _asprintf_r (struct _reent *, char **, const char *, ...)
               __attribute__ ((__format__ (__printf__, 3, 4)));
int _diprintf_r (struct _reent *, int, const char *, ...)
               __attribute__ ((__format__ (__printf__, 3, 4)));
int _dprintf_r (struct _reent *, int, const char *, ...)
               __attribute__ ((__format__ (__printf__, 3, 4)));
int _fclose_r (struct _reent *, FILE *);
int _fcloseall_r (struct _reent *);
FILE * _fdopen_r (struct _reent *, int, const char *);
int _fflush_r (struct _reent *, FILE *);
int _fgetc_r (struct _reent *, FILE *);
int _fgetc_unlocked_r (struct _reent *, FILE *);
char * _fgets_r (struct _reent *, char *, int, FILE *);
char * _fgets_unlocked_r (struct _reent *, char *, int, FILE *);




int _fgetpos_r (struct _reent *, FILE *, fpos_t *);
int _fsetpos_r (struct _reent *, FILE *, const fpos_t *);

int _fiprintf_r (struct _reent *, FILE *, const char *, ...)
               __attribute__ ((__format__ (__printf__, 3, 4)));
int _fiscanf_r (struct _reent *, FILE *, const char *, ...)
               __attribute__ ((__format__ (__scanf__, 3, 4)));
FILE * _fmemopen_r (struct _reent *, void *, size_t, const char *);
FILE * _fopen_r (struct _reent *, const char *, const char *);
FILE * _freopen_r (struct _reent *, const char *, const char *, FILE *);
int _fprintf_r (struct _reent *, FILE *, const char *, ...)
               __attribute__ ((__format__ (__printf__, 3, 4)));
int _fpurge_r (struct _reent *, FILE *);
int _fputc_r (struct _reent *, int, FILE *);
int _fputc_unlocked_r (struct _reent *, int, FILE *);
int _fputs_r (struct _reent *, const char *, FILE *);
int _fputs_unlocked_r (struct _reent *, const char *, FILE *);
size_t _fread_r (struct _reent *, void *, size_t _size, size_t _n, FILE *);
size_t _fread_unlocked_r (struct _reent *, void *, size_t _size, size_t _n, FILE *);
int _fscanf_r (struct _reent *, FILE *, const char *, ...)
               __attribute__ ((__format__ (__scanf__, 3, 4)));
int _fseek_r (struct _reent *, FILE *, long, int);
int _fseeko_r (struct _reent *, FILE *, _off_t, int);
long _ftell_r (struct _reent *, FILE *);
_off_t _ftello_r (struct _reent *, FILE *);
void _rewind_r (struct _reent *, FILE *);
size_t _fwrite_r (struct _reent *, const void *, size_t _size, size_t _n, FILE *);
size_t _fwrite_unlocked_r (struct _reent *, const void *, size_t _size, size_t _n, FILE *);
int _getc_r (struct _reent *, FILE *);
int _getc_unlocked_r (struct _reent *, FILE *);
int _getchar_r (struct _reent *);
int _getchar_unlocked_r (struct _reent *);
char * _gets_r (struct _reent *, char *);
int _iprintf_r (struct _reent *, const char *, ...)
               __attribute__ ((__format__ (__printf__, 2, 3)));
int _iscanf_r (struct _reent *, const char *, ...)
               __attribute__ ((__format__ (__scanf__, 2, 3)));
FILE * _open_memstream_r (struct _reent *, char **, size_t *);
void _perror_r (struct _reent *, const char *);
int _printf_r (struct _reent *, const char *, ...)
               __attribute__ ((__format__ (__printf__, 2, 3)));
int _putc_r (struct _reent *, int, FILE *);
int _putc_unlocked_r (struct _reent *, int, FILE *);
int _putchar_unlocked_r (struct _reent *, int);
int _putchar_r (struct _reent *, int);
int _puts_r (struct _reent *, const char *);
int _remove_r (struct _reent *, const char *);
int _rename_r (struct _reent *,
      const char *_old, const char *_new);
int _scanf_r (struct _reent *, const char *, ...)
               __attribute__ ((__format__ (__scanf__, 2, 3)));
int _siprintf_r (struct _reent *, char *, const char *, ...)
               __attribute__ ((__format__ (__printf__, 3, 4)));
int _siscanf_r (struct _reent *, const char *, const char *, ...)
               __attribute__ ((__format__ (__scanf__, 3, 4)));
int _sniprintf_r (struct _reent *, char *, size_t, const char *, ...)
               __attribute__ ((__format__ (__printf__, 4, 5)));
int _snprintf_r (struct _reent *, char *, size_t, const char *, ...)
               __attribute__ ((__format__ (__printf__, 4, 5)));
int _sprintf_r (struct _reent *, char *, const char *, ...)
               __attribute__ ((__format__ (__printf__, 3, 4)));
int _sscanf_r (struct _reent *, const char *, const char *, ...)
               __attribute__ ((__format__ (__scanf__, 3, 4)));
char * _tempnam_r (struct _reent *, const char *, const char *);
FILE * _tmpfile_r (struct _reent *);
char * _tmpnam_r (struct _reent *, char *);
int _ungetc_r (struct _reent *, int, FILE *);
int _vasiprintf_r (struct _reent *, char **, const char *, __gnuc_va_list)
               __attribute__ ((__format__ (__printf__, 3, 0)));
char * _vasniprintf_r (struct _reent*, char *, size_t *, const char *, __gnuc_va_list)
               __attribute__ ((__format__ (__printf__, 4, 0)));
char * _vasnprintf_r (struct _reent*, char *, size_t *, const char *, __gnuc_va_list)
               __attribute__ ((__format__ (__printf__, 4, 0)));
int _vasprintf_r (struct _reent *, char **, const char *, __gnuc_va_list)
               __attribute__ ((__format__ (__printf__, 3, 0)));
int _vdiprintf_r (struct _reent *, int, const char *, __gnuc_va_list)
               __attribute__ ((__format__ (__printf__, 3, 0)));
int _vdprintf_r (struct _reent *, int, const char *, __gnuc_va_list)
               __attribute__ ((__format__ (__printf__, 3, 0)));
int _vfiprintf_r (struct _reent *, FILE *, const char *, __gnuc_va_list)
               __attribute__ ((__format__ (__printf__, 3, 0)));
int _vfiscanf_r (struct _reent *, FILE *, const char *, __gnuc_va_list)
               __attribute__ ((__format__ (__scanf__, 3, 0)));
int _vfprintf_r (struct _reent *, FILE *, const char *, __gnuc_va_list)
               __attribute__ ((__format__ (__printf__, 3, 0)));
int _vfscanf_r (struct _reent *, FILE *, const char *, __gnuc_va_list)
               __attribute__ ((__format__ (__scanf__, 3, 0)));
int _viprintf_r (struct _reent *, const char *, __gnuc_va_list)
               __attribute__ ((__format__ (__printf__, 2, 0)));
int _viscanf_r (struct _reent *, const char *, __gnuc_va_list)
               __attribute__ ((__format__ (__scanf__, 2, 0)));
int _vprintf_r (struct _reent *, const char *, __gnuc_va_list)
               __attribute__ ((__format__ (__printf__, 2, 0)));
int _vscanf_r (struct _reent *, const char *, __gnuc_va_list)
               __attribute__ ((__format__ (__scanf__, 2, 0)));
int _vsiprintf_r (struct _reent *, char *, const char *, __gnuc_va_list)
               __attribute__ ((__format__ (__printf__, 3, 0)));
int _vsiscanf_r (struct _reent *, const char *, const char *, __gnuc_va_list)
               __attribute__ ((__format__ (__scanf__, 3, 0)));
int _vsniprintf_r (struct _reent *, char *, size_t, const char *, __gnuc_va_list)
               __attribute__ ((__format__ (__printf__, 4, 0)));
int _vsnprintf_r (struct _reent *, char *, size_t, const char *, __gnuc_va_list)
               __attribute__ ((__format__ (__printf__, 4, 0)));
int _vsprintf_r (struct _reent *, char *, const char *, __gnuc_va_list)
               __attribute__ ((__format__ (__printf__, 3, 0)));
int _vsscanf_r (struct _reent *, const char *, const char *, __gnuc_va_list)
               __attribute__ ((__format__ (__scanf__, 3, 0)));



int fpurge (FILE *);
ssize_t __getdelim (char **, size_t *, int, FILE *);
ssize_t __getline (char **, size_t *, FILE *);
# 577 "/usr/include/stdio.h" 3 4
int __srget_r (struct _reent *, FILE *);
int __swbuf_r (struct _reent *, int, FILE *);
# 667 "/usr/include/stdio.h" 3 4
extern __inline__ __attribute__ ((__always_inline__)) int __sgetc_r(struct _reent *__ptr, FILE *__p);

extern __inline__ __attribute__ ((__always_inline__)) int __sgetc_r(struct _reent *__ptr, FILE *__p)
  {
    int __c = (--(__p)->_r < 0 ? __srget_r(__ptr, __p) : (int)(*(__p)->_p++));
    if ((__p->_flags & 0x4000) && (__c == '\r'))
      {
      int __c2 = (--(__p)->_r < 0 ? __srget_r(__ptr, __p) : (int)(*(__p)->_p++));
      if (__c2 == '\n')
        __c = __c2;
      else
        ungetc(__c2, __p);
      }
    return __c;
  }





extern __inline__ __attribute__ ((__always_inline__)) int __sputc_r(struct _reent *_ptr, int _c, FILE *_p) {

 if ((_p->_flags & 0x4000) && _c == '\n')
   __sputc_r (_ptr, '\r', _p);

 if (--_p->_w >= 0 || (_p->_w >= _p->_lbfsize && (char)_c != '\n'))
  return (*_p->_p++ = _c);
 else
  return (__swbuf_r(_ptr, _c, _p));
}
# 741 "/usr/include/stdio.h" 3 4
static __inline int
_getchar_unlocked(void)
{
 struct _reent *_ptr;

 _ptr = (__getreent());
 return (__sgetc_r(_ptr, ((_ptr)->_stdin)));
}

static __inline int
_putchar_unlocked(int _c)
{
 struct _reent *_ptr;

 _ptr = (__getreent());
 return (__sputc_r(_ptr, _c, ((_ptr)->_stdout)));
}
# 797 "/usr/include/stdio.h" 3 4

# 5 "./inc/headers.h" 2
# 1 "/usr/include/stdlib.h" 1 3 4
# 10 "/usr/include/stdlib.h" 3 4
# 1 "/usr/include/machine/ieeefp.h" 1 3 4
# 11 "/usr/include/stdlib.h" 2 3 4





# 1 "/usr/lib/gcc/x86_64-pc-cygwin/7.4.0/include/stddef.h" 1 3 4
# 17 "/usr/include/stdlib.h" 2 3 4



# 1 "/usr/include/machine/stdlib.h" 1 3 4
# 15 "/usr/include/machine/stdlib.h" 3 4
char *mkdtemp (char *);
# 21 "/usr/include/stdlib.h" 2 3 4





# 1 "/usr/include/cygwin/stdlib.h" 1 3 4
# 13 "/usr/include/cygwin/stdlib.h" 3 4
# 1 "/usr/include/cygwin/wait.h" 1 3 4
# 14 "/usr/include/cygwin/stdlib.h" 2 3 4






const char *getprogname (void);
void setprogname (const char *);
# 51 "/usr/include/cygwin/stdlib.h" 3 4
extern void *memalign (size_t, size_t);
# 27 "/usr/include/stdlib.h" 2 3 4








typedef struct
{
  int quot;
  int rem;
} div_t;

typedef struct
{
  long quot;
  long rem;
} ldiv_t;
# 57 "/usr/include/stdlib.h" 3 4
typedef int (*__compar_fn_t) (const void *, const void *);







int __locale_mb_cur_max (void);



void abort (void) __attribute__ ((__noreturn__));
int abs (int);





int atexit (void (*__func)(void));
double atof (const char *__nptr);



int atoi (const char *__nptr);
int _atoi_r (struct _reent *, const char *__nptr);
long atol (const char *__nptr);
long _atol_r (struct _reent *, const char *__nptr);
void * bsearch (const void *__key,
         const void *__base,
         size_t __nmemb,
         size_t __size,
         __compar_fn_t _compar);
void *calloc(size_t, size_t) __attribute__((__malloc__)) __attribute__((__warn_unused_result__))
      __attribute__((__alloc_size__(1, 2))) ;
div_t div (int __numer, int __denom);
void exit (int __status) __attribute__ ((__noreturn__));
void free (void *) ;
char * getenv (const char *__string);
char * _getenv_r (struct _reent *, const char *__string);



char * _findenv (const char *, int *);
char * _findenv_r (struct _reent *, const char *, int *);




long labs (long);
ldiv_t ldiv (long __numer, long __denom);
void *malloc(size_t) __attribute__((__malloc__)) __attribute__((__warn_unused_result__)) __attribute__((__alloc_size__(1))) ;
int mblen (const char *, size_t);
int _mblen_r (struct _reent *, const char *, size_t, _mbstate_t *);
int mbtowc (wchar_t *, const char *, size_t);
int _mbtowc_r (struct _reent *, wchar_t *, const char *, size_t, _mbstate_t *);
int wctomb (char *, wchar_t);
int _wctomb_r (struct _reent *, char *, wchar_t, _mbstate_t *);
size_t mbstowcs (wchar_t *, const char *, size_t);
size_t _mbstowcs_r (struct _reent *, wchar_t *, const char *, size_t, _mbstate_t *);
size_t wcstombs (char *, const wchar_t *, size_t);
size_t _wcstombs_r (struct _reent *, char *, const wchar_t *, size_t, _mbstate_t *);
# 137 "/usr/include/stdlib.h" 3 4
char * _mkdtemp_r (struct _reent *, char *);
int _mkostemp_r (struct _reent *, char *, int);
int _mkostemps_r (struct _reent *, char *, int, int);
int _mkstemp_r (struct _reent *, char *);
int _mkstemps_r (struct _reent *, char *, int);
char * _mktemp_r (struct _reent *, char *) __attribute__ ((__deprecated__("the use of `mktemp' is dangerous; use `mkstemp' instead")));
void qsort (void *__base, size_t __nmemb, size_t __size, __compar_fn_t _compar);
int rand (void);
void *realloc(void *, size_t) __attribute__((__warn_unused_result__)) __attribute__((__alloc_size__(2))) ;
# 159 "/usr/include/stdlib.h" 3 4
void srand (unsigned __seed);
double strtod (const char * __n, char ** __end_PTR);
double _strtod_r (struct _reent *,const char * __n, char ** __end_PTR);
# 171 "/usr/include/stdlib.h" 3 4
long strtol (const char * __n, char ** __end_PTR, int __base);
long _strtol_r (struct _reent *,const char * __n, char ** __end_PTR, int __base);
unsigned long strtoul (const char * __n, char ** __end_PTR, int __base);
unsigned long _strtoul_r (struct _reent *,const char * __n, char ** __end_PTR, int __base);
# 191 "/usr/include/stdlib.h" 3 4
int system (const char *__string);
# 207 "/usr/include/stdlib.h" 3 4
int _putenv_r (struct _reent *, char *__string);
void * _reallocf_r (struct _reent *, void *, size_t);



int _setenv_r (struct _reent *, const char *__string, const char *__value, int __overwrite);
# 224 "/usr/include/stdlib.h" 3 4
char * __itoa (int, char *, int);
char * __utoa (unsigned, char *, int);
# 265 "/usr/include/stdlib.h" 3 4
long long _atoll_r (struct _reent *, const char *__nptr);





long long _strtoll_r (struct _reent *, const char * __n, char ** __end_PTR, int __base);



unsigned long long _strtoull_r (struct _reent *, const char * __n, char ** __end_PTR, int __base);
# 292 "/usr/include/stdlib.h" 3 4
char * _dtoa_r (struct _reent *, double, int, int, int *, int*, char**);







int _system_r (struct _reent *, const char *);

void __eprintf (const char *, const char *, unsigned int, const char *);
# 322 "/usr/include/stdlib.h" 3 4
extern long double _strtold_r (struct _reent *, const char *, char **);
# 339 "/usr/include/stdlib.h" 3 4

# 6 "./inc/headers.h" 2
# 1 "/usr/include/string.h" 1 3 4
# 17 "/usr/include/string.h" 3 4
# 1 "/usr/lib/gcc/x86_64-pc-cygwin/7.4.0/include/stddef.h" 1 3 4
# 18 "/usr/include/string.h" 2 3 4
# 27 "/usr/include/string.h" 3 4


void * memchr (const void *, int, size_t);
int memcmp (const void *, const void *, size_t);
void * memcpy (void *, const void *, size_t);
void * memmove (void *, const void *, size_t);
void * memset (void *, int, size_t);
char *strcat (char *, const char *);
char *strchr (const char *, int);
int strcmp (const char *, const char *);
int strcoll (const char *, const char *);
char *strcpy (char *, const char *);
size_t strcspn (const char *, const char *);
char *strerror (int);
size_t strlen (const char *);
char *strncat (char *, const char *, size_t);
int strncmp (const char *, const char *, size_t);
char *strncpy (char *, const char *, size_t);
char *strpbrk (const char *, const char *);
char *strrchr (const char *, int);
size_t strspn (const char *, const char *);
char *strstr (const char *, const char *);

char *strtok (char *, const char *);

size_t strxfrm (char *, const char *, size_t);
# 86 "/usr/include/string.h" 3 4
char *_strdup_r (struct _reent *, const char *);



char *_strndup_r (struct _reent *, const char *, size_t);
# 112 "/usr/include/string.h" 3 4
char * _strerror_r (struct _reent *, int, int, int *);
# 134 "/usr/include/string.h" 3 4
char *strsignal (int __signo);



int strtosigno (const char *__name);
# 175 "/usr/include/string.h" 3 4
# 1 "/usr/include/sys/string.h" 1 3 4
# 176 "/usr/include/string.h" 2 3 4


# 7 "./inc/headers.h" 2
# 1 "/usr/include/ctype.h" 1 3 4
# 11 "/usr/include/ctype.h" 3 4


int isalnum (int __c);
int isalpha (int __c);
int iscntrl (int __c);
int isdigit (int __c);
int isgraph (int __c);
int islower (int __c);
int isprint (int __c);
int ispunct (int __c);
int isspace (int __c);
int isupper (int __c);
int isxdigit (int __c);
int tolower (int __c);
int toupper (int __c);
# 70 "/usr/include/ctype.h" 3 4
const char *__locale_ctype_ptr (void);
# 174 "/usr/include/ctype.h" 3 4
extern __attribute__((dllimport)) const char _ctype_[];


# 8 "./inc/headers.h" 2
# 5 "./inc/lexer_node.h" 2


# 6 "./inc/lexer_node.h"
typedef struct lexer_node
{
 char token[150];
 struct lexer_node* next;
}lexer_node;

void pushForLex(char buffer[], char* typeToPush, lexer_node* myNode);
void print_lexerList(lexer_node* node, char* fileName);
void push_lexerList(lexer_node* node, char token[]);
# 5 "./inc/ast.h" 2




typedef enum {
 TYPE_VOID,
 TYPE_BOOLEAN,
 TYPE_CHARACTER,
 TYPE_INTEGER,
 TYPE_STRING,
 TYPE_FLOAT,
 TYPE_FLOAT_POINTER,
 TYPE_INT_POINTER,
 TYPE_CHAR_POINTER,
 TYPE_STRING_POINTER,
 TYPE_VOID_POINTER,
 TYPE_FUNCTION,
 TYPE_HEXNUM,
 TYPE_STRUCT,
 TYPE_ENUM,
 TYPE_UNION,
 TYPE_VOID_ARRAY,
 TYPE_BOOLEAN_ARRAY,
 TYPE_CHAR_ARRAY,
 TYPE_INTEGER_ARRAY,
 TYPE_STRING_ARRAY,
 TYPE_FLOAT_ARRAY,
 TYPE_STRUCT_ARRAY,
 TYPE_ENUM_ARRAY,
 TYPE_UNION_ARRAY,
 TYPE_FLOAT_POINTER_ARRAY,
 TYPE_INT_POINTER_ARRAY,
 TYPE_CHAR_POINTER_ARRAY,
 TYPE_STRING_POINTER_ARRAY,
 TYPE_VOID_POINTER_ARRAY,
 TYPE_STRUCT_POINTER_ARRAY,
 TYPE_ENUM_POINTER_ARRAY,
 TYPE_UNION_POINTER_ARRAY
} type_t;

typedef struct type {
 type_t kind;
 struct type *subtype;
 struct param_list *params;
}type;


typedef struct param_list {
 char *name;
 type *theType;
 struct param_list *next;
}param_list;





typedef enum {
 EXPR_ADD,
 EXPR_SUB,
 EXPR_MUL,
 EXPR_DIV,
 EXPR_ADD_ASSIGNMENT,
 EXPR_SUB_ASSIGNMENT,
 EXPR_MUL_ASSIGNMENT,
 EXPR_DIV_ASSIGNMENT,
 EXPR_INCREMENT,
 EXPR_DECREMENT,
 EXPR_STRING_LITERAL,
 EXPR_BIGGER_CMP,
 EXPR_BIGGEROREQ_CMP,
 EXPR_SMALLER_CMP,
 EXPR_SMALLEROREQ_CMP,
 EXPR_EQUAL_CMP,
} expr_t;

typedef struct expr {
 expr_t kind;
 struct expr *left;
 struct expr *right;
 char *string_literal;
 char *string_id;
 int integer_value;
 char character_value;
 int memberOf;
}expr;




typedef enum {
 STMT_DECL,
 STMT_EXPR,
 STMT_IF_ELSE,
 STMT_FOR,
 STMT_PRINT,
 STMT_IMPORT,
 STMT_LOAD,
 STMT_DELETE,
 STMT_DEFER,
 STMT_ASSERT,
 STMT_RETURN,
 STMT_BREAK,
 STMT_CONTINUE,
 STMT_BLOCK,
 STMT_NEW,
 STMT_SLEEP,
 STMT_MAIN,
 STMT_SCAN,
 STMT_CAST,
 STMT_WHILE,
 STMT_ARRAYADD,
 STMT_EACH,
} stmt_t;

typedef struct stmt {
 stmt_t kind;
 struct decl *decl;
 expr *init_expr;
 expr *theExpr;
 expr *next_expr;
 struct stmt *body;
 struct stmt *else_body;
 struct stmt *next;
 int memberOf;
}stmt;




typedef struct decl {
 char name[100];
 type* theType;
 expr* value;
 stmt* code;
 struct decl* next;
}decl;


decl* decl_create(char *name, type *theType, expr *value, stmt *code);
stmt* stmt_create(stmt_t kind, decl *theDecl, expr *iexpr, expr* theExpr, expr *nexpr, stmt *body, stmt *ebody, stmt *next, int memberOf);
type* type_create(type_t kind, type *subtype, param_list *params);
expr* expr_create(expr_t kind, expr *left, expr *right, int integer_value, char character_value, const char * string_literal, int memberOf);
expr* expr_create_string(char* string_literal);
# 5 "./inc/command.h" 2

typedef struct command
{
 decl* aDecl;
 stmt* aStmt;
 expr* anExpr;
 struct command* next;
}command;

void push_commandList(command* commandNode, decl* aDecl, stmt* aStmt, expr* anExpr);
void print_commandList(command* commandNode);
# 2 "./src/command.c" 2




void push_commandList(command* commandNode, decl* aDecl, stmt* aStmt, expr* anExpr) {
    command* current = commandNode;
    while (current->next != 
# 8 "./src/command.c" 3 4
                           ((void *)0)
# 8 "./src/command.c"
                               ) {
     current = current->next;
    }
    current->next = malloc(sizeof(command));
    current->next->aDecl = aDecl;
    current->next->aStmt = aStmt;
    current->next->anExpr = anExpr;
    current->next->next = 
# 15 "./src/command.c" 3 4
                         ((void *)0)
# 15 "./src/command.c"
                             ;
}




void print_commandList(command* commandNode) {
 command * current = commandNode;
 int counter = 0;
 int value;
 int temp_type;

 while (current != 
# 27 "./src/command.c" 3 4
                  ((void *)0)
# 27 "./src/command.c"
                      ) {
  ++counter;

  if (current->aDecl != 
# 30 "./src/command.c" 3 4
                       ((void *)0)
# 30 "./src/command.c"
                           ) {

  }
  else if (current->aStmt != 
# 33 "./src/command.c" 3 4
                            ((void *)0)
# 33 "./src/command.c"
                                ) {
   value = (int)current->aStmt->kind;

   if (value == 0) {
    printf("STMT_DECL\n");
    printf("name: %s\n", current->aStmt->decl->name);
    if (current->aStmt->decl->theType == 
# 39 "./src/command.c" 3 4
                                        ((void *)0)
# 39 "./src/command.c"
                                            ) {
     printf("		value: %s\n", current->aStmt->decl->value->string_literal);
    }
    else {
     temp_type = (int)current->aStmt->decl->theType->kind;

     if (temp_type == 0) {
      printf("	TYPE_VOID\n");
      if (current->aStmt->decl->value != 
# 47 "./src/command.c" 3 4
                                        ((void *)0)
# 47 "./src/command.c"
                                            )
       printf("		value: %s\n", current->aStmt->decl->value->string_literal);
     }
     else if (temp_type == 1) {
      printf("	TYPE_BOOLEAN\n");
      if (current->aStmt->decl->value != 
# 52 "./src/command.c" 3 4
                                        ((void *)0)
# 52 "./src/command.c"
                                            )
       printf("		value: %s\n", current->aStmt->decl->value->string_literal);
     }
     else if (temp_type == 2) {
      printf("	TYPE_CHARACTER\n");
      if (current->aStmt->decl->value != 
# 57 "./src/command.c" 3 4
                                        ((void *)0)
# 57 "./src/command.c"
                                            )
       printf("		value: %s\n", current->aStmt->decl->value->string_literal);
     }
     else if (temp_type == 3) {
      printf("	TYPE_INTEGER\n");
      if (current->aStmt->decl->value != 
# 62 "./src/command.c" 3 4
                                        ((void *)0)
# 62 "./src/command.c"
                                            )
       printf("		value: %s\n", current->aStmt->decl->value->string_literal);
     }
     else if (temp_type == 4) {
      printf("	TYPE_STRING\n");
      if (current->aStmt->decl->value != 
# 67 "./src/command.c" 3 4
                                        ((void *)0)
# 67 "./src/command.c"
                                            )
       printf("		value: %s\n", current->aStmt->decl->value->string_literal);
     }
     else if (temp_type == 5) {
      printf("	TYPE_FLOAT\n");
      if (current->aStmt->decl->value != 
# 72 "./src/command.c" 3 4
                                        ((void *)0)
# 72 "./src/command.c"
                                            )
       printf("		value: %s\n", current->aStmt->decl->value->string_literal);
     }
     else if (temp_type == 6) {
      printf("	TYPE_FLOAT_POINTER\n");
      if (current->aStmt->decl->value != 
# 77 "./src/command.c" 3 4
                                        ((void *)0)
# 77 "./src/command.c"
                                            )
       printf("		value: %s\n", current->aStmt->decl->value->string_literal);
     }
     else if (temp_type == 7) {
      printf("	TYPE_INT_POINTER\n");
      if (current->aStmt->decl->value != 
# 82 "./src/command.c" 3 4
                                        ((void *)0)
# 82 "./src/command.c"
                                            )
       printf("		value: %s\n", current->aStmt->decl->value->string_literal);
     }
     else if (temp_type == 8) {
      printf("	TYPE_CHAR_POINTER\n");
      if (current->aStmt->decl->value != 
# 87 "./src/command.c" 3 4
                                        ((void *)0)
# 87 "./src/command.c"
                                            )
       printf("		value: %s\n", current->aStmt->decl->value->string_literal);
     }
     else if (temp_type == 9) {
      printf("	TYPE_STRING_POINTER\n");
      if (current->aStmt->decl->value != 
# 92 "./src/command.c" 3 4
                                        ((void *)0)
# 92 "./src/command.c"
                                            )
       printf("		value: %s\n", current->aStmt->decl->value->string_literal);
     }
     else if (temp_type == 10) {
      printf("	TYPE_VOID_POINTER\n");
      if (current->aStmt->decl->value != 
# 97 "./src/command.c" 3 4
                                        ((void *)0)
# 97 "./src/command.c"
                                            )
       printf("		value: %s\n", current->aStmt->decl->value->string_literal);
     }
     else if (temp_type == 12) {
      printf("	TYPE_HEXNUM\n");
      if (current->aStmt->decl->value != 
# 102 "./src/command.c" 3 4
                                        ((void *)0)
# 102 "./src/command.c"
                                            )
       printf("		value: %s\n", current->aStmt->decl->value->string_literal);
     }
     else if (temp_type == 13) {
      printf("	TYPE_STRUCT\n");
     }
     else if (temp_type == 14) {
      printf("	TYPE_ENUM\n");
     }
     else if (temp_type == 15) {
      printf("	TYPE_UNION\n");
     }
     else if (temp_type == 15) {
      printf("	TYPE_UNION\n");
     }
     else if (temp_type == 16) {
      printf("	TYPE_VOID_ARRAY\n");
      if (current->aStmt->decl->value != 
# 119 "./src/command.c" 3 4
                                        ((void *)0)
# 119 "./src/command.c"
                                            )
       printf("		size: %s\n", current->aStmt->decl->value->string_literal);
     }
     else if (temp_type == 17) {
      printf("	TYPE_BOOLEAN_ARRAY\n");
      if (current->aStmt->decl->value != 
# 124 "./src/command.c" 3 4
                                        ((void *)0)
# 124 "./src/command.c"
                                            )
       printf("		size: %s\n", current->aStmt->decl->value->string_literal);
     }
     else if (temp_type == 18) {
      printf("	TYPE_CHAR_ARRAY\n");
      if (current->aStmt->decl->value != 
# 129 "./src/command.c" 3 4
                                        ((void *)0)
# 129 "./src/command.c"
                                            )
       printf("		size: %s\n", current->aStmt->decl->value->string_literal);
     }
     else if (temp_type == 19) {
      printf("	TYPE_INTEGER_ARRAY\n");
      if (current->aStmt->decl->value != 
# 134 "./src/command.c" 3 4
                                        ((void *)0)
# 134 "./src/command.c"
                                            )
       printf("		size: %s\n", current->aStmt->decl->value->string_literal);
     }
     else if (temp_type == 20) {
      printf("	TYPE_STRING_ARRAY\n");
      if (current->aStmt->decl->value != 
# 139 "./src/command.c" 3 4
                                        ((void *)0)
# 139 "./src/command.c"
                                            )
       printf("		size: %s\n", current->aStmt->decl->value->string_literal);
     }
     else if (temp_type == 21) {
      printf("	TYPE_FLOAT_ARRAY\n");
      if (current->aStmt->decl->value != 
# 144 "./src/command.c" 3 4
                                        ((void *)0)
# 144 "./src/command.c"
                                            )
       printf("		size: %s\n", current->aStmt->decl->value->string_literal);
     }
     else if (temp_type == 22) {
     printf("	TYPE_STRUCT_ARRAY\n");
     if (current->aStmt->decl->value != 
# 149 "./src/command.c" 3 4
                                       ((void *)0)
# 149 "./src/command.c"
                                           )
      printf("		size: %s\n", current->aStmt->decl->value->string_literal);
     }
     else if (temp_type == 23) {
     printf("	TYPE_ENUM_ARRAY\n");
     if (current->aStmt->decl->value != 
# 154 "./src/command.c" 3 4
                                       ((void *)0)
# 154 "./src/command.c"
                                           )
      printf("		size: %s\n", current->aStmt->decl->value->string_literal);
     }
     else if (temp_type == 24) {
     printf("	TYPE_UNION_ARRAY\n");
     if (current->aStmt->decl->value != 
# 159 "./src/command.c" 3 4
                                       ((void *)0)
# 159 "./src/command.c"
                                           )
      printf("		size: %s\n", current->aStmt->decl->value->string_literal);
     }
     else if (temp_type == 25) {
      printf("	TYPE_FLOAT_POINTER_ARRAY\n");
      if (current->aStmt->decl->value != 
# 164 "./src/command.c" 3 4
                                        ((void *)0)
# 164 "./src/command.c"
                                            )
       printf("		size: %s\n", current->aStmt->decl->value->string_literal);
     }
     else if (temp_type == 26) {
      printf("	TYPE_INT_POINTER_ARRAY\n");
      if (current->aStmt->decl->value != 
# 169 "./src/command.c" 3 4
                                        ((void *)0)
# 169 "./src/command.c"
                                            )
       printf("		size: %s\n", current->aStmt->decl->value->string_literal);
     }
     else if (temp_type == 27) {
      printf("	TYPE_CHAR_POINTER_ARRAY\n");
      if (current->aStmt->decl->value != 
# 174 "./src/command.c" 3 4
                                        ((void *)0)
# 174 "./src/command.c"
                                            )
       printf("		size: %s\n", current->aStmt->decl->value->string_literal);
     }
     else if (temp_type == 28) {
      printf("	TYPE_STRING_POINTER_ARRAY\n");
      if (current->aStmt->decl->value != 
# 179 "./src/command.c" 3 4
                                        ((void *)0)
# 179 "./src/command.c"
                                            )
       printf("		size: %s\n", current->aStmt->decl->value->string_literal);
     }
     else if (temp_type == 29) {
      printf("	TYPE_VOID_POINTER_ARRAY\n");
      if (current->aStmt->decl->value != 
# 184 "./src/command.c" 3 4
                                        ((void *)0)
# 184 "./src/command.c"
                                            )
       printf("		size: %s\n", current->aStmt->decl->value->string_literal);
     }
     else if (temp_type == 30) {
     printf("	TYPE_STRUCT_POINTER_ARRAY\n");
     if (current->aStmt->decl->value != 
# 189 "./src/command.c" 3 4
                                       ((void *)0)
# 189 "./src/command.c"
                                           )
      printf("		size: %s\n", current->aStmt->decl->value->string_literal);
     }
     else if (temp_type == 31) {
     printf("	TYPE_ENUM_POINTER_ARRAY\n");
     if (current->aStmt->decl->value != 
# 194 "./src/command.c" 3 4
                                       ((void *)0)
# 194 "./src/command.c"
                                           )
      printf("		size: %s\n", current->aStmt->decl->value->string_literal);
     }
     else if (temp_type == 32) {
     printf("	TYPE_UNION_POINTER_ARRAY\n");
     if (current->aStmt->decl->value != 
# 199 "./src/command.c" 3 4
                                       ((void *)0)
# 199 "./src/command.c"
                                           )
      printf("		size: %s\n", current->aStmt->decl->value->string_literal);
     }
     else;
    }
    if (current->aStmt->memberOf != -1) {

     if (current->aStmt->memberOf == 1) printf("		member of struct\n");
     else if (current->aStmt->memberOf == 2) printf("		member of union\n");
     else if (current->aStmt->memberOf == 3) printf("		member of enum\n");
     else if (current->aStmt->memberOf == 4) printf("		member of assert\n");
     else if (current->aStmt->memberOf == 6) printf("		member of return\n");
     else;
    }
   }
   else if (value == 2) {
    printf("STMT_IF_ELSE\n");
   }
   else if (value == 3) {
    printf("STMT_FOR\n");
   }
   else if (value == 4) {
    printf("STMT_PRINT\n");
    printf("	expr: %s\n", current->aStmt->theExpr->string_literal);
   }
   else if (value == 5) {
    printf("STMT_IMPORT\n");
    printf("	expr: %s\n", current->aStmt->theExpr->string_literal);
   }
   else if (value == 6) {
    printf("STMT_LOAD\n");
    printf("	expr: %s\n", current->aStmt->theExpr->string_literal);
   }
   else if (value == 7) {
    printf("STMT_DELETE\n");
    printf("	expr: %s\n", current->aStmt->theExpr->string_literal);
   }
   else if (value == 8) {
    printf("STMT_DEFER\n");
   }
   else if (value == 9) {
    printf("STMT_ASSERT\n");
   }
   else if (value == 10) {
    printf("STMT_RETURN\n");
   }
   else if (value == 11) {
    printf("STMT_BREAK\n");
   }
   else if (value == 12) {
    printf("STMT_CONTINUE\n");
   }
   else if (value == 14) {
    printf("STMT_NEW\n");
    printf("	expr: %s\n", current->aStmt->theExpr->string_literal);
    printf("	type: %s\n", current->aStmt->next_expr->string_literal);
   }
   else if (value == 15) {
    printf("STMT_SLEEP\n");
    printf("	expr: %s\n", current->aStmt->theExpr->string_literal);
   }
   else if (value == 16) {
    printf("STMT_MAIN\n");
   }
   else if (value == 17) {
    printf("STMT_SCAN\n");
    printf("	expr: %s\n", current->aStmt->theExpr->string_literal);
   }
   else if (value == 18) {
    printf("STMT_CAST\n");
    printf("	expr: %s\n", current->aStmt->theExpr->string_literal);
    printf("	type to convert to : %s\n", current->aStmt->next_expr->string_literal);
   }
   else if (value == 19) {
    printf("STMT_WHILE\n");
   }
   else if (value == 20) {
    printf("STMT_ARRAYDADD\n");
    printf("	the array : %s\n", current->aStmt->theExpr->string_literal);
    printf("	element to be added : %s\n", current->aStmt->next_expr->string_literal);
   }
   else if (value == 21) {
    printf("STMT_EACH\n");
   }
   else {

   }
  }
  else if (current->anExpr != 
# 287 "./src/command.c" 3 4
                             ((void *)0)
# 287 "./src/command.c"
                                 ) {
   int val = (int)current->anExpr->kind;
   if (val == 0) {
    printf("EXPR_ADD\n");
    printf("	left : %s\n", current->anExpr->left->string_literal);
    printf("	right : %s\n", current->anExpr->right->string_literal);
   }
   else if (val == 1) {
    printf("EXPR_SUB\n");
    printf("	left : %s\n", current->anExpr->left->string_literal);
    printf("	right : %s\n", current->anExpr->right->string_literal);
   }
   else if (val == 2) {
    printf("EXPR_MUL\n");
    printf("	left : %s\n", current->anExpr->left->string_literal);
    printf("	right : %s\n", current->anExpr->right->string_literal);
   }
   else if (val == 3) {
    printf("EXPR_DIV\n");
    printf("	left : %s\n", current->anExpr->left->string_literal);
    printf("	right : %s\n", current->anExpr->right->string_literal);
   }
   else if (val == 4) {
    printf("EXPR_ADD_ASSIGNMENT\n");
    printf("	left : %s\n", current->anExpr->left->string_literal);
    printf("	right : %s\n", current->anExpr->right->string_literal);
   }
   else if (val == 5) {
    printf("EXPR_SUB_ASSIGNMENT\n");
    printf("	left : %s\n", current->anExpr->left->string_literal);
    printf("	right : %s\n", current->anExpr->right->string_literal);
   }
   else if (val == 6) {
    printf("EXPR_MUL_ASSIGNMENT\n");
    printf("	left : %s\n", current->anExpr->left->string_literal);
    printf("	right : %s\n", current->anExpr->right->string_literal);
   }
   else if (val == 7) {
    printf("EXPR_DIV_ASSIGNMENT\n");
    printf("	left : %s\n", current->anExpr->left->string_literal);
    printf("	right : %s\n", current->anExpr->right->string_literal);
   }
   else if (val == 8) {
    printf("EXPR_INCREMENT\n");
    printf("	identifier : %s\n", current->anExpr->string_literal);
   }
   else if (val == 9) {
    printf("EXPR_DECREMENT\n");
    printf("	identifier : %s\n", current->anExpr->string_literal);
   }
   else if (val == 11) {
    printf("EXPR_BIGGER_CMP\n");
    printf("	left : %s\n", current->anExpr->left->string_literal);
    printf("	right : %s\n", current->anExpr->right->string_literal);
   }
   else if (val == 12) {
    printf("EXPR_BIGGEROREQ_CMP\n");
    printf("	left : %s\n", current->anExpr->left->string_literal);
    printf("	right : %s\n", current->anExpr->right->string_literal);
   }
   else if (val == 13) {
    printf("EXPR_SMALLER_CMP\n");
    printf("	left : %s\n", current->anExpr->left->string_literal);
    printf("	right : %s\n", current->anExpr->right->string_literal);
   }
   else if (val == 14) {
    printf("EXPR_SMALLEROREQ_CMP\n");
    printf("	left : %s\n", current->anExpr->left->string_literal);
    printf("	right : %s\n", current->anExpr->right->string_literal);
   }
   else if (val == 15) {
    printf("EXPR_EQUAL_CMP\n");
    printf("	left : %s\n", current->anExpr->left->string_literal);
    printf("	right : %s\n", current->anExpr->right->string_literal);
   }
   else {

   }
   if (current->anExpr->memberOf != -1) {

    if (current->anExpr->memberOf == 1) printf("		member of struct\n");
    else if (current->anExpr->memberOf == 2) printf("		member of union\n");
    else if (current->anExpr->memberOf == 3) printf("		member of enum\n");
    else if (current->anExpr->memberOf == 4) printf("		member of assert\n");
    else if (current->anExpr->memberOf == 6) printf("		member of return\n");
    else;
   }
  }
  else {

  }
  current = current->next;
 }
}
