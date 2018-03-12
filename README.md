# tmux-fuzzywuzzy

> a tmux fuzzy finder with character

[![Build Status](https://travis-ci.org/cfoust/tmux-fuzzywuzzy.svg?branch=master)](https://travis-ci.org/cfoust/tmux-fuzzywuzzy)
[![License:
MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](https://opensource.org/licenses/MIT)

## purpose

Fuzzy find any tmux pane across all of your sessions, windows, and panes and jump to it instantly. It even comes with a preview window.

## usage
Set the `@fuzzy-wuzzy` option in your tmux.conf to whatever key you want fuzzy-wuzzy to be invoked on.

```
set -g @fuzzy-wuzzy "b"
or
set -g @fuzzy-wuzzy "C-l"
or
set -g @fuzzy-wuzzy "S-v"
```

Type your prefix and then the key you specified in `@fuzzy-wuzzy`.

## installation

`fuzzywuzzy` will install [fzf](https://github.com/junegunn/fzf) automatically. If you are on macOS, it will also install `fortune` with `brew`. Otherwise you are responsible for installing `fortune` (e.g `sudo apt-get install fortune).

Install [tpm](https://github.com/tmux-plugins/tpm). Add the following to your `.tmux.conf`:
```
set -g @plugin 'cfoust/tmux-fuzzywuzzy'
set -g @fuzzy-wuzzy "b"
```
