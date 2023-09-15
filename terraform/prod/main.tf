# Terraform main config taken from OTUS course webinar PDF
#
#
#

/*
terraform {
  required_providers {
    yandex = {
      source  = "yandex-cloud/yandex"
      version = "0.89.0"
    }
  }
}
*/

provider "yandex" {
  service_account_key_file = var.service_account_key_file
  cloud_id                 = var.cloud_id
  folder_id                = var.folder_id
  zone                     = var.zone
}
module "vpc" {
  source = "../modules/vpc"
}

module "app" {
  service_account_key_file = var.service_account_key_file
  db_address               = module.db.internal_ip_address_db
  private_key_path         = var.private_key_path
  source          = "../modules/app"
  public_key_path = var.public_key_path
  app_disk_image  = var.app_disk_image
  subnet_id       = module.vpc.subnet
}


module "db" {
  service_account_key_file = var.service_account_key_file
  source          = "../modules/db"
  public_key_path = var.public_key_path
  db_disk_image   = var.db_disk_image
  subnet_id       = module.vpc.subnet
}

