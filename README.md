# kubectl-aliases

This repository contains [a script](generate_aliases.py) to generate hundreds of
convenient kubectl aliases programmatically.

You can directly download the [`.kubectl_aliases` file](https://rawgit.com/ahmetb/kubectl-alias/master/.kubectl_aliases)
and save it in your $HOME directory, then edit your .bashrc/.zshrc file with:

    source ~/.kubectl_aliases

### Examples

Some of the 578 generated aliases are:

```
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
...
```

See [the full list](.kubectl_aliases).

Have feedback? Something important is missing? Open an issue or suggest a change
through a pull request.

#### Authors

- [@ahmetb](https://twitter.com/ahmetb)

-----

This is not an official Google project.
