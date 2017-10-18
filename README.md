# kubectl-aliases

This repository contains [a script](generate_aliases.py) to generate hundreds of
convenient kubectl aliases programmatically.

You can directly download the [`.kubectl_aliases` file](https://rawgit.com/ahmetb/kubectl-alias/master/.kubectl_aliases)
and save it in your $HOME directory, then edit your .bashrc/.zshrc file with:

    source ~/.kubectl_aliases

### Examples

Some of the 450 generated aliases are:

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

alias kgwf='kubectl get --watch -f'
...
```

See [the full list](.kubectl_aliases).

Have feedback? Something important is missing? Open an issue or suggest a change
through a pull request.

### FAQ

**Does this not slow down my shell start up?** Sourcing the file that contains
~500 aliases takes about 30-45 milliseconds in my shell (zsh). I don't think
it's a big deal for me. Measure it with `echo $(($(date +%s%N)/1000000))`
command yourself in your .bashrc/.zshrc.

### Authors

- [@ahmetb](https://twitter.com/ahmetb)

-----

This is not an official Google project.
