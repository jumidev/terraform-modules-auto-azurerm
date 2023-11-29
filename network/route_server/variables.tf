# REQUIRED VARIABLES

variable "name" {
  description = "(REQUIRED) The name of the Route Server. Changing this forces a new resource to be created."
  type        = string

}
variable "resource_group_name" {
  description = "(REQUIRED) Specifies the name of the Resource Group where the Route Server should exist. Changing this forces a new resource to be created."
  type        = string

}
variable "location" {
  description = "(REQUIRED) Specifies the supported Azure location where the Route Server should exist. Changing this forces a new resource to be created."
  type        = string

}
variable "subnet_id" {
  description = "(REQUIRED) The ID of the Subnet that the Route Server will reside. Changing this forces a new resource to be created."
  type        = string

}
variable "sku" {
  description = "(REQUIRED) The SKU of the Route Server. The only possible value is 'Standard'. Changing this forces a new resource to be created."
  type        = string

}
variable "public_ip_address_id" {
  description = "(REQUIRED) The ID of the Public IP Address. This option is required since September 1st 2021. Changing this forces a new resource to be created."
  type        = string

}

# OPTIONAL VARIABLES

variable "branch_to_branch_traffic_enabled" {
  description = "Whether to enable route exchange between Azure Route Server and the gateway(s)"
  type        = bool
  default     = null
}
variable "tags" {
  description = "A mapping of tags to assign to the resource."
  type        = map(any)
  default     = null
}
