(require 'package)

(add-to-list 'package-archives '(("melpa" . "https://melpa.org/packages/"))
                                 ("gnu" . "https://elpa.gnu.org/packages/")
                                 ("non-gnu" . "https://elpa.nongnu.org/nongnu/"))

(package-initialize)

(let ((packages (getenv "EMACS_PACKAGES")))
  (when packages
    (dolist (package (split-string packages))
      (add-to-list 'package-selected-packages (intern package)))))

(package-install-selected-packages)
