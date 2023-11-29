# REQUIRED VARIABLES

variable "name" {
  description = "(REQUIRED) Specifies the name of the Bot Channels Registration. Changing this forces a new resource to be created. Must be globally unique."
  type        = string

}
variable "resource_group_name" {
  description = "(REQUIRED) The name of the resource group in which to create the Bot Channels Registration. Changing this forces a new resource to be created."
  type        = string

}
variable "location" {
  description = "(REQUIRED) The supported Azure location where the resource exists. Changing this forces a new resource to be created."
  type        = string

}
variable "sku" {
  description = "(REQUIRED) The SKU of the Bot Channels Registration. Valid values include 'F0' or 'S1'. Changing this forces a new resource to be created."
  type        = string

}
variable "microsoft_app_id" {
  description = "(REQUIRED) The Microsoft Application ID for the Bot Channels Registration. Changing this forces a new resource to be created."
  type        = string

}

# OPTIONAL VARIABLES

variable "cmk_key_vault_url" {
  description = "The CMK Key Vault Key URL to encrypt the Bot Channels Registration with the Customer Managed Encryption Key."
  type        = string
  default     = null
}
variable "display_name" {
  description = "The name of the Bot Channels Registration will be displayed as. This defaults to 'name' if not specified."
  type        = string
  default     = "name"
}
variable "description" {
  description = "The description of the Bot Channels Registration."
  type        = string
  default     = null
}
variable "endpoint" {
  description = "The Bot Channels Registration endpoint."
  type        = string
  default     = null
}
variable "developer_app_insights_key" {
  description = "The Application Insights Key to associate with the Bot Channels Registration."
  type        = string
  default     = null
}
variable "developer_app_insights_api_key" {
  description = "The Application Insights API Key to associate with the Bot Channels Registration."
  type        = string
  default     = null
}
variable "developer_app_insights_application_id" {
  description = "The Application Insights Application ID to associate with the Bot Channels Registration."
  type        = string
  default     = null
}
variable "icon_url" {
  description = "The icon URL to visually identify the Bot Channels Registration."
  type        = string
  default     = null
}
variable "streaming_endpoint_enabled" {
  description = "Is the streaming endpoint enabled for the Bot Channels Registration. Defaults to 'false'."
  type        = bool
  default     = false
}
variable "isolated_network_enabled" {
  description = "Is the Bot Channels Registration in an isolated network?"
  type        = bool
  default     = null
}
variable "public_network_access_enabled" {
  description = "Is the Bot Channels Registration in an isolated network?"
  type        = bool
  default     = null
}
variable "tags" {
  description = "A mapping of tags to assign to the resource."
  type        = map(any)
  default     = null
}
