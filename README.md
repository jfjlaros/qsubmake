# QsubMake
This is an alternative to the `qmake` command.

## Invocation
You can use a normal `Makefile`, just override the `SHELL` variable.

    make "SHELL=./qsub_wrapper" -j 100

To run a pipeline:

    nohup make "SHELL=./qsub_wrapper" -j 100 >> log.txt 2>> log_err.txt &
