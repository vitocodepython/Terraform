terraform {
  required_providers {
    docker = {
      source = "kreuzwerker/docker"
    }
  }
}

resource "docker_image" "this" {
  name         = var.image
  keep_locally = true
}
resource "docker_container" "this" {
  name  = var.name
  image = docker_image.this.image_id

ports {
    internal = 80
    external = var.host_port
  }
}
