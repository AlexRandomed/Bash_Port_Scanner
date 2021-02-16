# One-Liner-Bash-Scanner
### Usage :
```
export ip=yourip
for port in $(seq 1 65535); do timeout 0.01 bash -c "</dev/tcp/$ip/$port && echo Port $port is open || echo Port $port is closed > /dev/null" 2>/dev/null || echo Connection Timeout > /dev/null; done | grep Port
```
