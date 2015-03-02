# Makefile.

#SHELL=./qsub_wrapper

OUT := $(addsuffix .out, $(basename $(shell ls *.in)))

all: combined.out

%.out: %.in
	SGE_RREQ="-q all.q" sleep 5; echo $< > $@

combined.out: $(OUT)
	cat $^ > $@ ;\
	echo test
