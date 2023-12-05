# REQUIRED VARIABLES

variable "name" {
  description = "(REQUIRED) Specifies the name which should be used for this Application Insights Workbook Template. Changing this forces a new Application Insights Workbook Template to be created."
  type        = string

}
variable "resource_group_name" {
  description = "(REQUIRED) Specifies the name of the Resource Group where the Application Insights Workbook Template should exist. Changing this forces a new Application Insights Workbook Template to be created."
  type        = string

}
variable "galleries" {
  description = "(REQUIRED) A 'galleries' block."
  type        = map(any)
}
#
# galleries block structure:
#   name (string)            : (REQUIRED) Name of the workbook template in the gallery.
#   category (string)        : (REQUIRED) Category for the gallery.
#   order (string)           : Order of the template within the gallery. Defaults to '0'.
#   resource_type (string)   : Azure resource type supported by the gallery. Defaults to 'Azure Monitor'.
#   type (string)            : Type of workbook supported by the workbook template. Defaults to 'workbook'.


variable "location" {
  description = "(REQUIRED) Specifies the Azure Region where the Application Insights Workbook Template should exist. Changing this forces a new Application Insights Workbook Template to be created."
  type        = string

}
variable "template_data" {
  description = "(REQUIRED) Valid JSON object containing workbook template payload."
  type        = string

}

# OPTIONAL VARIABLES

variable "author" {
  description = "Information about the author of the workbook template."
  type        = string
  default     = null
}
variable "localized" {
  description = "Key value pairs of localized gallery. Each key is the locale code of languages supported by the Azure portal."
  type        = string
  default     = null
}
variable "priority" {
  description = "Priority of the template. Determines which template to open when a workbook gallery is opened in viewer mode. Defaults to '0'."
  type        = string
  default     = "0"
}
variable "tags" {
  description = "A mapping of tags which should be assigned to the Application Insights Workbook Template."
  type        = map(any)
  default     = null
}
