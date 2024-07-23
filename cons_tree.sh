#!/bin/sh

#----------------------------------------------------------------------------
# DESCRIPTION		
# DATE				2024
# AUTHOR			ss401533@gmail.com                                           
#----------------------------------------------------------------------------
# template found at ~/.vim/sh_header.temp

set -o errexit
echo "$0" | tee -a ~/db.git/command_history.txt | ts >> ~/db.git/command_history_timestamped.txt

cat <<EOF | batcat --style=plain --paging=never --language sh --theme TwoDark
mac Tue 23 July 2024  4:16PM> brew search sbcl                                                                                                                                                               /Volumes/trash/trash
==> Formulae
sbcl
mac Tue 23 July 2024  4:17PM> brew install sbcl                                                                                                                                                              /Volumes/trash/trash
==> Downloading https://formulae.brew.sh/api/formula.jws.json
############################################################################################################################################################################################################################## 100.0%
==> Downloading https://formulae.brew.sh/api/cask.jws.json
############################################################################################################################################################################################################################## 100.0%
==> Downloading https://ghcr.io/v2/homebrew/core/sbcl/manifests/2.4.6
############################################################################################################################################################################################################################## 100.0%
==> Fetching sbcl
==> Downloading https://ghcr.io/v2/homebrew/core/sbcl/blobs/sha256:3254f78e86f7e09ee213fb91be7cd83ad304f977f9d8ce3c67f9171a510d4816
############################################################################################################################################################################################################################## 100.0%
==> Pouring sbcl--2.4.6.arm64_sonoma.bottle.tar.gz
🍺  /opt/homebrew/Cellar/sbcl/2.4.6: 1,380 files, 61.0MB
==> Running `brew cleanup sbcl`...
Disable this behaviour by setting HOMEBREW_NO_INSTALL_CLEANUP.
Hide these hints with HOMEBREW_NO_ENV_HINTS (see `man brew`).
mac Tue 23 July 2024  4:17PM> sbcl --load quicklisp.lisp                                                                                                                                                     /Volumes/trash/trash
This is SBCL 2.4.6, an implementation of ANSI Common Lisp.
More information about SBCL is available at <http://www.sbcl.org/>.

SBCL is free software, provided as is, with absolutely no warranty.
It is mostly in the public domain; some portions are provided under
BSD-style licenses.  See the CREDITS and COPYING files in the
distribution for more information.

  ==== quicklisp quickstart 2015-01-28 loaded ====

    To continue with installation, evaluate: (quicklisp-quickstart:install)

    For installation options, evaluate: (quicklisp-quickstart:help)

*  (quicklisp-quickstart:install)
; Fetching #<URL "http://beta.quicklisp.org/client/quicklisp.sexp">
; 0.82KB
==================================================
839 bytes in 0.00 seconds (2043.23KB/sec)
; Fetching #<URL "http://beta.quicklisp.org/client/2021-02-13/quicklisp.tar">
; 260.00KB
==================================================
266,240 bytes in 0.09 seconds (2891.56KB/sec)
; Fetching #<URL "http://beta.quicklisp.org/client/2021-02-11/setup.lisp">
; 4.94KB
==================================================
5,057 bytes in 0.00 seconds (5356.27KB/sec)
; Fetching #<URL "http://beta.quicklisp.org/asdf/3.2.1/asdf.lisp">
; 628.18KB
==================================================
643,253 bytes in 0.14 seconds (4526.16KB/sec)
; Fetching #<URL "http://beta.quicklisp.org/dist/quicklisp.txt">
; 0.40KB
==================================================
408 bytes in 0.00 seconds (1786.72KB/sec)
Installing dist "quicklisp" version "2023-10-21".
; Fetching #<URL "http://beta.quicklisp.org/dist/quicklisp/2023-10-21/releases.txt">
; 542.82KB
==================================================
555,849 bytes in 0.11 seconds (4864.12KB/sec)
; Fetching #<URL "http://beta.quicklisp.org/dist/quicklisp/2023-10-21/systems.txt">
; 416.36KB
==================================================
426,350 bytes in 0.10 seconds (3993.30KB/sec)

  ==== quicklisp installed ====

    To load a system, use: (ql:quickload "system-name")

    To find systems, use: (ql:system-apropos "term")

    To load Quicklisp every time you start Lisp, use: (ql:add-to-init-file)

    For more information, see http://www.quicklisp.org/beta/

NIL
* (ql:quickload :draw-cons-tree)
To load "draw-cons-tree":
  Load 1 ASDF system:
    asdf
  Install 2 Quicklisp releases:
    alexandria draw-cons-tree
; Fetching #<URL "http://beta.quicklisp.org/archive/alexandria/2023-10-21/alexandria-20231021-git.tgz">
; 55.87KB
==================================================
57,207 bytes in 0.02 seconds (2943.43KB/sec)
; Fetching #<URL "http://beta.quicklisp.org/archive/draw-cons-tree/2023-06-18/draw-cons-tree-20230618-git.tgz">
; 8.89KB
==================================================
9,106 bytes in 0.00 seconds (7523.33KB/sec)
; Loading "draw-cons-tree"
[package alexandria]..............................
[package alexandria-2]............................
[package draw-cons-tree]..
(:DRAW-CONS-TREE)
* (draw-cons-tree:draw-tree '(((1 . 2) . (3 . 4)) . ((5 . 6) . (7 . nil))))
;;; [o|o]-[o|o]-[o|/]
;;;  |     |     |
;;;  |     |     7
;;;  |     |
;;;  |    [o|o]-6
;;;  |     |
;;;  |     5
;;;  |
;;; [o|o]-[o|o]-4
;;;  |     |
;;;  |     3
;;;  |
;;; [o|o]-2
;;;  |
;;;  1
NIL
*
EOF

