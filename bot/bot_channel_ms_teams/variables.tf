# REQUIRED VARIABLES

variable "resource_group_name" {
  description = "(REQUIRED) The name of the resource group in which to create the Bot Channel. Changing this forces a new resource to be created."
  type        = string

}
variable "location" {
  description = "(REQUIRED) The supported Azure location where the resource exists. Changing this forces a new resource to be created."
  type        = string

}
variable "bot_name" {
  description = "(REQUIRED) The name of the Bot Resource this channel will be associated with. Changing this forces a new resource to be created."
  type        = string

}

# OPTIONAL VARIABLES

variable "calling_web_hook" {
  description = "Specifies the webhook for Microsoft Teams channel calls."
  type        = string
  default     = null
}
variable "deployment_environment" {
  description = "The deployment environment for Microsoft Teams channel calls. Possible values are 'CommercialDeployment' and 'GCCModerateDeployment'. Defaults to 'CommercialDeployment'."
  type        = string
  default     = "CommercialDeployment"
}
variable "enable_calling" {
  description = "Specifies whether to enable Microsoft Teams channel calls. This defaults to 'false'."
  type        = bool
  default     = false
}
