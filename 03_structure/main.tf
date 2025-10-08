terraform {
  required_providers {
    docker = {
      source  = "kreuzwerker/docker"
      version = "3.0.2"
    }
  }
}

provider "docker" {
  host = "npipe:////./pipe/docker_engine"
}

# Pulls the image
resource "docker_image" "nginx" {
  name = "nginx:latest"
}

# Lance un conteneur Nginx
resource "docker_container" "nginx" {
  name  = "nginx_tfv2"
  image = docker_image.nginx.image_id

  ports {
    internal = 80   
    external = var.host_port 
  }
}