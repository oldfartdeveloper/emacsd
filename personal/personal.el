(setq package-archives
      '(("gnu" . "http://elpa.gnu.org/packages/")
        ("melpa" . "http://melpa.milkbox.net/packages/")))
;; From https://www.masteringemacs.org/article/introduction-to-ido-mode
(setq ido-enable-flex-matching t)
(setq ido-everywhere t)
(ido-mode 1)

;; From https://github.com/victorolinasc/ob-elixir/blob/master/README.org
(add-to-list 'load-path "~/.emacs.d/lisp/")

;; From "Mastering Emacs" book:
;; (global-set-key (kbd "M-o") 'other-window)

;; ******** org-reveal settings from Forrest ********
;; syntax highlight in org
(setq org-src-fontify-natively t)
;;; org-reveal
;; (load-file "/Users/fkchang/.emacs.d/elpa/org-reveal-20130704.959/org-reveal.el")

(require 'ox-reveal)
(require 'ob-elixir)
(setq org-reveal-root "file:///Users/SSmith/work/reveal.js")
(org-babel-do-load-languages
 'org-babel-load-languages
 '( (perl . t)
    (ruby . t)
    (sh . t)
    (elixir . t)
    (python . t)
    (emacs-lisp . t)
    ))

;;; org mode
                                        ; I generally don't want these
(setq org-export-with-sub-superscripts nil)

;; ******** End org-reveal settings ********

(add-hook 'elixir-mode-hook 'alchemist-mode)
(setq alchemist-goto-elixir-source-dir "/Users/SSmith/work/elixir/elixir/lib/elixir")
(which-key-mode)
