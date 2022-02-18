(require 'rational-defaults)
(require 'rational-ui)
(require 'rational-editing)
(require 'rational-evil)
(require 'rational-completion)
(require 'rational-windows)
(require 'domsch-tree)
(require 'domsch-magit)
(require 'domsch-bits)
(require 'domsch-tabs)

;; Set further font and theme customizations
(set-face-attribute 'default nil
                  :font "Cascadia Code"
                  :weight 'light
                  :height 110)

(load-theme 'doom-snazzy t)
