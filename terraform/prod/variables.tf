variable "cloud_id" {
  description = "Cloud"
}
variable "folder_id" {
  description = "Folder"
}
variable "region_id" {
  description = "region"
  default     = "ru-central1"
}
variable "zone" {
  description = "Zone"
  default     = "ru-central1-a"
}
variable "public_key_path" {
  description = "~/.ssh/appuser.pub"
}
variable "image_id" {
  description = "Disk image"
}
variable "subnet_id" {
  description = "Subnet"
}
variable "service_account_key_file" {
  description = "key.json"
}
variable "private_key_path" {
  description = "~/.ssh/appuser"
}
variable "instances" {
  description = "Amount of machines"
  default     = 1
}
variable "app_disk_image" {
  description = "Disk image for Reddit app"
  default     = "reddit-app-base"
}
variable "db_disk_image" {
  description = "Database image for Reddit app"
  default     = "reddit-db-base"
}

