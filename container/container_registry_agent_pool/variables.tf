# REQUIRED VARIABLES

variable "container_registry_name" {
  description = "(REQUIRED) Name of Azure Container Registry to create an Agent Pool for. Changing this forces a new Azure Container Registry Agent Pool to be created."
  type        = string

}
variable "location" {
  description = "(REQUIRED) The Azure Region where the Azure Container Registry Agent Pool should exist. Changing this forces a new Azure Container Registry Agent Pool to be created."
  type        = string

}
variable "name" {
  description = "(REQUIRED) The name which should be used for this Azure Container Registry Agent Pool. Changing this forces a new Azure Container Registry Agent Pool to be created."
  type        = string

}
variable "resource_group_name" {
  description = "(REQUIRED) The name of the Resource Group where the Azure Container Registry Agent Pool should exist. Changing this forces a new Azure Container Registry Agent Pool to be created."
  type        = string

}

# OPTIONAL VARIABLES

variable "instance_count" {
  description = "VMSS instance count. Defaults to '1'."
  type        = number
  default     = 1
}
variable "tier" {
  description = "Sets the VM your agent pool will run on. Valid values are: 'S1' (2 vCPUs, 3 GiB RAM), 'S2' (4 vCPUs, 8 GiB RAM), 'S3' (8 vCPUs, 16 GiB RAM) or 'I6' (64 vCPUs, 216 GiB RAM, Isolated). Defaults to 'S1'. Changing this forces a new Azure Container Registry Agent Pool to be created."
  type        = string
  default     = "S1"
}
variable "virtual_network_subnet_id" {
  description = "The ID of the Virtual Network Subnet Resource where the agent machines will be running. Changing this forces a new Azure Container Registry Agent Pool to be created."
  type        = string
  default     = null
}
variable "tags" {
  description = "A mapping of tags which should be assigned to the Azure Container Registry Agent Pool."
  type        = map(any)
  default     = null
}
variable "container_registry_resource_group_name" {
  description = "The Name of the Resource Group where this Container Registry exists..  If not specified, value of var.resource_group_name will be used."
  type        = string
  default     = null
}
