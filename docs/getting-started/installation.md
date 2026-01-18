---
title: Installation
---

# Installation

Get up and running with the Luminous Void documentation theme in minutes.

---

## Prerequisites

Before you begin, ensure you have the following installed:

- **Python 3.8+** - [Download Python](https://www.python.org/downloads/)
- **pip** - Usually comes with Python
- **Git** - [Download Git](https://git-scm.com/downloads)

---

## Quick Install

### 1. Create a new project

```bash
mkdir my-docs && cd my-docs
```

### 2. Set up a virtual environment

=== "macOS/Linux"

    ```bash
    python3 -m venv venv
    source venv/bin/activate
    ```

=== "Windows"

    ```powershell
    python -m venv venv
    .\venv\Scripts\activate
    ```

### 3. Install dependencies

```bash
pip install mkdocs-material mkdocs-minify-plugin
```

### 4. Copy the template

Copy the template files to your project directory:

```bash
# Clone or copy the template
cp -r /path/to/mkdocs-template/* .
```

### 5. Start the development server

```bash
mkdocs serve
```

Your documentation will be available at `http://localhost:8000`.

---

## Project Structure

After installation, your project should look like this:

```
my-docs/
├── docs/
│   ├── index.md
│   ├── getting-started/
│   ├── guide/
│   └── api/
├── overrides/
│   ├── main.html
│   ├── partials/
│   └── assets/
│       ├── stylesheets/
│       └── javascripts/
└── mkdocs.yml
```

---

## Configuration

The main configuration file is `mkdocs.yml`. Here are the key settings:

```yaml title="mkdocs.yml"
site_name: Your Documentation
site_url: https://docs.example.com

theme:
  name: material
  custom_dir: overrides
  palette:
    scheme: slate
```

!!! tip "Customization"
    Check out the [Configuration Guide](configuration.md) for detailed customization options.

---

## Next Steps

- [Quick Start](quickstart.md) - Create your first documentation page
- [Configuration](configuration.md) - Customize your documentation
- [Features](../guide/features.md) - Explore all available features
