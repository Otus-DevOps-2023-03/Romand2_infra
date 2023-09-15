variable "public_key_path" {
  description = "~/.ssh/appuser.pub"
}
variable "app_disk_image" {
  description = "Disk image for reddit app"
  default = "reddit-app-base"
}
variable "subnet_id" {
description = "Subnets for modules"
}
variable "service_account_key_file" {
  description = "key.json"
}
variable "private_key_path" {
  description = "~/.ssh/appuser"
}
variable "instances" {
  description = "counts instances"
  default     = 1
}
variable "db_address" {
  description = "Database IP address"
}
