# REQUIRED VARIABLES

variable "name" {
  description = "(REQUIRED) The name which should be used for this Palo Alto Local Rulestack FQDN List."
  type        = string

}
variable "rulestack_id" {
  description = "(REQUIRED) The ID of the TODO. Changing this forces a new Palo Alto Local Rulestack FQDN List to be created."
  type        = string

}
variable "fully_qualified_domain_names" {
  description = "(REQUIRED) Specifies a list of Fully Qualified Domain Names."
  type        = string

}

# OPTIONAL VARIABLES

variable "audit_comment" {
  description = "The comment for Audit purposes."
  type        = string
  default     = null
}
variable "description" {
  description = "The description for the FQDN List."
  type        = string
  default     = null
}
