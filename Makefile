# Makefile.

SHELL := ./qsub_wrapper

all: combined.out

%.out: %.in
	SGE_RREQ="-q all.q" sleep 5; echo $< > $@

combined.out: 1.out 2.out 3.out
	cat $^ > $@
