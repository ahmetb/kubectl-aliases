# kubectl-aliases

This repository contains [a script](generate_aliases.py) to generate hundreds of convenient kubectl aliases programmatically.

### Examples

Some of the 800 generated aliases are:

#### Bash

```sh
alias k='kubectl'
alias kg='kubectl get'
alias kgpo='kubectl get pod'

alias ksysgpo='kubectl --namespace=kube-system get pod'

alias krm='kubectl delete'
alias krmf='kubectl delete -f'
alias krming='kubectl delete ingress'
alias krmingl='kubectl delete ingress -l'
alias krmingall='kubectl delete ingress --all-namespaces'

alias kgsvcoyaml='kubectl get service -o=yaml'
alias kgsvcwn='kubectl get service --watch --namespace'
alias kgsvcslwn='kubectl get service --watch --show-labels --namespace'

alias kgwf='kubectl get --watch -f'
...
```

See [the full list](.kubectl_aliases).

#### PowerShell

```powershell
function k([Parameter(ValueFromRemainingArguments = $true)]$params) { & kubectl $params }
function kg([Parameter(ValueFromRemainingArguments = $true)]$params) { & kubectl get $params }
function kgpo([Parameter(ValueFromRemainingArguments = $true)]$params) { & kubectl get pods $params }

function ksysgpo([Parameter(ValueFromRemainingArguments = $true)]$params) { & kubectl --namespace=kube-system get pods $params }

function krm([Parameter(ValueFromRemainingArguments = $true)]$params) { & kubectl delete $params }
function krmf([Parameter(ValueFromRemainingArguments = $true)]$params) { & kubectl delete --recursive -f $params }
function krming([Parameter(ValueFromRemainingArguments = $true)]$params) { & kubectl delete ingress $params }
function krmingl([Parameter(ValueFromRemainingArguments = $true)]$params) { & kubectl delete ingress -l $params }
function krmingall([Parameter(ValueFromRemainingArguments = $true)]$params) { & kubectl delete ingress --all $params }

function kgsvcoyaml([Parameter(ValueFromRemainingArguments = $true)]$params) { & kubectl get service -o=yaml $params }
function kgsvcwn([Parameter(ValueFromRemainingArguments = $true)]$params) { & kubectl get service --watch --namespace $params }

function kgwf([Parameter(ValueFromRemainingArguments = $true)]$params) { & kubectl get --watch --recursive -f $params }
...
```

See [the full list](kubectl_aliases.ps1).

### Installation

#### Bash

You can directly download the [`.kubectl_aliases`](.kubectl_aliases) file and save it in your $HOME directory, then edit your .bashrc/.zshrc file with:

```sh
[ -f ~/.kubectl_aliases ] && source ~/.kubectl_aliases
```

**Print the full command before running it:** Add this to your `.bashrc` or
`.zshrc` file:

```sh
function kubectl() { echo "+ kubectl $@"; command kubectl $@; }
```

#### PowerShell
You can directly download the [`kubectl_aliases.ps1`](kubectl_aliases.ps1) file and save it to PowerShell profile directory: `$Home\Documents\WindowsPowerShell\` then run this command to edit your `profile.ps1`:

```powershell
'. $Home\Documents\WindowsPowerShell\kubectl_aliases.ps1' | Out-File $PROFILE.CurrentUserAllHosts -Encoding ascii -Append
```

**Print the full command before running it:** Add this to your `profile.ps1` file:

```powershell
function kubectl([Parameter(ValueFromRemainingArguments = $true)]$params) { Write-Output "> kubectl $(@($params | ForEach-Object {$_}) -join ' ')"; & kubectl.exe $params; }
```

### Syntax explanation

* **`k`**=`kubectl`
  * **`sys`**=`--namespace kube-system`
* commands:
  * **`g`**=`get`
  * **`d`**=`describe`
  * **`rm`**=`delete`
  * **`a`**:`apply -f`
  * **`ex`**: `exec -i -t`
  * **`lo`**: `logs -f`
* resources:
  * **`po`**=pod, **`dep`**=`deployment`, **`ing`**=`ingress`,
    **`svc`**=`service`, **`cm`**=`configmap`, **`sec`=`secret`**,
    **`ns`**=`namespace`, **`no`**=`node`
* flags:
  * output format: **`oyaml`**, **`ojson`**, **`owide`**
  * **`all`**: `--all` or `--all-namespaces` depending on the command
  * **`sl`**: `--show-labels`
  * **`w`**=`-w/--watch`
* value flags (should be at the end):
  * **`f`**=`-f/--filename`
  * **`l`**=`-l/--selector`

### FAQ

**Does this not slow down my shell start up?**

Sourcing the file that contains
~500 aliases takes about 30-45 milliseconds in my shell (zsh). I don't think
it's a big deal for me. Measure it with `echo $(($(date +%s%N)/1000000))`
command yourself in your .bashrc/.zshrc.

**How to regenerate the PowerShell aliases file?**
```powershell
# powershell
generate_aliases.py --output ps1 | Out-File -Encoding ascii kubectl_aliases.ps1
```

### Authors

- [@ahmetb](https://twitter.com/ahmetb)

-----

This is not an official Google project.
