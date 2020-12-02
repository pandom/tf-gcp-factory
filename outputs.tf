
output "project_info_example" {
  value       = module.network_example_simple_project.project_id
  description = "The ID of the created project"
}

output "network_name" {
  value       = module.network_example_simple_project.network_name
  description = "The networks's name"
}