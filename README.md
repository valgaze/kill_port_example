# kill_port_example
Starter repo to see what's running on a particular port and how to stop it

tl;dr: What's on port 8000, how do I kill it:

```sh
kill -9 $(lsof -i TCP:8000 | grep LISTEN | awk '{print $2}')
```

Swap 8000 with whatever port you're looking to inspect. (If you're sure something is running on the target port, run the above command with sudo: ```sudo lsof -i TCP:8000 | grep LISTEN | awk '{print $2}'``` then use the PID with this: ```sudo kill -9 $PID```)

See companion blog post here: https://medium.com/@valgaze/utility-post-whats-running-on-port-8000-and-how-to-stop-it-2ed771fbb422#.yffcqv17g


```sh
$ npm start 
#starts a server on 8000 as a daemon
```

```sh
$ npm run boot_server2 
#Attempts to start another server on 8000, if server1 is booted should result in EADDRINUSE
```

```sh
$ npm run cleanup
#Caution: Will kill ANY process that is on port 8000
```