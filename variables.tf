variable "vm-name" {
  type = string
  description = "Name of the VM"
}

variable "username" {
  type = string
  description = "username for windows machine"
}

variable "password" {
  type = string
  description = "Password for windows machine"
}

variable "instance_size" {
  type        = string
  description = "Size of the VM"
  default = "Standard_DS1_v2"
}

# Resource Group
variable "resource_group_name" {
  type = string
  description = "Resource Group Name"
}
variable "resource_group_location" {
  type = string
  description = "Resource Group Name"
}

# Network Variable
variable "subnet_id" {
  type = string
  description = "Subnet ID"
}

# Public IP Enable
variable "public_ip_enable" {
  type = bool
  description = "Should server have a public IP address?"
}

# Public IP Enable
variable "autoshutdown_is_enable" {
  type = bool
  description = "Should this server schedule shutdown?"
}