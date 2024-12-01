FROM node:18.20.5
WORKDIR /app
ENV PORT 3000
ENV MODEL_URL https://storage.googleapis.com/model-storage-prod-121/model-in-prod/model.json
COPY . .
RUN npm install
EXPOSE 3000
CMD [ "npm", "run", "start"]