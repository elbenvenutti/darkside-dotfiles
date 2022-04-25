---
theme: gaia
auto-scaling: true
headingDivider: 1
inlineSVG: true
size: 16:9
marp: true
---
<!-- _class: lead invert  -->
<!-- _backgroundColor: black  -->
# come to the dark side

![bg right contain](https://miro.medium.com/max/1400/1*o5LOLefanIssAwhERqfkeg.jpeg)
do more with your terminal

# ...or not
<!-- paginate: true -->
<!-- _backgroundColor: white  -->
![bg right contain](https://i.pinimg.com/originals/57/47/20/574720ed6650d32a8525913a8a8ddefa.jpg)

- You can always use a light colourful terminal theme
- It's not an exclusive choice: keep using your current tools and have the terminal as an alternative

# ...but why?

![bg left:30%](https://networkencyclopedia.com/wp-content/uploads/2019/08/hacking-1024x512.jpeg)

Some of ~~the~~ *my* reasons:

- Remote servers and containers don't have GUIs. You may find yourself in an environment with basic toolkits
- Ubiquity
- Resource friendly
- Repetitive Strain Injuries
- Geek factor :zany_face:

# what's on the menu

![bg left:30%](https://desenio.co.uk/bilder/artiklar/zoom/13272_2.jpg?imgwidth=435&qt=The%20menu)

- Use your configuration anywhere: `stow`
- Do several things in a terminal: `tmux`
- Vim basics (beyond `:q` and `:x`)
- A couple of git tricks
- Other cool console tools
- Questions?

# some recommendations

![bg left:30%](https://sloanreview.mit.edu/wp-content/uploads/2018/11/GEN-Duarte-Leadership-Direction-Idea-Adoption-2400.jpg)

- Use a terminal app with GPU acceleration (particularly important with lots of output on tmux splits)
- Nerd Fonts
- iTerm alternatives that work nicely on osx and linux
  - [kitty](https://sw.kovidgoyal.net/kitty/)
  - [alacritty](https://github.com/alacritty/alacritty)

# before we get to the fun part

![bg left:30%](https://static.news.bitcoin.com/wp-content/uploads/2018/05/bitgrail-halt.jpg)
If you want to follow along this presentation, clone this repo (preferably from your home directory):

```bash
git clone https://github.com/elbenvenutti/darkside-dotfiles
```

# meet your new best friend, `stow`

![bg left:30%](https://upload.wikimedia.org/wikipedia/commons/7/70/The_village_sign_at_Stow_%28geograph_5932300_cropped%29.jpg)
Easily manage symlinks of (configuration) files to a single directory
Upload your configuration to github and enjoy versioning and take it everywhere you go

```bash
brew install stow
```

# my first stow module

![bg left:30%](https://upload.wikimedia.org/wikipedia/commons/7/70/The_village_sign_at_Stow_%28geograph_5932300_cropped%29.jpg)

```bash
ls ~/.ssh
cd ~/darkside-dotfiles
mkdir -p ssh/.ssh
touch ssh/.ssh/some-file
touch ssh/.ssh/some-other-file

stow ssh

ls ~/.ssh 
```

# "unstowing" modules

![bg left:30%](https://upload.wikimedia.org/wikipedia/commons/7/70/The_village_sign_at_Stow_%28geograph_5932300_cropped%29.jpg)

If you want to stop using a module, just run:

```bash
ls ~/.ssh
cd ~/darkside-dotfiles
stow -D ssh

ls -lh ~/.ssh
```

# tmux

![bg left:30%](https://www.electronics-tutorials.ws/wp-content/uploads/2013/08/comb26.gif?fit=231%2C174)

- detachable (just like screen or nohup)
- integrates with iTerm (https://iterm2.com/documentation-tmux-integration.html)
- it can (automatically, with a plugin) save and restore sessions (with tpm + tmux-resurrect)
- can be controlled (and scripted!) from the command line

# tmux basics

![bg left:30%](https://www.electronics-tutorials.ws/wp-content/uploads/2013/08/comb26.gif?fit=231%2C174)

- `cd ~/darkside-dotfiles && stow tmux`
- create a new tmux session: `tmux`
- detaching from your session: `<prefix> d`
- attaching to a detached session: `tmux at`
- split vertically: `<prefix> %`
- split horizontally: `<prefix> "`
- create a new window: `<prefix> c`

# tmux basics (ii)

![bg left:30%](https://www.electronics-tutorials.ws/wp-content/uploads/2013/08/comb26.gif?fit=231%2C174)

- switch to another window: `<prefix> <number>` `<prefix> n` `prefix p`
- enter command mode: `<prefix> :`
- some useful commands: `swap-pane` `move-pane` `swap-window` `move window`
- store a session: `<prefix> <c-s>`
- restore a session `<prefix> <c-r>`

#
<!-- _backgroundColor: white  -->
<!-- _paginate: false  -->

![bg fit](https://imgs.xkcd.com/comics/real_programmers.png)

#
<!-- _backgroundColor: white  -->
<!-- _paginate: false  -->

![bg fit](exitvim.jpg)

# vim basics

![bg left:30% contain](https://upload.wikimedia.org/wikipedia/commons/thumb/9/9f/Vimlogo.svg/1280px-Vimlogo.svg.png)

- [exiting vim is not that hard](https://github.com/hakluke/how-to-exit-vim)
- `cd ~/darkside-dotfiles && stow vim`
- most important vim command: `:help`
- WASD? nope, `k` `h` `j` `l`
- modes (normal `<esc>`, visual `v`, interactive `i`, replace `R`)
- basic commands:
  `a` `A` `i` `I` `s` `S` `r` `c` `C` `x` `X` `d` `D`

# vim (ii)

![bg left:30% contain](https://upload.wikimedia.org/wikipedia/commons/thumb/9/9f/Vimlogo.svg/1280px-Vimlogo.svg.png)

- motions:
  - word WORD back BACK gE end END
  - `0` `^` `$` `gg` `G` `*` `%`
  - paragraph `{` `}`
  - plugins (argumentative, etc)
- repeats: `set number` `set relativenumber`
- finding in the current buffer (`/` `n` `N` `?`)
- find in files (`:Ack`, `grep`, plugins, telescope (only for nvim), ctrl-p, fzf.vim)

# vim (iii)

![bg left:30% contain](https://upload.wikimedia.org/wikipedia/commons/thumb/9/9f/Vimlogo.svg/1280px-Vimlogo.svg.png)

- splits (`<C-w>v` `:split` `<C-w>s` `:vsplit`)
- tabs (`<C-w>t`)
- `<C-o>` `<C-i>i` `gf`
- `:buffers` `:files`
- status line plugins

# vim (iv)

![bg left:30% contain](https://upload.wikimedia.org/wikipedia/commons/thumb/9/9f/Vimlogo.svg/1280px-Vimlogo.svg.png)

- undo `u`
- redo `<C-r>`
- yank `y` `y[motion]`
- paste `p`
- registers
- `:earlier`
- `:later`
- sessions: `:Obsession` `nvim -S Session.vim`

# vim (...and v)

![bg left:30% contain](https://upload.wikimedia.org/wikipedia/commons/thumb/9/9f/Vimlogo.svg/1280px-Vimlogo.svg.png)

- mappings
- macros
- code completion: coc
- themes
- neovim
- vim adventures
- vim golf

# git

![bg left:30%](https://softchief.com/wp-content/uploads/2021/04/1_OY34A4uBsawmGoqpBV3UaA.png)
- local and common configuration
- some of my aliases
- one line graph decorate
- configure vim as a mergetool

# other stuff

![bg left:30%](https://i.scdn.co/image/ab67616d0000b2735d02af8588949bf7ee2f0a08)

- jq
- gtop
- httpie (`brew install httpie`)
- marp
- mc

#

<!-- _paginate: false  -->

![bg](https://hips.hearstapps.com/hmg-prod.s3.amazonaws.com/images/question-mark-icon-on-white-puzzle-royalty-free-image-917901148-1558452934.jpg)

#

<!-- _paginate: false  -->

![bg](https://www.meme-arsenal.com/memes/8c48e37e3833e23dfb09a1bfba9f68d9.jpg)