---
project:
due: 2022-01-13
people:
tags: 💡
status: idea
title: version GLIBC_2.14 not found
type: Task
---

# version GLIBC_2.14 not found

```bash
>>> import binascii
Traceback (most recent call last):
  File "<stdin>", line 1, in <module>
ImportError: /lib64/libc.so.6: version `GLIBC_2.14' not found (required by /home/poinarlab/miniconda3/lib/python3.8/lib-dynload/../../libz.so.1)
```

```bash
ldd --version
ldd /home/poinarlab/miniconda3/lib/libz.so.1
```

```bash
mkdir ~/glibc_install; cd ~/glibc_install
wget http://ftp.gnu.org/gnu/glibc/glibc-2.14.tar.gz
tar zxvf glibc-2.14.tar.gz
cd glibc-2.14
mkdir build
cd build
../configure --prefix=/home/poinarlab/glibc_install/glibc-2.17
make -j10
make install
export LD_LIBRARY_PATH=/home/poinarlab/glibc_install/glibc-2.17/lib
cd $LD_LIBRARY_PATH
ln -s libc-2.17.so libc.so.6 
```

```bash
ldd --version
ldd /home/poinarlab/miniconda3/lib/libz.so.1
```

Repeat for glibc-2.14

```bash
export LD_LIBRARY_PATH=/home/poinarlab/glibc_install/glibc-2.14/lib
cd $LD_LIBRARY_PATH
ln -s libc-2.14.so libc.so.6 

LD_LIBRARY_PATH=/home/MYNAME/dependency/glibc-2.17/lib conda

export LD_LIBRARY_PATH=/home/poinarlab/glibc_install/glibc-2.17/lib
```

## Test

### keaton

```bash
ldd /home/poinarlab/miniconda3/lib/python3.8/lib-dynload/../../libz.so.1
/home/poinarlab/miniconda3/lib/python3.8/lib-dynload/../../libz.so.1: /lib64/libc.so.6: version `GLIBC_2.14' not found (required by /home/poinarlab/miniconda3/lib/python3.8/lib-dynload/../../libz.so.1)
        linux-vdso.so.1 =>  (0x00007ffff0951000)
        libc.so.6 => /lib64/libc.so.6 (0x00002b0c1955a000)
        /lib64/ld-linux-x86-64.so.2 (0x00002b0c19337000)
```

### poinarlab

```bash
ldd /home/poinarlab/miniconda3/lib/python3.8/lib-dynload/../../libz.so.1
/home/poinarlab/miniconda3/lib/python3.8/lib-dynload/../../libz.so.1: /lib64/libc.so.6: version `GLIBC_2.14' not found (required by /home/poinarlab/miniconda3/lib/python3.8/lib-dynload/../../libz.so.1)
        linux-vdso.so.1 =>  (0x00007ffc288bd000)
        libc.so.6 => /lib64/libc.so.6 (0x00007f2bae3b5000)
        /lib64/ld-linux-x86-64.so.2 (0x00007f2bae749000)
```

```bash
export LD_LIBRARY_PATH=/home/poinarlab/glibc_install/glibc-2.14/lib
/home/poinarlab/miniconda3/bin/python -m pip install ruamel
```


```bash
export LD_LIBRARY_PATH="/home/poinarlab/glibc_install/info2020/lib"

ld-linux-x86-64.so.2
```