# REQUIRED VARIABLES

variable "name" {
  description = "(REQUIRED) The name which should be used for this Elastic Job Credential. Changing this forces a new Elastic Job Credential to be created."
  type        = string

}
variable "job_agent_id" {
  description = "(REQUIRED) The ID of the Elastic Job Agent. Changing this forces a new Elastic Job Credential to be created."
  type        = string

}
variable "username" {
  description = "(REQUIRED) The username part of the credential."
  type        = string

}
variable "password" {
  description = "(REQUIRED) The password part of the credential."
  type        = string

}
