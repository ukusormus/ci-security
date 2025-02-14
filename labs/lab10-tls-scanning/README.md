# Lab10 - TLS Cipher scanning

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
