;; Turn off the menu bar
`(menu-bar-mode -99)

;; Set font
(set-default-font "-unknown-Inconsolata-normal-normal-normal-*-12-*-*-*-m-0-iso10646-1")

;; custom keybindings
;; override insertion of hash key because of british keyboards
;; TODO: check to see if we can detect thg keyboard layout before setting
(global-set-key (kbd "M-3") '(lambda () (interactive) (insert "#")))

;; much nicer window switching
;; https://github.com/dimitri/switch-window
(when (fboundp 'switch-window) (global-set-key (kbd "C-x o") 'switch-window))


;; delete trailing whitespace on save
(add-hook 'before-save-hook (lambda () (delete-trailing-whitespace)))

;; custom keybindings
;; override insertion of hash key because of british keyboards
;; TODO: check to see if we can detect thg keyboard layout before setting
(global-set-key (kbd "M-3") '(lambda () (interactive) (insert "#")))

;; much nicer window switching
;; https://github.com/dimitri/switch-window
;;(when (fboundp 'switch-window) (global-set-key (kbd "C-x o") 'switch-window))

(provide 'init-local)
