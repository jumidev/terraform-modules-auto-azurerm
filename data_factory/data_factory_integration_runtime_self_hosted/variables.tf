# REQUIRED VARIABLES

variable "data_factory_id" {
  description = "(REQUIRED) The Data Factory ID in which to associate the Linked Service with. Changing this forces a new resource."
  type        = string

}
variable "name" {
  description = "(REQUIRED) The name which should be used for this Data Factory. Changing this forces a new Data Factory Self-hosted Integration Runtime to be created."
  type        = string

}

# OPTIONAL VARIABLES

variable "description" {
  description = "Integration runtime description."
  type        = string
  default     = null
}
variable "rbac_authorization" {
  description = "A 'rbac_authorization' block. Changing this forces a new resource to be created."
  type        = map(any)
  default     = null
}
#
# rbac_authorization block structure:
#   resource_id (string)              : (REQUIRED) The resource identifier of the integration runtime to be shared.


