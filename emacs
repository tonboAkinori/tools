;起動画面を無効する
(setq inhibit-splash-screen t)

;対応する括弧
(show-paren-mode t)

;括弧内をハイライト
(setq show-paren-style 'expression)

; mozcをインストール
; precondition: sudo apt-get install emacs-mozc emacs-mozc-bin
(require 'mozc)
(set-language-environment "Japanese")
(setq default-input-method "japanese-mozc")

; C-muhenkan で日本語入力
(define-key global-map (kbd "C-<muhenkan>") 'toggle-input-method)
(define-key global-map (kbd "C-z") 'undo)
(define-key global-map (kbd "C-o") 'other-window)
(define-key global-map (kbd "C-l") 'goto-line)
(define-key global-map (kbd "C-<henkan>") 'list-buffers)

; モードラインに列番号を表示
(column-number-mode t)

; 行番号
; emacs26からは、native実装されているので変更した方が良い
; (display-line-number-mode)
(global-linum-mode t)

; color
;(load-theme 'manoj-dark t)
;(load-theme 'misterioso t)
(load-theme 'wombat t)

; *~のファイルを作成しない
(setq make-backup-files nil)

