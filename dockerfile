FROM node:12-alpine

#intalling git:
RUN apk add --no-cache git

#clone the repo : 
RUN git clone -q https://github.com/drissalichane/todo-app.git

#set the working directory to the app directory
WORKDIR /todo-app

#Install dependencie
RUN yarn install --production

#start the application 
CMD ["node", "src/index.js"]