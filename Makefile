include .env

init:
	@echo "Copying .env.example to .env..."
	cp .env.EXAMPLE .env
	@echo "Initialization complete! Edit the .env file as needed."

# Rule to perform the search for directories
find:
	@echo "Searching for list for $(DOMAIN)"
	@find $(ARC_DIR) -type d -path '*@$(DOMAIN)' > directories.txt
	@echo "OK"

# Rule to compress the found directories
compress:
	@echo "Compressing archive for $(DOMAIN)"
	@tar -czvf $(DOMAIN).tar.gz --directory=$(ARC_DIR) --files-from=directories.txt
	@echo "Lists compressed in $(PWD)/$(DOMAIN).tar.gz"

# Default rule
all: find compress

# Rule to delete the directory file
clean:
	@echo "Cleaning up..."
	@rm -f directories.txt
	@echo "Cleanup complete."

# Rule to pass the domain as a parameter
param:
	@$(MAKE) DOMAIN=$(DOMAIN) all