# Quick Reference Guide - Tangent.to Website

## 🚀 Development Commands

```bash
# Start dev server
npm run dev

# Build for production
npm run build

# Preview production build
npm run preview

# Check for errors
npm run astro check
```

## 📝 Adding Content

### Add a New Project

1. **Create English version** (`src/content/projects/en/project-name.md`):
```markdown
---
title: "Project Title"
description: "Short description"
slug: "project-name"
date: 2025-01-15
draft: false
demoURL: "https://..."
repoURL: "https://github.com/..."
image: "/images/projects/project-name/hero.svg"
tech:
  - Python
  - React
---

## Content here...
```

2. **Create French version** (`src/content/projects/fr/project-name.md`):
   - Copy structure, translate content
   - Keep same `slug` and `date`

3. **Add image** to `public/images/projects/project-name/hero.svg`

### Update Translations

**Files:** `public/locales/en/common.json` and `public/locales/fr/common.json`

Example:
```json
{
  "nav": {
    "newPage": "New Page"
  }
}
```

Use in code:
```astro
{t("nav.newPage")}
```

### Add a New Page

1. **English:** `src/pages/new-page.astro`
2. **French:** `src/pages/fr/new-page.astro`

Template:
```astro
---
import PageLayout from "@layouts/PageLayout.astro";
import Container from "@components/Container.astro";
import { t } from "i18next";
---

<PageLayout title={t("page.title")} description={t("page.description")}>
  <Container>
    <h1>{t("page.heading")}</h1>
    <!-- Content -->
  </Container>
</PageLayout>
```

3. **Add to navigation** in `src/components/Header.astro`:
```astro
<Link href={localizePath("/new-page")}>
  {t("nav.newPage")}
</Link>
```

## 🌐 i18n Patterns

### Using translations
```astro
import { t } from "i18next";

{t("key.path")}
```

### Localizing links
```astro
import { localizePath } from "astro-i18next";

<Link href={localizePath("/projects")}>
```

### Getting localized content
```astro
const currentLang = Astro.url.pathname.startsWith('/fr') ? 'fr' : 'en';

const projects = await getCollection("projects", ({ id }) => {
  return id.startsWith(`${currentLang}/`);
});
```

## 🖼️ Images

### Project Images
- Location: `public/images/projects/{project-name}/`
- Hero image: `hero.svg` or `hero.png` (1200x630px recommended)
- Reference in frontmatter: `image: "/images/projects/project-name/hero.svg"`

### Other Images
- Location: `public/images/`
- Reference: `/images/filename.ext` (no need for `public/` in path)

## 🎨 Styling

The site uses **Tailwind CSS**. Common patterns:

```astro
<!-- Text styles -->
<h1 class="text-3xl font-bold text-black dark:text-white">

<!-- Spacing -->
<div class="space-y-4">

<!-- Grid layout -->
<div class="grid gap-6 md:grid-cols-2 lg:grid-cols-3">

<!-- Dark mode -->
<div class="bg-white dark:bg-black">
```

## 📂 File Locations Quick Reference

| Content Type | English | French |
|--------------|---------|--------|
| Homepage | `src/pages/index.astro` | `src/pages/fr/index.astro` |
| Projects | `src/content/projects/en/*.md` | `src/content/projects/fr/*.md` |
| Pages | `src/pages/*.astro` | `src/pages/fr/*.astro` |
| Translations | `public/locales/en/common.json` | `public/locales/fr/common.json` |
| Images | `public/images/` | (shared) |

## 🔧 Configuration Files

- **Site settings:** `src/consts.ts`
- **i18n config:** `astro-i18next.config.mjs`
- **Content schema:** `src/content/config.ts`
- **Astro config:** `astro.config.mjs`
- **Tailwind config:** `tailwind.config.js`

## 🚢 Deployment

### Netlify / Vercel
1. Connect your GitHub repository
2. Build command: `npm run build`
3. Output directory: `dist`
4. No environment variables needed for basic setup

### Manual Build
```bash
npm run build
# Output in ./dist folder
```

## 🐛 Troubleshooting

### Content not showing up
1. Check file is in correct language folder (`en/` or `fr/`)
2. Verify frontmatter has required fields (title, description, date)
3. Ensure `draft: false` (or omit the field)
4. Check dev server logs for validation errors

### Translations not working
1. Verify key exists in `public/locales/{lang}/common.json`
2. Check you're importing: `import { t } from "i18next";`
3. Use correct syntax: `{t("key.path")}`

### Links not localizing
1. Import: `import { localizePath } from "astro-i18next";`
2. Wrap URLs: `href={localizePath("/path")}`

### Images not loading
1. Images must be in `public/` folder
2. Reference without `public/`: `/images/file.ext`
3. Check file extension matches (`.svg`, `.png`, etc.)

## 📧 Support

For questions about the content or site structure, refer to:
- `IMPLEMENTATION_COMPLETE.md` - Full implementation details
- `content-prompt.md` - Original content specifications
- `INTEGRATION_GUIDE.md` - Step-by-step setup guide

---

**Dev Server:** http://localhost:4322 (or 4321)  
**Language Switch:** Click EN/FR button (top-right)  
**Test Routes:**
- `/` - English home
- `/fr/` - French home
- `/projects` - Projects list
- `/about` - About page
- `/contact` - Contact page
