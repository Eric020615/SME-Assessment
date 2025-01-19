# Use Node as the base image
FROM node

# Set the working directory
WORKDIR /app

# Copy package.json and install dependencies
COPY package.json yarn.lock /app/

RUN yarn install

# Copy all files into the container
COPY . /app

# Build TypeScript code
RUN yarn build

# Expose the port
EXPOSE 5000

# Start the application
CMD ["yarn", "start:dev"]

# github repository link
# https://github.com/Eric020615/SME-Assessment.git