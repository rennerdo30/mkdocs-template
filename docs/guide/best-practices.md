---
title: Best Practices
---

# Best Practices

Write documentation that users love to read.

---

## Structure

### Keep It Simple

- One topic per page
- Clear, descriptive titles
- Logical navigation hierarchy

### Use Headings Wisely

```markdown
# Page Title (H1) - Only one per page

## Major Section (H2)

### Subsection (H3)

#### Detail (H4) - Use sparingly
```

!!! tip "Table of Contents"
    The right sidebar automatically generates from H2 and H3 headings.

---

## Writing Style

### Be Concise

:material-close: **Don't:**
> In order to facilitate the process of installation, it is necessary to first ensure that you have Python installed on your system.

:material-check: **Do:**
> Install Python before proceeding.

### Use Active Voice

:material-close: **Don't:**
> The configuration file should be edited by the user.

:material-check: **Do:**
> Edit the configuration file.

### Front-Load Important Information

Put the most important information first. Users often scan rather than read.

---

## Code Examples

### Show Complete Examples

```python title="Complete example"
from mylib import Client

# Initialize the client
client = Client(api_key="your-api-key")

# Make a request
response = client.get("/users")

# Handle the response
for user in response.data:
    print(f"User: {user.name}")
```

### Explain Non-Obvious Code

```python
# The timeout is in seconds, not milliseconds
client = Client(timeout=30)  # (1)!
```

1. Default timeout is 10 seconds. Increase for slow networks.

### Use Realistic Values

:material-close: **Don't:**
```python
client = Client(api_key="xxx")
```

:material-check: **Do:**
```python
client = Client(api_key="sk_live_abc123...")
```

---

## Admonitions

### Use Appropriately

| Type | When to Use |
|------|-------------|
| `note` | Additional context, not critical |
| `tip` | Helpful suggestions, shortcuts |
| `info` | Important information |
| `warning` | Potential issues, gotchas |
| `danger` | Breaking changes, data loss risks |

### Don't Overuse

Too many admonitions reduce their impact. Use sparingly for truly important information.

---

## Navigation

### Organize Logically

```
docs/
├── index.md              # Landing page
├── getting-started/      # Onboarding flow
│   ├── installation.md
│   ├── quickstart.md
│   └── configuration.md
├── guide/                # In-depth guides
│   ├── overview.md
│   └── features.md
├── api/                  # Reference docs
│   └── endpoints.md
└── about/                # Meta information
    ├── changelog.md
    └── contributing.md
```

### Provide Clear Paths

- Link to next steps at the bottom of each page
- Use breadcrumbs and navigation
- Cross-reference related content

---

## Accessibility

### Alt Text for Images

```markdown
![Description of the image](image.png)
```

### Use Semantic Markup

- Use tables for tabular data
- Use lists for sequential or grouped items
- Use headings for structure, not styling

### Color Contrast

The Luminous Void theme maintains WCAG AA contrast ratios. Don't override colors that reduce contrast.

---

## Maintenance

### Keep Updated

- Review documentation with each release
- Remove outdated information promptly
- Date time-sensitive content

### Version Control

- Use git for documentation
- Write meaningful commit messages
- Review documentation changes like code

### Get Feedback

- Enable "Edit this page" links
- Provide a way to report issues
- Act on user feedback

---

## Checklist

Before publishing, verify:

- [ ] All code examples work
- [ ] Links are not broken
- [ ] Images load correctly
- [ ] Navigation makes sense
- [ ] No typos or grammar errors
- [ ] Mobile view looks good

---

## Resources

- [Google Developer Documentation Style Guide](https://developers.google.com/style)
- [Write the Docs](https://www.writethedocs.org/)
- [MkDocs Material Reference](https://squidfunk.github.io/mkdocs-material/reference/)
