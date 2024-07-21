
# Day-18

Docker for DevOps Engineers(Part 2)

1.Docker Compose
- Docker Compose is a tool for defining and running multi-container applications. It is the key to unlocking a streamlined and efficient development and deployment experience.
- Compose simplifies the control of your entire application stack, making it easy to manage services, networks, and volumes in a single, comprehensible YAML configuration file. Then, with a single command, you create and start all the services from your configuration file.
- Compose works in all environments; production, staging, development, testing, as well as CI workflows. It also has commands for managing the whole lifecycle of your application:
    - Start, stop, and rebuild services
    - View the status of running services
    - Stream the log output of running services
    - Run a one-off command on a service

2.Why use Docker Compose?
- Simplified control: Docker Compose allows you to define and manage multi-container applications in a single YAML file. This simplifies the complex task of orchestrating and coordinating various services, making it easier to manage and replicate your application environment.
- Efficient collaboration: Docker Compose configuration files are easy to share, facilitating collaboration among developers, operations teams, and other stakeholders. This collaborative approach leads to smoother workflows, faster issue resolution, and increased overall efficiency.
- Rapid application development: Compose caches the configuration used to create a container. When you restart a service that has not changed, Compose re-uses the existing containers. Re-using containers means that you can make changes to your environment very quickly.
- Portability across environments: Compose supports variables in the Compose file. You can use these variables to customize your composition for different environments, or different users.


3.Task 
- Pull a pre-existing Docker image from a public repository (e.g. Docker Hub) and run it on your local machine. Run the container as a non-root user (Hint: Use the 'usermod' command to give the user permission to Docker). Make sure you reboot the instance after giving permission to the user.
- Inspect the container's running processes and exposed ports using the 'docker inspect' command.
- Use the 'docker logs' command to view the container's log output.
- Use the 'docker stop' and 'docker start' commands to stop and start the container.
- Use the 'docker rm' command to remove the container when you're done.


Checkout Blog link given below for detailed description,

- Blog Link : https://ojasj45.hashnode.dev/day-18-docker-for-devops-engineers-part-2