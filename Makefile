# Usage
# make	# Creates README.md and photo files.

generate_readme:
	@echo "Generating README.md"
	jupyter nbconvert --ClearMetadataPreprocessor.enabled=True --ClearOutput.enabled=True --to markdown README.ipynb
	@echo "Adding README files to git"
	git add README.md README_files README.ipynb
