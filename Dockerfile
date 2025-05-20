# Usa una imagen base oficial de Node.js
FROM node:18

# Establece el directorio de trabajo
WORKDIR /app

# Copia los archivos del proyecto
COPY package*.json ./
RUN npm install

COPY . .

# Expone el puerto (asegúrate que sea el que usas en tu backend, típicamente 3000)
EXPOSE 3000

# Comando para ejecutar tu servidor
CMD ["node", "server.js"]
