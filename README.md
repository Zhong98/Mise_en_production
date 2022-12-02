# Mise_en_production
Documentation de déploiement:

  En local:
  
  1.Ecrire le file 'Dockerfile' 
  
  Parce que l'application testé est une application javaweb exécute sur Tomcat, la prèmiere chose est que importer le tomcat.
  FROM tomcat:9-jdk8
  
  Ensuite, ajouter le package war dans le dossier webapps de tomcat
  ADD demo.war /usr/local/tomcat/webapps/ 
  
  A la fin, ajouter les commandes de éxecuter le tomcat
  
  2.Dans cmd, utiliser les commandes de Docker éxecuter le Dockerfile et créer l'image d'application
  docker build -t apptest .
  
  docker run -d -p 8080:8080 (id d'image)
  
  Après finir, maintenant utilisateur peut utiliser le localhost pour visiter le site.
  http://localhost:8080/demo (demo est le nom du package war)
  
  En Mogenius:
  
  1. Pousser les files sur github, inclus le Dockerfile
  
  2. Créer un compte de Mogenius
  
  3. Créer un CloudSpace et choisir le docker
  
  4. Etablir une connextion entre github et Mogenius
  
  5. Choisir le respository, le branch et le port utilisé
  
  6. Create service
  
  Bug: Parce que cette application est juste une exemple, je n'ai pas mis la base de données, il existe quelque bugs. 
  Mais je pense que c'est pas grave, il est une exemple pour savoir le Mogenius et Docker comment fonctionner
  
