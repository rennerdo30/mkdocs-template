---
title: Configuration
---

# Configuration

Customize your documentation to match your needs.

---

## Site Settings

### Basic Information

```yaml title="mkdocs.yml"
site_name: Your Documentation
site_url: https://docs.example.com
site_description: A brief description of your project
site_author: Your Name

repo_name: username/repo
repo_url: https://github.com/username/repo
edit_uri: edit/main/docs/
```

| Setting | Description |
|---------|-------------|
| `site_name` | The name shown in the header |
| `site_url` | The canonical URL for your docs |
| `site_description` | Used for SEO meta tags |
| `repo_url` | Links to your repository |
| `edit_uri` | Enables "Edit this page" links |

---

## Theme Configuration

### Colors

The Luminous Void theme uses a dark color palette:

```yaml title="mkdocs.yml"
theme:
  palette:
    scheme: slate      # Dark mode base
    primary: custom    # Uses CSS custom properties
    accent: custom     # Uses CSS custom properties
```

### Fonts

```yaml title="mkdocs.yml"
theme:
  font:
    text: Inter        # Body text
    code: Fira Code    # Code blocks
```

### Features

Enable powerful features:

```yaml title="mkdocs.yml"
theme:
  features:
    # Navigation
    - navigation.instant      # Instant loading
    - navigation.tracking     # URL updates on scroll
    - navigation.tabs         # Top-level tabs
    - navigation.sections     # Section headers in sidebar
    - navigation.expand       # Auto-expand sections
    - navigation.top          # Back to top button

    # Search
    - search.suggest          # Search suggestions
    - search.highlight        # Highlight search terms
    - search.share            # Share search results

    # Content
    - content.code.copy       # Copy button on code blocks
    - content.code.annotate   # Code annotations
    - content.tabs.link       # Linked content tabs
```

---

## Navigation

### Basic Structure

```yaml title="mkdocs.yml"
nav:
  - Home: index.md
  - Getting Started:
    - Installation: getting-started/installation.md
    - Quick Start: getting-started/quickstart.md
  - Guide:
    - Overview: guide/overview.md
    - Features: guide/features.md
```

### Section Headers

Use indentation to create sections:

```yaml
nav:
  - Section Name:
    - Page One: section/page-one.md
    - Page Two: section/page-two.md
```

---

## Extensions

### Recommended Extensions

```yaml title="mkdocs.yml"
markdown_extensions:
  # Tables and formatting
  - tables
  - attr_list
  - md_in_html

  # Code blocks
  - pymdownx.highlight:
      anchor_linenums: true
  - pymdownx.superfences
  - pymdownx.inlinehilite

  # Admonitions
  - admonition
  - pymdownx.details

  # Content tabs
  - pymdownx.tabbed:
      alternate_style: true

  # Task lists
  - pymdownx.tasklist:
      custom_checkbox: true

  # Emoji
  - pymdownx.emoji:
      emoji_index: !!python/name:material.extensions.emoji.twemoji
      emoji_generator: !!python/name:material.extensions.emoji.to_svg
```

---

## Plugins

### Search

```yaml title="mkdocs.yml"
plugins:
  - search:
      separator: '[\s\-,:!=\[\]()"`/]+|\.(?!\d)|&[lg]t;|(?!\b)(?=[A-Z][a-z])'
```

### Minification

```yaml title="mkdocs.yml"
plugins:
  - minify:
      minify_html: true
```

!!! note "Plugin Installation"
    Remember to install plugins via pip:
    ```bash
    pip install mkdocs-minify-plugin
    ```

---

## Social Links

Add social media links to the footer:

```yaml title="mkdocs.yml"
extra:
  social:
    - icon: fontawesome/brands/github
      link: https://github.com/username
    - icon: fontawesome/brands/twitter
      link: https://twitter.com/username
    - icon: fontawesome/brands/linkedin
      link: https://linkedin.com/in/username
```

---

## Analytics

### Google Analytics

```yaml title="mkdocs.yml"
extra:
  analytics:
    provider: google
    property: G-XXXXXXXXXX
```

---

## Custom CSS Variables

Edit `overrides/assets/stylesheets/extra.css` to customize colors:

```css title="extra.css"
:root {
  /* Background Colors */
  --lv-bg-primary: #0a0a0f;
  --lv-bg-secondary: #12121a;

  /* Accent Colors */
  --lv-accent-warm: #f97316;    /* Warm coral */
  --lv-accent-cool: #22d3ee;    /* Electric cyan */

  /* Text Colors */
  --lv-text-primary: #fafafa;
  --lv-text-secondary: #94a3b8;
}
```

---

## Next Steps

- [Features](../guide/features.md) - Explore all theme features
- [Best Practices](../guide/best-practices.md) - Documentation tips
