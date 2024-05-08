#!//bin/sh

git status > /dev/null 2> /dev/null
exit_code_git=$?
if [ "$exit_code_git" -ne 0 ]; then
    echo "$(pwd) is not a root of git repo, exiting"
    exit 1
fi

set -e

curl -L -o pre-commit-temp https://raw.githubusercontent.com/damevanderjahr/pre-commit-gitleaks/main/pre-commit
chmod +x pre-commit-temp
# mv pre-commit .git/hooks/pre-commit

if [ -f ".git/hooks/pre-commit" ]; then
    if [ "$(grep -c ".git/hooks/pre-commit-gitleaks\|.git/hooks/gitleaks" .git/hooks/pre-commit)" -eq 0 ]; then
        mv pre-commit-temp .git/hooks/pre-commit-gitleaks
        echo ".git/hooks/pre-commit-gitleaks" >> .git/hooks/pre-commit
    fi
else
    mv pre-commit-temp .git/hooks/pre-commit
fi

if [ -f pre-commit-temp ];then
    rm pre-commit-temp
fi