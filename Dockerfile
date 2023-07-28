# Utiliza una imagen base de Node.js
FROM node:14-alpine

# Establece el directorio de trabajo en la carpeta de la aplicación
WORKDIR /usr/src/app

# Copia los archivos de configuración y las dependencias del proyecto
COPY package*.json ./

# Instala las dependencias del proyecto
RUN npm install

# Copia el resto de los archivos del proyecto
COPY . .

# Expone el puerto especificado para la aplicación (puerto 3000 en este ejemplo)
EXPOSE 3000

# Comando para ejecutar la aplicación en modo de producción
CMD [ "npm", "run", "start:prod" ]

COPY dist ./dist

