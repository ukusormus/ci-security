# Lab10 - TLS Cipher scanning

Transport Layer Security (TLS) ensures data confidentiality and integrity over the network. However, older or misconfigured versions and ciphers can expose security weaknesses. Tools like `Nmap`, `Qualys`, or `OpenSSL` can help reveal whether outdated protocols (e.g., TLS 1.0) or insecure ciphers (e.g., RC4) remain in your environment, allowing you to take corrective action before attackers exploit those vulnerabilities.

In this lab, you’ll scan a domain’s TLS configuration to identify which ciphers and TLS versions are in use.

## Scan TLS version

Scan TLS version of the domain.

## Links

- nmap enum ciphers: <https://nmap.org/nsedoc/scripts/ssl-enum-ciphers.html>
- Qualys API: <https://docs.qualys.com/en/vm/api/index.htm>
- openssl-ciphers: <https://docs.openssl.org/3.3/man1/openssl-ciphers/#cipher-list-format>

## Example solution

- Code: <https://github.com/Rinorragi/ci-security/blob/main/.github/workflows/lab10-tls-scanning.yml>
- Runs: <https://github.com/Rinorragi/ci-security/actions/workflows/lab10-tls-scanning.yml>

There are online options like Qualys API or offline options like openssl and nmap to fetch TLS ciphers from online target. Depending on from which machine you initiate connection your results may
