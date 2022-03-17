# Emacs #

My [Emacs](https://www.gnu.org/software/Emacs/) configuration. It rocks.

## Installation ##

[Lot's](https://www.gnu.org/software/Emacs/download.html) of ways to install Emacs. I install using [homebrew](https://formulae.brew.sh/cask/Emacs#default).

## Packages ##

There are thousands of great Emacs packages. These are the few that I use. I'll try and keep this list up to date as best I can.

### Packages Stu Loves: ###

  * [projectile](https://docs.projectile.mx/projectile/index.html) - a library for managing projects.
  * [ivy](https://oremacs.com/swiper/) - Made up of three packages - ivy, swiper and counsel. When active, ivy-mode completes the selection process by narrowing available choices while previewing in the minibuffer. Alternative packages are [helm](https://github.com/emacs-helm/helm) and [ido](https://www.gnu.org/software/emacs/manual/html_mono/ido.html). I like `ivy` the most.
  * [counsel-projectile](https://github.com/ericdanan/counsel-projectile) - Projectile has native support for ivy. `counsel-projectile` provides further integration by taking advantage of `ivy's` support for selecting from a list of actions and applying the action without leaving the session.
  * [company-mode](https://company-mode.github.io) - A text completion framework for *completion at point*, meaning completion in ordinary buffers.
  * [magit](https://magit.vc) - The very best way to work with git. I love this package.
  * [markdown-mode](https://jblevins.org/projects/markdown-mode/) - A major mode for editing markdown files. So good.
  * [crux](https://github.com/bbatsov/crux) - crux bundles many useful interactive commands to enhance your overall Emacs experience.
  * [doom-themes](https://github.com/doomemacs/themes) - amazing collection of themes. I'm currenctly using [doom-vibrant](https://github.com/doomemacs/themes/blob/screenshots/doom-vibrant.png).

I also use these small packages for various things:

  * [ag](http://agel.readthedocs.org/en/latest/index.html) - An Emacs frontend to [The Silver Searcher](https://github.com/ggreer/the_silver_searcher). I use it for global search in a project ([counsel-projectile-ag](https://github.com/ericdanan/counsel-projectile#the-counsel-projectile-ag-command)). It's insanely fast.
  * [avy](https://github.com/abo-abo/avy) - for jumping to *visible* text using a char based decision tree.
  * [aggressive-indent-mode](https://github.com/Malabarba/aggressive-indent-mode) - Always keep your code indented.
  * [idle-highlight-mode](https://gitlab.com/ideasman42/emacs-idle-highlight-mode/) - Simple symbol highlighting.
  * [exec-path-from-shell](https://github.com/purcell/exec-path-from-shell) - Library to ensure environment variables inside Emacs look the same as in the user's shell.
  * [paredit](http://danmidwood.com/content/2014/11/21/animated-paredit.html) - Necessary for doing any kind of work with lisps. I set it to be used in clojure mode and in the REPL.
  * [rainbow-delimiters](https://github.com/Fanael/rainbow-delimiters) - Highlight delimeters `() {} []` according to their depth.
  * [super-save](https://github.com/bbatsov/super-save) - auto save buffers when certain things happen (like switching between buffers). Replaces the standard `auto-save-mode`.
  * [focus](https://github.com/larstvei/Focus) - Dim surrounding text. I'm experimenting with this. I like it so far.
  * [zprint-mode](https://github.com/pesterhazy/zprint-mode.el) - I use [zprint](https://cljdoc.org/d/zprint/zprint/1.2.2/doc/introduction) for pretty printing Clojure code. This package allows me to pretty print with zprint with the buffer.
  * [doom-modeline](https://github.com/seagle0128/doom-modeline) - A fancy, fast modeline designed for minimalism. 

Fonts:

  * [JetBrains Mono](https://www.jetbrains.com/lp/mono/) - I'm currently using this. Arguably the best font for programming.
  * [FiraCode](https://github.com/tonsky/FiraCode) - Another excellent font. 
  
Both these fonts provide ligatures if that's your thing.

## Configuration ##

Emacs config is loaded from `~/.emacs.d`

The entrypoint to Emacs config is the [Emacs Initialization File](https://www.gnu.org/software/emacs/manual/html_node/emacs/Init-File.html) `init.el`.

In my `init.el` I load all my libraries from each of the `~/.emacs.d/customizations/stu-*` files.

Emacs configuration is simply a collection of functions and variables.

## Some pointers to get up to speed quickly ##

### Control Keys ###

When you see `M-<key>` it means to press the *Meta* key. On my Mac *Meta* is the `&#8997;` key.

When you see `C-<key>` it means to press the *Ctrl* key.

When you see `s-<key>` it means to press the *Super* key. On my Mac *Super* is the `&#8984;` key.

### Help ###

Emacs has a build in manual `C-h C-h` for the function `help-for-help`, but I don't find it that useful. 

These keybindings are more useful:

  * `C-h f` for the function `counsel-describe-function`, which overrides the default `describe-function` which will show the documentation for a specific Emacs or package function.
  * `C-h v` for the function `counsel-describe-variable`, which overrides the default `describe-variable` which will show the documentation for a specific Emacs or package variable.
  * `C-h k` for the function `counsel-describe-key` which will prompt you for a key combination, then will show you the documentation of the function for that combination.
  * `C-h w` for the function `where-is` which will show you keybindings for a given function.
  
### Windows ###

It's often useful to work with multiple windows. [These](https://ftp.gnu.org/old-gnu/Manuals/emacs-20.7/html_chapter/emacs_20.html) are the official docs. I tend to only use these commands:

  * `C-x 2` for `split-window-below` to split horizontally.
  * `C-x 3` for `split-window-right` to split vertically.
  * `C-x 1` for `delete-other-windows` to close all other windows.
  * `C-x 0` for `delete-window` to close the current window.
  
I have also setup `C-;` as a custom binding for `prev-window` for quickly jumping between windows.

## Keybindings I use all the time ##

### Emacs ###

`M->` bound to `end-of-buffer` to move to end of buffer.
`M-<` bound to `beginning-of-buffer` to  move to start of buffer.
`C-x C-c` bound to `save-buffers-kill-terminal` to save and quit Emacs.
`C-a C-SPC` with `C-n` or `C-p` to mark lines up and down.
`C-x h` to select entire buffer then `M-x write-file` to save as a new file.
`M-x revert-buffer` to revert the buffer to it's last save.
`M-p` to move the line up. See *stu-bindings.el*. Not bound in markdown-mode.
`M-n` to move the line down. See *stu-bindings.el*. Not bound in markdown-mode.
`C-;` bound to `prev-window` to jump to the previous window.
`C-.` to comment a line.
`M-j` bound to `previous-buffer` to show the previous buffer in the window.
`M-k` bound to `next-buffer` to show the next buffer in the window.

### Avy ###

[Avy](https://github.com/abo-abo/avy) is used for jumping around the **visible** screen.

`C-'` bound to `avy-goto-char-timer` which will start avy. Use the character prompts to narrow down your selection.

You can also use prefix commands to do things.

As an example, to kill this line (with this X) you would type the combination `C-'` then `K` then whatever keys avy is prompting your selection of the X.

These are the other prefix commands:

 * `<space>` -  mark to char
 * `k` : kill stay
 * `K` : kill whole line
 * `y` : yank
 * `w` : copy
 * `W` : copy whole line
 * `Y` : yank whole line
 * `t` : teleport
 * `T` : teleport whole linenn

### Ivy ###

[Manual](https://oremacs.com/swiper/).

 * `C-s` bound to `swiper-isearch` to search in the current buffer.
 * `M-x` bound to `counsel-M-x` which overrides `M-x` and is used to search all functions.
 * `C-x C-f` bound to `counsel-find-file` for finding files.
 * `M-y` bound to `counsel-yank-pop` which will show a minibuffer list of your recent kills that can be yanked
 * `C-x b` bound to `ivy-switch-buffer` to select a buffer to swith to.
 * `C-c v` bound to `ivy-push-view` to name the current view and push it to the view list
 * `C-c V` bound to `ivy-pop-view` which will let you choose a previously pushed view.
 * `C-c s` bound to `counsel-ag` which will search for a string in a root directory.
 * `C-c C-r` bound to `ivy-resume` which will resume the last completion session. This is nice.

### Projectile ###

Projectile manages projects. The manual is good so read it.

Projectile and Counsel play nicely through the `counsel-projectile` package, which basically overloads all the default projectile functions.

[Docs](https://docs.projectile.mx/projectile/index.html)
[Projectile Interactive Commands](https://docs.projectile.mx/projectile/usage.html#interactive-commands)
[Counsel Projectile](https://github.com/ericdanan/counsel-projectile)

Each of these options has further options. If you want to see those options use `M-o` after you have triggered any of these:

 * `C-c p p` bound to `counsel-projectile-switch-project` to switch between known projects.
 * `C-c p f` bound to `counsel-projectile-find-file` to find a project file.
 * `C-c p g` bound to `counsel-projectile-find-file-dwim` to find a project file using completion based on context.
 * `C-c p d` bound to `counsel-projectile-find-dir` to find a project directory.
 * `C-c p b` bound to `counsel-projectile-switch-to-buffer` to switch to a project buffer.
 * `C-c p s s` bound to `counsel-projectile-ag` to search the project files using `ag`. Very useful.

## Markdown

The [docs](https://jblevins.org/projects/markdown-mode/) are ok. I find the help better.

 * `C-c C-h` bound to `TDB` show all the markdown commands.
 * `C-c C-s` is the styling prefix. `b` for **bold**, `i` for *italic* etc. Check the menu in the minubuffer for more options.
 * `C-c C-l` bound to `markdown-insert-link` to insert a link.
 * `C-c C-i` bound to `markdown-insert-image` to insert an image.
 * `C-c C-t` is the header prefix. 1, 2, 3, etc for the different headers.
 
There are many more commands. Read the docs.

