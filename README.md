# Luminous Void - MkDocs Material Theme

A beautiful, dark-first documentation theme for MkDocs Material with warm coral and cool cyan accents. Inspired by modern design systems with carefully crafted dark and light modes.

## Features

- **Dark Mode First** - Beautiful dark theme as default with seamless light mode toggle
- **Custom Color Palette** - Warm coral (`#f97316`) and cool cyan (`#22d3ee`) accents
- **Modern Typography** - Inter for body text, Fira Code for code blocks
- **Full Light Mode Support** - Every element properly styled for both themes
- **Feature Cards** - Pre-styled homepage components
- **Code Highlighting** - VS Code Dark+ inspired syntax highlighting
- **Responsive Design** - Looks great on all devices

## Quick Start

### 1. Clone the template

```bash
git clone https://github.com/yourusername/mkdocs-template.git my-docs
cd my-docs
```

### 2. Install dependencies

```bash
python -m venv venv
source venv/bin/activate  # On Windows: venv\Scripts\activate
pip install -r requirements.txt
```

### 3. Start the development server

```bash
./start.sh
# or
mkdocs serve
```

### 4. Open http://localhost:8000

## Configuration

Edit `mkdocs.yml` to customize your documentation:

```yaml
site_name: Your Documentation
site_url: https://docs.example.com
site_description: Your site description
site_author: Your Name

repo_name: username/repo
repo_url: https://github.com/username/repo
```

## Project Structure

```
mkdocs-template/
├── docs/                    # Documentation content
│   ├── index.md            # Homepage
│   ├── getting-started/    # Getting started guides
│   ├── guide/              # User guides
│   ├── api/                # API reference
│   └── about/              # About pages
├── overrides/              # Theme customizations
│   ├── main.html          # Base template overrides
│   ├── partials/          # Partial templates
│   └── assets/
│       ├── stylesheets/
│       │   └── extra.css  # Custom CSS (~1500 lines)
│       └── javascripts/
│           └── extra.js   # Custom JavaScript
├── mkdocs.yml             # MkDocs configuration
├── requirements.txt       # Python dependencies
├── start.sh              # Development server script
├── build.sh              # Build script
└── deploy.sh             # Deployment script
```

## Color Palette

### Dark Mode (Default)

| Element | Color |
|---------|-------|
| Background Primary | `#0a0a0f` |
| Background Secondary | `#12121a` |
| Text Primary | `#fafafa` |
| Text Secondary | `#94a3b8` |
| Accent Warm | `#f97316` |
| Accent Cool | `#22d3ee` |

### Light Mode

| Element | Color |
|---------|-------|
| Background Primary | `#ffffff` |
| Background Secondary | `#f8fafc` |
| Text Primary | `#1e293b` |
| Text Secondary | `#475569` |
| Accent Warm | `#f97316` |
| Accent Cool | `#0891b2` |

## CSS Variables

All custom properties use the `--lv-` prefix (Luminous Void):

```css
--lv-bg-primary      /* Background colors */
--lv-text-primary    /* Text colors */
--lv-accent-warm     /* Orange accent */
--lv-accent-cool     /* Cyan accent */
--lv-border-subtle   /* Border colors */
--lv-glow-warm       /* Glow effects */
```

## Scripts

| Script | Description |
|--------|-------------|
| `./start.sh` | Start development server with live reload |
| `./build.sh` | Build static site to `site/` directory |
| `./deploy.sh` | Deploy to GitHub Pages |

## Deployment

### GitHub Pages

1. Enable GitHub Pages in repository settings
2. Run the deploy script:

```bash
./deploy.sh
```

Or use GitHub Actions (workflow included in `.github/workflows/`).

### Manual Build

```bash
mkdocs build
```

The static site will be generated in the `site/` directory.

## Customization

### Changing Colors

Edit the CSS variables in `overrides/assets/stylesheets/extra.css`:

```css
:root {
  --lv-accent-warm: #f97316;  /* Change primary accent */
  --lv-accent-cool: #22d3ee;  /* Change secondary accent */
}
```

### Adding Pages

1. Create a new `.md` file in the `docs/` directory
2. Add the page to the `nav` section in `mkdocs.yml`

### Custom Components

The theme includes pre-styled components:

- **Hero Section** - `.hero`, `.hero__title`, `.hero__subtitle`
- **Feature Cards** - `.features`, `.feature-card`
- **Buttons** - `.md-button`, `.md-button--primary`

## Requirements

- Python 3.8+
- MkDocs Material 9.0+

## License

MIT License - see [LICENSE](LICENSE) for details.

## Credits

- Built with [MkDocs Material](https://squidfunk.github.io/mkdocs-material/)
- Design inspired by [renner.dev](https://renner.dev)
