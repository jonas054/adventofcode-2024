INPUT_FILE = input

# Read input file content and extract numbers
INPUT_CONTENT := $(shell cat $(INPUT_FILE))
WORD_COUNT := $(words $(INPUT_CONTENT))

# Generate indices for odd (left) and even (right) positions  
ODD_INDICES := $(shell seq 1 2 $(WORD_COUNT))
EVEN_INDICES := $(shell seq 2 2 $(WORD_COUNT))

# Extract left and right numbers using Make functions
LEFT_NUMBERS := $(foreach i,$(ODD_INDICES),$(word $(i),$(INPUT_CONTENT)))
RIGHT_NUMBERS := $(foreach i,$(EVEN_INDICES),$(word $(i),$(INPUT_CONTENT)))

# Sort the numbers (preserving duplicates)
LEFT_SORTED := $(shell echo "$(LEFT_NUMBERS)" | tr ' ' '\n' | sort -n | tr '\n' ' ')
RIGHT_SORTED := $(shell echo "$(RIGHT_NUMBERS)" | tr ' ' '\n' | sort -n | tr '\n' ' ')

all: part1 part2

part1:
	@total=0; \
	left_list="$(LEFT_SORTED)"; \
	right_list="$(RIGHT_SORTED)"; \
	count=$$(echo $$(($(WORD_COUNT) / 2))); \
	for i in $$(seq 1 $$count); do \
		left=$$(echo $$left_list | cut -d' ' -f$$i); \
		right=$$(echo $$right_list | cut -d' ' -f$$i); \
		if [ $$left -gt $$right ]; then \
			diff=$$(($$left - $$right)); \
		else \
			diff=$$(($$right - $$left)); \
		fi; \
		total=$$(($$total + $$diff)); \
	done; \
	echo $$total

part2:
	@total=0; \
	for num in $(LEFT_NUMBERS); do \
		count=$$(echo "$(RIGHT_NUMBERS)" | tr ' ' '\n' | grep -c "^$$num$$"); \
		score=$$(($$num * $$count)); \
		total=$$(($$total + $$score)); \
	done; \
	echo $$total
