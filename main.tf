

locals {
  credentials_file_path = var.credentials_path
}

/******************************************
  Provider configuration
 *****************************************/
provider "google" {
  credentials = file(local.credentials_file_path)
  version     = "~> 3.30"
}

provider "google-beta" {
  credentials = file(local.credentials_file_path)
  version     = "~> 3.38"
}

provider "null" {
  version = "~> 2.1"
}

provider "random" {
  version = "~> 2.2"
}

module "project-factory" {
  source                  = "terraform-google-modules/project-factory/google"
  random_project_id       = true
  name                    = "simple-sample-project"
  org_id                  = var.organization_id
  billing_account         = var.billing_account
  credentials_path        = local.credentials_file_path
  default_service_account = "deprivilege"

  activate_api_identities = [{
    api = "healthcare.googleapis.com"
    roles = [
      "roles/healthcare.serviceAgent",
      "roles/bigquery.jobUser",
    ]
  }]
}