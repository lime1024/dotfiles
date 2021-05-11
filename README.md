# dotfiles
## Requirements

- Git

## Usage

```console
$ git clone https://github.com/lime1024/dotfiles.git
$ dotfiles/setup.sh
$ /usr/local/bin/mitamae local dotfiles/mitamae/roles/darwin/default.rb
```

### run with another name

```console
$ echo "{\"home\": \"/Users/${another_name}/\"}" >/tmp/node.json
$ /usr/local/bin/mitamae local --node-json /tmp/node.json dotfiles/mitamae/roles/darwin/default.rb
```

### dry-run

```console
$ /usr/local/bin/mitamae local --dry-run dotfiles/mitamae/roles/darwin/default.rb
```
