(TeX-add-style-hook
 "jaykomaletter"
 (lambda ()
   (TeX-add-to-alist 'LaTeX-provided-class-options
                     '(("scrlttr2" "foldmarks=false" "refline=dateleft" "fromrule=afteraddress" "enlargefirstpage=on" "fontsize=12pt" "fromalign=center" "subject=left" "parskip=full")))
   (TeX-add-to-alist 'LaTeX-provided-package-options
                     '(("babel" "English") ("inputenc" "utf8") ("fontenc" "T1") ("ulem" "normalem")))
   (add-to-list 'LaTeX-verbatim-macros-with-braces-local "path")
   (add-to-list 'LaTeX-verbatim-macros-with-braces-local "url")
   (add-to-list 'LaTeX-verbatim-macros-with-braces-local "nolinkurl")
   (add-to-list 'LaTeX-verbatim-macros-with-braces-local "hyperbaseurl")
   (add-to-list 'LaTeX-verbatim-macros-with-braces-local "hyperimage")
   (add-to-list 'LaTeX-verbatim-macros-with-braces-local "hyperref")
   (add-to-list 'LaTeX-verbatim-macros-with-delims-local "path")
   (add-to-list 'LaTeX-verbatim-macros-with-delims-local "url")
   (TeX-run-style-hooks
    "latex2e"
    "scrlttr2"
    "scrlttr210"
    "babel"
    "utopia"
    "inputenc"
    "fontenc"
    "fixltx2e"
    "graphicx"
    "longtable"
    "float"
    "wrapfig"
    "rotating"
    "ulem"
    "amsmath"
    "textcomp"
    "marvosym"
    "wasysym"
    "amssymb"
    "hyperref")))

