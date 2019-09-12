FROM node:12-slim
RUN mkdir -p /app
COPY . /app
WORKDIR /app
RUN rm -rf ./node_modules
RUN npm install
EXPOSE 8000
USER nobody
ENTRYPOINT ["npm"]
CMD ["tart"]
