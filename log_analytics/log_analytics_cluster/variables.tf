# REQUIRED VARIABLES

variable "name" {
  description = "(REQUIRED) The name which should be used for this Log Analytics Cluster. Changing this forces a new Log Analytics Cluster to be created."
  type        = string

}
variable "resource_group_name" {
  description = "(REQUIRED) The name of the Resource Group where the Log Analytics Cluster should exist. Changing this forces a new Log Analytics Cluster to be created."
  type        = string

}
variable "location" {
  description = "(REQUIRED) The Azure Region where the Log Analytics Cluster should exist. Changing this forces a new Log Analytics Cluster to be created."
  type        = string

}
variable "identity" {
  description = "(REQUIRED) An 'identity' block. Changing this forces a new Log Analytics Cluster to be created."
  type        = map(any)
}
#
# identity block structure:
#   type (string)           : (REQUIRED) Specifies the type of Managed Service Identity that should be configured on this Log Analytics Cluster. Possible values are 'SystemAssigned' and  'UserAssigned'. Changing this forces a new resource to be created. ~> **NOTE:** The assigned 'principal_id' and 'tenant_id' can be retrieved after the identity 'type' has been set to 'SystemAssigned' and the Log Analytics Cluster has been created. More details are available below.
#   identity_ids (list)     : A list of User Assigned Managed Identity IDs to be assigned to this Windows Web App Slot. ~> **NOTE:** This is required when 'type' is set to 'UserAssigned'.



# OPTIONAL VARIABLES

variable "size_gb" {
  description = "The capacity of the Log Analytics Cluster is specified in GB/day. Possible values include '500', '1000', '2000' or '5000'. Defaults to '1000'. ~> **NOTE:** The cluster capacity must start at 500 GB and can be set to 1000, 2000 or 5000 GB/day. For more information on cluster costs, see [Dedicated clusters](https://docs.microsoft.com/en-us/azure/azure-monitor/logs/cost-logs#dedicated-clusters). In v3.x the default value is '1000' GB, in v4.0 of the provider this will default to '500' GB."
  type        = number
  default     = 1000
}
variable "tags" {
  description = "A mapping of tags which should be assigned to the Log Analytics Cluster."
  type        = map(any)
  default     = null
}
