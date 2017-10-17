import itertools


def main():
    # (alias,full,restrict_to_aliases)

    cmds=[
        ('k', 'kubectl', None),
    ]

    globs=[
        ('s','--namespace=kube-system', None),
    ]

    ops=[
        ('d','describe', None),
        ('g','get', None),
        ('rm','delete', None),
        ('ex','exec -i -t', None),
        ('lo','logs -f', None),
    ]

    res=[
        ('po','pod', ['g','d','lo']),
        ('dep','deployment', ['g','d','lo']),
        ('svc','service', ['g','d']),
        ('ing','ingress', ['g','d']),
        ('cm','configmap', ['g','d']),
        ('sec','secret', ['g','d']),
    ]

    args=[
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
        (res, True, True),
        (args, True, False)
    ]

    out = gen(parts)

def gen(parts):
    out = ['']
    for (items, optional, take_exactly_one) in parts:
        combos = []
        orig=list(out)

        if optional and take_exactly_one: combos=combos.append([])

        if take_exactly_one: combos = combinations(items, 1, include_0=optional)
        else: combos = combinations(items, len(items), include_0=optional)

                # permutate the combinations if optional
        if optional:
            new_combos = []
            for c in combos:
                new_combos += list(itertools.permutations(c))
            combos = new_combos

        print '-----'

        new_out=[]
        for c in combos:
            segment = ''.join([s[0] for s in c])
            print segment if segment else "''"
            for stuff in orig:
                new_out.append(stuff+segment)
            # print [s[0] for s in c] if len(c) else "[]", '-->', orig

        print '\t', '\n\t'.join(new_out)
        out=new_out


def combinations(a, n, include_0=True):
    l = []
    for j in xrange(0, n+1):
        if not include_0 and j == 0: continue
        l += list(itertools.combinations(a, j))
    return l

if __name__=='__main__':
    main()
