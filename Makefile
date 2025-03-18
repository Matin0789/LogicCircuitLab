SRC_FILES = src/ThirdTest/*.vhd
TEST_FILES = test/ThirdTest/*.vhd
TOP_ENTITY = mux4to1_tb
WAVE_FILE = output.ghw

all: compile elaborate run view

compile:
	ghdl -a $(SRC_FILES) $(TEST_FILES)

elaborate:
	ghdl -e $(TOP_ENTITY)

run:
	ghdl -r $(TOP_ENTITY) --wave=$(WAVE_FILE)

view:
	gtkwave $(WAVE_FILE) &

clean:
	rm -f *.o *.cf $(TOP_ENTITY) $(WAVE_FILE)