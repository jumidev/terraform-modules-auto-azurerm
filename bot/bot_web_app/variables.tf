# REQUIRED VARIABLES

variable "name" {
  description = "(REQUIRED) Specifies the name of the Web App Bot. Changing this forces a new resource to be created. Must be globally unique."
  type        = string

}
variable "resource_group_name" {
  description = "(REQUIRED) The name of the resource group in which to create the Web App Bot. Changing this forces a new resource to be created."
  type        = string

}
variable "location" {
  description = "(REQUIRED) The supported Azure location where the resource exists. Changing this forces a new resource to be created."
  type        = string

}
variable "sku" {
  description = "(REQUIRED) The SKU of the Web App Bot. Valid values include 'F0' or 'S1'. Changing this forces a new resource to be created."
  type        = string

}
variable "microsoft_app_id" {
  description = "(REQUIRED) The Microsoft Application ID for the Web App Bot. Changing this forces a new resource to be created."
  type        = string

}

# OPTIONAL VARIABLES

variable "display_name" {
  description = "The name of the Web App Bot will be displayed as. This defaults to 'name' if not specified."
  type        = string
  default     = "name"
}
variable "endpoint" {
  description = "The Web App Bot endpoint."
  type        = string
  default     = null
}
variable "developer_app_insights_key" {
  description = "The Application Insights Key to associate with the Web App Bot."
  type        = string
  default     = null
}
variable "developer_app_insights_api_key" {
  description = "The Application Insights API Key to associate with the Web App Bot."
  type        = string
  default     = null
}
variable "developer_app_insights_application_id" {
  description = "The Application Insights Application ID to associate with the Web App Bot."
  type        = string
  default     = null
}
variable "luis_app_ids" {
  description = "A list of LUIS App IDs to associate with the Web App Bot."
  type        = list(any)
  default     = []
}
variable "luis_key" {
  description = "The LUIS key to associate with the Web App Bot."
  type        = string
  default     = null
}
variable "tags" {
  description = "A mapping of tags to assign to the resource."
  type        = map(any)
  default     = null
}
