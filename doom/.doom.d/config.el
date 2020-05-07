;;; ~/.doom.d/config.el -*- lexical-binding: t; -*-

;; Place your private configuration here

(setq haskell-process-type 'cabal-new-repl)

;; change local leader
(setq doom-localleader-key ","
      doom-localleader-alt-key "M-,")

;;define some useful hotkeys in ivy
(map! (:when (featurep! :completion ivy)
        (:after ivy
          :map ivy-minibuffer-map
          "C-h"   "DEL"
          "C-S-h" help-map)
        (:after counsel
          :map counsel-ag-map
          "C-h"   "DEL"
          "C-S-h" help-map)
        ))

;; define additional things in the SPC menu
(map! :leader
      :desc "Run shell cmd" "!" #'shell-command
      :desc "Search project" "/" #'+default/search-project
      :desc "Switch to last buffer" "l" #'evil-switch-to-windows-last-buffer
      )

(defun sort-words (reverse beg end)
    "Sort words in region alphabetically, in REVERSE if negative.
  Prefixed with negative \\[universal-argument], sorts in reverse.

  The variable `sort-fold-case' determines whether alphabetic case
  affects the sort order.

  See `sort-regexp-fields'."
    (interactive "*P\nr")
    (sort-regexp-fields reverse "\\w+" "\\&" beg end))

;; add spacemacs-like evil surround UX
(after! evil-surround
  (let ((pairs '((?g "$" . "$")
                 (?h "(" . ")")
                 (?j "[" . "]")
                 (?k "{" . "}")
                 (?l "<" . ">")
                 (?ø "'" . "'")
                 (?æ "\"" . "\""))))
    (prependq! evil-surround-pairs-alist pairs)
    (prependq! evil-embrace-evil-surround-keys (mapcar #'car pairs))))

;; better snipe!
(evil-snipe-mode -1)
(map! :nm "s" #'avy-goto-word-1
      :nm "S" #'avy-goto-char-timer)
