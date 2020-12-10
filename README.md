
# Getpid

A trivial portable utility to get the PID of the current Lisp process.

Example use case: start a web application on the background and use
the PID to send signals to it.

## API

- `getpid`
- `save-pid &optional file`


UIOP don't want this function, so here is it.
