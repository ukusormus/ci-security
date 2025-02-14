# Lab09 - HTTP Header scanning

HTTP headers play a vital role in securing web applications. Scanning these headers can uncover missing or misconfigured security directives — such as `Content-Security-Policy` or `Strict-Transport-Security` — that help defend against attacks like clickjacking and cross-site scripting. By using tools like `Mozilla Observatory`, you can quickly assess your site’s HTTP security posture, identify weaknesses, and implement fixes before a vulnerability becomes critical.

In this lab, you’ll set up a workflow to scan the HTTP headers of your web application using `Mozilla Observatory`.

## Scan HTTP headers

## Links

- Mozilla Observatory: <https://github.com/mdn/mdn-http-observatory/>

## Example solution

- Code: <https://github.com/Rinorragi/ci-security/blob/main/.github/workflows/lab09-http-header-scanning.yml>
- Runs: <https://github.com/Rinorragi/ci-security/actions/workflows/lab09-http-header-scanning.yml>
