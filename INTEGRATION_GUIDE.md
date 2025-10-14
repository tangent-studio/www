# Content Integration Guide for Tangent.to

This guide walks you through integrating your content from `content-prompt.md` into your Astro Nano site.

## Quick Overview

Your content includes:
- 🏠 Homepage with hero section and 3 service cards
- 📁 3 detailed projects (corn-N, Ionomica, Tangent Notebooks)
- ℹ️ About page
- 📧 Contact page
- 🌍 Full English/French translations

## Step-by-Step Integration

### Step 1: Run the i18n Setup Script (If Not Done)

```bash
cd /home/essi/Documents/GitHub/tangent-www
./setup-i18n.sh
```

This will set up the bilingual infrastructure.

---

### Step 2: Update Translation Files

Edit `public/locales/en/common.json`:

```json
{
  "nav": {
    "home": "Home",
    "projects": "Projects",
    "about": "About",
    "contact": "Contact"
  },
  "hero": {
    "title": "Living Mathematics for Life Sciences",
    "subtitle": "Science-based data science and AI consulting for agriculture, ecology, and environmental research"
  },
  "services": {
    "title": "What I Do",
    "service1": {
      "title": "Predictive Modeling & Workflows",
      "description": "Advanced statistical models and machine learning pipelines for investigating patterns and predicting outcomes in living systems. From nitrogen response modeling to ionomics analysis, we develop computational workflows that transform complex ecological and agricultural data into actionable predictions.",
      "keywords": "Machine learning, dose-response modeling, time series analysis, neural networks"
    },
    "service2": {
      "title": "Interactive Scientific Applications",
      "description": "Custom web applications that transform complex analyses into accessible tools for researchers, farmers, and decision-makers. We build interactive dashboards and interfaces using modern frameworks like Marimo and Observable, making sophisticated models usable in real-world contexts.",
      "keywords": "Web applications, dashboards, data visualization, scientific computing"
    },
    "service3": {
      "title": "Statistical Automation",
      "description": "Transform repetitive analytical tasks into automated workflows. Enter your data and receive comprehensive statistical analyses, publication-ready visualizations, and model outputs. We specialize in automating physical models and statistical procedures for systematic reporting and quality control in research and operational contexts.",
      "keywords": "Automation, reproducible research, statistical computing, workflow optimization"
    }
  },
  "projects": {
    "title": "Projects",
    "recentProjects": "Featured Projects",
    "seeAll": "See all projects",
    "viewDemo": "View Demo",
    "viewCode": "View Repository"
  },
  "about": {
    "title": "About",
    "subtitle": "Living Mathematics for Life Sciences",
    "intro": "Tangent.to brings rigorous quantitative methods to the complex challenges of agricultural and ecological systems.",
    "backgroundTitle": "Background",
    "approachTitle": "Approach",
    "servicesTitle": "Services",
    "philosophyTitle": "Philosophy"
  },
  "contact": {
    "title": "Contact",
    "subtitle": "Let's Discuss Your Project",
    "intro": "For inquiries about consulting services, collaborations, or project discussions:",
    "email": "Email",
    "expertiseTitle": "Areas of Expertise",
    "expertise1": "Agricultural modeling and prediction",
    "expertise2": "Ecological data analysis",
    "expertise3": "Statistical workflow automation",
    "expertise4": "Machine learning for life sciences",
    "expertise5": "Interactive scientific applications",
    "closing": "I work with research institutions, agricultural organizations, and government agencies on data science and modeling projects in agriculture, ecology, and environmental sciences."
  }
}
```

Edit `public/locales/fr/common.json`:

