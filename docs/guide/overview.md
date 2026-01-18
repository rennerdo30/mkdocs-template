---
title: Overview
---

# Overview

The Luminous Void theme brings a premium, modern aesthetic to your documentation.

---

## Design Philosophy

### Dark Mode First

The theme is designed with dark mode as the primary experience, reducing eye strain and providing a sophisticated look that makes code and content stand out.

### Dual Accent System

We use two complementary accent colors:

- **Warm Coral** (`#f97316`) - Primary actions, links, highlights
- **Electric Cyan** (`#22d3ee`) - Secondary accents, code, cool tones

This creates visual hierarchy while maintaining harmony.

### Typography

The theme uses a carefully selected font stack:

| Purpose | Font | Fallback |
|---------|------|----------|
| Display | Satoshi | Inter |
| Body | Inter | System UI |
| Code | Fira Code | JetBrains Mono |

---

## Visual Elements

### Glassmorphism

Subtle glass effects add depth without overwhelming:

```css
background: rgba(18, 18, 26, 0.7);
backdrop-filter: blur(12px);
border: 1px solid rgba(255, 255, 255, 0.05);
```

### Grain Texture

A subtle noise overlay adds texture to the dark background, preventing the "flat" feeling common in dark themes.

### Smooth Animations

Carefully tuned transitions create a responsive, polished feel:

- **Fast interactions**: 150ms
- **Standard transitions**: 300ms
- **Smooth easing**: `cubic-bezier(0.4, 0, 0.2, 1)`

---

## Color Palette

### Backgrounds

| Name | Hex | Usage |
|------|-----|-------|
| Primary | `#0a0a0f` | Main background |
| Secondary | `#12121a` | Cards, sidebars |
| Tertiary | `#1a1a24` | Hover states |
| Code | `#1e1e1e` | Code blocks |

### Text

| Name | Hex | Usage |
|------|-----|-------|
| Primary | `#fafafa` | Main text |
| Secondary | `#94a3b8` | Subtle text |
| Muted | `#64748b` | Disabled, hints |

### Accents

| Name | Hex | Usage |
|------|-----|-------|
| Warm | `#f97316` | Primary accent |
| Warm Light | `#fb923c` | Hover states |
| Cool | `#22d3ee` | Secondary accent |
| Indigo | `#a5b4fc` | Tags, badges |
| Gold | `#fbbf24` | Warnings, stars |

---

## Responsive Design

The theme is fully responsive with:

- Fluid typography using `clamp()`
- Adaptive grid layouts
- Mobile-optimized navigation
- Touch-friendly interactions

---

## Browser Support

| Browser | Supported |
|---------|-----------|
| Chrome | :material-check: 90+ |
| Firefox | :material-check: 90+ |
| Safari | :material-check: 14+ |
| Edge | :material-check: 90+ |

---

## Next Steps

- [Features](features.md) - Explore available features
- [Best Practices](best-practices.md) - Write effective documentation
