# REQUIRED VARIABLES

variable "name" {
  description = "(REQUIRED) The name of the Azure Monitor Private Link Scope. Changing this forces a new resource to be created."
  type        = string

}
variable "resource_group_name" {
  description = "(REQUIRED) The name of the Resource Group where the Azure Monitor Private Link Scope should exist. Changing this forces a new resource to be created."
  type        = string

}

# OPTIONAL VARIABLES

variable "tags" {
  description = "A mapping of tags which should be assigned to the Azure Monitor Private Link Scope."
  type        = map(any)
  default     = null
}
