# REQUIRED VARIABLES

variable "elastic_cloud_email_address" {
  description = "(REQUIRED) Specifies the Email Address which should be associated with this Elasticsearch account. Changing this forces a new Elasticsearch to be created."
  type        = string

}
variable "location" {
  description = "(REQUIRED) The Azure Region where the Elasticsearch resource should exist. Changing this forces a new Elasticsearch to be created."
  type        = string

}
variable "name" {
  description = "(REQUIRED) The name which should be used for this Elasticsearch resource. Changing this forces a new Elasticsearch to be created."
  type        = string

}
variable "resource_group_name" {
  description = "(REQUIRED) The name of the Resource Group where the Elasticsearch resource should exist. Changing this forces a new Elasticsearch to be created."
  type        = string

}
variable "sku_name" {
  description = "(REQUIRED) Specifies the name of the SKU for this Elasticsearch. Changing this forces a new Elasticsearch to be created."
  type        = string

}

# OPTIONAL VARIABLES

variable "logs" {
  description = "A 'logs' block."
  type        = map(any)
  default     = null
}
#
# logs block structure         :
#   filtering_tag (block)        : A list of 'filtering_tag' blocks.
#   send_activity_logs (bool)    : Specifies if the Azure Activity Logs should be sent to the Elasticsearch cluster. Defaults to 'false'.
#   send_azuread_logs (bool)     : Specifies if the AzureAD Logs should be sent to the Elasticsearch cluster. Defaults to 'false'.
#   send_subscription_logs (bool): Specifies if the Azure Subscription Logs should be sent to the Elasticsearch cluster. Defaults to 'false'.
#
# filtering_tag block structure:
#   action (string)              : (REQUIRED) Specifies the type of action which should be taken when the Tag matches the 'name' and 'value'. Possible values are 'Exclude' and 'Include'.
#   name (string)                : (REQUIRED) Specifies the name (key) of the Tag which should be filtered.
#   value (string)               : (REQUIRED) Specifies the value of the Tag which should be filtered.


variable "monitoring_enabled" {
  description = "Specifies if the Elasticsearch should have monitoring configured? Defaults to 'true'. Changing this forces a new Elasticsearch to be created."
  type        = bool
  default     = true
}
variable "tags" {
  description = "A mapping of tags which should be assigned to the Elasticsearch resource."
  type        = map(any)
  default     = null
}
