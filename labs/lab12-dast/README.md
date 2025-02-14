# Lab12 - Dynamic Application Security Testing (DAST)

`sudo docker build -t vulnerable-app-image -f /apps/vulnerable-app/Dockerfile .`
`sudo docker run -t -d vulnerable-app-image -p 8080:8080`
`docker inspect --format '{{ .NetworkSettings.IPAddress }}' 7d3ddbd4b99f`

## Links

- [Nuclei Docker](https://projectdiscovery.io/blog/how-to-run-nuclei-other-projectdiscovery-tools-in-docker)
- [Nuclei Github Action](https://github.com/projectdiscovery/nuclei-action)
- [Zed Attack Proxy Docker](https://www.zaproxy.org/docs/docker/about/)
- [Zed Attack Proxy GitHub Action](https://github.com/marketplace/actions/zap-full-scan)
- [ffuf](https://github.com/ffuf/ffuf)

## Solution

`sudo docker run -v $(pwd):/zap/wrk/:rw -t zaproxy/zap-stable zap-full-scan.py -t http://172.17.0.2:8080`
