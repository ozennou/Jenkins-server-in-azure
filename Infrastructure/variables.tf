variable "name_prefix" {
  description = "name prefix for the name resources"
  default     = "jenkins-server"
}

variable "location" {
  description = "resources location"
  default     = "West Europe"
}

variable "username" {
  description = "VM admin username"
  default     = "mozennou"
}

variable "ssh_public_key_file" {
  sensitive = true
}