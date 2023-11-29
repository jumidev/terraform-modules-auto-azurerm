# REQUIRED VARIABLES

variable "name" {
  description = "(REQUIRED) Specifies the name which should be used for this Managed Private Endpoint. Changing this forces a new resource to be created."
  type        = string

}
variable "synapse_workspace_id" {
  description = "(REQUIRED) The ID of the Synapse Workspace on which to create the Managed Private Endpoint. Changing this forces a new resource to be created."
  type        = string

}
variable "target_resource_id" {
  description = "(REQUIRED) The ID of the Private Link Enabled Remote Resource which this Synapse Private Endpoint should be connected to. Changing this forces a new resource to be created."
  type        = string

}
variable "subresource_name" {
  description = "(REQUIRED) Specifies the sub resource name which the Synapse Private Endpoint is able to connect to. Changing this forces a new resource to be created."
  type        = string

}
