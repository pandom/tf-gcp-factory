
// data "google_billing_account" "acct" {
//   display_name = "01DC95-72A541-BB674C"
//   open         = true
// }
/******************************************
  Provider configuration
 *****************************************/
provider "google" {
  #credentials = file(local.credentials_file_path)
  version     = "~> 3.30"
}

provider "google-beta" {
  #credentials = file(local.credentials_file_path)
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

  default_service_account = "deprivilege"

}