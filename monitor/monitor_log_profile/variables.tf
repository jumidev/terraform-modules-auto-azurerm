# REQUIRED VARIABLES

variable "name" {
  description = "(REQUIRED) The name of the Log Profile. Changing this forces a new resource to be created."
  type        = string

}
variable "categories" {
  description = "(REQUIRED) List of categories of the logs."
  type        = string

}
variable "locations" {
  description = "(REQUIRED) List of regions for which Activity Log events are stored or streamed."
  type        = string

}
variable "retention_policy" {
  description = "(REQUIRED) A 'retention_policy' block. A retention policy for how long Activity Logs are retained in the storage account."
  type        = map(any)
}
#
# retention_policy block structure:
#   enabled (bool)                  : (REQUIRED) A boolean value to indicate whether the retention policy is enabled.
#   days (int)                      : The number of days for the retention policy. Defaults to '0'.



# OPTIONAL VARIABLES

variable "storage_account_id" {
  description = "The resource ID of the storage account in which the Activity Log is stored. At least one of 'storage_account_id' or 'servicebus_rule_id' must be set."
  type        = string
  default     = null
}
variable "servicebus_rule_id" {
  description = "The service bus (or event hub) rule ID of the service bus (or event hub) namespace in which the Activity Log is streamed to. At least one of 'storage_account_id' or 'servicebus_rule_id' must be set."
  type        = string
  default     = null
}
