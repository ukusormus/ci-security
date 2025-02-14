# Lab02 - Branch Protections

## Protect a branch

Normally you most likely would protect your `main` or `master` branch. To make the the rest of the exercises more fluent we try to protect all the branches that start with `protected`. 

Make sure that all the branches under `protected` are protected with:

- Require pull request with approval and conversation resolution
- Restrict deletions
- Block force pushes

Then make a branch protection rules for `release` of the software with:

- Restrict updates
- Restrict deletions
- Block force updates

## Links 

- About protected branches: <https://docs.github.com/en/repositories/configuring-branches-and-merges-in-your-repository/managing-protected-branches/about-protected-branches>
- Branch protection rules: <https://docs.github.com/en/repositories/configuring-branches-and-merges-in-your-repository/managing-protected-branches/managing-a-branch-protection-rule>

## Example solution

<details>
  <summary>Spoiler warning - solution</summary>
  
  1. Sign in into GitHub
  1. Select Rules/Rulesets from the Settings
  1. Create a new ruleset `Protect protected` with `include by pattern` with pattern `protected**/**/*`
  1. Required fields above. 

  1. Select Rules/Rulesets from the Settings
  1. Create a new ruleset `Protect releases` with `include by pattern` with pattern `release/**/*`
  1. Required fields from above. 
  
</details>