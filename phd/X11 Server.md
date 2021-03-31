# X11 Server

Running an X11 server with WSL2.

- In CMD prompt:
```cmd
"C:\Program Files\VcXsrv\vcxsrv.exe" :0 -multiwindow -clipboard -wgl -ac
```

- In WSL2 prompt:
```bash
export DISPLAY_NUMBER="0.0"
export DISPLAY=$(grep -m 1 nameserver /etc/resolv.conf | awk '{print $2}'):$DISPLAY_NUMBER
export LIBGL_ALWAYS_INDIRECT=1
```


---

tags: [[Tool]]