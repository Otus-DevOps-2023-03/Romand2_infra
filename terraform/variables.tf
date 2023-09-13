variable cloud_id{
  description = "Cloud"
}
variable folder_id {
  description = "Folder"
}
variable zone {
  description = "Zone"
  # Значение по умолчанию
  default     = "ru-central1-a"
}
variable public_key_path {
  # Описание переменной
  description = "~/.ssh/appuser.pub"
}
variable image_id {
  description = "Disk image"
}
variable subnet_id{
  description = "Subnet"
}
variable service_account_key_file{
  description = "key.json"
}
variable private_key_path {
  # Описание переменной
  description = "~/.ssh/appuser"
}
variable "instances" {
  description = "counts instances"
  type        = number
  default     = 1
}
