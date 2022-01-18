# kubectl-aliases

This repository contains [a script](generate_aliases.py) to generate hundreds of
convenient shell aliases for kubectl, so you no longer need to spell out every single
command and --flag over and over again.

An example shell alias created from command/flags permutation looks like:

    alias ksysgdepwslowidel='kubectl --namespace=kube-system get deployment --watch --show-labels -o=wide -l'

Confused? Read on.

### Examples

Some of the 800 generated aliases are:

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
alias kgsvcslwn='kubectl get service --show-labels --watch --namespace'

alias kgwf='kubectl get --watch -f'
...
```

See [the full list](.kubectl_aliases).

### Installation

You can directly download the [`.kubectl_aliases` file](https://raw.githubusercontent.com/ahmetb/kubectl-aliases/master/.kubectl_aliases)
for bash/zsh or the [`.kubectl_aliases.fish` file](https://raw.githubusercontent.com/ahmetb/kubectl-aliases/master/.kubectl_aliases.fish)
for fish and save it to your `$HOME` directory.

#### Bash/Zsh

Add the following to your `.bashrc/.zshrc` file:

```sh
[ -f ~/.kubectl_aliases ] && source ~/.kubectl_aliases
```

> **Recommendation:** If you want to use GNU `watch`  command instead of
> `kubectl [...] --watch`, run it like this:
>
>     [ -f ~/.kubectl_aliases ] && source \
>        <(cat ~/.kubectl_aliases | sed -r 's/(kubectl.*) --watch/watch \1/g')

**Print the full command before running it:** Add this to your `.bashrc` or
`.zshrc` file:

```sh
function kubectl() { echo "+ kubectl $@">&2; command kubectl $@; }
```

#### Fish

Add the following to your `~/.config/fish/config.fish` file:

```fish
test -f ~/.kubectl_aliases.fish && source ~/.kubectl_aliases.fish
```

This actually adds the more powerful fish [abbreviations](https://fishshell.com/docs/current/cmds/abbr.html)
instead of aliases, so that pressing space shows the full command before execution.

> **Recommendation:** If you want to use GNU `watch`  command instead of
> `kubectl [...] --watch`, run it like this:
>
>     test -f ~/.kubectl_aliases.fish && source \
>          (cat ~/.kubectl_aliases.fish | sed -r 's/(kubectl.*) --watch/watch \1/g' | psub)

### Syntax explanation

* **`k`**=`kubectl`
  * **`sys`**=`--namespace kube-system`
* commands:
  * **`g`**=`get`
  * **`d`**=`describe`
  * **`rm`**=`delete`
  * **`a`**:`apply -f`
  * **`ak`**:`apply -k`
  * **`k`**:`kustomize`
  * **`ex`**: `exec -i -t`
  * **`lo`**: `logs -f`
* resources:
  * **`po`**=pod, **`dep`**=`deployment`, **`ing`**=`ingress`,
    **`svc`**=`service`, **`cm`**=`configmap`, **`sec`**=`secret`,
    **`ns`**=`namespace`, **`no`**=`node`
    **:warning: Please do not suggest new resources here, instead fork the project.**
* flags:
  * output format: **`oyaml`**, **`ojson`**, **`owide`**
  * **`all`**: `--all` or `--all-namespaces` depending on the command
  * **`sl`**: `--show-labels`
  * **`w`**=`-w/--watch`
* value flags (should be at the end):
  * **`n`**=`-n/--namespace`
  * **`f`**=`-f/--filename`
  * **`l`**=`-l/--selector`

### Running the script

The script has only one optional argument, the shell to which the aliases will be generated. If not given, it assumes `bash`. Ex:

```bash
# Generate aliases for bash/zsh
python generate_aliases.py > .kubectl_aliases

# Generate abbr for fish
python generate_aliases.py fish > .kubectl_aliases.fish
```

### FAQ

- **Doesn't this slow down my shell start up?** Sourcing the file that contains
~500 aliases takes about 30-45 milliseconds in my shell (zsh). I don't think
it's a big deal for me. Measure it with `echo $(($(date +%s%N)/1000000))`
command yourself in your .bashrc/.zshrc.

- **Can I add more Kubernetes resource types to this?** Please consider forking
  this repo and adding the resource types you want. Not all resource types are
  used by everyone, and adding more resource types slows down shell initialization
  see above).

- **Where can I find PowerShell aliases for kubectl?** There’s a fork of this
  [here](https://github.com/shanoor/kubectl-aliases-powershell).

### Authors

- [@ahmetb](https://twitter.com/ahmetb)

-----

This is not an official Google project.
