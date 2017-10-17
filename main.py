import itertools


def main():
    # (alias,full,restrict_to_aliases)

    cmds = [
        ('k', 'kubectl', None),
    ]

    globs = [
        ('s','--namespace=kube-system', None),
    ]

    ops = [
        ('d','describe', None),
        ('g','get', None),
        ('rm','delete', None),
        ('ex','exec -i -t', None),
        ('lo','logs -f', None),
    ]

    res = [
        ('po','pod', ['g','d']),
        ('dep','deployment', ['g','d']),
        ('svc','service', ['g','d']),
        ('ing','ingress', ['g','d']),
        ('cm','configmap', ['g','d']),
        ('sec','secret', ['g','d']),
    ]

    args = [
        ('oyaml','-o=yaml', ['g']),
        ('owide','-o=wide', ['g']),
        ('all', '--all-namespaces', ['g']),
        ('w', '--watch', ['g']),
        ('iu', '--include-uninitialized', ['g']),
    ]

    # [(part, optional, take_exactly_one)]
    parts=[
        (cmds, False, True),
        (globs, True, False),
        (ops, False, True),
        (res, False, True),
        (args, True, False)
    ]

    out = gen(parts)

def gen(parts):
    out = []
    for (items, optional, take_exactly_one) in parts:
        combos = []
        if take_exactly_one: combos = combo_exactly_n(items, 1)
        else: combos = combos_all(items, include_0=optional)
        # todo permutate

        print '-----', len(combos)
        for c in combos:
            print c


def combo_exactly_n(a, n):
    return [i for i in itertools.combinations(a, n)]

def combos_all(a, include_0=True):
    l = []
    for j in xrange(0, len(a)+1):
        if not include_0 and j == 0: continue
        l += itertools.combinations(a, j)
    return l

if __name__=='__main__':
    main()
