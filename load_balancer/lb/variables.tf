# REQUIRED VARIABLES

variable "name" {
  description = "(REQUIRED) Specifies the name of the Load Balancer. Changing this forces a new resource to be created."
  type        = string

}
variable "resource_group_name" {
  description = "(REQUIRED) The name of the Resource Group in which to create the Load Balancer. Changing this forces a new resource to be created."
  type        = string

}
variable "location" {
  description = "(REQUIRED) Specifies the supported Azure Region where the Load Balancer should be created. Changing this forces a new resource to be created."
  type        = string

}

# OPTIONAL VARIABLES

variable "edge_zone" {
  description = "Specifies the Edge Zone within the Azure Region where this Load Balancer should exist. Changing this forces a new Load Balancer to be created."
  type        = string
  default     = null
}
variable "frontend_ip_configuration" {
  description = "One or more 'frontend_ip_configuration' blocks."
  type        = string
  default     = null
}
variable "sku" {
  description = "The SKU of the Azure Load Balancer. Accepted values are 'Basic', 'Standard' and 'Gateway'. Defaults to 'Basic'. Changing this forces a new resource to be created. -> **NOTE:** The 'Microsoft.Network/AllowGatewayLoadBalancer' feature is required to be registered in order to use the 'Gateway' SKU. The feature can only be registered by the Azure service team, please submit an [Azure support ticket](https://azure.microsoft.com/en-us/support/create-ticket/) for that."
  type        = string
  default     = "Basic"
}
variable "sku_tier" {
  description = "'sku_tier' -  The SKU tier of this Load Balancer. Possible values are 'Global' and 'Regional'. Defaults to 'Regional'. Changing this forces a new resource to be created."
  type        = string
  default     = "Regional"
}
variable "tags" {
  description = "A mapping of tags to assign to the resource."
  type        = map(any)
  default     = null
}
