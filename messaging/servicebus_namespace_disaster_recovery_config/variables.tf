# REQUIRED VARIABLES

variable "name" {
  description = "(REQUIRED) Specifies the name of the Disaster Recovery Config. This is the alias DNS name that will be created. Changing this forces a new resource to be created."
  type        = string

}
variable "primary_namespace_id" {
  description = "(REQUIRED) The ID of the primary Service Bus Namespace to replicate. Changing this forces a new resource to be created."
  type        = string

}
variable "partner_namespace_id" {
  description = "(REQUIRED) The ID of the Service Bus Namespace to replicate to."
  type        = string

}

# OPTIONAL VARIABLES

variable "alias_authorization_rule_id" {
  description = "The Shared access policies used to access the connection string for the alias."
  type        = string
  default     = null
}
