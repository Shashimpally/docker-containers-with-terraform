# ----------- Terraform Block -----------
# This tells Terraform which providers to use.
# Here, we're using the Docker provider from kreuzwerker.
terraform {
  required_providers {
    docker = {
      source  = "kreuzwerker/docker" # Official Docker provider source
      version = "~> 3.0.2"           # Version constraint
    }
  }
}

# ----------- Provider Block -----------
# This initializes the Docker provider so Terraform can interact with Docker.
provider "docker" {}

# ----------- Docker Image Resource -----------
# This block pulls the latest Nginx image from Docker Hub.
resource "docker_image" "nginx" {
  name = "nginx:latest"  # Specifies which image to pull
}

# ----------- Docker Container Resource -----------
# This block creates a container using the image above.
resource "docker_container" "nginx" {
  name  = "my-nginx-container"         # Name of the container
  image = docker_image.nginx.latest    # Uses the image pulled above

  # Port mapping: maps port 8080 on host to port 80 in the container
  ports {
    internal = 80     # Port inside the container
    external = 8080   # Port exposed on your local machine
  }
}