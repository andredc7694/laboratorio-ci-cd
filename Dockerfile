# Carpeta de trabajo dentro del contenedor
WORKDIR /app

# Copiamos package.json y package-lock.json (si existe)
COPY package*.json ./

# Instalamos dependencias
RUN npm install --production

# Copiamos el resto del código
COPY . .

# Exponemos el puerto 3000 (el mismo que usas en app.js)
EXPOSE 3000

# Comando para ejecutar la app
CMD ["node", "app.js"]