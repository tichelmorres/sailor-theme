;;; sailor-theme.el --- A colorscheme inspired by Jonathan Blow's livestreams.

;; Copyright (C) 2026 Michel Torres a.k.a. tichelmorres

;; Author: Michel Torres <qualquercoisahhhh@gmail.com>
;; URL: http://github.com/tichelmorres/sailor-theme
;; Version: 0.1

;; License:

;    Permission  is hereby granted, free of charge, to any person
;    obtaining   a   copy   of   this   software  and  associated
;    documentation   files  (the  "Software"),  to  deal  in  the
;    Software  without  restriction, including without limitation
;    the rights to use, copy, modify, merge, publish, distribute,
;    sublicense,  and/or  sell  copies  of  the  Software, and to
;    permit  persons  to whom the Software is furnished to do so,
;    subject to the following conditions:

;    The  above copyright notice and this permission notice shall
;    be  included  in  all  copies or substantial portions of the
;    Software.

;    THE  SOFTWARE  IS  PROVIDED "AS IS", WITHOUT WARRANTY OF ANY
;    KIND,  EXPRESS  OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE
;    WARRANTIES  OF  MERCHANTABILITY,  FITNESS  FOR  A PARTICULAR
;    PURPOSE  AND NONINFRINGEMENT.  IN NO EVENT SHALL THE AUTHORS
;    OR  COPYRIGHT  HOLDERS  BE  LIABLE FOR ANY CLAIM, DAMAGES OR
;    OTHER  LIABILITY,  WHETHER IN AN ACTION OF CONTRACT, TORT OR
;    OTHERWISE,  ARISING  FROM,  OUT OF OR IN CONNECTION WITH THE
;    SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.

;; Commentary:

;    sailor-theme.el  is  a color theme for GNU Emacs inspired by
;    the  awesome  JBlow  streams.   Blow  himself developed this
;    theme  for  personal  use,  and  I  liked  it so much that I
;    decided to create my own version of it.

;    Different  from  most  copies  of  the  aforementioned theme
;    available on the internet, this one mimics the original with
;    only  very  subtle color changes, and does not use any other
;    pre-built  themes  as a default or fallback.  All the colors
;    were  picked  with  eyedropper tools and manually matched to
;    the UI visual elements.

