#!/bin/bash

# Astro Nano i18n Setup Script
# This script adds bilingual (English/French) support to Astro Nano template

set -e  # Exit on error

echo "🚀 Starting Astro Nano i18n Setup..."

# Check if we're in an Astro project
if [ ! -f "astro.config.mjs" ]; then
  echo "❌ Error: astro.config.mjs not found. Please run this script from your Astro project root."
  exit 1
fi

# Step 1: Install i18n packages
echo ""
echo "📦 Step 1: Installing i18n packages..."
npm install astro-i18next i18next

# Step 2: Create i18n config
echo ""
echo "⚙️  Step 2: Creating i18n configuration..."
cat > astro-i18next.config.mjs << 'EOF'
export default {
  defaultLocale: "en",
  locales: ["en", "fr"],
  routes: {
    fr: {
      "blog": "blog",
      "projects": "projets",
      "work": "experience"
    }
  }
};
EOF

# Step 3: Update Astro config
echo ""
echo "⚙️  Step 3: Updating Astro configuration..."
cat > astro.config.mjs << 'EOF'
import { defineConfig } from "astro/config";
import mdx from "@astrojs/mdx";
import sitemap from "@astrojs/sitemap";
import tailwind from "@astrojs/tailwind";
import astroI18next from "astro-i18next";

export default defineConfig({
  site: "https://astro-nano-demo.vercel.app",
  integrations: [mdx(), sitemap(), tailwind(), astroI18next()],
  i18n: {
    defaultLocale: "en",
    locales: ["en", "fr"],
    routing: {
      prefixDefaultLocale: false
    }
  }
});
EOF

# Step 4: Create translation files
echo ""
echo "🌍 Step 4: Creating translation files..."
mkdir -p public/locales/en
mkdir -p public/locales/fr

cat > public/locales/en/common.json << 'EOF'
{
  "nav": {
    "blog": "blog",
    "work": "work",
    "projects": "projects"
  },
  "home": {
    "latestPosts": "Latest posts",
    "seeAllPosts": "See all posts",
    "workExperience": "Work Experience",
    "seeAllWork": "See all work",
    "recentProjects": "Recent projects",
    "seeAllProjects": "See all projects",
    "letsConnect": "Let's Connect",
    "reachOut": "If you want to get in touch with me about something or just to say hi, reach out on social media or send me an email."
  },
  "projects": {
    "demo": "Demo",
    "repository": "Repository"
  }
}
EOF

cat > public/locales/fr/common.json << 'EOF'
{
  "nav": {
    "blog": "blog",
    "work": "expérience",
    "projects": "projets"
  },
  "home": {
    "latestPosts": "Derniers articles",
    "seeAllPosts": "Voir tous les articles",
    "workExperience": "Expérience professionnelle",
    "seeAllWork": "Voir toute l'expérience",
    "recentProjects": "Projets récents",
    "seeAllProjects": "Voir tous les projets",
    "letsConnect": "Restons en contact",
    "reachOut": "Si vous souhaitez me contacter pour quelque chose ou simplement pour dire bonjour, contactez-moi sur les réseaux sociaux ou envoyez-moi un e-mail."
  },
  "projects": {
    "demo": "Démo",
    "repository": "Dépôt"
  }
}
EOF

# Step 5: Create Language Switcher component
echo ""
echo "🔄 Step 5: Creating Language Switcher component..."
cat > src/components/LanguageSwitcher.astro << 'EOF'
---
const currentPath = Astro.url.pathname;
const currentLang = currentPath.startsWith('/fr') ? 'fr' : 'en';

const getOppositeUrl = () => {
  if (currentLang === 'en') {
    return '/fr' + currentPath;
  } else {
    return currentPath.replace('/fr', '');
  }
};
---

<div class="language-switcher">
  <a href={getOppositeUrl()} class="font-semibold">
    {currentLang === 'en' ? 'FR' : 'EN'}
  </a>
</div>

<style>
  .language-switcher {
    position: fixed;
    top: 1rem;
    right: 1rem;
    z-index: 100;
  }

  .language-switcher a {
    padding: 0.5rem 1rem;
    background: var(--tw-bg-opacity);
    border: 1px solid rgba(0, 0, 0, 0.1);
    border-radius: 0.375rem;
    text-decoration: none;
    transition: opacity 0.2s;
  }

  .language-switcher a:hover {
    opacity: 0.7;
  }

  @media (prefers-color-scheme: dark) {
    .language-switcher a {
      border-color: rgba(255, 255, 255, 0.1);
    }
  }
</style>
EOF

# Step 6: Update PageLayout to include LanguageSwitcher
echo ""
echo "📄 Step 6: Updating PageLayout..."
# Read the current PageLayout
if grep -q "LanguageSwitcher" src/layouts/PageLayout.astro 2>/dev/null; then
  echo "   LanguageSwitcher already in PageLayout, skipping..."
