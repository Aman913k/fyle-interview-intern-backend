# Project Dockerization Documentation


## A. Introduction:
This documentation provides guidance on Dockerizing the project, allowing for easy deployment and isolation of dependencies. The Docker image includes the necessary components to run the project seamlessly within a container.

## B. Prerequisites
Ensure that the 'Docker' installed on your machine:

## C. Docker Build
To build the Docker image for the project, follow these steps:

1. Open a terminal and navigate to the project's root directory where the Dockerfile is located.

2. Run the following command to build the Docker image:   ** docker build -t fyle_dockerized_aman . **
   This command creates a Docker image named fyle_dockerized_aman based on the specifications defined in the Dockerfile.

3. Wait for the build process to complete. Upon successful completion, you should see a message indicating that the image has been built.

## D. Docker Run
To run the Docker container for the project, use the following steps:

1. Run the following command to start the Docker container:   ** docker run -p 8000:7755 fyle_dockerized_aman **
This command maps port 8000 on your local machine to port 7755 within the Docker container.

2. Access the project by visiting ** http://localhost:8000 ** in your web browser.

3. To stop the container, press ** Ctrl + C ** in the terminal where the container is running. Alternatively, you can run the following command in a new terminal window:   ** docker stop <772d7c277d84> **


# Conclusion:
By Dockerizing the project, you have created a portable and reproducible environment for running your application. This enables easier deployment, scalability, and ensures consistent behavior across different environments.

