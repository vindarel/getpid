
# Getpid

A trivial portable utility to get the PID of the current Lisp process.

Example use case: start a web application on the background and use
the PID to send signals to it.

## API

- `getpid`
- `save-pid &optional file`

It works for SBCL, CCL, ECL, LispWorks and Allegro.

UIOP doesn't want this function, so here it is.

# Installation

This library is on [Ultralisp](https://ultralisp.org/github).

WTFPL.