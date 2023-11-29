# REQUIRED VARIABLES

variable "name" {
  description = "(REQUIRED) Specifies the name which should be used for this Arc Kubernetes Cluster. Changing this forces a new Arc Kubernetes Cluster to be created."
  type        = string

}
variable "resource_group_name" {
  description = "(REQUIRED) Specifies the name of the Resource Group where the Arc Kubernetes Cluster should exist. Changing this forces a new Arc Kubernetes Cluster to be created."
  type        = string

}
variable "agent_public_key_certificate" {
  description = "(REQUIRED) Specifies the base64-encoded public certificate used by the agent to do the initial handshake to the backend services in Azure. Changing this forces a new Arc Kubernetes Cluster to be created."
  type        = string

}
variable "identity" {
  description = "(REQUIRED) An 'identity' block. Changing this forces a new Arc Kubernetes Cluster to be created."
  type        = map(any)
}
#
# identity block structure:
#   type (string)           : (REQUIRED) Specifies the type of Managed Service Identity assigned to this Arc Kubernetes Cluster. At this time the only possible value is 'SystemAssigned'. Changing this forces a new resource to be created.


variable "location" {
  description = "(REQUIRED) Specifies the Azure Region where the Arc Kubernetes Cluster should exist. Changing this forces a new Arc Kubernetes Cluster to be created."
  type        = string

}

# OPTIONAL VARIABLES

variable "tags" {
  description = "A mapping of tags which should be assigned to the Arc Kubernetes Cluster."
  type        = map(any)
  default     = null
}
