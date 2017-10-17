#!/usr/bin/env python2

import itertools

def main():
    # (alias, full, restrict_to_aliases)

    cmds=[
        ('k', 'kubectl', None),
    ]

    globs=[
        ('s','--namespace=kube-system', None),
    ]

    ops=[
        ('a','apply -f', None),
        ('ex','exec -i -t', None),
        ('lo','logs -f', None),
        ('g','get', None),
        ('d','describe', None),
        ('rm','delete', None),
    ]

    res=[
        ('po','pod', ['g','d','rm','lo']),
        ('dep','deployment', ['g','d','rm','lo']),
        ('svc','service', ['g','d','rm']),
        ('ing','ingress', ['g','d','rm']),
        ('cm','configmap', ['g','d','rm']),
        ('sec','secret', ['g','d','rm']),
    ]

    args=[
        ('oyaml','-o=yaml', ['g']),
        # ('f', '-f', ['g', 'd', 'rm']),
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
    out = filter(is_valid, out)

    for cmd in out:
        print "alias {}='{}'".format(
            ''.join([a[0] for a in cmd]),
            ' '.join([a[1] for a in cmd]),
        )

def gen(parts):
    out = [()]
    for (items, optional, take_exactly_one) in parts:
        orig=list(out)
        combos = []

        if optional and take_exactly_one: combos=combos.append([])

        if take_exactly_one: combos = combinations(items, 1, include_0=optional)
        else: combos = combinations(items, len(items), include_0=optional)

        # permutate the combinations if optional (args are not positional)
        if optional:
            new_combos = []
            for c in combos:
                new_combos += list(itertools.permutations(c))
            combos = new_combos

        new_out=[]
        for segment in combos:
            for stuff in orig:
                new_out.append(stuff+segment)
        out=new_out
    return out

def is_valid(cmd):
    for i in xrange(0, len(cmd)):
        restrictions=cmd[i][2]
        if not restrictions: continue

        found=False
        for r in restrictions:
            found=False

            for j in xrange(0, i):
                if cmd[j][0] == r:
                    found=True
                    break
            if found:
                break
        if restrictions and not found:
            return False
    return True

def combinations(a, n, include_0=True):
    l = []
    for j in xrange(0, n+1):
        if not include_0 and j == 0: continue
        l += list(itertools.combinations(a, j))
    return l

if __name__=='__main__':
    main()
