FROM node:8

# The folder app
ARG APP_DIR=app
RUN mkdir -p ${APP_DIR}
WORKDIR ${APP_DIR}

# install dependencies npm
COPY package*.json ./
RUN npm install
# use in my production
# RUN npm install --production

# Copy
COPY . /app

# port
EXPOSE 4444

# start
CMD ["npm", "start"]
