# Directory containing the adages
ADAGES_DIR := adages

# Find all files in the adages directory
FILES := $(shell find $(ADAGES_DIR) -type f)

.PHONY: all replace_hyphens

# Default target
all: replace_hyphens

# Replace hyphens at the beginning of lines with en dashes
replace_hyphens:
	@for file in $(FILES); do \
		echo "Processing $$file..."; \
		sed -i 's/^-/–/' "$$file"; \
	done
	@echo "Replaced all hyphens at the beginning of lines with en dashes."

