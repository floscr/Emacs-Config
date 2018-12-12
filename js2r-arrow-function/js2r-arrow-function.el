;;; ~/.homesick/repos/Dotfiles/home/.config/doom/js2r-arrow-function.el -*- lexical-binding: t; -*-

(defun floscr|js2r-toggle-function-expression-arrow ()
  (interactive)
  (js2r--find-closest-function))

(describe)

(looking-at "[a-z]*$")

(defun lol ()
  (concat (file-name-directory load-file-name) "./tests/test.js"))

(lol)

(defun load-tests ()
  "Loads the tests from a js file"
  (with-temp-buffer
    (insert-file-contents (concat (file-name-directory load-file-name) "./tests/test.js"))))

(defun js2r--arrow-function-p ()
  (interactive)
  (save-excursion
    (ignore-errors
      (js2r--find-closest-function)
      (and (looking-at "(?[,[:space:][:word:]]*)?[[:space:]]*=>")
           (not (js2r--point-inside-string-p))))))

(setq)
