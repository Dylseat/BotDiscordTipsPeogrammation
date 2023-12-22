<a name="br1"></a> 

Module\_347 : Labo 3

Auteur : Morgane Cachin & Dylan Diaz

Date : 22.12.2023



<a name="br2"></a> 

Morgane Cachin & Dylan Diaz

Module 347

22\.12.2023

Table des matières

[HOW](#br3)[ ](#br3)[TO](#br3)[ ](#br3)[:](#br3)[................................................................................................................................................](#br3)[ ](#br3)[2](#br3)

[Discord](#br4)[ ](#br4)[:](#br4)[................................................................................................................................................](#br4)[ ](#br4)[3](#br4)

[Creaꢀon](#br4)[ ](#br4)[compte](#br4)[ ](#br4)[:](#br4)[ ](#br4)[.................................................................................................................................](#br4)[ ](#br4)[3](#br4)

[Créaꢀon](#br4)[ ](#br4)[serveur](#br4)[ ](#br4)[:](#br4)[ ](#br4)[.................................................................................................................................](#br4)[ ](#br4)[3](#br4)

[Créaꢀon](#br5)[ ](#br5)[du](#br5)[ ](#br5)[bot](#br5)[ ](#br5)[:](#br5)[...................................................................................................................................](#br5)[ ](#br5)[4](#br5)

[Docker](#br7)[ ](#br7)[:](#br7)[.................................................................................................................................................](#br7)[ ](#br7)[6](#br7)

1



<a name="br3"></a> 

Morgane Cachin & Dylan Diaz

Module 347

22\.12.2023

Dylan écrire ougaouga

2



<a name="br4"></a> 

Morgane Cachin & Dylan Diaz

Module 347

22\.12.2023

HOW TO :

Pour réaliser ce projet, il y a plusieurs prérequis.

Discord :

Créaꢀon compte :

Discord est une application de communication, elle peut être utilisée comme application de bureau

ou sur web.

Vous pouvez télécharger l’application avec ce lien [:](https://discord.com/download)[ ](https://discord.com/download)<https://discord.com/download>

Ou vous connecter directement sur la page web en cliquant sur le bouton « Login » en haut à droite :

<https://discord.com/>

Si vous n’avez pas encore de compte, une fois sur la page de login cliquez sur le lien « s’inscrire »

en dessous du bouton « Connexion »

Créaꢀon serveur :

Pour utiliser le bot vous allez avoir besoin d’un serveur. Vous pouvez le créer en cliquant sur le

bouton « + » à la fin de la liste des serveurs :

Un popup s’ouvrira pour configurer votre serveur. Cliquez sur « Créer le mien » et choisissez le type

de votre serveur pour vos amis ou pour une communauté. Définissez le nom et une image (pas

obligatoire) et cliquez sur le bouton Créer.

3



<a name="br5"></a> 

Morgane Cachin & Dylan Diaz

Module 347

22\.12.2023

Créaꢀon du bot :

Une fois le serveur créé au tour du bot, pour ce faire :

Il faut accéder au paramètre qui se trouve à côté de votre profil en bas à gauche de l’écran :

Ensuite, il faut activer le paramètre « Mode développeur » que vous retrouverez dans les options

avancées de l’application :

Maintenant, vous pouvez accéder au portail de développeur discord soit en cliquant sur « API

Discord » (image précédente) ou cliquez sur ce lien [:](https://discord.com/developers/applications)[ ](https://discord.com/developers/applications)<https://discord.com/developers/applications>

Sur l’onglet Application cliquez sur le bouton « New Application »

Donnez un nom à votre bot cochez la case et cliquez sur le bouton Create :

4



<a name="br6"></a> 

Morgane Cachin & Dylan Diaz

Module 347

22\.12.2023

Tout d’abord, allez dans l’onglet « Bot » et activez ces trois options :

N’oubliez pas de sauvegarder vos changements.

Ensuite, pour créer un token vous devez cliquer sur le bouton « Reset Token ». Conservez

précieusement ce token pour la suite et ne le partagez pas.

Pour relier le bot au serveur discord il faut créer une URL. Pour cela, allez sur l’onglet « OAuth2 »

puis sur « URL Generator ». Suite à cela, dans scopes, sélectionnez les options « bot » et

« applications.commands » et dans Bot permission sélectionnez « Administeator ».

L’URL générée se trouve en bas de la page, copiez et collez l’url dans un nouvel onglet de votre

navigateur.

Sur cette nouvelle page, sélectionnez le serveur sur lequel vous voulez ajouter le bot et cliquez sur

le bouton « autoriser ».

5



<a name="br7"></a> 

Morgane Cachin & Dylan Diaz

Module 347

22\.12.2023

Docker :

Maintenant que votre bot à accès au serveur, créer un fichier à la racine du projet s’appelant

« .env » et copier le token comme ceci : TOKEN=tokendubot

Ouvrez le terminal et déplacez-vous à la racine du projet ou ouvrez-le directement à la racine. Et

lancez l’application Docker Desktop

Pour lancez le projet en environnement de développement, vous devez utiliser cette commande

docker : « docker-compose -f docker-compose.dev.yml up -d »

Vous pouvez modifier l’intervalle des messages avec cette ligne de code en notifiant la durée voulu

dans les parenthèses (seconds=chiffre, minutes=chiffre, hours=chiffre)

À la suite de ces modifications, on peut constater que dans le terminal du conteneur que nodemon

redémarre le conteneur avec les nouvelles modifications.

Les données utilisées dans cet environnement sont fictives pour vérifier que le bot accède à toutes

les colonnes.

Pour arrêter le projet, utilisez la commande suivante :

« docker-compose -f docker-compose.dev.yml down »

Pour lancez le projet en environnement de production, vous devez utiliser cette commande docker :

« docker-compose -f docker-compose.production.yml up -d »

Il ne peut pas y avoir de modification du code avec cet environnement.

Dans cet environnement nous utilisons de vraies données.

Pour arrêter le projet, utilisez la commande suivante :

« docker-compose -f docker-compose.production.yml down »

6

