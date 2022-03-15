# My Emacs Setup

## Emacs

M->, M-< move to start end of file
M-x describe-font see which font C-u C-x = show details about position in buffer
C-x C-c quit emacs
C-a C-SPC with C-n, C-p : mark lines up and down
C-x h to select entire region then M-x write-file to save as a new file
M-x revert-buffer
C-x 3 split vertically
C-x 2 split horizontally
M-p : move line up
M-n : move line down

## Avy

Avy is used for jumping around the **visible** screen.

C-' to start avy

Can additionally do these prefix commands:

" " -  mark to char
k : kill stay
K : kill whole line
y : yank
w : copy
W : copy whole line
Y : yank whole line
t : teleport
T : teleport whole line

## Ivy

C-s : search
M-x : search functions
C-x C-f : find file
M-y : yank pop
C-h f : describe function
C-h v : describe variable
C-h w : where is (which shortcuts for a function)
C-h k : describe the key combination
C-x b : switch buffer
C-c v : push view (to open the view, select it from the buffer list)
C-c V : pop view (no longer selectable in the view)
C-c k : search using ag
S-g : resume previous ivy

## Projectile

https://docs.projectile.mx/projectile/usage.html#interactive-commands
https://github.com/ericdanan/counsel-projectile

*M-o for options for each:*

C-c p p : switch project
C-c p p	: counsel-projectile-switch-project : Switch project
C-c p f	: counsel-projectile-find-file : Jump to a project file
C-c p g	: counsel-projectile-find-file-dwim	: Jump to a project file using completion based on context
C-c p d	: counsel-projectile-find-dir : Jump to a project directory
C-c p b	: counsel-projectile-switch-to-buffer : Jump to a project buffer
C-c p s g : counsel-projectile-grep	: Search project with grep
C-c p s s : counsel-projectile-ag : Search project with ag
C-c p s r : counsel-projectile-rg : Search project with rg


## Markdown

C-c C-h : show all the commands
C-c C-s : styling prefix
C-c C-l : insert a link
C-c C-i : insert an image
C-c C-t 1 : insert header 1
