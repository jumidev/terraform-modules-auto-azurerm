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
#   type (string)           : (REQUIRED) Specifies the type of Managed Service Identity that should be configured on this Log Analytics Cluster. The only possible value is 'SystemAssigned'. Changing this forces a new resource to be created.



# OPTIONAL VARIABLES

variable "size_gb" {
  description = "The capacity of the Log Analytics Cluster is specified in GB/day. Possible values include '500', '1000', '2000' or '5000'. Defaults to '1000'."
  type        = string
  default     = "1000"
}
variable "tags" {
  description = "A mapping of tags which should be assigned to the Log Analytics Cluster."
  type        = map(any)
  default     = null
}
