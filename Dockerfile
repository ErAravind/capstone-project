FROM nginx:latest
COPY build/* /usr/share/nginx/html
WORKDIR /opt
RUN npm uninstall react-scripts
RUN npm install react-scripts
RUN npm install
CMD [ "npm", "start"]
