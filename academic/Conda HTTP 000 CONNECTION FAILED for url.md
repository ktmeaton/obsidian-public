---
project:
due: 2022-01-13
people:
tags: ✨ 
status: idea
title: Conda HTTP 000 CONNECTION FAILED for url
type: Task
---

# Conda HTTP 000 CONNECTION FAILED for url

We are missing two libraries:

- libcrypto: `/home/poinarlab/miniconda3/lib/libcrypto.so.1.1`
- libssl: `/home/poinarlab/miniconda3/lib/libssl.so.1.1`

```bash
openssl
openssl: /home/poinarlab/glibc_install/glibc-2.14/lib/libc.so.6: version `GLIBC_2.15' not found (required by openssl)
openssl: /home/poinarlab/glibc_install/glibc-2.14/lib/libc.so.6: version `GLIBC_2.16' not found (required by /home/poinarlab/miniconda3/bin/../lib/libcrypto.so.1.1)
openssl: /home/poinarlab/glibc_install/glibc-2.14/lib/libc.so.6: version `GLIBC_2.15' not found (required by /home/poinarlab/miniconda3/bin/../lib/libcrypto.so.1.1)
openssl: /home/poinarlab/glibc_install/glibc-2.14/lib/libc.so.6: version `GLIBC_2.17' not found (required by /home/poinarlab/miniconda3/bin/../lib/libcrypto.so.1.1)
```

```bash
ldd ~/miniconda3/bin/openssl

        linux-vdso.so.1 =>  (0x00007ffe69dfa000)
        libssl.so.1.1 => /hoe/poinarlab/miniconda3/bin/../lib/libssl.so.1.1 (0x00007fccbd914000)
        libcrypto.so.1.1 => /home/poinarlab/miniconda3/bin/../lib/libcrypto.so.1.1 (0x00007fccbd56e000)
        libpthread.so.0 => /lib64/libpthread.so.0 (0x00007fccbd351000)
        libc.so.6 => /home/poinarlab/glibc_install/glibc-2.14/lib/libc.so.6 (0x00007fccbcfc5000)
        libdl.so.2 => /lib64/libdl.so.2 (0x00007fccbcdc1000)
        /lib64/ld-linux-x86-64.so.2 (0x00007fccbd83b000)
```

After installing glibc-2.15

```bash
ldd ~/miniconda3/bin/openssl
```