```json
{
  "nav": {
    "home": "Accueil",
    "projects": "Projets",
    "about": "À Propos",
    "contact": "Contact"
  },
  "hero": {
    "title": "Mathématiques Vivantes pour les Sciences de la Vie",
    "subtitle": "Consultation en science des données et IA fondée sur la science pour l'agriculture, l'écologie et la recherche environnementale"
  },
  "services": {
    "title": "Ce Que Je Fais",
    "service1": {
      "title": "Modélisation Prédictive et Flux de Travail",
      "description": "Modèles statistiques avancés et pipelines d'apprentissage automatique pour étudier les patterns et prédire les résultats dans les systèmes vivants. De la modélisation de la réponse à l'azote à l'analyse de l'ionomique, nous développons des flux de travail computationnels qui transforment les données écologiques et agricoles complexes en prédictions actionnables.",
      "keywords": "Apprentissage automatique, modélisation dose-réponse, analyse de séries temporelles, réseaux neuronaux"
    },
    "service2": {
      "title": "Applications Scientifiques Interactives",
      "description": "Applications web personnalisées qui transforment des analyses complexes en outils accessibles pour chercheurs, agriculteurs et décideurs. Nous construisons des tableaux de bord et interfaces interactives utilisant des frameworks modernes comme Marimo et Observable, rendant les modèles sophistiqués utilisables dans des contextes réels.",
      "keywords": "Applications web, tableaux de bord, visualisation de données, calcul scientifique"
    },
    "service3": {
      "title": "Automatisation Statistique",
      "description": "Transformez les tâches analytiques répétitives en flux de travail automatisés. Entrez vos données et recevez des analyses statistiques complètes, des visualisations prêtes pour publication et des résultats de modèles. Nous nous spécialisons dans l'automatisation de modèles physiques et de procédures statistiques pour des rapports systématiques et le contrôle qualité dans des contextes de recherche et opérationnels.",
      "keywords": "Automatisation, recherche reproductible, calcul statistique, optimisation de flux de travail"
    }
  },
  "projects": {
    "title": "Projets",
    "recentProjects": "Projets en Vedette",
    "seeAll": "Voir tous les projets",
    "viewDemo": "Voir la Démo",
    "viewCode": "Voir le Dépôt"
  },
  "about": {
    "title": "À Propos",
    "subtitle": "Mathématiques Vivantes pour les Sciences de la Vie",
    "intro": "Tangent.to applique des méthodes quantitatives rigoureuses aux défis complexes des systèmes agricoles et écologiques.",
    "backgroundTitle": "Parcours",
    "approachTitle": "Approche",
    "servicesTitle": "Services",
    "philosophyTitle": "Philosophie"
  },
  "contact": {
    "title": "Contact",
    "subtitle": "Discutons de Votre Projet",
    "intro": "Pour des demandes concernant les services de consultation, collaborations ou discussions de projet:",
    "email": "Courriel",
    "expertiseTitle": "Domaines d'Expertise",
    "expertise1": "Modélisation et prédiction agricole",
    "expertise2": "Analyse de données écologiques",
    "expertise3": "Automatisation de flux de travail statistiques",
    "expertise4": "Apprentissage automatique pour sciences de la vie",
    "expertise5": "Applications scientifiques interactives",
    "closing": "Je travaille avec des institutions de recherche, organisations agricoles et agences gouvernementales sur des projets de science des données et modélisation en agriculture, écologie et sciences environnementales."
  }
}
```

---

### Step 3: Create Project Content Files

#### A. Corn-N Project (English)

Create `src/content/projects/en/corn-n/index.md`:

```markdown
---
title: "Corn Nitrogen Response Modeling"
description: "Neural network system predicting corn nitrogen response from soil, management, and weather data"
date: "2024-01-15"
draft: false
demoURL: "#"
repoURL: "#"
tech: ["Python", "TensorFlow", "Dash", "pandas", "scikit-learn"]
---

## The Problem

Nitrogen fertilizer recommendations for corn typically rely on simplified regional guidelines that fail to account for the complex interactions between soil properties, weather patterns, and management practices. This leads to either under-fertilization (reduced yields) or over-fertilization (economic loss and environmental impact). Farmers and agronomists need site-specific, data-driven recommendations that integrate multiple factors affecting nitrogen use efficiency.

## The Approach

We developed a complex neural network architecture that models corn nitrogen dose-response curves by integrating:

- Soil physical and chemical properties
- Land management history and practices
- Weather time series throughout the growing season
- Historical yield data

The model learns the nonlinear relationships between these inputs and crop response, generating site-specific dose-response predictions. An interactive dashboard interface built with Dash allows users to explore scenarios, visualize predicted responses, and extract practical recommendations.

## Technical Implementation

- Deep learning architecture for multivariate time series
- Integration of spatial (soil, topography) and temporal (weather, phenology) data
- Uncertainty quantification for prediction confidence
- Interactive visualization for scenario exploration

## Current Status

Ongoing project with promising preliminary results. The model architecture demonstrates ability to capture complex nitrogen dynamics, with validation ongoing across diverse site conditions and management scenarios.
```

#### B. Corn-N Project (French)

Create `src/content/projects/fr/corn-n/index.md`:

```markdown
---
title: "Modélisation de la Réponse à l'Azote du Maïs"
description: "Système de réseau neuronal prédisant la réponse du maïs à l'azote à partir des données de sol, de gestion et de météo"
date: "2024-01-15"
draft: false
demoURL: "#"
repoURL: "#"
tech: ["Python", "TensorFlow", "Dash", "pandas", "scikit-learn"]
---

## Le Problème

Les recommandations de fertilisation azotée pour le maïs reposent généralement sur des directives régionales simplifiées qui ne tiennent pas compte des interactions complexes entre propriétés du sol, patterns météorologiques et pratiques de gestion. Cela mène soit à une sous-fertilisation (rendements réduits) soit à une sur-fertilisation (perte économique et impact environnemental). Les agriculteurs et agronomes ont besoin de recommandations spécifiques au site, basées sur les données, qui intègrent les multiples facteurs affectant l'efficacité d'utilisation de l'azote.

## L'Approche

Nous avons développé une architecture de réseau neuronal complexe qui modélise les courbes de dose-réponse à l'azote du maïs en intégrant:

- Propriétés physiques et chimiques du sol
- Historique et pratiques de gestion du terrain
- Séries temporelles météorologiques durant la saison de croissance
- Données historiques de rendement

Le modèle apprend les relations non-linéaires entre ces entrées et la réponse de la culture, générant des prédictions de dose-réponse spécifiques au site. Une interface de tableau de bord interactif construite avec Dash permet aux utilisateurs d'explorer des scénarios, visualiser les réponses prédites et extraire des recommandations pratiques.

## Mise en Œuvre Technique

- Architecture d'apprentissage profond pour séries temporelles multivariées
- Intégration de données spatiales (sol, topographie) et temporelles (météo, phénologie)
- Quantification de l'incertitude pour la confiance des prédictions
- Visualisation interactive pour l'exploration de scénarios

## Statut Actuel

Projet en cours avec des résultats préliminaires prometteurs. L'architecture du modèle démontre la capacité de capturer des dynamiques complexes de l'azote, avec validation en cours dans diverses conditions de site et scénarios de gestion.
```

#### C. Ionomica Project (English)

Create `src/content/projects/en/ionomica/index.md`:

```markdown
---
title: "Automated Plant Ionomics Analysis"
description: "Complete automated workflow for science-based ionomics analysis in agricultural research"
date: "2024-01-10"
draft: false
repoURL: "#"
tech: ["R", "Python", "Tidyverse", "ggplot2"]
---

## The Problem

Plant ionomics—the quantitative analysis of elemental composition in plant tissues—generates complex multivariate datasets requiring sophisticated statistical treatment. Manual analysis is time-consuming, error-prone, and often lacks consistency across studies. Researchers need automated, reproducible workflows that apply appropriate statistical methods and generate publication-ready outputs.

## The Approach

Ionomica is an automated computational workflow that processes raw ionomics data through a complete analytical pipeline:

- Data validation and quality control
- Multivariate statistical analysis (PCA, clustering, ANOVA)
- Elemental interaction networks
- Automated visualization generation
- Comprehensive statistical reporting

The workflow implements domain-specific best practices in ionomics analysis while maintaining flexibility for different experimental designs. Users input their data and receive a complete analysis package ready for interpretation or publication.

## Results

Professional-grade statistical analyses and publication-ready visualizations delivered automatically. Ensures consistency and reproducibility across ionomics studies while dramatically reducing analysis time from days to minutes.
```

#### D. Ionomica Project (French)

Create `src/content/projects/fr/ionomica/index.md`:

```markdown
---
title: "Analyse Automatisée de l'Ionomique Végétale"
description: "Flux de travail automatisé complet pour l'analyse ionomique fondée sur la science en recherche agricole"
date: "2024-01-10"
draft: false
repoURL: "#"
tech: ["R", "Python", "Tidyverse", "ggplot2"]
---

## Le Problème

L'ionomique végétale—l'analyse quantitative de la composition élémentaire dans les tissus végétaux—génère des ensembles de données multivariées complexes nécessitant un traitement statistique sophistiqué. L'analyse manuelle est chronophage, sujette aux erreurs et manque souvent de cohérence entre les études. Les chercheurs ont besoin de flux de travail automatisés et reproductibles qui appliquent des méthodes statistiques appropriées et génèrent des résultats prêts pour publication.

## L'Approche

Ionomica est un flux de travail computationnel automatisé qui traite les données ionomiques brutes à travers un pipeline analytique complet:

- Validation des données et contrôle qualité
- Analyse statistique multivariée (ACP, clustering, ANOVA)
- Réseaux d'interactions élémentaires
- Génération automatisée de visualisations
- Rapports statistiques complets

Le flux de travail implémente les meilleures pratiques spécifiques au domaine en analyse ionomique tout en maintenant la flexibilité pour différents designs expérimentaux. Les utilisateurs entrent leurs données et reçoivent un package d'analyse complet prêt pour interprétation ou publication.

## Résultats

Analyses statistiques de qualité professionnelle et visualisations prêtes pour publication livrées automatiquement. Assure cohérence et reproductibilité à travers les études ionomiques tout en réduisant dramatiquement le temps d'analyse de jours à minutes.
```

#### E. Tangent Notebooks (English)

Create `src/content/projects/en/tangent-notebooks/index.md`:

```markdown
---
title: "Tangent Notebooks"
description: "Lightweight local notebook computing environment for JavaScript, powered by WebAssembly"
date: "2024-01-05"
draft: false
demoURL: "#"
repoURL: "https://github.com/essicolo/tangent-notebook"
tech: ["JavaScript", "WebAssembly", "Svelte"]
---

## The Problem

Traditional computational notebooks (Jupyter, etc.) require server infrastructure and complex dependency management. For JavaScript-based scientific computing and algorithmic development, there's a need for a simpler, more accessible approach that runs entirely in the browser with minimal setup.

## The Approach

Tangent Notebooks is a browser-based notebook environment that runs JavaScript code locally using WebAssembly. It provides:

- Zero-installation computational environment
- Local execution (no server required)
- Familiar notebook interface
- Lightweight and fast
- Integration with modern JavaScript scientific computing libraries

Originally developed for algorithmic music composition (JMON-algo framework), the tool demonstrates broader potential for accessible scientific computing and interactive programming education.

## Current Status

MVP at 60% completion. Core functionality operational, with ongoing development of enhanced features and interface refinements.
```

#### F. Tangent Notebooks (French)

Create `src/content/projects/fr/tangent-notebooks/index.md`:

```markdown
---
title: "Tangent Notebooks"
description: "Environnement de calcul notebook léger et local pour JavaScript, propulsé par WebAssembly"
date: "2024-01-05"
draft: false
demoURL: "#"
repoURL: "https://github.com/essicolo/tangent-notebook"
tech: ["JavaScript", "WebAssembly", "Svelte"]
---

## Le Problème

Les notebooks computationnels traditionnels (Jupyter, etc.) nécessitent une infrastructure serveur et une gestion complexe de dépendances. Pour le calcul scientifique basé sur JavaScript et le développement algorithmique, il existe un besoin pour une approche plus simple et accessible qui s'exécute entièrement dans le navigateur avec un setup minimal.

## L'Approche

Tangent Notebooks est un environnement notebook basé sur navigateur qui exécute du code JavaScript localement en utilisant WebAssembly. Il fournit:

- Environnement computationnel sans installation
- Exécution locale (aucun serveur requis)
- Interface notebook familière
- Léger et rapide
- Intégration avec les bibliothèques modernes de calcul scientifique JavaScript

Originalement développé pour la composition musicale algorithmique (framework JMON-algo), l'outil démontre un potentiel plus large pour le calcul scientifique accessible et l'éducation en programmation interactive.

## Statut Actuel

MVP à 60% de complétion. Fonctionnalité de base opérationnelle, avec développement continu de fonctionnalités améliorées et raffinements d'interface.
```

---

### Step 4: Update Homepage

I'll provide you with a complete updated homepage in the next step that includes:
- Hero section with your title/subtitle
- Services cards
- Recent projects showcase

Would you like me to create the updated `src/pages/index.astro` file?

---

### Step 5: Create About Page

Create `src/pages/about.astro` - I'll provide this in the next step.

---

### Step 6: Create Contact Page

Create `src/pages/contact.astro` - I'll provide this in the next step.

---

### Step 7: Update Site Configuration

Edit `src/consts.ts` to update site metadata:

```typescript
export const SITE: Site = {
  NAME: "Tangent.to",
  EMAIL: "your-email@tangent.to", // UPDATE THIS
  NUM_POSTS_ON_HOMEPAGE: 3,
  NUM_WORKS_ON_HOMEPAGE: 0, // Hide work section
  NUM_PROJECTS_ON_HOMEPAGE: 3,
};

export const HOME: Metadata = {
  TITLE: "Tangent.to - Living Mathematics for Life Sciences",
  DESCRIPTION: "Science-based data science and AI consulting for agriculture, ecology, and environmental research.",
};
```

---

## Next Actions

1. ✅ Run `./setup-i18n.sh` if you haven't already
2. ✅ Update translation files (Step 2)
3. ✅ Create all project content files (Step 3)
4. ⏳ Let me create the updated homepage for you (Step 4)
5. ⏳ Let me create the About page (Step 5)
6. ⏳ Let me create the Contact page (Step 6)
7. ✅ Update `src/consts.ts` (Step 7)

## Images To Add Later

Once the structure is ready, you'll need to add:

```
public/
├── hero-image.jpg  # Data visualization with nature elements
└── projects/
    ├── corn-n-dashboard.jpg
    ├── corn-n-curve.jpg
    ├── ionomica-output.jpg
    └── tangent-notebook-interface.jpg
```

**Ready to proceed?** Let me know and I'll create the updated homepage, about page, and contact page for you!
