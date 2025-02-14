# ci-security

Welcome to the ci-security repository! These labs are designed to teach you how to add basic security safeguards to your CI pipeline using GitHub Actions.

- Code: <https://github.com/Rinorragi/ci-security>
- Slides: <https://rinorragi.github.io/ci-security/>

## Prerequisites

Before diving in, make sure you have the following:

1. **A free GitHub account**

   - This includes free Actions minutes for building and testing the labs.

2. **Git installed locally**

   - You’ll need Git to clone and commit changes to your forked repository.

3. **A text editor or IDE of your choice**
   - Any editor is fine; choose what you’re most comfortable using.

## Getting Started

1. **Fork the Repository**

   - Click `Fork` at the top-right corner of this GitHub repo to create your own copy under your personal GitHub account.

2. **Clone Your Fork**

   - Use `git clone` on your local machine to download your newly forked repository (e.g., `git clone https://github.com/<your-username>/ci-security.git`).

3. **Explore the Labs**

   - Each lab covers a different security topic and resides within the `labs` folder. You’ll be using GitHub Actions to automate tasks, and the build minutes required for these labs are included with your free GitHub account.

4. **Check the Solutions**
   - If you get stuck, refer to the lab-specific README files or the workflows in `.github/workflows` for a hint or a complete solution.

### Tools Used

Throughout these labs, you’ll encounter various security and automation tools. None of these are endorsed by default; they are simply examples chosen for their ease of setup and community support. Feel free to swap in other tools that fit your organization’s needs.

## Apps

Apps are pretty boring.

- [uptodate-app](https://github.com/Rinorragi/ci-security/tree/main/apps/uptodate-app) is just plain empty template done with `dotnet new mvc`
- [vulnerable-app](https://github.com/Rinorragi/ci-security/tree/main/apps/vulnerable-app) is similarly done with `dotnet new mvc` but there are some vulns added for you to find with the labs

## Labs

- [Lab01 - Hello GitHub Actions](/labs/lab01-hello-github-actions/README.md)
- [Lab02 - Branch protections](/labs/lab02-branch-protections/README.md)
- [Lab03 - Software Composition Analysis](/labs/lab03-sca/)
- [Lab04 - Package locks](/labs/lab04-package-locks/README.md)
- [Lab05 - License check](/labs/lab05-license-check/)
- [Lab06 - Static Application Security Testing](/labs/lab06-sast/README.md)
- [Lab07 - Secret scanning](/labs/lab07-secret-scanning/README.md)
- [Lab08 - IaC scanning](/labs/lab08-iac-scanning/README.md)
- [Lab09 - HTTP header scanning](/labs/lab09-http-header-scanning/README.md)
- [Lab10 - TLS cipher scanning](/labs/lab10-tls-scanning/README.md)
- [Lab11 - SARIF file generation](/labs/lab11-sarif/README.md)
- [Lab12 - SARIF file generation](/labs/lab12-dast/README.md)
- [Lab13 - SARIF file generation](/labs/lab13-sbom/README.md)
- [Lab14 - SARIF file generation](/labs/lab14-githooks/README.md)
