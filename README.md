# One-Liner-Bash-Scanner
### Usage :
```sh
export ip=yourip; for port in $(seq 1 65535); do timeout 0.01 bash -c "</dev/tcp/$ip/$port && echo The port $port is open || echo The Port $port is closed > /dev/null" 2>/dev/null || echo Connection Timeout > /dev/null; done
```

### For the file :

```
wget https://raw.githubusercontent.com/AlexRandomed/One-Liner-Bash-Scanner/main/scanner.sh -O ./scanner.sh
bash scanner.sh IP number_of_ports

Example : 
$ ./scanner.sh 192.168.1.254 555
[!] Scanning of 192.168.1.254 in progress...
[+] Port 53 is open
[+] Port 80 is open
[+] Port 443 is open
[-] Scan finished ! : 555 ports scanned
```


PS : Thanks to Brain 0veridde for the idea and a part of the script ;)
