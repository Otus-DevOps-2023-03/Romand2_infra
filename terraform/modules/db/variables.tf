variable public_key_path {
  description = "~/.ssh/appuser.pub"
}
  variable db_disk_image {
  description = "Disk image for reddit db"
  default = "reddit-db-base"
}
variable subnet_id {
description = "Subnets for modules"
}
variable "instances" {
  description = "counts instances"
  default     = 1
}
variable "private_key_path" {
  # Описание переменной
  description = "Path to the private key used for ssh access"
  default     = "~/.ssh/appuser"
}

