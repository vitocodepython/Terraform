output "container_name" {
  description = "nginx_tfv2"
  value       = docker_container.nginx.name
}
