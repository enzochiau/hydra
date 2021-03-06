;;; hydra-examples.el --- some applications for hydra

;; Copyright (C) 2015 Oleh Krehel

;; This file is not part of GNU Emacs

;; This file is free software; you can redistribute it and/or modify
;; it under the terms of the GNU General Public License as published by
;; the Free Software Foundation; either version 3, or (at your option)
;; any later version.

;; This program is distributed in the hope that it will be useful,
;; but WITHOUT ANY WARRANTY; without even the implied warranty of
;; MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
;; GNU General Public License for more details.

;; For a full copy of the GNU General Public License
;; see <http://www.gnu.org/licenses/>.


;;; Commentary:
;;
;; These are the sample Hydras that you can use.

;;; Code:

(require 'hydra)

(defvar hydra-example-text-scale
  '(("g" text-scale-increase "zoom in")
    ("l" text-scale-decrease "zoom out"))
  "A two-headed hydra for text scale manipulation.")

(require 'windmove)

(defun hydra-move-splitter-left ()
  "Move window splitter left."
  (interactive)
  (if (let ((windmove-wrap-around))
        (windmove-find-other-window 'right))
      (shrink-window-horizontally 1)
    (enlarge-window-horizontally 1)))

(defun hydra-move-splitter-right ()
  "Move window splitter right."
  (interactive)
  (if (let ((windmove-wrap-around))
        (windmove-find-other-window 'right))
      (enlarge-window-horizontally 1)
    (shrink-window-horizontally 1)))

(defun hydra-move-splitter-up ()
  "Move window splitter up."
  (interactive)
  (if (let ((windmove-wrap-around))
        (windmove-find-other-window 'up))
      (enlarge-window 1)
    (shrink-window 1)))

(defun hydra-move-splitter-down ()
  "Move window splitter down."
  (interactive)
  (if (let ((windmove-wrap-around))
        (windmove-find-other-window 'up))
      (shrink-window 1)
    (enlarge-window 1)))

(defvar hydra-example-move-window-splitter
  '(("h" hydra-move-splitter-left)
    ("j" hydra-move-splitter-down)
    ("k" hydra-move-splitter-up)
    ("l" hydra-move-splitter-right)))

(provide 'hydra-examples)

;;; hydra-examples.el ends here
