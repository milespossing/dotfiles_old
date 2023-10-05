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
(setq org-agenda-files '("~/org/inbox.org"
                         "~/org/gtd.org"
                         ;; "~/org/ticklet.org"
                         ))

(setq org-capture-templates '(("t" "Todo [inbox]" entry
                               (file+headline "~/org/inbox.org" "Tasks")
                               "* TODO %i%?")
                              ;; ("T" "Tickler" entry
                              ;;  (file+headline "~/org/tickler.org" "Tickler")
                              ;;  "* %i%? \n %U")
                              ))

(setq org-todo-keywords '((sequence "TODO(t)" "WAITING(w)" "|" "DONE(d)" "CANCELLED(c)")))

;; projectile
(setq projectile-project-search-path '("~/src"))

;; zettle
(defvar zettle-root-directory (expand-file-name "~/org/zettle"))

(defun zettle-new (path)
  (interactive "sFile name: ")
  (let* ((timestamp (format-time-string "%Y%m%d%H%M"))
         (filename (concat (file-name-as-directory zettle-root-directory) timestamp "-" path ".org")))
    (with-temp-buffer
      (write-file filename))
    (find-file filename)))

;; WSL
(when (and (eq system-type 'gnu/linux)
           (string-match
            "Linux.*Microsoft.*Linux"
            (shell-command-to-string "uname -a")))
  (setq
   browse-url-generic-program  "/mnt/c/Windows/System32/cmd.exe"
   browse-url-generic-args     '("/c" "start")
   browse-url-browser-function #'browse-url-generic))

;; local
(load! "local")
