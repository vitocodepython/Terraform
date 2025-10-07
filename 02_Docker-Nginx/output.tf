output "container_name" {
  description = "nginx_tf"
  value       = docker_container.nginx_container.name
}
