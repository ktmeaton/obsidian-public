# X11 Server

## Local
1. Start an [[X11 Server]] on the local machine. Like [[MobaXTerm]] or [[VcXsrv]].

### [[VcXsrv]]
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

## Remote (ssh)

### Java GUI

1. Connect to the remote with X forwarding.
	```bash
	ssh -X -v <remote_user>@<remote_host>
	ssh <node>
	```
1. Start up a java application or jar file.
	```bash
	/home/keaton/myapps/megan6_14_2/MEGAN
	```

### Port Forwarding

#### Grip Server
1. Forward the desired ports:
	```bash
	ssh -v -L 6418:localhost:6418 <remote_user>@<remote_host>
	ssh -v -L 6418:localhost:6418 <node>
	```
1. Load the program environment.
	```bash
	conda activate git-dev
	grip /path/to/README.md 6418
	```
1. Open browser on  local machine: 
	- [http://localhost:6418](http://localhost:6418)

#### Jupyter Notebook Server

**Note**: This is going to be very slow, not ideal for development.

1. Forward the desired ports:
	```bash
	ssh -v -L 8001:localhost:8001 <remote_user>@<remote_host>
	ssh -v -L 8001:localhost:8001 <node>
	```
1. Load the program environment.
	```bash
	conda activate plague-phylogeography
	jupyter notebook --port 8001
	```
1. Open browser on  local machine: [http://localhost:8001](http://localhost:8001)
1. After the browser connection, the token url to connect will be displayed in the terminal.

Tip: If the browser won't connect, hit Ctrl+C to act like you're going to close the server but don't. Then the token URL will appear.

---

tags: [[Tool]], #📝/🌿 