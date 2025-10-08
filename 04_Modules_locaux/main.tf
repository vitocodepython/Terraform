terraform {
  required_providers {
    docker = {
      source  = "kreuzwerker/docker"
      version = "3.0.2"
    }
  }

  required_version = ">= 1.6.0"
}

provider "docker" {
  host = "npipe:////./pipe/docker_engine"
}
# 1er conteneur
module "nginx1" {
  source    = "./modules/nginx"
  name      = "nginx_1"
  host_port = 8081
}
# 2e conteneur
module "nginx2" {
  source    = "./modules/nginx"
  name      = "nginx_2"
  host_port = 8082
}
