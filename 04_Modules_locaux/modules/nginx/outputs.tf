output "container_name" {
  description = "Nom du conteneur créé"
  value       = docker_container.this.name
}
