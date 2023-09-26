;;; $DOOMDIR/config.el -*- lexical-binding: t; -*-

;; Default Theme
(setq doom-theme 'doom-nord-aurora)

(setq display-line-numbers-type t)

(setq org-directory "~/org/")

(setq doom-font (font-spec :family "FiraMono Nerd Font Mono"))

(defun see-no-evil ()
  (when (equal major-mode 'vterm-mode)
    (evil-emacs-state)))

(add-hook 'after-change-major-mode-hook 'see-no-evil)

;; Org
(setq org-agenda-files '("~/gtd/inbox.org"
                         "~/gtd/gtd.org"
                         "~/gtd/ticklet.org"))

(setq org-capture-templates '(("t" "Todo [inbox]" entry
                               (file+headline "~/gtd/inbox.org" "Tasks")
                               "* TODO %i%?")
                              ("T" "Tickler" entry
                               (file+headline "~/gtd/tickler.org" "Tickler")
                               "* %i%? \n %U")))

;; projectile

(setq projectile-project-search-path '("~/src"))

;; local
(load! "local")
