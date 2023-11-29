# REQUIRED VARIABLES

variable "name" {
  description = "(REQUIRED) The name which should be used for this Data Share Kusto Cluster Dataset. Changing this forces a new Data Share Kusto Cluster Dataset to be created."
  type        = string

}
variable "share_id" {
  description = "(REQUIRED) The resource ID of the Data Share where this Data Share Kusto Cluster Dataset should be created. Changing this forces a new Data Share Kusto Cluster Dataset to be created."
  type        = string

}
variable "kusto_cluster_id" {
  description = "(REQUIRED) The resource ID of the Kusto Cluster to be shared with the receiver. Changing this forces a new Data Share Kusto Cluster Dataset to be created."
  type        = string

}
