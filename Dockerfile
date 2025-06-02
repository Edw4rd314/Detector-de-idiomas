
# Usa Node.js oficial como base
FROM node:18

# Crea directorio de trabajo en el contenedor
WORKDIR /app

# Copia solo los archivos públicos
COPY public/ .

# Instala el servidor estático minimalista
RUN npm install -g http-server

# Expone el puerto por donde se servirá la app
EXPOSE 8080

# Comando para iniciar el servidor
CMD ["http-server", "-p", "8080"]
