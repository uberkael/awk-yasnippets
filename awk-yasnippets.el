;;; awk-yasnippets.el ---  Yasnippets for AWK            -*- lexical-binding: t; -*-

;; Copyright (C) 2023 Adriano Martinez

;; Author: Adriano Martinez
;; Maintainer: Adriano Martinez <uberkael@gmail.com>
;; Created: 03 April 2023
;; Version: 0.0.1
;; Keywords: extensions
;; URL: https://github.com/uberkael/awk-yasnippets
;; Package-Requires: ((emacs "26.3") (yasnippet "0.8.0"))
;; License: GPL-3.0-or-later

;; This program is free software; you can redistribute it and/or modify
;; it under the terms of the GNU General Public License as published by
;; the Free Software Foundation, either version 3 of the License, or
;; (at your option) any later version.

;; This program is distributed in the hope that it will be useful,
;; but WITHOUT ANY WARRANTY; without even the implied warranty of
;; MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
;; GNU General Public License for more details.

;; You should have received a copy of the GNU General Public License
;; along with this program.  If not, see <https://www.gnu.org/licenses/>.

;;; Commentary:
;; Yasnippets for AWK
;; A collection of snippets to expedite writing AWK scripts.
;;

;;; Code:

;;;;  requires
(require 'yasnippet)

;; Define the root of the package
(defvar awk-yasnippets-root
  (file-name-directory (or load-file-name (buffer-file-name))))

;;;###autoload
(defun awk-yasnippets-initialize ()
  "Initialize the package, loading the snippets into yasnippets."
  (let ((snippets-dir (expand-file-name "awk-mode" awk-yasnippets-root)))
    (when (boundp 'yas-snippet-dirs)
      (add-to-list 'yas-snippet-dirs snippets-dir t))
    (yas-load-directory snippets-dir)))

;;; Provide package
(provide 'awk-yasnippets)
;;; awk-yasnippets.el ends here
