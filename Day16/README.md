
# Day-16

Docker for DevOps Engineers (Part 1)

1.What is Docker?
- Docker is an open-source platform designed to automate the deployment, scaling, and management of applications.
- It uses containerization technology to package applications and their dependencies into containers, which can run on any system with Docker installed. 
- This ensures that the software will always run the same, regardless of its environment.

2.Why Docker Was Invented?
- Environment Consistency: Docker ensures that applications run the same regardless of where they are deployed.
- Dependency Management: Docker packages all dependencies with the application, ensuring compatibility.
- Efficient Resource Usage: Traditional virtual machines are resource-intensive. Docker provides a lightweight alternative by sharing the host OS, leading to better resource utilization.
- Fast and Reliable Deployment: Docker enables rapid deployment of applications by packaging them into containers. This speeds up the deployment process and reduces errors.
- Isolation: Containers provide isolated environments for applications, improving security and reducing conflicts between different applications.
- Scalability: Docker makes it easy to scale applications horizontally by adding more containers.

3.Features of Docker
- Lightweight: Containers share the host OS kernel and are more lightweight than virtual machines.
- Portability: Containers can run on any system that supports Docker, making it easy to move applications between environments.
- Isolation: Each container runs in its own isolated environment, ensuring that applications do not interfere with each other.
- Scalability: Docker makes it easy to scale applications up or down quickly.
- Version Control: Docker images can be versioned, allowing for easy rollback to previous versions.
- Security: Containers provide a level of security by isolating applications from the host system and each other.
- Resource Efficiency: Containers use fewer resources than traditional VMs since they share the host OS.

4.Tasks
- Use the docker run command to start a new container and interact with it through the command line. [Hint: docker run hello-world]
- Use the docker inspect command to view detailed information about a container or image.
- Use the docker port command to list the port mappings for a container.
- Use the docker stats command to view resource usage statistics for one or more containers.
- Use the docker top command to view the processes running inside a container.
- Use the docker save command to save an image to a tar archive.
- Use the docker load command to load an image from a tar archive.


Checkout Blog link given below for detailed description,

- Blog Link : https://ojasj45.hashnode.dev/day-16-docker-for-devops-engineers-part-1#heading-task-run-simple-docker-commands