# REQUIRED VARIABLES

variable "name" {
  description = "(REQUIRED) The name which should be used for this Data Share Kusto Database Dataset. Changing this forces a new Data Share Kusto Database Dataset to be created."
  type        = string

}
variable "share_id" {
  description = "(REQUIRED) The resource ID of the Data Share where this Data Share Kusto Database Dataset should be created. Changing this forces a new Data Share Kusto Database Dataset to be created."
  type        = string

}
variable "kusto_database_id" {
  description = "(REQUIRED) The resource ID of the Kusto Cluster Database to be shared with the receiver. Changing this forces a new Data Share Kusto Database Dataset to be created."
  type        = string

}
