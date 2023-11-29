# REQUIRED VARIABLES

variable "name" {
  description = "(REQUIRED) The name which should be used for this Kusto Script. Changing this forces a new Kusto Script to be created."
  type        = string

}
variable "database_id" {
  description = "(REQUIRED) The ID of the Kusto Database. Changing this forces a new Kusto Script to be created."
  type        = string

}

# OPTIONAL VARIABLES

variable "continue_on_errors_enabled" {
  description = "Flag that indicates whether to continue if one of the command fails."
  type        = bool
  default     = null
}
variable "force_an_update_when_value_changed" {
  description = "A unique string. If changed the script will be applied again."
  type        = string
  default     = null
}
variable "script_content" {
  description = "The script content. This property should be used when the script is provide inline and not through file in a SA. Must not be used together with 'url' and 'sas_token' properties. Changing this forces a new resource to be created."
  type        = string
  default     = null
}
variable "sas_token" {
  description = "The SAS token used to access the script. Must be provided when using scriptUrl property. Changing this forces a new resource to be created."
  type        = string
  default     = null
}
variable "url" {
  description = "The url to the KQL script blob file. Must not be used together with scriptContent property. Please reference [this documentation](https://docs.microsoft.com/azure/data-explorer/database-script) that describes the commands that are allowed in the script."
  type        = string
  default     = null
}
