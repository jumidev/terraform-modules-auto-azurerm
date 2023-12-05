# REQUIRED VARIABLES

variable "name" {
  description = "(REQUIRED) The name of the App Service Environment. Changing this forces a new resource to be created."
  type        = string

}
variable "subnet_id" {
  description = "(REQUIRED) The ID of the Subnet which the App Service Environment should be connected to. Changing this forces a new resource to be created."
  type        = string

}
variable "resource_group_name" {
  description = "(REQUIRED) The name of the Resource Group where the App Service Environment exists. Defaults to the Resource Group of the Subnet (specified by 'subnet_id')."
  type        = string
  default     = "subnet_id"
}

# OPTIONAL VARIABLES

variable "cluster_setting" {
  description = "Zero or more 'cluster_setting' blocks."
  type        = map(map(any))
  default     = null
}
#
# cluster_setting block structure:
#   name (string)                  : (REQUIRED) The name of the Cluster Setting.
#   value (string)                 : (REQUIRED) The value for the Cluster Setting.


variable "internal_load_balancing_mode" {
  description = "Specifies which endpoints to serve internally in the Virtual Network for the App Service Environment. Possible values are 'None', 'Web', 'Publishing' and combined value ''Web, Publishing''. Defaults to 'None'. Changing this forces a new resource to be created."
  type        = string
  default     = "None"
}
variable "pricing_tier" {
  description = "Pricing tier for the front end instances. Possible values are 'I1', 'I2' and 'I3'. Defaults to 'I1'."
  type        = string
  default     = "I1"
}
variable "front_end_scale_factor" {
  description = "Scale factor for front end instances. Possible values are between '5' and '15'. Defaults to '15'."
  type        = string
  default     = "15"
}
variable "allowed_user_ip_cidrs" {
  description = "Allowed user added IP ranges on the ASE database. Use the addresses you want to set as the explicit egress address ranges."
  type        = string
  default     = null
}
variable "tags" {
  description = "A mapping of tags to assign to the resource. Changing this forces a new resource to be created."
  type        = map(any)
  default     = null
}
