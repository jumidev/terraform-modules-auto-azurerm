# REQUIRED VARIABLES

variable "name" {
  description = "(REQUIRED) Specifies the name which should be used for this Network Managers. Changing this forces a new Network Managers to be created."
  type        = string

}
variable "resource_group_name" {
  description = "(REQUIRED) Specifies the name of the Resource Group where the Network Managers should exist. Changing this forces a new Network Managers to be created."
  type        = string

}
variable "location" {
  description = "(REQUIRED) Specifies the Azure Region where the Network Managers should exist. Changing this forces a new resource to be created."
  type        = string

}
variable "scope" {
  description = "(REQUIRED) A 'scope' block."
  type        = map(any)
}
#
# scope block structure      :
#   management_group_ids (list): A list of management group IDs.
#   subscription_ids (list)    : A list of subscription IDs.


variable "scope_accesses" {
  description = "(REQUIRED) A list of configuration deployment type. Possible values are 'Connectivity' and 'SecurityAdmin', corresponds to if Connectivity Configuration and Security Admin Configuration is allowed for the Network Manager."
  type        = list(any)

}

# OPTIONAL VARIABLES

variable "description" {
  description = "A description of the network manager."
  type        = string
  default     = null
}
variable "tags" {
  description = "A mapping of tags which should be assigned to the Network Managers."
  type        = map(any)
  default     = null
}
