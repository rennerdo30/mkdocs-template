# MkDocs Development Commands
# Luminous Void Theme

.PHONY: help start build deploy clean

help:
	@echo "Luminous Void MkDocs Template"
	@echo ""
	@echo "Usage:"
	@echo "  ./start.sh   - Create venv, install deps, start dev server"
	@echo "  ./build.sh   - Create venv, install deps, build static site"
	@echo "  ./deploy.sh  - Create venv, install deps, deploy to GitHub Pages"
	@echo ""
	@echo "Or use make:"
	@echo "  make start   - Same as ./start.sh"
	@echo "  make build   - Same as ./build.sh"
	@echo "  make deploy  - Same as ./deploy.sh"
	@echo "  make clean   - Remove build artifacts and venv"
	@echo ""

start:
	@./start.sh

build:
	@./build.sh

deploy:
	@./deploy.sh

clean:
	@echo "Cleaning..."
	@rm -rf site/ venv/ __pycache__/
	@echo "Done!"
