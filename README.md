Add support for the devmem2 tool in android system.It can read and write
physical addresses.

1. How to create the "/dev/mem" node in android system  
The "/dev/mem" node is not found in the default andorid system.Please enable the
CONFIG_DEVMEM option in android linux kernel.The CONFIG_DEVMEM option is used to
control whether to create the "/dev/mem" node. More details can be found in
"kernel/drivers/char/mem.c".
  
NOTE: The DEVKMEM option is not supported on arm64. On arm64, VMALLOC_START <
PAGE_OFFSET, which confuses kmem read/write.   

2. How to compile  
Enter the devmem2 source directory:  
$ cd ${MY_ANDROID}/external
$ git clone https://github.com/giraffesnn/devmem2.git  
$ source build/envsetup.sh  
$ lunch # Choose the platform/board  
$ cd devmem2  
$ mmm .


