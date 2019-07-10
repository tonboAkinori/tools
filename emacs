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

; python mode の設定
(add-hook 'python-mode-hook
	  '(lambda()
	     (setq indent-tabs-mode nil)
	     (setq indent-level 4)
	     (setq python-indent 4)))

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; パッケージ管理
;;
;; M-x package-install [RET] pakcage名[RET]
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(require 'package)
; MELPAを追加
(add-to-list 'package-archives '("melpa" . "https://melpa.org/packages/") t)

;; 初期化
(package-initialize)

;;;;;;;;;;;;;;;;;;;;;;;;
;; helm-gtags package ;;
;;;;;;;;;;;;;;;;;;;;;;;;

(require 'helm-gtags)
(helm-gtags-mode t)

(add-hook 'c++-mode-hook (lambda () (helm-gtags-mode)))

(setq helm-gtags-mode-hook
  '(lambda ()
  (local-unset-key "\C-t")
  ; 文脈から判断してジャンプ
  (local-set-key "\C-t\C-t" 'helm-gtags-dwim)
  ; 定義元へ
  (local-set-key "\C-t\C-d" 'helm-gtags-find-tag)
  ; 参照元へ
  (local-set-key "\C-t\C-r" 'helm-gtags-find-rtag)
  ; 変数の定義元/参照先へ
  (local-set-key "\C-t\C-s" 'helm-gtags-find-symbol)
  ; 前のバッファへ
  (local-set-key "\C-t\C-p" 'helm-gtags-previous-history)
  ; 次のバッファへ
  (local-set-key "\C-t\C-n" 'helm-gtags-next-history)
  ; ファイルへ
  (local-set-key "\C-t\C-f" 'helm-gtags-find-file)
  ))

