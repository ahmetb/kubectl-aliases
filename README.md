# kubectl-aliases

This repository contains [a script](generate_aliases.py) to generate hundreds of
convenient kubectl aliases programmatically.

You can directly download the [`.kubectl_aliases` file](https://rawgit.com/ahmetb/kubectl-alias/master/.kubectl_aliases)
and save it in your $HOME directory, then edit your .bashrc/.zshrc file with:

```sh
[ -f ~/.kubectl_aliases ] && source ~/.kubectl_aliases
```

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
alias kgsvcslwn='kubectl get service --watch --show-labels --namespace'

alias kgwf='kubectl get --watch -f'
...
```

See [the full list](.kubectl_aliases).

### Enabling the debug mode

Add the following before sourcing the aliases in your .bashrc/.zshrc to
get the full `kubectl` command printed before executing it:

```sh
func kubectl() { echo $@; command kubectl $@ }
```

Example:

```
$ ksysgpowslowidel k8s-app=glbc
+ kubectl --namespace=kube-system get pods --watch --show-labels -o=wide -l k8s-app=glbc
NAME                                  READY     STATUS    RESTARTS   AGE       IP       
l7-default-backend-1044750973-4nr8n   1/1       Running   0          2m        10.32.1.5
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

**Does this not slow down my shell start up?** Sourcing the file that contains
~500 aliases takes about 30-45 milliseconds in my shell (zsh). I don't think
it's a big deal for me. Measure it with `echo $(($(date +%s%N)/1000000))`
command yourself in your .bashrc/.zshrc.

### Authors

- [@ahmetb](https://twitter.com/ahmetb)

-----

This is not an official Google project.

#### Stargazers over time

[![Stargazers over time](https://starcharts.herokuapp.com/ahmetb/kubectl-aliases.svg)](https://starcharts.herokuapp.com/ahmetb/kubectl-aliases)
