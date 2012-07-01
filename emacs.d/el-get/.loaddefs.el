;;; .loaddefs.el --- automatically extracted autoloads
;;
;;; Code:


;;;### (autoloads (color-theme-initialize color-theme-submit color-theme-install
;;;;;;  color-theme-compare color-theme-make-snapshot color-theme-analyze-defun
;;;;;;  color-theme-print color-theme-install-at-point-for-current-frame
;;;;;;  color-theme-install-at-mouse color-theme-describe color-theme-select)
;;;;;;  "color-theme" "color-theme/color-theme.el" (17529 41105))
;;; Generated autoloads from color-theme/color-theme.el

(autoload 'color-theme-select "color-theme" "\
Displays a special buffer for selecting and installing a color theme.
With optional prefix ARG, this buffer will include color theme libraries
as well.  A color theme library is in itself not complete, it must be
used as part of another color theme to be useful.  Thus, color theme
libraries are mainly useful for color theme authors.

\(fn &optional ARG)" t nil)

(autoload 'color-theme-describe "color-theme" "\
Describe color theme listed at point.
This shows the documentation of the value of text-property color-theme
at point.  The text-property color-theme should be a color theme
function.  See `color-themes'.

\(fn)" t nil)

(autoload 'color-theme-install-at-mouse "color-theme" "\
Install color theme clicked upon using the mouse.
First argument EVENT is used to set point.  Then
`color-theme-install-at-point' is called.

\(fn EVENT)" t nil)

(autoload 'color-theme-install-at-point-for-current-frame "color-theme" "\
Install color theme at point for current frame only.
Binds `color-theme-is-global' to nil and calls
`color-theme-install-at-point'.

\(fn)" t nil)

(autoload 'color-theme-print "color-theme" "\
Print the current color theme function.

You can contribute this function to <URL:news:gnu.emacs.sources> or
paste it into your .emacs file and call it.  That should recreate all
the settings necessary for your color theme.

Example:

    (require 'color-theme)
    (defun my-color-theme ()
      \"Color theme by Alex Schroeder, created 2000-05-17.\"
      (interactive)
      (color-theme-install
       '(...
	 ...
	 ...)))
    (my-color-theme)

If you want to use a specific color theme function, you can call the
color theme function in your .emacs directly.

Example:

    (require 'color-theme)
    (color-theme-gnome2)

\(fn &optional BUF)" t nil)

(autoload 'color-theme-analyze-defun "color-theme" "\
Once you have a color-theme printed, check for missing faces.
This is used by maintainers who receive a color-theme submission
and want to make sure it follows the guidelines by the color-theme
author.

\(fn)" t nil)

(autoload 'color-theme-make-snapshot "color-theme" "\
Return the definition of the current color-theme.
The function returned will recreate the color-theme in use at the moment.

\(fn)" nil nil)

(autoload 'color-theme-compare "color-theme" "\
Compare two color themes.
This will print the differences between installing THEME-A and
installing THEME-B.  Note that the order is important: If a face is
defined in THEME-A and not in THEME-B, then this will not show up as a
difference, because there is no reset before installing THEME-B.  If a
face is defined in THEME-B and not in THEME-A, then this will show up as
a difference.

\(fn THEME-A THEME-B)" t nil)

(autoload 'color-theme-install "color-theme" "\
Install a color theme defined by frame parameters, variables and faces.

The theme is installed for all present and future frames; any missing
faces are created.  See `color-theme-install-faces'.

THEME is a color theme definition.  See below for more information.

If you want to install a color theme from your .emacs, use the output
generated by `color-theme-print'.  This produces color theme function
which you can copy to your .emacs.

A color theme definition is a list:
\([FUNCTION] FRAME-PARAMETERS VARIABLE-SETTINGS FACE-DEFINITIONS)

FUNCTION is the color theme function which called `color-theme-install'.
This is no longer used.  There was a time when this package supported
automatic factoring of color themes.  This has been abandoned.

FRAME-PARAMETERS is an alist of frame parameters.  These are installed
with `color-theme-install-frame-params'.  These are installed last such
that any changes to the default face can be changed by the frame
parameters.

VARIABLE-DEFINITIONS is an alist of variable settings.  These are
installed with `color-theme-install-variables'.

FACE-DEFINITIONS is an alist of face definitions.  These are installed
with `color-theme-install-faces'.

If `color-theme-is-cumulative' is nil, a color theme will undo face and
frame-parameter settings of previous color themes.

\(fn THEME)" nil nil)

(autoload 'color-theme-submit "color-theme" "\
Submit your color-theme to the maintainer.

\(fn)" t nil)

(autoload 'color-theme-initialize "color-theme" "\
Initialize the color theme package by loading color-theme-libraries.

\(fn)" t nil)

;;;***

;;;### (autoloads (drupal-mode-bootstrap drupal-drush-mode drupal-mode)
;;;;;;  "drupal-mode" "drupal-mode/drupal-mode.el" (20375 19338))
;;; Generated autoloads from drupal-mode/drupal-mode.el

(autoload 'drupal-mode "drupal-mode" "\
Advanced minor mode for Drupal development.

\\{drupal-mode-map}

\(fn &optional ARG)" t nil)

(autoload 'drupal-drush-mode "drupal-mode" "\
Advanced minor mode for Drupal Drush development.

\\{drupal-drush-mode-map}

\(fn &optional ARG)" t nil)

(autoload 'drupal-mode-bootstrap "drupal-mode" "\
Activate Drupal minor mode if major mode is supported.
The command will activate `drupal-mode' if the current major mode
is a mode supported by `drupal-mode' (currently only
`php-mode').

The function is suitable for adding to the supported major modes
mode-hook, i.e.

\(eval-after-load 'php-mode
  '(add-hook 'php-mode-hook 'drupal-mode-bootstrap))

\(fn)" nil nil)

(eval-after-load 'php-mode '(add-hook 'php-mode-hook #'drupal-mode-bootstrap))

(add-to-list 'auto-mode-alist '("\\.\\(module\\|test\\|install\\|theme\\|tpl\\.php\\)$" . php-mode))

(add-to-list 'auto-mode-alist '("\\.info$" . conf-windows-mode))

;;;***

;;;### (autoloads (highlight-symbol-query-replace highlight-symbol-prev-in-defun
;;;;;;  highlight-symbol-next-in-defun highlight-symbol-prev highlight-symbol-next
;;;;;;  highlight-symbol-remove-all highlight-symbol-at-point highlight-symbol-mode)
;;;;;;  "highlight-symbol" "../../../../.emacs.d/el-get/highlight-symbol/highlight-symbol.el"
;;;;;;  (20417 59988))
;;; Generated autoloads from ../../../../.emacs.d/el-get/highlight-symbol/highlight-symbol.el

(autoload 'highlight-symbol-mode "highlight-symbol" "\
Minor mode that highlights the symbol under point throughout the buffer.
Highlighting takes place after `highlight-symbol-idle-delay'.

\(fn &optional ARG)" t nil)

(autoload 'highlight-symbol-at-point "highlight-symbol" "\
Toggle highlighting of the symbol at point.
This highlights or unhighlights the symbol at point using the first
element in of `highlight-symbol-faces'.

\(fn)" t nil)

(autoload 'highlight-symbol-remove-all "highlight-symbol" "\
Remove symbol highlighting in buffer.

\(fn)" t nil)

(autoload 'highlight-symbol-next "highlight-symbol" "\
Jump to the next location of the symbol at point within the function.

\(fn)" t nil)

(autoload 'highlight-symbol-prev "highlight-symbol" "\
Jump to the previous location of the symbol at point within the function.

\(fn)" t nil)

(autoload 'highlight-symbol-next-in-defun "highlight-symbol" "\
Jump to the next location of the symbol at point within the defun.

\(fn)" t nil)

(autoload 'highlight-symbol-prev-in-defun "highlight-symbol" "\
Jump to the previous location of the symbol at point within the defun.

\(fn)" t nil)

(autoload 'highlight-symbol-query-replace "highlight-symbol" "\
*Replace the symbol at point.

\(fn REPLACEMENT)" t nil)

;;;***

;;;### (autoloads (global-linum-mode linum-mode linum-format) "linum-ex/linum-ex"
;;;;;;  "linum-ex/linum-ex.el" (20311 6862))
;;; Generated autoloads from linum-ex/linum-ex.el

(defvar linum-format 'dynamic "\
Format used to display line numbers. Either a format string
like \"%7d\", 'dynamic to adapt the width as needed, or a
function that is called with a line number as its argument and
should evaluate to a string to be shown on that line. See also
`linum-before-numbering-hook'.")

(custom-autoload 'linum-format "linum-ex/linum-ex" t)

(autoload 'linum-mode "linum-ex/linum-ex" "\
Toggle display of line numbers in the left marginal area.

\(fn &optional ARG)" t nil)

(defvar global-linum-mode nil "\
Non-nil if Global-Linum mode is enabled.
See the command `global-linum-mode' for a description of this minor mode.
Setting this variable directly does not take effect;
either customize it (see the info node `Easy Customization')
or call the function `global-linum-mode'.")

(custom-autoload 'global-linum-mode "linum-ex/linum-ex" nil)

(autoload 'global-linum-mode "linum-ex/linum-ex" "\
Toggle Linum mode in all buffers.
With prefix ARG, enable Global-Linum mode if ARG is positive;
otherwise, disable it.  If called from Lisp, enable the mode if
ARG is omitted or nil.

Linum mode is enabled in all buffers where
`linum-on' would do it.
See `linum-mode' for more information on Linum mode.

\(fn &optional ARG)" t nil)

;;;***

;;;### (autoloads (nxhtml-byte-recompile-file nxhtml-byte-compile-file
;;;;;;  nxhtml-get-missing-files nxhtml-update-existing-files nxhtml-setup-download-all
;;;;;;  nxhtml-setup-auto-download nxhtml-setup-install) "nxhtml-web-vcs"
;;;;;;  "nxhtml/nxhtml-web-vcs.el" (20375 18573))
;;; Generated autoloads from nxhtml/nxhtml-web-vcs.el

(autoload 'nxhtml-setup-install "nxhtml-web-vcs" "\
Setup and start nXhtml installation.

This is for installation and updating directly from the nXhtml
development sources.

There are two different ways to install:

  (1) Download all at once: `nxhtml-setup-download-all'
  (2) Automatically download part by part: `nxhtml-setup-auto-download'

You can convert between those ways by calling this function again.
You can also do this by setting the option `nxhtml-autoload-web' yourself.

When you have nXhtml installed you can update it:

  (3) Update new files in nXhtml: `nxhtml-update-existing-files'

To learn more about nXhtml visit its home page at URL
`http://www.emacswiki.com/NxhtmlMode/'.

If you want to test auto download (but not use it further) there
is a special function for that, you answer T here:

   (T) Test automatic download part by part: `nxhtml-setup-test-auto-download'

======
*Note*
If you want to download a zip file with latest released version instead then
please see URL `http://ourcomments.org/Emacs/nXhtml/doc/nxhtml.html'.

\(fn WAY)" t nil)

(autoload 'nxhtml-setup-auto-download "nxhtml-web-vcs" "\
Set up to autoload nXhtml files from the web.

This function will download some initial files and then setup to
download the rest when you need them.

Files will be downloaded under the directory root you specify in
DL-DIR.

Note that files will not be upgraded automatically.  The auto
downloading is just for files you are missing. (This may change a
bit in the future.) If you want to upgrade those files that you
have downloaded you can just call `nxhtml-update-existing-files'.

You can easily switch between this mode of downloading or
downloading the whole of nXhtml by once.  To switch just call the
command `nxhtml-setup-install'.

See also the command `nxhtml-setup-download-all'.

Note: If your nXhtml is to old you can't use this function
      directly.  You have to upgrade first, se the function
      above. Version 2.07 or above is good for this.

\(fn DL-DIR)" t nil)

(autoload 'nxhtml-setup-download-all "nxhtml-web-vcs" "\
Download or update all of nXhtml.

You can download all if nXhtml with this command.

To update existing files use `nxhtml-update-existing-files'.

If you want to download only those files you are actually using
then call `nxhtml-setup-auto-download' instead.

See the command `nxhtml-setup-install' for a convenient way to
call these commands.

For more information about auto download of nXhtml files see
`nxhtml-setup-auto-download'.

\(fn DL-DIR)" t nil)

(autoload 'nxhtml-update-existing-files "nxhtml-web-vcs" "\
Update existing nXhtml files from the development sources.
Only files you already have will be updated.

Note that this works both if you have setup nXhtml to auto
download files as you need them or if you have downloaded all of
nXhtml at once.

For more information about installing and updating nXhtml see the
command `nxhtml-setup-install'.

\(fn)" t nil)

(autoload 'nxhtml-get-missing-files "nxhtml-web-vcs" "\
Download to SUB-DIR missing files matching FILE-NAME-LIST.
If FILE-NAME-LIST is nil download all missing files.
If it is a list download all missing files in the list.
If it is a regexp download all missing matching files.

\(fn SUB-DIR FILE-NAME-LIST)" nil nil)

(autoload 'nxhtml-byte-compile-file "nxhtml-web-vcs" "\
Not documented

\(fn FILE &optional LOAD)" nil nil)

(autoload 'nxhtml-byte-recompile-file "nxhtml-web-vcs" "\
Byte recompile FILE file if necessary.
For more information see `nxhtml-byte-compile-file'.
Loading is done if recompiled and LOAD is t.

\(fn FILE &optional LOAD)" t nil)

;;;***

;;;### (autoloads (nxhtmlmaint-byte-uncompile-all nxhtmlmaint-byte-recompile
;;;;;;  nxhtmlmaint-start-byte-compilation) "nxhtmlmaint" "nxhtml/nxhtmlmaint.el"
;;;;;;  (20375 18573))
;;; Generated autoloads from nxhtml/nxhtmlmaint.el

(autoload 'nxhtmlmaint-start-byte-compilation "nxhtmlmaint" "\
Start byte compilation of nXhtml in new Emacs instance.
Byte compiling in general makes elisp code run 5-10 times faster
which is quite noticeable when you use nXhtml.

This will also update the file nxhtml-loaddefs.el.

You must restart Emacs to use the byte compiled files.

If for some reason the byte compiled files does not work you can
remove then with `nxhtmlmaint-byte-uncompile-all'.

See also `nxhtmlmaint-byte-recompile'

\(fn)" t nil)

(autoload 'nxhtmlmaint-byte-recompile "nxhtmlmaint" "\
Recompile or compile all nXhtml files in current Emacs.
Byte compile all elisp libraries whose .el files are newer their
.elc files.

\(fn)" t nil)

(autoload 'nxhtmlmaint-byte-uncompile-all "nxhtmlmaint" "\
Delete byte compiled files in nXhtml.
This will also update the file nxhtml-loaddefs.el.

See `nxhtmlmaint-start-byte-compilation' for byte compiling.

\(fn)" t nil)

;;;***

;;;### (autoloads (web-vcs-investigate-elisp-file web-vcs-url-copy-file
;;;;;;  web-vcs-url-retrieve-synch web-vcs-byte-compile-file web-vcs-message-with-face
;;;;;;  web-vcs-get-files-from-root web-vcs-log-edit web-vcs-default-download-directory)
;;;;;;  "web-vcs" "nxhtml/web-vcs.el" (20375 18573))
;;; Generated autoloads from nxhtml/web-vcs.el

(autoload 'web-vcs-default-download-directory "web-vcs" "\
Try to find a suitable place.
Use the choice in `web-vcs-default-download-directory'.
If this does not fit fall back to \"~/.emacs.d/\".

\(fn)" nil nil)

(autoload 'web-vcs-log-edit "web-vcs" "\
Open log file.

\(fn)" t nil)

(autoload 'web-vcs-get-files-from-root "web-vcs" "\
Download a file tree from VCS system using the web interface.
Use WEB-VCS entry in variable `web-vcs-links-regexp' to download
files via http from FULL-URL to directory DL-DIR.

Show FULL-URL first and offer to visit the page.  That page will
give you information about version control system (VCS) system
used etc.

\(fn WEB-VCS FULL-URL DL-DIR)" nil nil)

(autoload 'web-vcs-message-with-face "web-vcs" "\
Display a colored message at the bottom of the string.
FACE is the face to use for the message.
FORMAT-STRING and ARGS are the same as for `message'.

Also put FACE on the message in *Messages* buffer.

\(fn FACE FORMAT-STRING &rest ARGS)" nil nil)

(autoload 'web-vcs-byte-compile-file "web-vcs" "\
Byte compile FILE in a new Emacs sub process.
EXTRA-LOAD-PATH is added to the front of `load-path' during
compilation.

FILE is set to `buffer-file-name' when called interactively.
If LOAD

\(fn FILE &optional LOAD EXTRA-LOAD-PATH COMP-DIR)" t nil)

(autoload 'web-vcs-url-retrieve-synch "web-vcs" "\
Retrieve URL, return cons with buffer and http status.

\(fn URL)" nil nil)

(autoload 'web-vcs-url-copy-file "web-vcs" "\
Copy URL to NEWNAME.  Both args must be strings.
Signals a `file-already-exists' error if file NEWNAME already exists,
unless a third argument OK-IF-ALREADY-EXISTS is supplied and non-nil.
A number as third arg means request confirmation if NEWNAME already exists.
This is what happens in interactive use with M-x.
Fourth arg KEEP-TIME non-nil means give the new file the same
last-modified time as the old one.  (This works on only some systems.)
Fifth arg PRESERVE-UID-GID is ignored.
A prefix arg makes KEEP-TIME non-nil.

\(fn URL NEWNAME &optional OK-IF-ALREADY-EXISTS KEEP-TIME PRESERVE-UID-GID)" nil nil)

(autoload 'web-vcs-investigate-elisp-file "web-vcs" "\
Not documented

\(fn FILE-OR-BUFFER)" t nil)

;;;***

;;;### (autoloads nil nil ("../../../../.emacs.d/el-get/highlight-symbol/highlight-symbol.el"
;;;;;;  "../../../../.emacs.d/el-get/popup-kill-ring/popup-kill-ring.el"
;;;;;;  "autopair/autopair.el" "color-theme-tangotango/color-theme-tangotango.el"
;;;;;;  "color-theme/color-theme-autoloads.el" "drupal-mode/drupal-tests.el"
;;;;;;  "el-get/el-get-install.el" "el-get/el-get.el" "linum-off/linum-off.el"
;;;;;;  "nxhtml/autostart.el" "nxhtml/autostart22.el" "nxhtml/nxhtml-base.el"
;;;;;;  "nxhtml/nxhtml-loaddefs.el" "nxhtml/web-autoload.el" "project-root/project-root.el")
;;;;;;  (20463 41857 595636))

;;;***

(provide '.loaddefs)
;; Local Variables:
;; version-control: never
;; no-update-autoloads: t
;; coding: utf-8
;; End:
;;; .loaddefs.el ends here