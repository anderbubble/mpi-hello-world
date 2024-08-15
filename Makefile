all: mpich-hello-world.sif openmpi-hello-world.sif
.PHONY: all

%.sif: %.def
	apptainer build --force $@ $<

clean:
	rm -rf *.sif
.PHONY: clean
