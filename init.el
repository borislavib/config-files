;; no extra packages i.e. powerline 
;; 

;; (setq org-agenda-files '("/")) 
;; (setq org-log-done 'time)

;; This is bound to f11 in Emacs 24.4
;(toggle-frame-fullscreen) 

;; https://stackoverflow.com/questions/2580650/how-can-i-reload-emacs-after-changing-it
;; M-x eval buffer
;; M-x load-file

;; go to beginning / end of file 
;; C-home or M-<  / C-end or M-<

;; go to line
;; M-g g (goto-line)

;; Kill current buffer 
;; C-x k
;; https://stackoverflow.com/questions/207510/what-is-the-key-sequence-for-closing-the-current-buffer-in-emacs

;; List installed packages 
;; C-h v package-activated-list
;; https://stackoverflow.com/questions/13866848/how-to-save-a-list-of-all-the-installed-packages-in-emacs-24


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

;; M-S <up/down> for moving paragraphs up and down 


;; https://emacs.stackexchange.com/questions/9465/how-to-shift-a-selected-area-of-text-in-emacs-by-a-certain-number-of-spaces
;; C-5 C-x TAB

;; shortcuts 
;; C-/ undo 







(package-initialize)
 
(custom-set-faces
 '(default ((t (:family "Ubuntu Mono" :foundry "DAMA" :slant normal :weight normal :height 158 :width normal)))))


(when (>= emacs-major-version 24)
  (require 'package)
  (add-to-list
   'package-archives
   '("melpa" . "http://melpa.org/packages/")
   t)
  (package-initialize))

(blink-cursor-mode 0)

;; Don't use messages that you don't read
(setq initial-scratch-message "")
(setq inhibit-startup-message t)

(setq visible-bell t)


;; use F10 instead
(menu-bar-mode 0)

;; Who uses the bar to scroll?
(scroll-bar-mode 0)

; default file C-x f
(setq default-directory "/" ) 

(add-hook 'text-mode-hook 'turn-on-auto-fill)
(add-hook 'text-mode-hook
  '(lambda() (set-fill-column 100)))

;; column selection 
(setq cua-enable-cua-keys nil)
(cua-mode)

(tool-bar-mode -1)

(show-paren-mode)

(column-number-mode)

(scroll-bar-mode -1)

;; C-c <arrow> for changing buffer  
(winner-mode t)

(global-hl-line-mode)

(display-time-mode 1)

(global-set-key (kbd "M-[") 'ace-window)


;; https://www.emacswiki.org/emacs/WindowResize 
;; Resize window 
(global-set-key (kbd "S-C-<left>") 'shrink-window-horizontally)
(global-set-key (kbd "S-C-<right>") 'enlarge-window-horizontally)
(global-set-key (kbd "S-C-<down>") 'shrink-window)
(global-set-key (kbd "S-C-<up>") 'enlarge-window)

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
(global-set-key (kbd "<f5>") (lambda() (interactive)(find-file "~/Documents/")))

;; stop creating backup~ files
;; http://ergoemacs.org/emacs/emacs_set_backup_into_a_directory.html
(setq make-backup-files nil) 

;; stop creating #autosave# files
(setq auto-save-default nil) 

;; start calendar week from monday 
;; https://emacs.stackexchange.com/questions/42571/org-agenda-date-prompt-mini-calendar-start-week-on-monday
(setq calendar-week-start-day 1)

;; Use system clipboard
(setq x-select-enable-clipboard t)

;; Disable some default keybindings to safe my arms. 
;; I got used them years before when first started with plain Emacs.
;; (global-set-key (kbd "C-x C-c") nil)
;; (global-set-key (kbd "C-x C-s") nil)
;; (global-set-key (kbd "C-x C-f") nil)
(put 'upcase-region 'disabled nil)


;; disable unused commands, see key bindings 
(global-unset-key (kbd "<f2>"))
;; metahelp - use on the menu bar
(global-unset-key (kbd "<f1>"))
(global-unset-key (kbd "<f3>"))


;; customize line information 
;; https://emacs.stackexchange.com/questions/20783/remove-load-average-from-time-string-displayed-in-mode-line
(setq display-time-day-and-date t)
(setq display-time-format "%I:%M %p  %e-%m-%y") ;; W%V D%j  %_5j day of the year;  %W - week / 1 week behind 
(display-time)
;; no need fo load average 
(setq display-time-default-load-average nil)

;; Y or N when exiting, no need for whole words 
;; https://www.wisdomandwonder.com/wp-content/uploads/2014/03/C3F.html
(global-linum-mode 0)
(fset 'yes-or-no-p 'y-or-n-p)


;; http://pragmaticemacs.com/emacs/scrolling-and-moving-by-line/
;;keep cursor at same position when scrolling
(setq scroll-preserve-screen-position 1)
;;scroll window up/down by one line
(global-set-key (kbd "M-n") (kbd "C-u 1 C-v"))
(global-set-key (kbd "M-p") (kbd "C-u 1 M-v"))




;; This is for org-mode agenda view activation
 (add-to-list 'auto-mode-alist '("\\.org\\'" . org-mode))
;; This is for key bindings to invoke agenda mode (see line-2)
;; (global-set-key "\C-cl" 'org-store-link)
 (global-set-key [f3] 'org-agenda)
;; (global-set-key "\C-cc" 'org-capture)
;; (global-set-key "\C-cb" 'org-iswitchb)


; agenda file where to search
; (setq org-agenda-files '("/")) 