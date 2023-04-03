;;; awk-yasnippets.el ---   Yasnippets for AWK -*- lexical-binding: t; -*-

;; Copyright (C) 2023 Adriano Martinez

;; Author: Adriano Martinez
;; Maintainer: Adriano Martinez <uberkael@gmail.com>
;; Created: 03 April 2023
;; Version: 0.0.1
;; Keywords: snippets
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

;; Quick intro
;;

;;; Code:

;;;; The requires

(require 'yasnippet)


(defvar awk-snippets-root
  (file-name-directory (or load-file-name (buffer-file-name))))

;;;###autoload
(defun awk-snippets-initialize ()
  (let ((snippets-dir (expand-file-name "awk-mode" awk-snippets-root)))
    (when (boundp 'yas-snippet-dirs)
      (add-to-list 'yas-snippet-dirs snippets-dir t))
    (yas-load-directory snippets-dir)))

;;;###autoload
(eval-after-load 'yasnippet
  '(awk-snippets-initialize))



(provide 'awk-yasnippets)
;;; awk-yasnippets.el ends here
