(require 'package)

(dolist (archive '(("gnu" . "https://elpa.gnu.org/packages/")
                   ("nongnu" . "https://elpa.nongnu.org/nongnu/")
                   ("melpa" . "https://melpa.org/packages/")))
  (add-to-list 'package-archives archive t))

(package-initialize)

(let ((packages (getenv "EMACS_PACKAGES")))
  (when packages
    (dolist (package (split-string packages))
      (add-to-list 'package-selected-packages (intern package)))))

(package-install-selected-packages)
