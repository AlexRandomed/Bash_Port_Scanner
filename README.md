# One-Liner-Bash-Scanner
### Usage :
```sh
export ip=yourip; for port in $(seq 1 65535); do timeout 0.01 bash -c "</dev/tcp/$ip/$port && echo The port $port is open || echo The Port $port is closed > /dev/null" 2>/dev/null || echo Connection Timeout > /dev/null; done
```

### For the file :

```
bash scanner.sh IP number_of_ports

Example : 
bash scanner.sh 192.168.1.1 1024
```


PS : Thanks to Brain 0veridde for the idea and a part of the script ;)
