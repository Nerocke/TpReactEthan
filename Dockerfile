# Utilisation de l'image officielle Node.js
FROM node:18

# Définir le répertoire de travail dans le conteneur
WORKDIR /app

# Copier les fichiers package.json et package-lock.json avant d'installer les dépendances
COPY package.json package-lock.json ./

# Installer les dépendances
RUN npm install --production

# Copier le reste du code dans le conteneur
COPY . .

# Exposer le port utilisé par ton application
EXPOSE 3000

# Lancer l'application
CMD ["npm", "start"]