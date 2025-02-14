# Lab08 - IaC scanning

Infrastructure-as-Code (IaC) frameworks let you describe and provision environments using version-controlled templates. However, these templates can introduce misconfigurations that jeopardize your security posture—often before you even deploy. By integrating IaC scanning tools such as `Checkov` into your CI pipeline, you can flag potential risks and fix them at the earliest stages of development, minimizing security gaps and compliance violations.

Cloud services also provide tools like `Azure Policy` and `AWS Config` to enforce compliance and security policies on your cloud resources. These tools can be used to scan your cloud resources for misconfigurations and enforce policies to prevent them.

In this lab, you’ll learn how to set up IaC scanning in GitHub Actions using `Checkov`.

## find misconfigurations from your Infrastructure-as-Code before deploying

There are multiple Infrastructure-as-Code scanning tools and the choice is likely dependant on your infrastructure platform of choice.

## Links

- Checkov: <https://github.com/bridgecrewio/checkov>
- Checkov action: <https://github.com/bridgecrewio/checkov-action>

## Example solution

- Code: <https://github.com/Rinorragi/ci-security/blob/main/.github/workflows/lab08-infrastructure-as-code-scanning.yml>
- Runs: <https://github.com/Rinorragi/ci-security/actions/workflows/lab08-iac-scanning.yml>
