;;; ~/.doom.d/config.el -*- lexical-binding: t; -*-

;; Place your private configuration here

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

;; better snipe!
(evil-snipe-mode -1)
(map! :nm "s" #'avy-goto-word-1)
;;
;; add spacemacs-like evil surround UX
(after! evil-surround
  (map! :nm "S" #'evil-surround-region)
  (let ((pairs '((?d "$"  . "$")
                 (?p "("  . ")")
                 (?b "["  . "]")
                 (?s "*"  . "*")
                 (?n "(|" . "|)")
                 (?k "{"  . "}")
                 (?l "<"  . ">")
                 (?e "\\\"" . "\\\""))))
    (prependq! evil-surround-pairs-alist pairs)
    (prependq! evil-embrace-evil-surround-keys (mapcar #'car pairs))))


;; theme and font
(setq doom-theme 'doom-dracula)
(setq doom-font (font-spec :family "Fira Code" :size 15))

;; org directory
;;(setq org-directory '("~/Dropbox/notes/"))
;;(setq org-agenda-files '("~/Dropbox/notes/"))

;; deft
;;(setq deft-extensions '("txt" "tex" "org"))
;;(setq deft-directory "~/Dropbox/notes/")


;;(setq prettify-symbols-mode 'nil)

;;journal