;    Though  more color faces are used (like the header title for
;    EWW,  not  present  in  the original, probably because JBlow
;    doesn't  use  EWW), none of the main color scheme is changed
;    in  relation  to  the  original  theme.   Also,  most of the
;    differences  can  be easily removed by deleting the sections
;    you don't want.

;    These are not covered by the base theme JBlow created:
;      -  EWW
;      -  Diff
;      -  Compilation
;      -  Search
;      -  Whitespace
;      -  Term / Ansi-term
;      -  Vterm
;      -  Message
;      -  Info
;      -  Ido
;      -  Snippets

;; Note:

;    Blow  adjusted  his  theme  as time passed, and I decided to
;    document  some  of the changes I noticed.  The colors with a
;    "@Newer"  comment are the ones which changed.  If you prefer
;    the  new  theme  over  the old one, copy and paste the newer
;    colors over the older ones.

(deftheme sailor
  "A colorscheme inspired by Jonathan Blow's livestreams.")

(let (
      (sailor-blue          "#0000ff")

      (sailor-cyan+1        "#00ffff")
      (sailor-cyan          "#2ec09c")
      ;; @Newer:  "#125844"
      (sailor-cyan-1        "#126367")

      (sailor-green+1       "#8cde94")
      (sailor-green         "#44b340")

      (sailor-red+1         "#fa8072")
      (sailor-red           "#ff0000")

      (sailor-yellow        "#ffff00")
      (sailor-white         "#ffffff")

      ;; @Newer:  "#062626"
      (sailor-background    "#062329")
      ;; @Newer:  "#d3b48c"
      (sailor-foreground    "#d1b897")
      )

  (custom-theme-set-variables
   'sailor
   '(frame-brackground-mode (quote dark)))

  (custom-theme-set-faces
   'sailor

   ;; Basic Coloring (or Uncategorized)
   ;; **************************************************************************************************************

   `(border                      ((t (:background ,sailor-background :foreground ,sailor-white               ))))
   ;; @Newer:  sailor-green+1
   `(cursor                      ((t (:background ,sailor-white                                              ))))
   `(default                     ((t (:foreground ,sailor-foreground :background ,sailor-background          ))))
   `(fringe                      ((t (:background  unspecified       :foreground ,sailor-white               ))))
   `(vertical-border             ((t (:foreground ,sailor-white                                              ))))
   `(link                        ((t (:foreground ,sailor-cyan+1     :underline   t                          ))))
   `(link-visited                ((t (:foreground ,sailor-cyan-1                                             ))))
   `(match                       ((t (:background ,sailor-blue                                               ))))
   `(shadow                      ((t (:foreground ,sailor-blue                                               ))))
   `(minibuffer-prompt           ((t (:foreground ,sailor-cyan+1                                             ))))
   `(region                      ((t (:background ,sailor-blue       :foreground  unspecified                ))))
   `(secondary-selection         ((t (:background ,sailor-blue       :foreground  unspecified                ))))
   `(trailing-whitespace         ((t (:foreground ,sailor-background :background ,sailor-white               ))))
   `(tooltip                     ((t (:background ,sailor-white      :foreground ,sailor-white               ))))
   `(warning                     ((t (:foreground ,sailor-background                                         ))))
   `(header-line                 ((t (:background ,sailor-foreground :foreground ,sailor-background :box nil ))))
   `(highlight                   ((t (:background ,sailor-blue       :foreground ,sailor-white               ))))
   `(highlight-current-line-face ((t (:background ,sailor-background :foreground  nil                        ))))

   ;; Mode Line
   ;; **************************************************************************************************************

   `(mode-line           ((t (:background ,sailor-foreground :foreground ,sailor-background         ))))
   `(mode-line-buffer-id ((t (:background ,sailor-foreground :foreground ,sailor-background :bold t ))))
   `(mode-line-inactive  ((t (:background ,sailor-foreground :foreground ,sailor-background         ))))

   ;; Dired
   ;; **************************************************************************************************************


   `(dired-header         ((t (:foreground ,sailor-green+1                                               ))))
   `(dired-directory      ((t (:foreground ,sailor-white                                                 ))))
   `(dired-ignored        ((t (:foreground ,sailor-green   :inherit     unspecified                      ))))
   `(dired-broken-symlink ((t (:foreground ,sailor-white   :background ,sailor-blue :bold    t           ))))
   `(dired-marked         ((t (:foreground ,sailor-white   :background ,sailor-blue :inherit unspecified ))))
   `(dired-mark           ((t (:foreground ,sailor-blue    :inherit     unspecified                      ))))

   ;; EWW
   ;; **************************************************************************************************************

   `(eww-valid-certificate ((t (:foreground ,sailor-background :background ,sailor-foreground :bold t ))))

   ;; Diff
   ;; **************************************************************************************************************

   `(diff-removed ((t (:foreground ,sailor-green+1 :background unspecified ))))
   `(diff-added   ((t (:foreground ,sailor-white   :background unspecified ))))

   ;; Compilation
   ;; **************************************************************************************************************

   `(compilation-info           ((t (:foreground ,sailor-foreground         :inherit unspecified ))))
   `(compilation-warning        ((t (:foreground ,sailor-yellow             :inherit unspecified ))))
   `(compilation-error          ((t (:foreground ,sailor-red                                     ))))
   `(compilation-mode-line-fail ((t (:foreground ,sailor-background         :inherit unspecified ))))
   `(compilation-mode-line-exit ((t (:foreground ,sailor-background :bold t :inherit unspecified ))))

   ;; Line Numbers
   ;; **************************************************************************************************************

   `(line-number              ((t (:inherit            default     :foreground    ,sailor-cyan-1
                                   :distant-foreground unspecified
                                   :weight             normal      :slant          unspecified
                                   :underline          unspecified :strike-through unspecified
                                   ))))

   ;; @Newer:  sailor-green+1     this is not actually new, but I recommend changing this color
   ;;                             if you changed the cursor color too.
   `(line-number-current-line ((t (:inherit            line-number :foreground    ,sailor-white
                                   :distant-foreground unspecified
                                   :weight             bold        :slant          unspecified
                                   :underline          unspecified :strike-through unspecified
                                   ))))

   ;; Search
   ;; **************************************************************************************************************

   `(isearch                     ((t (:foreground ,sailor-white      :background ,sailor-blue   ))))
   `(isearch-fail                ((t (:foreground ,sailor-white      :background ,sailor-red    ))))
   `(isearch-lazy-highlight-face ((t (:foreground ,sailor-foreground :background ,sailor-cyan-1 ))))

   ;; Show Paren
   ;; **************************************************************************************************************

   `(show-paren-match         ((t (:background ,sailor-blue                                   ))))
   `(show-paren-match-face    ((t (:inherit     show-paren-match                              ))))
   `(show-paren-mismatch      ((t (:background ,sailor-red          :foreground ,sailor-white ))))
   `(show-paren-mismatch-face ((t (:inherit     show-paren-mismatch                           ))))

   ;; Whitespace
   ;; **************************************************************************************************************

   `(whitespace-space            ((t (:background ,sailor-background :foreground ,sailor-cyan-1     ))))
   `(whitespace-tab              ((t (:background ,sailor-background :foreground ,sailor-cyan-1     ))))
   `(whitespace-hspace           ((t (:background ,sailor-background :foreground ,sailor-foreground ))))
   `(whitespace-line             ((t (:background ,sailor-foreground :foreground ,sailor-green+1    ))))
   `(whitespace-newline          ((t (:background ,sailor-background :foreground ,sailor-foreground ))))
   `(whitespace-empty            ((t (:background ,sailor-blue       :foreground ,sailor-foreground ))))
   `(whitespace-indentation      ((t (:background ,sailor-white      :foreground ,sailor-red        ))))
   `(whitespace-space-after-tab  ((t (:background ,sailor-white      :foreground ,sailor-blue       ))))
   `(whitespace-space-before-tab ((t (:background ,sailor-green      :foreground ,sailor-green      ))))
   `(whitespace-trailing         ((t (:inherit     trailing-whitespace                              ))))

   ;; Term / Ansi-term
   ;; **************************************************************************************************************

   `(term-color-black   ((t (:foreground ,sailor-background :background ,sailor-background ))))
   `(term-color-red     ((t (:foreground ,sailor-red+1      :background ,sailor-red+1      ))))
   `(term-color-green   ((t (:foreground ,sailor-green      :background ,sailor-green      ))))
   `(term-color-yellow  ((t (:foreground ,sailor-foreground :background ,sailor-foreground ))))
   `(term-color-blue    ((t (:foreground ,sailor-cyan-1     :background ,sailor-cyan-1     ))))
   `(term-color-magenta ((t (:foreground ,sailor-green+1    :background ,sailor-green+1    ))))
   `(term-color-cyan    ((t (:foreground ,sailor-cyan+1     :background ,sailor-cyan+1     ))))
   `(term-color-white   ((t (:foreground ,sailor-white      :background ,sailor-white      ))))

   ;; Vterm
   ;; **************************************************************************************************************

   `(vterm-color-black   ((t (:foreground ,sailor-background :background ,sailor-background ))))
   `(vterm-color-red     ((t (:foreground ,sailor-red+1      :background ,sailor-red+1      ))))
   `(vterm-color-green   ((t (:foreground ,sailor-green      :background ,sailor-green      ))))
   `(vterm-color-yellow  ((t (:foreground ,sailor-foreground :background ,sailor-foreground ))))
   `(vterm-color-blue    ((t (:foreground ,sailor-cyan-1     :background ,sailor-cyan-1     ))))
   `(vterm-color-magenta ((t (:foreground ,sailor-green+1    :background ,sailor-green+1    ))))
   `(vterm-color-cyan    ((t (:foreground ,sailor-cyan+1     :background ,sailor-cyan+1     ))))
   `(vterm-color-white   ((t (:foreground ,sailor-white      :background ,sailor-white      ))))

   ;; Message
   ;; **************************************************************************************************************

   `(message-header-name ((t (:foreground ,sailor-green+1 ))))

   ;; Info
   ;; **************************************************************************************************************

   `(info-xref    ((t (:foreground ,sailor-cyan+1 ))))
   `(info-visited ((t (:foreground ,sailor-cyan-1 ))))

   ;; Ido
   ;; **************************************************************************************************************

   `(ido-first-match ((t (:foreground ,sailor-foreground :bold t ))))
   `(ido-only-match  ((t (:foreground ,sailor-foreground :bold t ))))
   `(ido-subdir      ((t (:foreground ,sailor-red                ))))

   ;; Font Lock
   ;; **************************************************************************************************************

   `(font-lock-builtin-face           ((t (:foreground ,sailor-white      ))))
   `(font-lock-comment-face           ((t (:foreground ,sailor-green      ))))
   `(font-lock-comment-delimiter-face ((t (:foreground ,sailor-green      ))))
   `(font-lock-constant-face          ((t (:foreground ,sailor-green+1    ))))
   `(font-lock-doc-face               ((t (:foreground ,sailor-cyan       ))))
   `(font-lock-doc-string-face        ((t (:foreground ,sailor-cyan       ))))
   `(font-lock-function-name-face     ((t (:foreground ,sailor-foreground ))))
   `(font-lock-keyword-face           ((t (:foreground ,sailor-white      ))))
   `(font-lock-preprocessor-face      ((t (:foreground ,sailor-green+1    ))))
   `(font-lock-reference-face         ((t (:foreground ,sailor-green+1    ))))
   `(font-lock-string-face            ((t (:foreground ,sailor-cyan       ))))
   `(font-lock-type-face              ((t (:foreground ,sailor-green+1    ))))
   `(font-lock-variable-name-face     ((t (:foreground ,sailor-white      ))))
   `(font-lock-warning-face           ((t (:foreground ,sailor-white      ))))
   ))

;; Snippets
;; **************************************************************************************************************

;; EWW header line: bold the title + ": " prefix
(unless (advice-member-p 'sailor--eww-bold-title 'eww-update-header-line-format)
  (advice-add 'eww-update-header-line-format :after
              (defun sailor--eww-bold-title ()
                (when (stringp header-line-format)
                  (let* ((url (or (plist-get eww-data :url) ""))
                         (len (length header-line-format))
                         (cut (- len (length url))))
                    (when (and (> cut 0)
                               (string= (substring header-line-format cut) url))
                      (add-face-text-property 0 cut 'bold t header-line-format)))))))

;;;###autoload
(when load-file-name
  (add-to-list 'custom-theme-load-path
               (file-name-as-directory (file-name-directory load-file-name))))

;; **************************************************************************************************************

(provide-theme 'sailor)

;; Local Variables:
;; no-byte-compile: t
;; indent-tabs-mode: nil
;; eval: (when (fboundp 'colorful-mode) (colorful-mode +1))
;; End:
;;; sailor-theme.el ends here.
