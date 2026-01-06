FROM node:18-alpine

# App papka
WORKDIR /app

# package fayllar
COPY package*.json ./

# dependency install
RUN npm install

# barcha fayllar
COPY . .

# Next.js build (turbopack bilan)
RUN npm run build

# faqat 3005 port
EXPOSE 3005

# Next.js production server 3005 portda
CMD ["npm", "run", "start", "--", "-p", "3005"]
