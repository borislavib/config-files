;; Added by Package.el.  This must come before configurations of
;; installed packages.  Don't delete this line.  If you don't want it,
;; just comment it out by adding a semicolon to the start of the line.
;; You may delete these explanatory comments.
(package-initialize)
 
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(default ((t (:family "Ubuntu Mono" :foundry "DAMA" :slant normal :weight normal :height 158 :width normal)))))


;; http://ergoemacs.org/emacs/emacs_package_system.html
;; current version usually 25 
(when (>= emacs-major-version 24)
  (require 'package)
  (add-to-list
   'package-archives
   '("melpa" . "http://melpa.org/packages/")
   t)
  (package-initialize))


;; https://emacs-doctor.com/emacs-strip-tease.html
;; Prevent the cursor from blinking
(blink-cursor-mode 0)

;; Don't use messages that you don't read
(setq initial-scratch-message "")
(setq inhibit-startup-message t)

;; Don't let Emacs hurt your ears
(setq visible-bell t)

;; You need to set `inhibit-startup-echo-area-message' from the
;; customization interface:
;; M-x customize-variable RET inhibit-startup-echo-area-message RET
;; then enter your username
(setq inhibit-startup-echo-area-message "banchev")


;; This is bound to f11 in Emacs 24.4
;(toggle-frame-fullscreen) 


;; use F10 instead
(menu-bar-mode 0)


;; Who uses the bar to scroll?
(scroll-bar-mode 0)


; default file C-x f
(setq default-directory "/" ) 


; agenda file where to search
(setq org-agenda-files '("/")) 


;; https://stackoverflow.com/questions/8772488/emacs-word-wrap-at-specific-column-number
;; M-x auto-fill-mode	
; column max length 
(add-hook 'text-mode-hook 'turn-on-auto-fill)
(add-hook 'text-mode-hook
  '(lambda() (set-fill-column 100)))


; https://stackoverflow.com/questions/7625824/vim-visual-selection-delete-insert-in-emacs
(setq cua-enable-cua-keys nil)
(cua-mode)

; another cua-mode example, activated with C-RET 
; https://superuser.com/questions/77314/how-to-do-select-column-then-do-editing-in-gnu-emacs
; video explained well 
;https://vimeo.com/1168225?pg=embed&sec=1168225


; https://superuser.com/questions/681857/how-can-i-disable-the-icon-bar-in-emacs-gui-under-osx
(tool-bar-mode -1)


; matching parens
(show-paren-mode)


; column-number mode 
(column-number-mode)


; scrolling for what ? 
(scroll-bar-mode -1)


;; C-c <arrow> for changing buffer  
(winner-mode t)


; highlights the row on which editing
(global-hl-line-mode)


; line numbers
; (nlinum-mode)


; https://emacs.stackexchange.com/questions/14629/org-mode-level-line-spacing
(setq org-cycle-separator-lines 0)


;; 
(display-time-mode 1)


;; https://stackoverflow.com/questions/189490/where-can-i-find-my-emacs-file-for-emacs-running-on-windows
;; https://stackoverflow.com/a/192097/1770460
;; It should be stored in the variable user-init-file. 
;; Use C-H v user-init-file RET to check. 
;; You can also open it directly by using M-x eval-expression RET (find-file user-init-file) RET


;; https://emacs.stackexchange.com/a/3459/14039
;; You can switch between visible windows and frames.
(global-set-key (kbd "M-[") 'ace-window)


;; https://stackoverflow.com/questions/2580650/how-can-i-reload-emacs-after-changing-it
;; M-x eval buffer
;; M-x load-file


;; go to beginning / end of file 
;; C-home or M-<  / C-end or M-<


;; go to line
;; M-g g (goto-line)


;; https://stackoverflow.com/questions/8973489/emacs-tab-not-working
;; TAB C-q TAB


;; https://media.readthedocs.org/pdf/elpy/latest/elpy.pdf
;;(package-initialize)
;;(elpy-enable)
;;(define-key yas-mirror-mode-map (kbd "C-c k") 'yas-expand)
;; (define-key global-map (kbd "C-c o") 'iedit-mode)


;; https://www.emacswiki.org/emacs/FullScreen
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(ansi-color-faces-vector
   [default default default italic underline success warning error])
 '(ansi-color-names-vector
   [("#181818" . "#282828")
    ("#ab4642" . "#dc9656")
    ("#a1b56c" . "#383838")
    ("#f7ca88" . "#383838")
    ("#7cafc2" . "#585858")
    ("#ba8baf" . "#b8b8b8")
    ("#86c1b9" . "#d8d8d8")
    ("#ffffff" . "#ffffff")])
 '(blink-cursor-mode nil)
 '(column-number-mode t)
 '(cua-mode t nil (cua-base))
 '(custom-enabled-themes (quote (dichromacy)))
 '(custom-safe-themes
   (quote
    ("49ec957b508c7d64708b40b0273697a84d3fee4f15dd9fc4a9588016adee3dad" "f0dc4ddca147f3c7b1c7397141b888562a48d9888f1595d69572db73be99a024" "6b2636879127bf6124ce541b1b2824800afc49c6ccd65439d6eb987dbf200c36" "d1b4990bd599f5e2186c3f75769a2c5334063e9e541e37514942c27975700370" "4697a2d4afca3f5ed4fdf5f715e36a6cac5c6154e105f3596b44a4874ae52c45" "d2e9c7e31e574bf38f4b0fb927aaff20c1e5f92f72001102758005e53d77b8c9" "7e78a1030293619094ea6ae80a7579a562068087080e01c2b8b503b27900165c" "8aca557e9a17174d8f847fb02870cb2bb67f3b6e808e46c0e54a44e3e18e1020" "93a0885d5f46d2aeac12bf6be1754faa7d5e28b27926b8aa812840fe7d0b7983" "75d3dde259ce79660bac8e9e237b55674b910b470f313cdf4b019230d01a982a" "151bde695af0b0e69c3846500f58d9a0ca8cb2d447da68d7fbf4154dcf818ebc" "6d589ac0e52375d311afaa745205abb6ccb3b21f6ba037104d71111e7e76a3fc" "fe666e5ac37c2dfcf80074e88b9252c71a22b6f5d2f566df9a7aa4f9bea55ef8" "f525da5a74ffcb73f7aa1f24d660c65792289fe2cb47d36c50c3a9f31795cd2f" "100e7c5956d7bb3fd0eebff57fde6de8f3b9fafa056a2519f169f85199cc1c96" "cd736a63aa586be066d5a1f0e51179239fe70e16a9f18991f6f5d99732cabb32" "6fe07796d8fae1108036b650d63157624c8d8c0429527cf82155cd9bb4742db3" "a3fa4abaf08cc169b61dea8f6df1bbe4123ec1d2afeb01c17e11fdc31fc66379" "1c082c9b84449e54af757bcae23617d11f563fc9f33a832a8a2813c4d7dfb652" "10461a3c8ca61c52dfbbdedd974319b7f7fd720b091996481c8fb1dded6c6116" "21aa6caa287ba83db8e44f6cd0ff1c4a8496375d56b5e210224ee5b94876fd6f" "a2575a5e8fbd2b7145b19e02a5fd8fc5831c7eddf397f0875c45ca7d4460b7b5" "f3db382e0efe166abbc0c0f6b7b5929cf6fbe9e08b164b5615fa8a995c1aa332" "a21bdb38e70e6b764a68ddfb10a76ca74b0610c6107308a974df1e4bb5f87095" "c86815f187f8b97b9987e227861f762d70805bdceda22d2bbe08acffe4c3f0a5" "cc0dbb53a10215b696d391a90de635ba1699072745bf653b53774706999208e3" "274fa62b00d732d093fc3f120aca1b31a6bb484492f31081c1814a858e25c72e" "4780d7ce6e5491e2c1190082f7fe0f812707fc77455616ab6f8b38e796cbffa9" "3e335d794ed3030fefd0dbd7ff2d3555e29481fe4bbb0106ea11c660d6001767" "d97baf5a34c87b05508739505cad03438cde8efa2a0d350c7773f2a8bc26a50d" "c74e83f8aa4c78a121b52146eadb792c9facc5b1f02c917e3dbb454fca931223" "b9e9ba5aeedcc5ba8be99f1cc9301f6679912910ff92fdf7980929c2fc83ab4d" "8b2d2e4ba5cd419632a4f6d9d9c7275a38c836e0cacda823ccd67624abc3b7ae" "58ab6426b1563e48da875eaca13fb49e9b1a076611dd16407a196cbb3ba73ecd" "2a5d7e4080d30af65d1ca53f7a07beab0d27364b11eff78f2f8d21c28a7116ba" "15cc7273d3cff628e0f38c4f7f819bb2ceba6df9b95966912a0037fafe01676a" "a5a9369b3a2821f4647ff2b0f37065c3a794074648d926a558d83af2ca204eb2" "bcc1cd9c311cd689fdaada85418125ef377d373719e7c96b27023727e028f16c" default)))
 '(default-input-method "bulgarian-phonetic")
 '(display-time-mode t)
 '(fci-rule-color "#858FA5" t)
 '(initial-frame-alist (quote ((fullscreen . maximized))))
 '(jdee-db-active-breakpoint-face-colors (cons "#100e23" "#906cff"))
 '(jdee-db-requested-breakpoint-face-colors (cons "#100e23" "#95ffa4"))
 '(jdee-db-spec-breakpoint-face-colors (cons "#100e23" "#565575"))
 '(package-selected-packages
   (quote
    (doom-themes dracula-theme solarized-theme powerline minimal-theme basic-theme ## py-autopep8 neotree jedi elpy ace-window)))
 '(show-paren-mode t)
 '(tool-bar-mode nil)
 '(vc-annotate-background "#ffffff")
 '(vc-annotate-color-map
   (quote
    ((20 . "#ab4642")
     (50 . "#dc9656")
     (80 . "#f7ca88")
     (110 . "#a1b56c")
     (140 . "#86c1b9")
     (170 . "#7cafc2")
     (200 . "#ba8baf")
     (230 . "#a16046")
     (260 . "#181818")
     (290 . "#282828")
     (320 . "#383838")
     (350 . "#585858"))))
 '(vc-annotate-very-old-color "#585858"))


;; https://www.youtube.com/watch?v=qedbnE4OOpI
;; Eval python buffer: 
;; C-c C-c
;; Eval region:
;; C-c C-r


;; https://www.emacswiki.org/emacs/WindowResize 
;; Resize window 
(global-set-key (kbd "S-C-<left>") 'shrink-window-horizontally)
(global-set-key (kbd "S-C-<right>") 'enlarge-window-horizontally)
(global-set-key (kbd "S-C-<down>") 'shrink-window)
(global-set-key (kbd "S-C-<up>") 'enlarge-window)


;; Kill current buffer 
;; C-x k
;; https://stackoverflow.com/questions/207510/what-is-the-key-sequence-for-closing-the-current-buffer-in-emacs


;; installed packages (ace-window avy elpy company ess find-file-in-project highlight-indentation
;; ivy jedi auto-complete jedi-core epc ctable concurrent julia-mode minimal-theme neotree nlinum
;; popup powerline-evil evil goto-chg py-autopep8 python-environment deferred pyvenv s
;; smart-mode-line-powerline-theme smart-mode-line rich-minority powerline undo-tree yasnippet)


;; (require 'powerline)
;; (powerline-default-theme)


;; List installed packages 
;; C-h v package-activated-list
;; https://stackoverflow.com/questions/13866848/how-to-save-a-list-of-all-the-installed-packages-in-emacs-24


;; https://stackoverflow.com/questions/3566727/how-to-set-the-default-width-of-fill-mode-to-80-with-emacs
;; adjust paragraph length  
;; M-q
(setq-default fill-column 100)


;; https://orgmode.org/worg/org-tutorials/encrypting-files.html
(require 'epa-file)
(epa-file-enable)


;; https://stackoverflow.com/questions/69934/set-4-space-indent-in-emacs-in-text-mode
(setq-default indent-tabs-mode nil)
(setq-default tab-width 4)
(setq indent-line-function 'insert-tab)

;; https://www.reddit.com/r/emacs/comments/3s7d38/im_constantly_saving_my_changes_with_cx_cs_do_you/
(global-set-key [f4] 'save-buffer)

;; https://stackoverflow.com/questions/12558019/shortcut-to-open-a-specific-file-in-emacs
(global-set-key (kbd "<f5>") (lambda() (interactive)(find-file "~/Documents/org")))

;; M-S <up/down> for moving paragraphs up and down 

;; stop creating backup~ files
;; http://ergoemacs.org/emacs/emacs_set_backup_into_a_directory.html
(setq make-backup-files nil) 
;; stop creating #autosave# files
;; (setq auto-save-default nil) 


;; start calendar week from monday 
;; https://emacs.stackexchange.com/questions/42571/org-agenda-date-prompt-mini-calendar-start-week-on-monday
(setq calendar-week-start-day 1)


;;(setq-default org-display-custom-times t)
;;(setq org-time-stamp-custom-formats '("<%Y-%m-%d %a %W>" . "<%Y-%m-%d %a %W %H:%M>"))



;; init file 
;; On Microsoft Windows:
;; %HOMEPATH%\AppData\Roaming\.emacs.d\init.el
;; %HOMEPATH%\AppData\Roaming\.emacs


;; edit init.el and reload it without restarting emacs
;; http://ergoemacs.org/emacs/emacs_make_modern.html
;; open init.el
;; change code
;; mark region
;; М-x eval-region


;; reloads buffer
;; https://emacs.stackexchange.com/questions/169/how-do-i-reload-a-file-in-a-buffer 
;; (global-auto-revert-mode 1)
;; M-x revert-buffer 

;; disable 2C 
;; disable <f2>
;; M-x 2C-dissociate 
;; http://doc.endlessparentheses.com/Fun/2C-mode.html

;; s-arrow 
;; change list from 1) -> - -> 1. -> + 


;; https://github.com/jubnzv/dotfiles/tree/master/.emacs.d
;; Disable auto save
;; (setq auto-save-default nil)

;; Use system clipboard
;; (setq x-select-enable-clipboard t)

;; Disable some default keybindings to safe my arms. 
;; I got used them years before when first started with plain Emacs.
;; (global-set-key (kbd "C-x C-c") nil)
;; (global-set-key (kbd "C-x C-s") nil)
;; (global-set-key (kbd "C-x C-f") nil)
(put 'upcase-region 'disabled nil)


;; disable unused commands, see key bindings 
;; https://www.gnu.org/software/emacs/manual/html_node/elisp/Key-Binding-Commands.html
;; https://emacs.stackexchange.com/questions/12383/how-to-unbind-a-key
;; 2C 
(global-unset-key (kbd "<f2>"))
;; metahelp - use on the menu bar
(global-unset-key (kbd "<f1>"))
;; macro
(global-unset-key (kbd "<f3>"))


;; This is for org-mode agenda view activation
 (add-to-list 'auto-mode-alist '("\\.org\\'" . org-mode))
;; This is for key bindings to invoke agenda mode (see line-2)
;; (global-set-key "\C-cl" 'org-store-link)
 (global-set-key [f3] 'org-agenda)
;; (global-set-key "\C-cc" 'org-capture)
;; (global-set-key "\C-cb" 'org-iswitchb)


;; customize line information 
;; https://emacs.stackexchange.com/questions/20783/remove-load-average-from-time-string-displayed-in-mode-line
(setq display-time-day-and-date t)
(setq display-time-format "%I:%M %p  %e-%m-%y") ;; W%V D%j  %_5j day of the year;  %W - week / 1 week behind 
(display-time)
;; no need fo load average 
;; ??? not working 
(setq display-time-default-load-average nil)
;; (setq display-time-default-load-average nil)


;; Y or N when exiting, no need for whole words 
;; https://www.wisdomandwonder.com/wp-content/uploads/2014/03/C3F.html
(global-linum-mode 0)
(fset 'yes-or-no-p 'y-or-n-p)


;; https://emacs.stackexchange.com/questions/9465/how-to-shift-a-selected-area-of-text-in-emacs-by-a-certain-number-of-spaces
;; C-5 C-x TAB

;; shortcuts 
;; C-/ undo 


;; http://pragmaticemacs.com/emacs/scrolling-and-moving-by-line/
;;keep cursor at same position when scrolling
(setq scroll-preserve-screen-position 1)
;;scroll window up/down by one line
(global-set-key (kbd "M-n") (kbd "C-u 1 C-v"))
(global-set-key (kbd "M-p") (kbd "C-u 1 M-v"))


