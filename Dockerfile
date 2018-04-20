FROM node

# Create app directory
WORKDIR /usr/src/app


# Install app dependencies
# A wildcard is used to ensure both package.json AND package-lock.json are copied
# where available (npm@5+)
COPY package*.json ./

RUN npm install
# If you are building your code for production
# RUN npm install --only=production

# Bundle app source
COPY . .

# Provide a default TARGET_URL environment variable
# servlet post example
# ENV TARGET_URL http://rtview-dataserver:3270/rtvpost
# direct http post example
ENV TARGET_URL http://rtview-dataserver:3275

# Expose any used ports
# EXPOSE 8080

USER node

# USe default npm start command
CMD [ "npm", "start" ]

# Run node directly 
#CMD ["node","rtview_pubnub_feed.js"]

