#!/bin/bash
# MkDocs Development Script
# Handles venv creation, dependency installation, and server startup

set -e

cd "$(dirname "$0")"

# Colors for output
GREEN='\033[0;32m'
BLUE='\033[0;34m'
NC='\033[0m' # No Color

echo -e "${BLUE}Luminous Void MkDocs Template${NC}"
echo ""

# Create virtual environment if it doesn't exist
if [ ! -d "venv" ]; then
    echo -e "${GREEN}Creating virtual environment...${NC}"
    python3 -m venv venv
fi

# Activate virtual environment
echo -e "${GREEN}Activating virtual environment...${NC}"
source venv/bin/activate

# Install/update dependencies
echo -e "${GREEN}Installing dependencies...${NC}"
pip install --quiet --upgrade pip
pip install --quiet -r requirements.txt

echo ""
echo -e "${GREEN}Starting development server...${NC}"
echo -e "Access at: ${BLUE}http://localhost:8000${NC}"
echo ""

# Start MkDocs server
mkdocs serve
