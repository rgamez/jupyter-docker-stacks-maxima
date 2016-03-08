Jupyter notebooks + maxima kernel
=================================

Based in the jupyter/docker-stacks images with the addition of (robert-dodier/maxima-jupyter)'s maxima kernel and its dependencies (gnuplot, zeromq).

## Build

```
  make
```
or
```
  make (minimal-notebook | singleuser)
```


## Notes
The maxima lisp image was build following the robert-dodier/maxima-jupyter repository instructions with an small change, the ```maxima_tempdir``` environment variable is set to ```/tmp``` instead to the user's (who create the image) home directory.

Not working:
  - Syntax highlight
