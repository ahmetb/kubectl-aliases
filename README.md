# kubectl-aliases

This repository contains [a script](generate_aliases.py) to generate convenient
kubectl aliases programmatically.

You can directly download the [`.kubectl_aliases` file](.kubectl_aliases) and
save it in your $HOME directory, then edit your .bashrc/.zshrc file with:

    source ~/.kubectl_aliases

### Examples

Some of the 4000 generated aliases are:

```
alias k='kubectl'
alias kg='kubectl get'
alias kgpo='kubectl get pod'
alias ksgpo='kubectl --namespace=kube-system get pod'
alias kgsvcoyaml='kubectl get service -o=yaml'
alias kgpoallw='kubectl get pod --all-namespaces --watch'
...
...
```

See [the full list](.kubectl_aliases).

Have feedback? Open an issue or suggest a change through a pull request.

#### Authors

- [@ahmetb](https://twitter.com/ahmetb)

-----

This is not an official Google project.
