INPUT_FILE = input

all: part1 part2

part1: left_list right_list
	@for diff in `paste -d- left_list right_list | sed 's/ //'`; do \
	  echo $$diff | bc | sed 's/-//'; \
	done | paste -s -d+ - | bc

part2: left_list right_list
	@for left_number in `cat left_list`; do \
	  echo $$left_number \* `grep -c $$left_number right_list`; \
	done | paste -s -d+ - | bc

left_list: $(INPUT_FILE) Makefile
	@awk '{print $$1}' $< | sort -n >$@

right_list: $(INPUT_FILE) Makefile
	@awk '{print $$2}' $< | sort -n >$@
