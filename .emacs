(require 'package)

(add-to-list 'package-archives '("org" . "http://orgmode.org/elpa/"))
(add-to-list 'package-archives '("melpa" . "http://melpa.org/packages/"))
(add-to-list 'package-archives '("melpa-stable" . "http://stable.melpa.org/packages/"))


;; Added by Package.el.  This must come before configurations of
;; installed packages.  Don't delete this line.  If you don't want it,
;; just comment it out by adding a semicolon to the start of the line.
;; You may delete these explanatory comments.
(package-initialize)


(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(ansi-color-faces-vector
   [default default default italic underline success warning error])
 '(ansi-color-names-vector
   ["#242424" "#e5786d" "#95e454" "#cae682" "#8ac6f2" "#333366" "#ccaa8f" "#f6f3e8"])
 '(custom-enabled-themes (quote (tsdh-dark)))
 '(package-selected-packages
   (quote
    (zenburn-theme solarized-theme helm use-package helm-ebdb evil-visual-mark-mode))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )

(unless (package-installed-p 'use-package)
  (package-refresh-contents)
  (package-install 'use-package))

(eval-when-compile
  (require 'use-package))

(require 'evil)
(evil-mode t) ;; enable evil-mode

;; setup helm
(require 'helm)
(helm-mode 1) ;; enable helm-mode
(global-set-key (kbd "M-x") 'helm-M-x) ;; bind helm to M-x

;; use solarized dark theme in the GUI
(when (display-graphic-p) (load-theme 'zenburn t))

;; neotree settings
(require 'neotree)
(global-set-key [f8] 'neotree-toggle)
;; setup neotree for evil-mode
(evil-define-key 'normal neotree-mode-map (kbd "TAB") 'neotree-enter)
(evil-define-key 'normal neotree-mode-map (kbd "RET") 'neotree-enter)
(evil-define-key 'normal neotree-mode-map (kbd "SPC") 'neotree-quick-look)
(evil-define-key 'normal neotree-mode-map (kbd "q") 'neotree-hide)
(evil-define-key 'normal neotree-mode-map (kbd ".") 'neotree-change-root)
(evil-define-key 'normal neotree-mode-map (kbd "R") 'neotree-rename-node)
(evil-define-key 'normal neotree-mode-map (kbd "h") 'neotree-hidden-file-toggle)
(evil-define-key 'normal neotree-mode-map (kbd "g") 'neotree-refresh)
