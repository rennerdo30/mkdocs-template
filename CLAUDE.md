# MkDocs Template - Claude Instructions

## Project Overview

This is a custom MkDocs Material theme template called "Luminous Void". It provides a dark-first design with proper light mode support, inspired by the renner.dev website design system.

## Key Files

- `mkdocs.yml` - Main MkDocs configuration
- `overrides/assets/stylesheets/extra.css` - All custom CSS (1500+ lines)
- `overrides/main.html` - Base template overrides
- `overrides/partials/` - Partial template overrides
- `docs/` - Documentation content

## Design System

### Color Palette

**Dark Mode (default):**
- Background: `#0a0a0f` (primary), `#12121a` (secondary), `#1a1a24` (tertiary)
- Text: `#fafafa` (primary), `#94a3b8` (secondary), `#64748b` (muted)
- Accent warm: `#f97316` (orange)
- Accent cool: `#22d3ee` (cyan)

**Light Mode:**
- Background: `#ffffff` (primary), `#f8fafc` (secondary), `#f1f5f9` (tertiary)
- Text: `#1e293b` (primary), `#475569` (secondary), `#64748b` (muted)
- Same accent colors

### CSS Variables

All custom properties use the `--lv-` prefix (Luminous Void):
- `--lv-bg-*` - Background colors
- `--lv-text-*` - Text colors
- `--lv-accent-*` - Accent colors
- `--lv-border-*` - Border colors
- `--lv-glow-*` - Glow effects
- `--lv-transition-*` - Transitions
- `--lv-radius-*` - Border radii

### Theme Schemes

- Dark mode: `[data-md-color-scheme="slate"]`
- Light mode: `[data-md-color-scheme="default"]`

## Styling Guidelines

1. **Prefer solid colors over gradients** - Use `var(--lv-accent-warm)` instead of gradient backgrounds for text
2. **Always style both themes** - When adding new styles, add overrides for both `slate` (dark) and `default` (light) schemes
3. **Use CSS variables** - Always use the `--lv-*` custom properties rather than hardcoded colors
4. **SVG icons need explicit fill** - Use `fill: currentColor` for SVG icons to inherit text color
5. **Light mode selector** - All light mode overrides use `[data-md-color-scheme="default"]` prefix

## Common Patterns

### Adding Light Mode Styles

```css
/* Dark mode (base styles, no selector needed if using --lv-* vars) */
.my-element {
  color: var(--lv-text-primary);
  background: var(--lv-bg-secondary);
}

/* Light mode override */
[data-md-color-scheme="default"] .my-element {
  color: #1e293b;
  background: #f8fafc;
}
```

### Icon Visibility Fix

```css
[data-md-color-scheme="default"] .my-icon {
  color: #1e293b;
}

[data-md-color-scheme="default"] .my-icon svg {
  fill: currentColor;
}
```

## Development

```bash
# Start dev server
./start.sh
# or
mkdocs serve

# Build static site
mkdocs build
```

## File Structure in extra.css

1. CSS Custom Properties (lines 1-60)
2. Material Theme Color Overrides - slate (lines 67-128)
3. Global Styles (lines 130-165)
4. Header/Navigation (lines 168-220)
5. Sidebar Navigation (lines 222-253)
6. Content Area (lines 255-266)
7. Typography (lines 268-342)
8. Code Blocks (lines 344-395)
9. Admonitions (lines 397-449)
10. Tables (lines 451-480)
11. Buttons (lines 482-516)
12. Search (lines 518-558)
13. Footer (lines 560-591)
14. Cards/Tabs (lines 593-619)
15. Blockquotes (lines 621-631)
16. Lists (lines 633-649)
17. Misc elements (lines 651-710)
18. Animations (lines 712-729)
19. Hero Section (lines 731-766)
20. Feature Cards (lines 768-810)
21. Responsive (lines 812-830)
22. Light Mode Theme (lines 832-1080)
23. Light Mode Element Fixes (lines 1082-1500+)
24. Print Styles (end of file)
