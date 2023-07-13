# Utilizamos la imagen de Node.js como base
FROM node:latest

# Copia el archivo package.json desde el directorio local 
#  al directorio /app/ dentro del contenedor
COPY package.json /app/
# Copia el contenido del directorio src desde el directorio local 
# al directorio /app/ dentro del contenedor
COPY src /app/

# Establece el directorio de trabajo en /app
WORKDIR /app

# Ejecuta el comando npm install para instalar las dependencias 
# en el archivo package.json en el directorio /app/
RUN npm install

# Define el comando predeterminado para ejecutar el archivo server.js
# utilizando Node.js dentro del contenedor
CMD ["node", "server.js"]