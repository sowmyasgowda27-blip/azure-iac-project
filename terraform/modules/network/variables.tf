variable "location" {
  description = "Azure region"
  type        = string
}

variable "resource_group_name" {
  description = "Resource Group name"
  type        = string
}

variable "vnet_name" {
  description = "Name of the Virtual Network"
  type        = string
}

variable "nsg_name" {
  description = "Name of the Network Security Group"
  type        = string
}

variable "address_space" {
  description = "Address space for the Virtual Network"
  type        = list(string)
}

variable "public_subnet_prefix" {
  description = "Address prefix for the public subnet"
  type        = list(string)
}

variable "private_subnet_prefix" {
  description = "Address prefix for the private subnet"
  type        = list(string)
}