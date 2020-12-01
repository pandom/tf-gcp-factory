provider "google" {
  #credentials = file(local.credentials_file_path)
  version     = "~> 3.30"
}

provider "null" {
  version = "~> 2.1"
}

provider "random" {
  version = "~> 2.2"
}

module "network_example_simple_project" {
  source  = "terraform-google-modules/network/google//examples/simple_project"
  version = "2.5.0"
  network_name = var.network_name
  project_id = var.project_id
}