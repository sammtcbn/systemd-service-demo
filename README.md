A very simple systemd service for demo purpose.

Application written by shell script will always dump time stamp to file.

Install on Linux
```sh
$ sudo ./install.bash
```

Uninstall from Linux
```sh
$ sudo ./uninstall.bash
```

Service Control by systemctl
```sh
$ sudo systemctl start mydemo
$ sudo systemctl stop mydemo
$ sudo systemctl restart mydemo
$ sudo systemctl status mydemo
```

Show current time stamp
```sh
$ cat /tmp/mydemo.log
2022-07-29 10:36:20
```
