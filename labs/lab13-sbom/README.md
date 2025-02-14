# Lab13 - Generate Software Bill of Materials (SBOM)

| Title          | Description                                                                                                                                                                                                                                                                                                                                                               |
| -------------- | ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| Target         | Learn to generate Software Bill of Materials                                                                                                                                                                                                                                                                                                                              |
| Difficulty     | Medium                                                                                                                                                                                                                                                                                                                                                                    |
| Measure        | Components used in application                                                                                                                                                                                                                                                                                                                                            |
| Threat         | [OWASP TOP 10: Vulnerable and outdated components](https://owasp.org/Top10/A06_2021-Vulnerable_and_Outdated_Components/). Sometimes there are no CVEs or updates to vulnerabilities but you can read about them from media. This would create you a catalog where to check if you are using something. It can be also implemented in centralized manner for organization. |
| Detect         | Used components                                                                                                                                                                                                                                                                                                                                                           |
| Prevent        | N/A                                                                                                                                                                                                                                                                                                                                                                       |
| Stage          | Build                                                                                                                                                                                                                                                                                                                                                                     |
| Known problems | Generating SBOM is the first step. You need to have a place where to upload them andf from where to browse them.                                                                                                                                                                                                                                                          |

## Links

- [SPDX format](https://spdx.dev/learn/overview/)
- [CycloneDX format](https://github.com/CycloneDX/specification)
- [sbom-tool](https://github.com/microsoft/sbom-tool)
- [CycloneDX](https://github.com/CycloneDX/cyclonedx-dotnet)

## Solution

- Code: <https://github.com/Rinorragi/ci-security/blob/main/.github/workflows/lab13-sbom.yml>
- Runs: <https://github.com/Rinorragi/ci-security/actions/workflows/lab13-sbom.yml>