else
  # Backup original
  cp src/layouts/PageLayout.astro src/layouts/PageLayout.astro.backup
  
  # Add import after other imports
  sed -i '1a import LanguageSwitcher from "@components/LanguageSwitcher.astro";' src/layouts/PageLayout.astro
  
  # Add component after <Header />
  sed -i 's|<Header />|<Header />\n    <LanguageSwitcher />|' src/layouts/PageLayout.astro
  
  echo "   ✅ LanguageSwitcher added to PageLayout"
fi

# Step 7: Update content collection config
echo ""
echo "📚 Step 7: Updating content collection schema..."
cat > src/content/config.ts << 'EOF'
import { defineCollection, z } from "astro:content";

const blog = defineCollection({
  type: "content",
  schema: z.object({
    title: z.string(),
    description: z.string(),
    date: z.coerce.date(),
    draft: z.boolean().optional()
  }),
});

const work = defineCollection({
  type: "content",
  schema: z.object({
    company: z.string(),
    role: z.string(),
    dateStart: z.coerce.date(),
    dateEnd: z.union([z.coerce.date(), z.string()]),
  }),
});

const projects = defineCollection({
  type: "content",
  schema: z.object({
    title: z.string(),
    description: z.string(),
    date: z.coerce.date(),
    draft: z.boolean().optional(),
    demoURL: z.string().optional(),
    repoURL: z.string().optional(),
    // Additional fields for better project display
    image: z.string().optional(),
    tech: z.array(z.string()).optional(),
  }),
});

export const collections = { blog, work, projects };
EOF

# Step 8: Create localized content structure
echo ""
echo "📁 Step 8: Creating localized content structure..."

# For projects
mkdir -p src/content/projects/en
mkdir -p src/content/projects/fr

# Move existing projects to English folder if they exist at root
if ls src/content/projects/project-* 2>/dev/null | grep -q .; then
  mv src/content/projects/project-* src/content/projects/en/ 2>/dev/null || true
  echo "   ✅ Moved existing projects to en/ folder"
fi

# For blog
mkdir -p src/content/blog/en
mkdir -p src/content/blog/fr

# Move existing blog posts if they're at root
if ls src/content/blog/*.md 2>/dev/null | grep -q .; then
  mv src/content/blog/*.md src/content/blog/en/ 2>/dev/null || true
  echo "   ✅ Moved existing blog posts to en/ folder"
fi

# For work - keep at root for now as it's typically not language-specific
echo "   ℹ️  Work experience kept at root level"

# Step 9: Create example French content
echo ""
echo "📝 Step 9: Creating example French content..."

# Example French project
mkdir -p src/content/projects/fr/exemple-projet
cat > src/content/projects/fr/exemple-projet/index.md << 'EOF'
---
title: "Projet Exemple"
description: "Un projet exemple pour démontrer le support multilingue"
date: "2024-01-15"
demoURL: "https://example.com"
repoURL: "https://github.com/example/project"
tech: ["Astro", "TypeScript", "Tailwind"]
---

Ceci est un exemple de projet en français.

## Fonctionnalités

- Support multilingue
- Design responsive
- Optimisé pour le SEO

## Technologies

Ce projet utilise les dernières technologies web.
EOF

# Example French blog post
cat > src/content/blog/fr/premier-article.md << 'EOF'
---
title: "Premier Article"
description: "Mon premier article de blog en français"
date: "2024-01-15"
---

Bienvenue sur mon blog! Ceci est un exemple d'article en français.

## Introduction

Ce blog démontre le support multilingue avec Astro et astro-i18next.
EOF

echo ""
echo "✅ Setup complete!"
echo ""
echo "📋 Next steps:"
echo "   1. Update src/components/Header.astro to use i18n (see guide)"
echo "   2. Update src/pages/index.astro to use t() function for translations"
echo "   3. Update project pages to use i18n"
echo "   4. Test with: npm run dev"
echo ""
echo "   Visit:"
echo "   - http://localhost:4321 (English)"
echo "   - http://localhost:4321/fr (French)"
echo ""
echo "🔧 Files modified:"
echo "   - astro.config.mjs (backed up as .backup)"
echo "   - src/content/config.ts"
echo "   - src/layouts/PageLayout.astro (backed up as .backup)"
echo ""
echo "📁 Files created:"
echo "   - astro-i18next.config.mjs"
echo "   - public/locales/en/common.json"
echo "   - public/locales/fr/common.json"
echo "   - src/components/LanguageSwitcher.astro"
echo "   - Example French content in src/content/projects/fr/ and src/content/blog/fr/"
echo ""
