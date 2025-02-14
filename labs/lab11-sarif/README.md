# Lab11 - Using OASIS Static Analysis Results Interchange Format (SARIF)

OASIS SARIF is standard for common output format for static analysis tools. Understanding the format makes it easier to integrate your own scripts to tools GitHub for example supports SARIF out of the box and thus if you are able to produce SARIF from your custom scripts then you are able to easily integrate them to security tooling.

## Create custom SARIF file and integrate it to GitHub tooling

1. Check the [Lab9](/labs/lab09-http-header-scanning/README.md)
1. Take the output of the Mozilla Observatory
1. Transform it into SARIF format
1. Upload the SARIF JSON to GitHub
1. Check the results from `security/code scanning`

## Links

- OASIS SARIF: <https://www.oasis-open.org/committees/sarif/>
- GitHub SARIF support: <https://docs.github.com/en/code-security/code-scanning/integrating-with-code-scanning/sarif-support-for-code-scanning>
- Microsoft SARIF tutorials: <https://github.com/microsoft/sarif-tutorials>

## Example solution
