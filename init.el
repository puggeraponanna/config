(require 'package)
(setq package-archives '(("gnu" . "https://elpa.gnu.org/packages/")
			 ("melpa" . "https://melpa.org/packages/")
			  ("org" . "https://orgmode.org/elpa/")))
(package-initialize)
(setq inhibit-startup-screen t)
(tool-bar-mode 0)
(set-face-attribute 'default nil :font "Cascadia Code PL" :height 140)

(global-display-line-numbers-mode 1)
(setq display-line-numbers-type 't)

(setq-default indent-tabs-mode nil)
(setq-default tab-width 4)
(setq indent-line-function 'insert-tab)

(setq org-support-shift-select t)

(setq company-dabbrev-downcase nil)

(setq font-lock-maximum-decoration t)

(setq lsp-keymap-prefix "C-c l")
(require 'lsp-mode)
(add-hook 'go-mode-hook #'lsp)
(add-hook 'rust-mode-hook #'lsp)
(add-hook 'haskell-mode-hook #'lsp)
(add-hook 'haskell-literate-mode-hook #'lsp)

(with-eval-after-load 'lsp-mode
  (add-hook 'lsp-mode-hook #'lsp-enable-which-key-integration))

(projectile-mode +1)
(define-key projectile-mode-map (kbd "C-c p") 'projectile-command-map)

(treemacs-project-follow-mode)
(treemacs-git-mode 'deferred)

(require 'which-key)
(which-key-mode)

(electric-pair-mode 1)

(setq org-roam-directory (file-truename "~/Workspace/mywiki"))
(org-roam-db-autosync-mode)
(setq org-startup-indented t)
(global-org-modern-mode)

(setq org-agenda-files '("~/Workspace/mywiki/20230116123725-todo.org"))
(setq diary-file "~/Workspace/mywiki/20230207061134-diary.org")

(org-babel-do-load-languages
 'org-babel-load-languages
 '((python . t)))

(setq org-babel-python-command "python3")

(add-hook 'after-init-hook 'global-company-mode)

(global-set-key (kbd "C-c g") 'magit-file-dispatch)
(global-set-key (kbd "C-c t") 'treemacs)
(global-set-key (kbd "C-c n i") 'org-roam-node-insert)
(global-set-key (kbd "C-c n f") 'org-roam-node-find)
(global-set-key (kbd "C-c n d") 'org-roam-dailies-capture-today)
(global-set-key (kbd "C-c n c") 'org-roam-capture)

(custom-set-variables
 '(haskell-stylish-on-save t))

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-enabled-themes '(doom-one-light))
 '(custom-safe-themes
   '("2dd4951e967990396142ec54d376cced3f135810b2b69920e77103e0bcedfba9" "2721b06afaf1769ef63f942bf3e977f208f517b187f2526f0e57c1bd4a000350" "da75eceab6bea9298e04ce5b4b07349f8c02da305734f7c0c8c6af7b5eaa9738" "fa2b58bb98b62c3b8cf3b6f02f058ef7827a8e497125de0254f56e373abee088" "bffa9739ce0752a37d9b1eee78fc00ba159748f50dc328af4be661484848e476" "afa47084cb0beb684281f480aa84dab7c9170b084423c7f87ba755b15f6776ef" default))
 '(package-selected-packages
   '(treemacs-magit lsp-haskell haskell-mode treemacs-projectile treemacs rust-mode doom-themes org-modern spacemacs-theme magit org-roam-ui lsp-ui which-key org-roam lsp-mode go-mode company)))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
