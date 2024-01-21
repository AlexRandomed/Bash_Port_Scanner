# One-Liner-Bash-Scanner
### Usage (one liner):
```sh
export ip=yourip; for port in $(seq 1 65535); do timeout 0.01 bash -c "</dev/tcp/$ip/$port && echo The port $port is open || echo The Port $port is closed > /dev/null" 2>/dev/null || echo Connection Timeout > /dev/null; done
```

# Using the file :

``` 
wget https://raw.githubusercontent.com/AlexRandomed/One-Liner-Bash-Scanner/main/scanner.sh -O ./scanner.sh; chmod +x scanner.sh
```
### Usage:

```
./scanner.sh IP_ADDRESS NUMBER_OF_PORTS PRECISION
```

### Example : 
```
$ ./scanner.sh 192.168.1.254 555 0.05
[!] Scanning of 192.168.1.254 in progress...
Precision is set to 0.05
[+] Port 53 is open
[+] Port 80 is open
[+] Port 443 is open
[-] Scan finished ! : 555 ports scanned
```
