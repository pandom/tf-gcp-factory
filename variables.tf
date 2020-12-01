variable "project_id" {
    description = "project ID"
    default = ""
}
variable "network_name" {
    description = "network name"
    default = ""
}
variable "credentials_path" {
  description = "Path to a service account credentials file with rights to run the Project Factory. If this file is absent Terraform will fall back to Application Default Credentials."
  default     = ""
}