
output "project_info_example" {
  value       = module.vpc.project_id
  description = "The ID of the created project"
}

output "network_name" {
  value       = module.vpc.network_name
  description = "The networks's name"
}