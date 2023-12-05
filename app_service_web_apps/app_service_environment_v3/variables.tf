# REQUIRED VARIABLES

variable "name" {
  description = "(REQUIRED) The name of the App Service Environment. Changing this forces a new resource to be created."
  type        = string

}
variable "resource_group_name" {
  description = "(REQUIRED) The name of the Resource Group where the App Service Environment exists. Defaults to the Resource Group of the Subnet (specified by 'subnet_id'). Changing this forces a new resource to be created."
  type        = string
  default     = "subnet_id"
}
variable "subnet_id" {
  description = "(REQUIRED) The ID of the Subnet which the App Service Environment should be connected to. Changing this forces a new resource to be created."
  type        = string

}

# OPTIONAL VARIABLES

variable "allow_new_private_endpoint_connections" {
  description = "Should new Private Endpoint Connections be allowed. Defaults to 'true'."
  type        = bool
  default     = true
}
variable "cluster_setting" {
  description = "Zero or more 'cluster_setting' blocks."
  type        = map(map(any))
  default     = null
}
#
# cluster_setting block structure:
#   name (string)                  : (REQUIRED) The name of the Cluster Setting.
#   value (string)                 : (REQUIRED) The value for the Cluster Setting.


variable "dedicated_host_count" {
  description = "This ASEv3 should use dedicated Hosts. Possible values are '2'. Changing this forces a new resource to be created."
  type        = string
  default     = null
}
variable "zone_redundant" {
  description = "Set to 'true' to deploy the ASEv3 with availability zones supported. Zonal ASEs can be deployed in some regions, you can refer to [Availability Zone support for App Service Environments](https://docs.microsoft.com/azure/app-service/environment/zone-redundancy). You can only set either 'dedicated_host_count' or 'zone_redundant' but not both. Changing this forces a new resource to be created."
  type        = string
  default     = null
}
variable "internal_load_balancing_mode" {
  description = "Specifies which endpoints to serve internally in the Virtual Network for the App Service Environment. Possible values are 'None' (for an External VIP Type), and ''Web, Publishing'' (for an Internal VIP Type). Defaults to 'None'. Changing this forces a new resource to be created."
  type        = string
  default     = "None"
}
variable "tags" {
  description = "A mapping of tags to assign to the resource."
  type        = map(any)
  default     = null
}
