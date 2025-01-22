# Projet DBT - Mini Projet ETL / Cloud Computing

Ce projet consiste à construire un **pipeline de données complet** pour transformer des données brutes en un entrepôt de données optimisé pour les besoins analytiques. Il utilise des outils tels qu'***Amazon Redshift*** et ***DBT*** pour orchestrer les transformations de données.

## Contexte

Ce projet se base sur un jeu de données fourni par **une entreprise de vente au détail cherchant à optimiser ses opérations commerciales**.  
Les données incluent des informations sur les clients, les produits, les commandes, les magasins, et les approvisionnements.

Ces données permettent d'analyser plusieurs aspects clés du business :

- **Suivi des commandes clients** : Identifier qui achète quoi, quand, et dans quel magasin.
- **Gestion des stocks** : Suivre les produits commandés et les niveaux d'approvisionnement en fonction des articles vendus et de leur disponibilité.
- **Analyse des performances des magasins** : Évaluer l'efficacité des magasins selon les commandes traitées, les ventes réalisées, et les taux de taxe appliqués.
- **Optimisation des coûts** : Calculer les coûts des approvisionnements, notamment pour les articles périssables, afin de mieux gérer les marges.

L'objectif global est de **permettre à l'entreprise de prendre des décisions stratégiques en matière de gestion des stocks, d'optimisation des prix, et de maximisation des ventes**.

## Objectifs du projet

1. **Modélisation des données** : Créer un schéma dénormalisé adapté au DataWarehouse.
2. **Intégration des données** : Charger les données brutes dans un cluster Redshift Serverless via un bucket S3.
3. **Transformation des données** : Structurer les données, valider les transformations et générer de la documentation avec DBT.
4. **Requêtes analytiques** : Identifier les KPI et extraire des insights utiles grâce à des requêtes SQL.

## Structure du dépôt

```
project-root/
|  README.md
|  methodologie.md
|  dbt/
|    ├── models/
|    │  ├── staging/
|    │  ├── intermediate/
|    │  └── data_mart/
|    ├── seeds/
|    ├── tests/
|    └── analysis/
|  notebook/
|    └── analysis_notebook.ipynb
```

## Étapes principales

1. **Exploration et modélisation des données** : Analyse du jeu de données brut et conception d'un schéma physique dénormalisé.
2. **Chargement dans Redshift** : Transfert des fichiers CSV dans un bucket S3, puis intégration dans Redshift.
3. **Transformation avec DBT** : Création de modèles, tests et documentation.
4. **Analyse des données** : Extraction des KPI avec des requêtes SQL et visualisation des résultats.

## Outils utilisés

- **DBT (Data Build Tool)** : Pour orchestrer les transformations et la documentation.
- **Amazon Redshift** : Entrepôt de données cloud pour stocker les tables.
- **Python** : Pour le chargement des données et les visualisations analytiques.
- **SQLAlchemy** : Pour interagir avec Redshift via Python.
- **Jupyter Notebook** : Pour analyser et visualiser les données.

---

## Lien vers la documentation complète :
[GitHub du projet](#)
