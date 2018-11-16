# Projet THP Landing pages
Lien Heroku : https://growth-hacking-kebabiers.herokuapp.com

Lien de secours : https://thp-kebabistan.herokuapp.com

### Salut les moussaillons !  :sunglasses:

Comme demandé, on a 3 landing pages pour 3 cibles différentes :
- Les Noobs en dev, qui suivent openclassroom, sont intéressés par 42.
- Les corporates et entreprises.
- Les gens déjà devs

Le but de ce projet est de synthétiser un grand nombre de hacks que nous avons appris au cours de la formation THP pendant les 6 dernieres semaines.
Il s'agissait de créer une application Rails capable d'approcher sur Instagram et twitter une liste de prospects potentiellement intéressés par la formation, de les inscrire sur un service Mailchimp afin de leur envoyer une newsletter hebdomadaire.

La création du projet se décompose en 4 étapes:

# Etape 1: Choisir les cibles

Pour cela nous avons opté pour deux réseaux sociaux emblématiques : Instagram et Twitter.

Pour le premier :
- On a utilisé la gem watir qui nous permet la connection à Instagram, PUIS
- On se rend sur le profil IG de Openclassroom scraper quelques abonnés
- Pour ensuite se rendre sur chaque profil scrappé, et discrètement aimer quelques publications et en commenter d'autres.

Pour le second :
- De la même manière que pour Instagram, nous avons utilité la gem watir qui permet de se connecter à Twitter
- Puis nous avons opté pour le scappage des followers de 42, d'Openclassrooms et de Grafikart
- Enfin nous commentons également ces followers.

Pour finir deux actions marketing viennent compléter ce projet, à travers un scheduling via l'outil Heroku Scheduler.

# Etape 2: La landing page template de qualité :computer:

Nous avons donc, comme demandé, généré 3 landing pages différents pour chacun de nos publics.
Chaque landing page a été intégrée en responsive puis mis en production grace à Bootstrap.

Chaque landing page propose un discours (légèrement) adapté à la cible, une redirection vers les autres landing pages, et un CTA qui invite à s'inscrire sur la newsletter.

Design : la landing page a été formulée dans un esprit digital pour attirer les jeunes étudiants, le fait d'utiliser les grilles permet de jouer sur la composition, il ne reste plus qu'à jouer avec les visuels, effets et couleurs pour adapter à la cible.

# Etape 3 : la newsletter :love_letter:

Process:
*Creation de Signup Form a implementer dans la landing page
*Creation d’un template email de bienvenue!
*Creation d’un template mail « Newsletter »
*Configuration de la campagne mailing newsletter hebdomadaire

Une fois inscrit sur la newsletter, le subscriber reçoit un mail lui confirmant son inscription. Son adresse mail sera stockée sur Mailchimp dans une liste.

# Etape 4: Tracking & Metrics :chart_with_upwards_trend:

Pour la partie Tracking et Metrics nous avons opté pour l'outil Google Analytics qui est un outil simple et permet de tracker le flux des différents visiteurs. Il permet en temps réel d'obtenir la répartition des utilisateurs dans le monde et d'avoir une vue d'ensemble sur les statistiques qui leurs sont associées.

# Installation

:sunny:   Cloner le repo

:sunny:   $ bundle install

:sunny:   $ rails db:create db:migrate

# Créateurs : Les Kébabiers ##

Derrière cet repository de Sapeur se cache...
* Victor le bachateur
* Shayane l'intriguant
* Recep le chef kébabier
* Enes le jeune premier
* Evan le sapeur tricologiste

Fait avec de la sueur et des larmes in Paris
