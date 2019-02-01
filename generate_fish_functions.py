#!/usr/bin/env python3

import linecache
from os import makedirs, symlink
from os.path import isdir
from pathlib import Path

if __name__ == '__main__':
    fish_conf_dir = '{}/.config/fish'.format(str(Path.home()))
    if isdir(fish_conf_dir):
        aliases_dir = '{}/kubectl_aliases'.format(fish_conf_dir)
        functions_dir = '{}/functions'.format(fish_conf_dir)
        makedirs(aliases_dir, exist_ok=True)
        makedirs(functions_dir, exist_ok=True)
        aliases = [x.replace('alias', '').strip()
                   for x in linecache.getlines('.kubectl_aliases')
                   if x.startswith('alias')]
        for alias in aliases:
            alias_name, alias_command = alias.split('=', 1)
            alias_command = alias_command[1:-1]
            fish_function_template = '''
function {}
  echo (set_color blue){} $argv (set_color normal)
  {} $argv
end
            '''
            alias_file = '{}/{}.fish'.format(aliases_dir, alias_name)
            with open(alias_file, 'w') as f:
                f.write(fish_function_template.format(
                    alias_name, alias_command, alias_command))
            symlink(alias_file, '{}/{}.fish'.format(functions_dir, alias_name))
