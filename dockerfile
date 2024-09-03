# menentukan versi Node.js yang digunakan untuk membuat image docker 
FROM node:14-alpine

# membuat environtment dari container
WORKDIR /app

# menyalin packkage.json ke dalam environtment di /app
COPY package*.json /app/

# untuk menjalankan package yang diperlukan setelah memindahkan package*.json
RUN npm install

# menyalin isi dari direktori ke dalam kontainer
COPY . . 

# memberikan perintah dasar saat container dijalankan
CMD ["npm", "start"]

# ekspos port 8080
EXPOSE 8080