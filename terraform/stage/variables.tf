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
  # Значение по умолчанию
  default = "ru-central1-a"
}
variable "public_key_path" {
  # Описание переменной
  description = "~/.ssh/appuser.pub"
}
variable "private_key_path" {
  # Описание переменной
  description = "~/.ssh/appuser"
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
variable "instances" {
  description = "counts instances"
  default     = 1
}
variable "app_disk_image" {
  description = "Disk image for reddit app"
  default     = "reddit-app-base"
}
variable "db_disk_image" {
  description = "Disk image for reddit db"
  default     = "reddit-db-base"
}

variable "access_key" {
  description = "key id"
}
variable "secret_key" {
  description = "secret key"
}
variable "bucket_name" {
  description = "bucket name"
}

