# Etapa de compilación
FROM node:18 as build

WORKDIR /app

COPY package.json package-lock.json /app/

# Instala dependencias
RUN npm install

COPY . .

# Construye la aplicación
RUN npm run build

# Etapa de producción
FROM nginx:latest

WORKDIR /usr/share/nginx/html

# Copia los archivos construidos de la etapa anterior
COPY --from=build /app/dist .

# Configura Nginx
COPY nginx.conf /etc/conf.d/default.conf

EXPOSE 80

