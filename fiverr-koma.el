;; The following lines are always needed.  Choose your own keys.
(eval-after-load 'ox '(require 'ox-koma-letter))
(eval-after-load 'ox-latex '(add-to-list 'org-latex-packages-alist '("english" "babel" t) t))


(eval-after-load 'ox-koma-letter
  '(progn
     (add-to-list 'org-latex-classes
                  '("my-letter"
                    "\\documentclass[foldmarks=false,fromrule=afteraddress,enlargefirstpage=on,fontsize=12pt,fromalign=center,subject=left,parskip=full]\{scrlttr2\}
     \\usepackage[english]{babel}
     \\usepackage{utopia}
     \\setkomavar{frombank}{(1234)\\,567\\,890}
     \\nonfrenchspacing
     \\setkomavar{date}{\\flushleft\\vspace{-\\baselineskip}\\today\\par}
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
 '(inhibit-startup-screen t))
(custom-set-faces
  ;; custom-set-faces was added by Custom.
  ;; If you edit it by hand, you could mess it up, so be careful.
  ;; Your init file should contain only one such instance.
  ;; If there is more than one, they won't work right.
 )