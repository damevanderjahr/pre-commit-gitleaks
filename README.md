# pre-commit-gitleaks

## Disclaimer

This is proof-of-concept scripts for gitleaks pre-commit hook install. It's better not to use it.

Use officially approved way: [.pre-commit-config.yaml](https://github.com/gitleaks/gitleaks?tab=readme-ov-file#pre-commit) + [pre-commit tool](https://pre-commit.com/#install)

## Installation

Run in your target clonned repo directory:

```sh
curl -L https://raw.githubusercontent.com/damevanderjahr/pre-commit-gitleaks/main/install.sh | sh
```

## OS support

Should be supported on Linux, Windows, MacOS supported by [gitleaks v8.18.2](https://github.com/gitleaks/gitleaks/releases/tag/v8.18.2)

Tested on Ubuntu 22.04 x64, Windows 10 with [basic Git (Git bash) installation](https://git-scm.com/download/win)

Ubuntu:
![Image](doc/img/linux.png)

Windows:
![Image](doc/img/windows.png)
