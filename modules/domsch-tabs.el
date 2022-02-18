(straight-use-package 'centaur-tabs)
(centaur-tabs-mode)

(setq centaur-tabs-style "bar")
(setq centaur-tabs-set-icons t)
(setq centaur-tabs-set-bar 'left)
(setq centaur-tabs-set-modified-marker t)
    (dolist (centaur-face '(centaur-tabs-selected
                            centaur-tabs-selected-modified
                            centaur-tabs-unselected
                            centaur-tabs-unselected-modified))
      (set-face-attribute centaur-face nil :family "arial" :height 140))
(provide 'domsch-tabs)
