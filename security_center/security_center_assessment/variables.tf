# REQUIRED VARIABLES

variable "assessment_policy_id" {
  description = "(REQUIRED) The ID of the security Assessment policy to apply to this resource. Changing this forces a new security Assessment to be created."
  type        = string

}
variable "target_resource_id" {
  description = "(REQUIRED) The ID of the target resource. Changing this forces a new security Assessment to be created."
  type        = string

}
variable "status" {
  description = "(REQUIRED) A 'status' block."
  type        = map(any)
}
#
# status block structure:
#   code (string)         : (REQUIRED) Specifies the programmatic code of the assessment status. Possible values are 'Healthy', 'Unhealthy' and 'NotApplicable'.
#   cause (string)        : Specifies the cause of the assessment status.
#   description (string)  : Specifies the human readable description of the assessment status.



# OPTIONAL VARIABLES

variable "additional_data" {
  description = "A map of additional data to associate with the assessment."
  type        = string
  default     = null
}
