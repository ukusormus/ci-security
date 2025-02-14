# Lab12 - Dynamic Application Security Testing (DAST)

| Title          | Description                                                                                                                                                                                                              |
| -------------- | ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------ |
| Target         | Use spidering and web application vulnerability scanning to find security weaknesses in application                                                                                                                      |
| Difficulty     | Hard                                                                                                                                                                                                                     |
| Measure        | Amount of findings                                                                                                                                                                                                       |
| Threat         | [OWASP TOP 10](https://www.zaproxy.org/docs/guides/zapping-the-top-10-2021/)                                                                                                                                             |
| Detect         | Vulnerabilities in web application                                                                                                                                                                                       |
| Prevent        | Vulnerabilities in web application                                                                                                                                                                                       |
| Stage          | Deploy                                                                                                                                                                                                                   |
| Known problems | You need live target and sometimes it is not public. So you might need an agent inside your network to do this. These tools tend to provide lots of information so you might need to come up with whitelisting solution. |

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

- Code: <https://github.com/Rinorragi/ci-security/blob/main/.github/workflows/lab12-dast.yml>
- Runs: <https://github.com/Rinorragi/ci-security/actions/workflows/lab12-dast.yml>
