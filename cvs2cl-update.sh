#!/bin/sh
# builds our changelog
cvs2cl --show-dead -W 30 --summary --utc -U cvs2cl.ufile -I ChangeLog --accum
