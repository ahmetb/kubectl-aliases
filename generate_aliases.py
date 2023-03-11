#!/usr/bin/env python
# -*- coding: utf-8 -*-

# Copyright 2017 Google Inc.
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     https://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

from __future__ import print_function
import itertools
import os.path
import sys

try:
    xrange  # Python 2
except NameError:
    xrange = range  # Python 3


def main():
    # (alias, full, allow_when_oneof, incompatible_with)
    cmds = [('k', 'kubectl', None, None)]

    globs = [('sys', '--namespace=kube-system', None, ['sys'])]

    ops = [
        ('a', 'apply --recursive -f', None, None),
        ('ak', 'apply -k', None, ['sys']),
        ('k', 'kustomize', None, ['sys']),
        ('e', 'edit', None, None),
        ('ex', 'exec -i -t', None, None),
        ('l', 'logs', None, None),
        ('lf', 'logs -f', None, None),
        ('lfp', 'logs -f -p', None, None),
        ('p', 'proxy', None, ['sys']),
        ('pf', 'port-forward', None, ['sys']),
        ('g', 'get', None, None),
        ('d', 'describe', None, None),
        ('D', 'delete', None, None),
        ('run', 'run --rm --restart=Never --image-pull-policy=IfNotPresent -i -t', None, None),
        ('r', 'rollout', None, None),
        ('rr', 'rollout restart', None, None),
        ('s', 'scale', None, None)
        ]

    res = [
        ('po', 'pods', ['e', 'g', 'd', 'D'], None),
        ('rs', 'replicasets', ['e', 'g', 'd', 'D'], None),
        ('dep', 'deployment', ['s', 'r', 'rr', 'e', 'g', 'd', 'D'], None),
        ('sts', 'statefulset', ['s', 'r', 'rr', 'e', 'g', 'd', 'D'], None),
        ('ds', 'daemonset', ['rr', 'e', 'g', 'd', 'D'], None),
        ('j', 'job', ['s', 'e', 'g', 'd', 'D'], None),
        ('cj', 'cronjob', ['e', 'g', 'd', 'D'], None),
        ('hpa', 'hpa', ['e', 'g', 'd', 'D'], None),
        ('svc', 'service', ['e', 'g', 'd', 'D'], None),
        ('ing', 'ingress', ['e', 'g', 'd', 'D'], None),
        ('cm', 'configmap', ['e', 'g', 'd', 'D'], None),
        ('sec', 'secret', ['e', 'g', 'd', 'D'], None),
        ('pvc', 'pvc', ['e', 'g', 'd', 'D'], None),
        ('pv', 'pv', ['e', 'g', 'd', 'D'], None),
        ('csi', 'csidriver', ['e', 'g', 'd', 'D'], None),
        ('sc', 'storageclass', ['e', 'g', 'd', 'D'], None),
        ('sa', 'serviceaccount', ['e', 'g', 'd', 'D'], None),
        ('cr', 'clusterrole', ['e', 'g', 'd', 'D'], None),
        ('crb', 'clusterrolebinding', ['e', 'g', 'd', 'D'], None),
        ('r', 'role', ['e', 'g', 'd', 'D'], None),
        ('rb', 'rolebinding', ['e', 'g', 'd', 'D'], None),
        ('no', 'nodes', ['e', 'g', 'd'], ['sys']),
        ('ns', 'namespaces', ['e', 'g', 'd', 'D'], ['sys']),
        ]
    res_types = [r[0] for r in res]

    args = [
        ('oyaml', '-o=yaml', ['g'], ['ow', 'ojson', 'sl']),
        ('ow', '-o=wide', ['g'], ['oyaml', 'ojson']),
        ('ojson', '-o=json', ['g'], ['ow', 'oyaml', 'sl']),
        ('all', '--all-namespaces', ['g', 'd'], ['D', 'f', 'no', 'sys']),
        ('sl', '--show-labels', ['g'], ['oyaml', 'ojson'], None),
        ('all', '--all', ['D'], None), # caution: reusing the alias
        ('w', '--watch', ['g'], ['oyaml', 'ojson', 'ow']),
        ]

    # these accept a value, so they need to be at the end and
    # mutually exclusive within each other.
    positional_args = [('f', '--recursive -f', ['g', 'd', 'D'], res_types + ['all'
                       , 'l', 'sys']), ('l', '-l', ['g', 'd', 'D'], ['f',
                       'all']), ('n', '--namespace', ['g', 'd', 'D',
                       'lo', 'ex', 'pf'], ['ns', 'no', 'sys', 'all'])]

    # [(part, optional, take_exactly_one)]
    parts = [
        (cmds, False, True),
        (globs, True, False),
        (ops, True, True),
        (res, True, True),
        (args, True, False),
        (positional_args, True, True),
        ]

    shellFormatting = {
        "bash": "alias {}='{}'",
        "zsh": "alias {}='{}'",
        "fish": "abbr --add {} \"{}\"",
    }

    shell = sys.argv[1] if len(sys.argv) > 1 else "bash"
    if shell not in shellFormatting:
        raise ValueError("Shell \"{}\" not supported. Options are {}"
                        .format(shell, [key for key in shellFormatting]))


    kubectx_kubens = [(('kx', 'kubectx', None, None),), (('kn', 'kubens', None, None),)]
    out = kubectx_kubens + gen(parts)
    # out = gen(parts)

    # prepare output
    if not sys.stdout.isatty():
        header_path = \
            os.path.join(os.path.dirname(os.path.realpath(__file__)),
                         'license_header')
        with open(header_path, 'r') as f:
            print(f.read())

    for cmd in out:
        print(shellFormatting[shell].format(''.join([a[0] for a in cmd]),
              ' '.join([a[1] for a in cmd])))


def gen(parts):
    out = [()]
    for (items, optional, take_exactly_one) in parts:
        orig = list(out)
        combos = []

        if optional and take_exactly_one:
            combos = combos.append([])

        if take_exactly_one:
            combos = combinations(items, 1, include_0=optional)
        else:
            combos = combinations(items, len(items), include_0=optional)

        # permutate the combinations if optional (args are not positional)
        if optional:
            new_combos = []
            for c in combos:
                new_combos += list(itertools.permutations(c))
            combos = new_combos

        new_out = []
        for segment in combos:
            for stuff in orig:
                if is_valid(stuff + segment):
                    new_out.append(stuff + segment)
        out = new_out
    return out


def is_valid(cmd):
    for i in xrange(0, len(cmd)):

        # check at least one of requirements are in the cmd
        requirements = cmd[i][2]
        if requirements:
            found = False
            for r in requirements:
                for j in xrange(0, i):
                    if cmd[j][0] == r:
                        found = True
                        break
                if found:
                    break
            if not found:
                return False

        # check none of the incompatibilities are in the cmd
        incompatibilities = cmd[i][3]
        if incompatibilities:
            found = False
            for inc in incompatibilities:
                for j in xrange(0, i):
                    if cmd[j][0] == inc:
                        found = True
                        break
                if found:
                    break
            if found:
                return False

    return True


def combinations(a, n, include_0=True):
    l = []
    for j in xrange(0, n + 1):
        if not include_0 and j == 0:
            continue
        l += list(itertools.combinations(a, j))
    return l


def diff(a, b):
    return list(set(a) - set(b))


if __name__ == '__main__':
    main()
