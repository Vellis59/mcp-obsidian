# Image officielle Node.js LTS
FROM node:20

# Répertoire de travail
WORKDIR /app

# Copie des fichiers de dépendances
COPY package*.json ./

# Installation des dépendances
RUN npm install

# Copie du reste des fichiers
COPY . .

# Port d'écoute (modifiable si besoin)
EXPOSE 3000

# Commande de lancement
CMD ["npm", "start"]
