variable "name" {
  description = "Nom du conteneur"
  type        = string
}
variable "image" {
  description = "Nom de l'image Docker"
  type        = string
  default     = "nginx:latest"
}
variable "host_port" {
  description = "Port exposé sur l'hôte"
  type        = number
  default     = 8080
}
