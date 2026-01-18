---
title: Contributing
---

# Contributing

Thank you for your interest in contributing!

---

## Getting Started

### 1. Fork the Repository

Click the "Fork" button on GitHub to create your own copy.

### 2. Clone Your Fork

```bash
git clone https://github.com/YOUR-USERNAME/mkdocs-template.git
cd mkdocs-template
```

### 3. Set Up Development Environment

```bash
python -m venv venv
source venv/bin/activate  # or .\venv\Scripts\activate on Windows
pip install -r requirements.txt
```

### 4. Start Development Server

```bash
mkdocs serve
```

---

## Making Changes

### Create a Branch

```bash
git checkout -b feature/your-feature-name
```

### Make Your Changes

- Follow existing code style
- Test your changes locally
- Update documentation if needed

### Commit Your Changes

```bash
git add .
git commit -m "Add: brief description of changes"
```

#### Commit Message Format

| Prefix | Use For |
|--------|---------|
| `Add:` | New features |
| `Fix:` | Bug fixes |
| `Update:` | Improvements |
| `Docs:` | Documentation only |
| `Style:` | Formatting, no code change |
| `Refactor:` | Code restructuring |

### Push and Create PR

```bash
git push origin feature/your-feature-name
```

Then open a Pull Request on GitHub.

---

## Guidelines

### Code Style

- Use consistent indentation (2 spaces for CSS/YAML, 4 for Python)
- Comment complex logic
- Keep functions small and focused

### CSS Guidelines

```css
/* Good: Use CSS custom properties */
.element {
  color: var(--lv-accent-warm);
  transition: var(--lv-transition-normal);
}

/* Avoid: Hard-coded values */
.element {
  color: #f97316;
  transition: 0.3s ease;
}
```

### Documentation

- Write clear, concise content
- Include code examples
- Test all code snippets

---

## Reporting Issues

### Bug Reports

Include:

1. Steps to reproduce
2. Expected behavior
3. Actual behavior
4. Browser/OS information
5. Screenshots if applicable

### Feature Requests

Describe:

1. The problem you're solving
2. Your proposed solution
3. Alternatives considered

---

## Code of Conduct

- Be respectful and inclusive
- Welcome newcomers
- Focus on constructive feedback
- Assume good intentions

---

## Questions?

- Open a [GitHub Discussion](https://github.com/username/repo/discussions)
- Check existing issues first
- Be patient for responses

---

Thank you for contributing! :material-heart:
