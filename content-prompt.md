## Tangent.to Website Content
### Homepage
#### Hero Section
English:
- Title: Living Mathematics for Life Sciences
- Subtitle: Science-based data science and AI consulting for agriculture, ecology, and environmental research
- Image needed: Suggestion - something that bridges math/data and nature (data visualization overlaid on agricultural field, or abstract mathematical visualization with organic elements)
French:
- Title: Mathématiques Vivantes pour les Sciences de la Vie
- Subtitle: Consultation en science des données et IA fondée sur la science pour l'agriculture, l'écologie et la recherche environnementale
#### Services Section (3 Cards)
#### Service 1: Predictive Modeling & Workflows
English:
- Title: Predictive Modeling & Workflows
- Description: Advanced statistical models and machine learning pipelines for investigating patterns and predicting outcomes in living systems. From nitrogen response modeling to ionomics analysis, we develop computational workflows that transform complex ecological and agricultural data into actionable predictions.
- Keywords: Machine learning, dose-response modeling, time series analysis, neural networks
French:
- Title: Modélisation Prédictive et Flux de Travail
- Description: Modèles statistiques avancés et pipelines d'apprentissage automatique pour étudier les patterns et prédire les résultats dans les systèmes vivants. De la modélisation de la réponse à l'azote à l'analyse de l'ionomique, nous développons des flux de travail computationnels qui transforment les données écologiques et agricoles complexes en prédictions actionnables.
#### Service 2: Interactive Scientific Applications
English:
- Title: Interactive Scientific Applications
- Description: Custom web applications that transform complex analyses into accessible tools for researchers, farmers, and decision-makers. We build interactive dashboards and interfaces using modern frameworks like Marimo and Observable, making sophisticated models usable in real-world contexts.
- Keywords: Web applications, dashboards, data visualization, scientific computing
French:
- Title: Applications Scientifiques Interactives
- Description: Applications web personnalisées qui transforment des analyses complexes en outils accessibles pour chercheurs, agriculteurs et décideurs. Nous construisons des tableaux de bord et interfaces interactives utilisant des frameworks modernes comme Marimo et Observable, rendant les modèles sophistiqués utilisables dans des contextes réels.
#### Service 3: Statistical Automation
English:
- Title: Statistical Automation
- Description: Transform repetitive analytical tasks into automated workflows. Enter your data and receive comprehensive statistical analyses, publication-ready visualizations, and model outputs. We specialize in automating physical models and statistical procedures for systematic reporting and quality control in research and operational contexts.
- Keywords: Automation, reproducible research, statistical computing, workflow optimization
French:
- Title: Automatisation Statistique
- Description: Transformez les tâches analytiques répétitives en flux de travail automatisés. Entrez vos données et recevez des analyses statistiques complètes, des visualisations prêtes pour publication et des résultats de modèles. Nous nous spécialisons dans l'automatisation de modèles physiques et de procédures statistiques pour des rapports systématiques et le contrôle qualité dans des contextes de recherche et opérationnels.
### Project Pages
#### Project 1: corn-N (Featured Project)
English:
Title: Corn Nitrogen Response Modeling
Short Description: Neural network system predicting corn nitrogen response from soil, management, and weather data
The Problem:
Nitrogen fertilizer recommendations for corn typically rely on simplified regional guidelines that fail to account for the complex interactions between soil properties, weather patterns, and management practices. This leads to either under-fertilization (reduced yields) or over-fertilization (economic loss and environmental impact). Farmers and agronomists need site-specific, data-driven recommendations that integrate multiple factors affecting nitrogen use efficiency.
The Approach:
We developed a complex neural network architecture that models corn nitrogen dose-response curves by integrating:
- Soil physical and chemical properties
- Land management history and practices
- Weather time series throughout the growing season
- Historical yield data
The model learns the nonlinear relationships between these inputs and crop response, generating site-specific dose-response predictions. An interactive dashboard interface built with Dash allows users to explore scenarios, visualize predicted responses, and extract practical recommendations.
Technical Implementation:
- Deep learning architecture for multivariate time series
- Integration of spatial (soil, topography) and temporal (weather, phenology) data
- Uncertainty quantification for prediction confidence
- Interactive visualization for scenario exploration
Current Status:
Ongoing project with promising preliminary results. The model architecture demonstrates ability to capture complex nitrogen dynamics, with validation ongoing across diverse site conditions and management scenarios.
Tech Stack: Python, TensorFlow/PyTorch, Dash, pandas, scikit-learn
Images needed:
- Dashboard screenshot
- Example dose-response curve output
- Conceptual diagram of model inputs/outputs
French:
Title: Modélisation de la Réponse à l'Azote du Maïs
Description courte: Système de réseau neuronal prédisant la réponse du maïs à l'azote à partir des données de sol, de gestion et de météo
Le Problème:
Les recommandations de fertilisation azotée pour le maïs reposent généralement sur des directives régionales simplifiées qui ne tiennent pas compte des interactions complexes entre propriétés du sol, patterns météorologiques et pratiques de gestion. Cela mène soit à une sous-fertilisation (rendements réduits) soit à une sur-fertilisation (perte économique et impact environnemental). Les agriculteurs et agronomes ont besoin de recommandations spécifiques au site, basées sur les données, qui intègrent les multiples facteurs affectant l'efficacité d'utilisation de l'azote.
L'Approche:
Nous avons développé une architecture de réseau neuronal complexe qui modélise les courbes de dose-réponse à l'azote du maïs en intégrant:
- Propriétés physiques et chimiques du sol
- Historique et pratiques de gestion du terrain
- Séries temporelles météorologiques durant la saison de croissance
- Données historiques de rendement
Le modèle apprend les relations non-linéaires entre ces entrées et la réponse de la culture, générant des prédictions de dose-réponse spécifiques au site. Une interface de tableau de bord interactif construite avec Dash permet aux utilisateurs d'explorer des scénarios, visualiser les réponses prédites et extraire des recommandations pratiques.
Mise en Œuvre Technique:
- Architecture d'apprentissage profond pour séries temporelles multivariées
- Intégration de données spatiales (sol, topographie) et temporelles (météo, phénologie)
- Quantification de l'incertitude pour la confiance des prédictions
- Visualisation interactive pour l'exploration de scénarios
Statut Actuel:
Projet en cours avec des résultats préliminaires prometteurs. L'architecture du modèle démontre la capacité de capturer des dynamiques complexes de l'azote, avec validation en cours dans diverses conditions de site et scénarios de gestion.
#### Project 2: Ionomica
English:
Title: Automated Plant Ionomics Analysis
Short Description: Complete automated workflow for science-based ionomics analysis in agricultural research
The Problem:
Plant ionomics—the quantitative analysis of elemental composition in plant tissues—generates complex multivariate datasets requiring sophisticated statistical treatment. Manual analysis is time-consuming, error-prone, and often lacks consistency across studies. Researchers need automated, reproducible workflows that apply appropriate statistical methods and generate publication-ready outputs.
The Approach:
Ionomica is an automated computational workflow that processes raw ionomics data through a complete analytical pipeline:
- Data validation and quality control
- Multivariate statistical analysis (PCA, clustering, ANOVA)
- Elemental interaction networks
- Automated visualization generation
- Comprehensive statistical reporting
The workflow implements domain-specific best practices in ionomics analysis while maintaining flexibility for different experimental designs. Users input their data and receive a complete analysis package ready for interpretation or publication.
Results:
Professional-grade statistical analyses and publication-ready visualizations delivered automatically. Ensures consistency and reproducibility across ionomics studies while dramatically reducing analysis time from days to minutes.
Tech Stack: R, Python, Tidyverse, ggplot2, statistical modeling packages
Images needed:
- Example output report/visualizations
- Workflow diagram
- Sample data transformation
French:
Title: Analyse Automatisée de l'Ionomique Végétale
Description courte: Flux de travail automatisé complet pour l'analyse ionomique fondée sur la science en recherche agricole
Le Problème:
L'ionomique végétale—l'analyse quantitative de la composition élémentaire dans les tissus végétaux—génère des ensembles de données multivariées complexes nécessitant un traitement statistique sophistiqué. L'analyse manuelle est chronophage, sujette aux erreurs et manque souvent de cohérence entre les études. Les chercheurs ont besoin de flux de travail automatisés et reproductibles qui appliquent des méthodes statistiques appropriées et génèrent des résultats prêts pour publication.
L'Approche:
Ionomica est un flux de travail computationnel automatisé qui traite les données ionomiques brutes à travers un pipeline analytique complet:
- Validation des données et contrôle qualité
- Analyse statistique multivariée (ACP, clustering, ANOVA)
- Réseaux d'interactions élémentaires
- Génération automatisée de visualisations
- Rapports statistiques complets
Le flux de travail implémente les meilleures pratiques spécifiques au domaine en analyse ionomique tout en maintenant la flexibilité pour différents designs expérimentaux. Les utilisateurs entrent leurs données et reçoivent un package d'analyse complet prêt pour interprétation ou publication.
Résultats:
Analyses statistiques de qualité professionnelle et visualisations prêtes pour publication livrées automatiquement. Assure cohérence et reproductibilité à travers les études ionomiques tout en réduisant dramatiquement le temps d'analyse de jours à minutes.
#### Project 3: Tangent Notebooks
English:
Title: Tangent Notebooks
Short Description: Lightweight local notebook computing environment for JavaScript, powered by WebAssembly
The Problem:
Traditional computational notebooks (Jupyter, etc.) require server infrastructure and complex dependency management. For JavaScript-based scientific computing and algorithmic development, there's a need for a simpler, more accessible approach that runs entirely in the browser with minimal setup.
The Approach:
Tangent Notebooks is a browser-based notebook environment that runs JavaScript code locally using WebAssembly. It provides:
- Zero-installation computational environment
- Local execution (no server required)
- Familiar notebook interface
- Lightweight and fast
- Integration with modern JavaScript scientific computing libraries
Originally developed for algorithmic music composition (JMON-algo framework), the tool demonstrates broader potential for accessible scientific computing and interactive programming education.
Current Status:
MVP at 60% completion. Core functionality operational, with ongoing development of enhanced features and interface refinements.
Tech Stack: JavaScript, WebAssembly, modern web technologies
Images needed:
- Screenshot of notebook interface
- Example notebook with code/output
- Architecture diagram (if you have one)
French:
Title: Tangent Notebooks
Description courte: Environnement de calcul notebook léger et local pour JavaScript, propulsé par WebAssembly
Le Problème:
Les notebooks computationnels traditionnels (Jupyter, etc.) nécessitent une infrastructure serveur et une gestion complexe de dépendances. Pour le calcul scientifique basé sur JavaScript et le développement algorithmique, il existe un besoin pour une approche plus simple et accessible qui s'exécute entièrement dans le navigateur avec un setup minimal.
L'Approche:
Tangent Notebooks est un environnement notebook basé sur navigateur qui exécute du code JavaScript localement en utilisant WebAssembly. Il fournit:
- Environnement computationnel sans installation
- Exécution locale (aucun serveur requis)
- Interface notebook familière
- Léger et rapide
- Intégration avec les bibliothèques modernes de calcul scientifique JavaScript
Originalement développé pour la composition musicale algorithmique (framework JMON-algo), l'outil démontre un potentiel plus large pour le calcul scientifique accessible et l'éducation en programmation interactive.
Statut Actuel:
MVP à 60% de complétion. Fonctionnalité de base opérationnelle, avec développement continu de fonctionnalités améliorées et raffinements d'interface.
### About Page
English:
#### Living Mathematics for Life Sciences
Tangent.to brings rigorous quantitative methods to the complex challenges of agricultural and ecological systems.
Background
With a PhD in civil engineering, postdoctoral research in agriculture, and experience as a professor, I combine engineering precision with deep understanding of biological systems. My expertise spans numerical ecology, agricultural modeling, and hydrology, with applications in health sciences.
Approach
"Living mathematics" represents the application of sophisticated quantitative methods—statistics, machine learning, physical modeling—to the dynamic, nonlinear systems characteristic of life sciences. This work bridges the precision of engineering with the complexity of ecological and agricultural realities, developing tools and workflows that respect both the mathematical rigor and the biological context.
Services
As an independent consultant, I work with research institutions, agricultural organizations, and government agencies to:
- Develop predictive models and decision support systems
- Create automated analytical workflows
- Build interactive scientific applications
- Provide statistical and machine learning expertise for agricultural and ecological research
The focus is on delivering science-based, reproducible solutions that transform complex data into actionable insights.
Philosophy
Good science requires good tools. Complex systems demand sophisticated analysis, but that analysis must remain accessible and interpretable. My work emphasizes automation not for its own sake, but to ensure consistency, reproducibility, and the ability to focus human expertise where it matters most—on interpretation and decision-making.
French:
#### Mathématiques Vivantes pour les Sciences de la Vie
Tangent.to applique des méthodes quantitatives rigoureuses aux défis complexes des systèmes agricoles et écologiques.
Parcours
Avec un doctorat en génie civil, recherche postdoctorale en agriculture et expérience comme professeur, je combine la précision de l'ingénierie avec une compréhension approfondie des systèmes biologiques. Mon expertise couvre l'écologie numérique, la modélisation agricole et l'hydrologie, avec des applications en sciences de la santé.
Approche
Les "mathématiques vivantes" représentent l'application de méthodes quantitatives sophistiquées—statistiques, apprentissage automatique, modélisation physique—aux systèmes dynamiques et non-linéaires caractéristiques des sciences de la vie. Ce travail fait le pont entre la précision de l'ingénierie et la complexité des réalités écologiques et agricoles, développant des outils et flux de travail qui respectent à la fois la rigueur mathématique et le contexte biologique.
Services
En tant que consultant indépendant, je travaille avec des institutions de recherche, organisations agricoles et agences gouvernementales pour:
- Développer des modèles prédictifs et systèmes d'aide à la décision
- Créer des flux de travail analytiques automatisés
- Construire des applications scientifiques interactives
- Fournir une expertise en statistiques et apprentissage automatique pour la recherche agricole et écologique
L'accent est mis sur la livraison de solutions fondées sur la science et reproductibles qui transforment des données complexes en aperçus actionnables.
Philosophie
La bonne science requiert de bons outils. Les systèmes complexes demandent des analyses sophistiquées, mais ces analyses doivent rester accessibles et interprétables. Mon travail met l'accent sur l'automatisation non pour elle-même, mais pour assurer cohérence, reproductibilité et la capacité de concentrer l'expertise humaine là où elle compte le plus—sur l'interprétation et la prise de décision.
### Contact Page
English:
#### Let's Discuss Your Project
For inquiries about consulting services, collaborations, or project discussions:
Email: [your-email]@tangent.to
Areas of Expertise:
- Agricultural modeling and prediction
- Ecological data analysis
- Statistical workflow automation
- Machine learning for life sciences
- Interactive scientific applications
I work with research institutions, agricultural organizations, and government agencies on data science and modeling projects in agriculture, ecology, and environmental sciences.
French:
#### Discutons de Votre Projet
Pour des demandes concernant les services de consultation, collaborations ou discussions de projet:
Courriel: [your-email]@tangent.to
Domaines d'Expertise:
- Modélisation et prédiction agricole
- Analyse de données écologiques
- Automatisation de flux de travail statistiques
- Apprentissage automatique pour sciences de la vie
- Applications scientifiques interactives
Je travaille avec des institutions de recherche, organisations agricoles et agences gouvernementales sur des projets de science des données et modélisation en agriculture, écologie et sciences environnementales.
### Navigation Structure
English:
- Home
- Projects
- About
- Contact
French:
- Accueil
- Projets
- À Propos
- Contact
### Images You'll Need
1. Hero image: Data visualization with natural/agricultural elements
2. corn-N: Dashboard screenshot, dose-response curves
3. Ionomica: Output visualizations, workflow diagram
4. Tangent Notebooks: Interface screenshot, example notebook
5. About page: Optional professional photo (academic style)
### Next Steps
1. Review and edit this content to match your voice
2. Gather/create the project images
3. Decide on your contact email
4. We'll integrate this into the Astro Nano setup