(setq load-path (cons "~/Dropbox/emacs/prelude/elpa/org/lisp" load-path))
(setq load-path (cons "~/Dropbox/emacs/prelude/elpa/org/contrib/lisp" load-path))



;; The following lines are always needed.  Choose your own keys.
(add-to-list 'auto-mode-alist '("\\.org\\'" . org-mode)) ; not needed since Emacs 22.2
(add-hook 'org-mode-hook 'turn-on-font-lock) ; not needed when global-font-lock-mode is on
(global-set-key "\C-cl" 'org-store-link)
(global-set-key "\C-ca" 'org-agenda)
(global-set-key "\C-cb" 'org-iswitchb)

(eval-after-load 'ox '(require 'ox-koma-letter))
(eval-after-load 'ox-latex '(add-to-list 'org-latex-packages-alist '("english" "babel" t) t))

(eval-after-load 'ox-koma-letter
  '(progn
     (add-to-list 'org-latex-classes
                  '("my-letter"
                    "\\documentclass[foldmarks=false,refline=dateleft,fromrule=afteraddress,enlargefirstpage=on,fontsize=12pt,fromalign=center,subject=left,parskip=full]\{scrlttr2\}
     \\usepackage[english]{babel}
     \\usepackage{utopia}
     \\setkomavar{frombank}{(1234)\\,567\\,890}
     \\nonfrenchspacing
     \\setkomafont{backaddress}{\\normalsize \\usekomafont{fromaddress}}
     \[DEFAULT-PACKAGES]
     \[PACKAGES]
     \[EXTRA]
     \\KOMAoption{backaddress}{false}"))

     (setq org-koma-letter-default-class "my-letter")))

(custom-set-variables
  ;; custom-set-variables was added by Custom.
  ;; If you edit it by hand, you could mess it up, so be careful.
  ;; Your init file should contain only one such instance.
  ;; If there is more than one, they won't work right.
 '(inhibit-startup-screen t)
 '(safe-local-variable-values (quote ((org-export-allow-bind-keywords . t)))))
(custom-set-faces
  ;; custom-set-faces was added by Custom.
  ;; If you edit it by hand, you could mess it up, so be careful.
  ;; Your init file should contain only one such instance.
  ;; If there is more than one, they won't work right.
 )
