# REQUIRED VARIABLES

variable "name" {
  description = "(REQUIRED) The name which should be used for this Static Web App. Changing this forces a new Static Web App to be created."
  type        = string

}
variable "location" {
  description = "(REQUIRED) The Azure Region where the Static Web App should exist. Changing this forces a new Static Web App to be created."
  type        = string

}
variable "resource_group_name" {
  description = "(REQUIRED) The name of the Resource Group where the Static Web App should exist. Changing this forces a new Static Web App to be created."
  type        = string

}

# OPTIONAL VARIABLES

variable "sku_tier" {
  description = "Specifies the SKU tier of the Static Web App. Possible values are 'Free' or 'Standard'. Defaults to 'Free'."
  type        = string
  default     = "Free"
}
variable "sku_size" {
  description = "Specifies the SKU size of the Static Web App. Possible values are 'Free' or 'Standard'. Defaults to 'Free'."
  type        = string
  default     = "Free"
}
variable "identity" {
  description = "An 'identity' block."
  type        = map(any)
  default     = null
}
#
# identity block structure:
#   type (string)           : (REQUIRED) The Type of Managed Identity assigned to this Static Site resource. Possible values are 'SystemAssigned', 'UserAssigned' and 'SystemAssigned, UserAssigned'.
#   identity_ids (list)     : A list of Managed Identity IDs which should be assigned to this Static Site resource.


variable "app_settings" {
  description = "A key-value pair of App Settings."
  type        = string
  default     = null
}
variable "tags" {
  description = "A mapping of tags to assign to the resource."
  type        = map(any)
  default     = null
}
