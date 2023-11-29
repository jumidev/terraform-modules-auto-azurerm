# REQUIRED VARIABLES

variable "name" {
  description = "(REQUIRED) The name which should be used for this Azure Bot Service. Changing this forces a new resource to be created."
  type        = string

}
variable "resource_group_name" {
  description = "(REQUIRED) The name of the Resource Group where the Azure Bot Service should exist. Changing this forces a new resource to be created."
  type        = string

}
variable "location" {
  description = "(REQUIRED) The supported Azure location where the Azure Bot Service should exist. Changing this forces a new resource to be created."
  type        = string

}
variable "microsoft_app_id" {
  description = "(REQUIRED) The Microsoft Application ID for the Azure Bot Service. Changing this forces a new resource to be created."
  type        = string

}
variable "sku" {
  description = "(REQUIRED) The SKU of the Azure Bot Service. Accepted values are 'F0' or 'S1'. Changing this forces a new resource to be created."
  type        = string

}

# OPTIONAL VARIABLES

variable "developer_app_insights_api_key" {
  description = "The Application Insights API Key to associate with this Azure Bot Service."
  type        = string
  default     = null
}
variable "developer_app_insights_application_id" {
  description = "The resource ID of the Application Insights instance to associate with this Azure Bot Service."
  type        = string
  default     = null
}
variable "developer_app_insights_key" {
  description = "The Application Insight Key to associate with this Azure Bot Service."
  type        = string
  default     = null
}
variable "display_name" {
  description = "The name that the Azure Bot Service will be displayed as. This defaults to the value set for 'name' if not specified."
  type        = string
  default     = "name"
}
variable "endpoint" {
  description = "The Azure Bot Service endpoint."
  type        = string
  default     = null
}
variable "icon_url" {
  description = "The Icon Url of the Azure Bot Service. Defaults to 'https://docs.botframework.com/static/devportal/client/images/bot-framework-default.png'."
  type        = string
  default     = "https://docs.botframework.com/static/devportal/client/images/bot-framework-default.png"
}
variable "microsoft_app_msi_id" {
  description = "The ID of the Microsoft App Managed Identity for this Azure Bot Service. Changing this forces a new resource to be created."
  type        = string
  default     = null
}
variable "microsoft_app_tenant_id" {
  description = "The Tenant ID of the Microsoft App for this Azure Bot Service. Changing this forces a new resource to be created."
  type        = string
  default     = null
}
variable "microsoft_app_type" {
  description = "The Microsoft App Type for this Azure Bot Service. Possible values are 'MultiTenant', 'SingleTenant' and 'UserAssignedMSI'. Changing this forces a new resource to be created."
  type        = string
  default     = null
}
variable "local_authentication_enabled" {
  description = "Is local authentication enabled? Defaults to 'true'."
  type        = bool
  default     = true
}
variable "luis_app_ids" {
  description = "A list of LUIS App IDs to associate with this Azure Bot Service."
  type        = list(any)
  default     = []
}
variable "luis_key" {
  description = "The LUIS key to associate with this Azure Bot Service."
  type        = string
  default     = null
}
variable "streaming_endpoint_enabled" {
  description = "Is the streaming endpoint enabled for this Azure Bot Service. Defaults to 'false'."
  type        = bool
  default     = false
}
variable "tags" {
  description = "A mapping of tags which should be assigned to this Azure Bot Service."
  type        = map(any)
  default     = null
}
