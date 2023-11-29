# REQUIRED VARIABLES

variable "name" {
  description = "(REQUIRED) The name which should be used for this Synapse Private Link Hub. Changing this forces a new Synapse Private Link Hub to be created."
  type        = string

}
variable "resource_group_name" {
  description = "(REQUIRED) The name of the resource group in which to create the Synapse Private Link Hub. Changing this forces a new resource to be created."
  type        = string

}
variable "location" {
  description = "(REQUIRED) Specifies the Azure location where the Synapse Private Link Hub exists. Changing this forces a new resource to be created."
  type        = string

}

# OPTIONAL VARIABLES

variable "tags" {
  description = "A mapping of tags which should be assigned to the Synapse Private Link Hub."
  type        = map(any)
  default     = null
}
