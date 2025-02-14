# Lab23 - Prevent email disclosure

| Title          | Description                                     |
| -------------- | ----------------------------------------------- |
| Target         | Learn how to prevent leaking your email address |
| Difficulty     | Medium                                          |
| Measure        | Author email addresses                          |
| Threat         | Email address is leaked via author email        |
| Detect         | Leaked email addresses                          |
| Prevent        | Leaking email addresses                         |
| Stage          | Commit                                          |
| Known problems | This lab applies only to GitHub                 |

Leaking your email address that is connected to your GitHub account gives attacker possibility to forge for example PR request or Build failed emails which makes targeted phishing attack more dangerous.

## Protect your email address

Change the GitHub settings to protect your email addresses and rewrite the repository history to have different author.

In GitHub:

1. Goto <https://github.com/settings/emails>
1. Add more email addresses if you want
1. Check keep my email addresses private
1. Copy the `id+username@users.noreply.github.com` for further use

In local git:

1. Use `git config user.email id+username@users.noreply.github.com` to configure new email address for you
1. Use `git rebase -r --root --exec "git commit --amend --no-edit --reset-author"` to rewrite the history of the branch (repeat for other branches)
1. Use `git push --force` to rewrite remote history

⚠⚠⚠ This will rewrite history of remote branch which will affect anyone else working with the repository ⚠⚠⚠

⚠⚠⚠ This will also hijack all commits to your name ⚠⚠⚠

## Links

- GitHub email settings: <https://github.com/settings/emails>
- Set your email address: <https://docs.github.com/en/account-and-profile/setting-up-and-managing-your-personal-account-on-github/managing-email-preferences/setting-your-commit-email-address>
- History rewrite tool: <https://github.com/newren/git-filter-repo/>
- Git log pretty formats: <https://git-scm.com/docs/pretty-formats>

## Example solution

The solution was already in the steps. Use `git log --pretty=format:"%h - %ae"` or `git shortlog --summary --numbered --email` to verify.
