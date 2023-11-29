# REQUIRED VARIABLES

variable "name" {
  description = "(REQUIRED) The name which should be used for this Palo Alto Local Rulestack Prefix List."
  type        = string

}
variable "rulestack_id" {
  description = "(REQUIRED) The ID of the Local Rulestack on which to create this Prefix List. Changing this forces a new Palo Alto Local Rulestack Prefix List to be created."
  type        = string

}
variable "prefix_list" {
  description = "(REQUIRED) Specifies a list of Prefixes."
  type        = string

}

# OPTIONAL VARIABLES

variable "audit_comment" {
  description = "The comment for Audit purposes."
  type        = string
  default     = null
}
variable "description" {
  description = "The description for the Prefix List."
  type        = string
  default     = null
}
