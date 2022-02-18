;;;; My Personal Modeline Configuration
(display-time-mode)

(defun custom-modeline-mode-icon ()
  (format " %s"
    (propertize icon
                'help-echo (format "Major-mode: `%s`" major-mode)
                'face `(:height 1.2 :family ,(all-the-icons-icon-family-for-buffer)))))

(setq-default mode-line-format
      (list
       '(:eval (propertize (cond ((eq 'normal evil-state) "  "))
                           'face '(:family "FontAwesome" :background "green")))
       '(:eval (propertize (cond ((eq 'insert evil-state) "  "))
                           'face '(:family "FontAwesome" :background "red")))
       '("%m")
       '("%b")
       '(:eval (propertize
                        " " 'display
                        `((space :align-to (- (+ right right-fringe right-margin)
                                              ,(+ 3 (string-width
                                                     (if (listp mode-name)
                                                         (car mode-name)
                                                       mode-name))))))))
       mode-line-misc-info
       ))



(provide 'domsch-modeline)
