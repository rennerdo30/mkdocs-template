---
title: Quick Start
---

# Quick Start

Create your first documentation page in under 5 minutes.

---

## Create a Page

### 1. Add a Markdown file

Create a new file in the `docs/` directory:

```markdown title="docs/my-page.md"
---
title: My First Page
---

# My First Page

Welcome to my documentation!

## Section One

This is the first section of content.

## Section Two

This is another section with some code:

\`\`\`python
print("Hello, World!")
\`\`\`
```

### 2. Add to navigation

Update `mkdocs.yml` to include your new page:

```yaml title="mkdocs.yml"
nav:
  - Home: index.md
  - My Page: my-page.md  # (1)!
```

1. Add your new page to the navigation

### 3. Preview changes

The development server automatically reloads:

```bash
mkdocs serve
```

---

## Writing Content

### Headings

```markdown
# Heading 1
## Heading 2
### Heading 3
#### Heading 4
```

### Text Formatting

| Syntax | Result |
|--------|--------|
| `**bold**` | **bold** |
| `*italic*` | *italic* |
| `~~strikethrough~~` | ~~strikethrough~~ |
| `` `code` `` | `code` |

### Links

```markdown
[External Link](https://example.com)
[Internal Link](../guide/features.md)
[Anchor Link](#writing-content)
```

---

## Code Blocks

### Basic syntax highlighting

```python
def calculate_sum(numbers: list[int]) -> int:
    """Calculate the sum of a list of numbers."""
    return sum(numbers)

result = calculate_sum([1, 2, 3, 4, 5])
print(f"Sum: {result}")  # Output: Sum: 15
```

### With title and line numbers

```javascript title="app.js" linenums="1"
const express = require('express');
const app = express();

app.get('/', (req, res) => {
  res.json({ message: 'Hello, Luminous Void!' });
});

app.listen(3000, () => {
  console.log('Server running on port 3000');
});
```

### Highlighting specific lines

```python hl_lines="2 3"
def example():
    # This line is highlighted
    # This line is also highlighted
    return "Hello"
```

---

## Admonitions

```markdown
!!! note "Optional Title"
    Content goes here.

!!! tip
    Content without a custom title.

??? example "Collapsible"
    This content is hidden by default.
```

**Result:**

!!! note "Optional Title"
    Content goes here.

!!! tip
    Content without a custom title.

??? example "Collapsible"
    This content is hidden by default.

---

## Next Steps

- [Configuration](configuration.md) - Customize your setup
- [Features](../guide/features.md) - Explore advanced features
- [Best Practices](../guide/best-practices.md) - Write better docs
