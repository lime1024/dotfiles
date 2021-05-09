# dotfiles
## Usage

```console
$ curl -fsSLo /tmp/setup.sh https://raw.githubusercontent.com/lime1024/dotfiles/master/setup.sh
$ chmod +x /tmp/setup.sh
$ /tmp/setup.sh
$ /usr/local/bin/mitamae local /tmp/dotfiles-master/mitamae/roles/darwin/default.rb
```

### run with another name

```console
$ echo "{\"home\": \"/Users/${another_name}/\"}" >/tmp/node.json
$ /usr/local/bin/mitamae local --node-json /tmp/node.json /tmp/dotfiles-master/mitamae/roles/darwin/default.rb
```

### dry-run

```console
$ /usr/local/bin/mitamae local --dry-run /tmp/dotfiles-master/mitamae/roles/darwin/default.rb
```
