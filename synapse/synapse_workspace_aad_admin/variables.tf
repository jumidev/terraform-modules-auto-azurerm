# REQUIRED VARIABLES

variable "synapse_workspace_id" {
  description = "(REQUIRED) The ID of the Synapse Workspace where the Azure AD Administrator should be configured."
  type        = string

}
variable "login" {
  description = "(REQUIRED) The login name of the Azure AD Administrator of this Synapse Workspace."
  type        = string

}
variable "object_id" {
  description = "(REQUIRED) The object id of the Azure AD Administrator of this Synapse Workspace."
  type        = string

}
variable "tenant_id" {
  description = "(REQUIRED) The tenant id of the Azure AD Administrator of this Synapse Workspace."
  type        = string

}
