# NextJS-Express-Docker-BoilerPlate (FR)


## Structure du Projet

Projet Next.JS, avec configuration wepback basique, ajout du préprocesseur css/less

Les fichiers less doivent être placés dans le dossier **styles**, avec la terminaison less, ils sont automatiquement compilés pendant le développement et le build.

Selon la doc de Next.JS:
- La master page du site est le fichier **/pages/_document.js**, placer ici les élément persistants pour chaque pages (navigation, footer, etc.)
- Les fichiers js dans le dossier **/pages** sont traités comme la base de chaque route (server side rendering).
- Le dossier **/component** est réservé pour le contenu des pages
- La configuration webpack est dans **next.config.js**

## Commandes

- installer les paquets: ```npm install | yarn install```
- lancer le serveur de dévelopemment: ```npm run start | yarn start```
- bundle le code client pour la prod: ```npm run build | yarn build```

## Warning

la commande ```next start```ne fonctionne pas de la même façon que ```react-scripts start```. Ici cette commande lance le code bundle en local (prod), et non en développement.

## Utiliser le Boilerplate

suivre les #TODO pour les valeurs à remplacer