# REQUIRED VARIABLES

variable "name" {
  description = "(REQUIRED) The name which should be used for this Machine Learning Compute Cluster. Changing this forces a new Machine Learning Compute Cluster to be created."
  type        = string

}
variable "machine_learning_workspace_id" {
  description = "(REQUIRED) The ID of the Machine Learning Workspace. Changing this forces a new Machine Learning Compute Cluster to be created."
  type        = string

}
variable "location" {
  description = "(REQUIRED) The Azure Region where the Machine Learning Compute Cluster should exist. Changing this forces a new Machine Learning Compute Cluster to be created."
  type        = string

}
variable "vm_priority" {
  description = "(REQUIRED) The priority of the VM. Changing this forces a new Machine Learning Compute Cluster to be created. Accepted values are 'Dedicated' and 'LowPriority'."
  type        = string

}
variable "vm_size" {
  description = "(REQUIRED) The size of the VM. Changing this forces a new Machine Learning Compute Cluster to be created."
  type        = string

}
variable "scale_settings" {
  description = "(REQUIRED) A 'scale_settings' block. Changing this forces a new Machine Learning Compute Cluster to be created."
  type        = map(any)
}
#
# scale_settings block structure               :
#   max_node_count (number)                      : (REQUIRED) Maximum node count. Changing this forces a new Machine Learning Compute Cluster to be created.
#   min_node_count (number)                      : (REQUIRED) Minimal node count. Changing this forces a new Machine Learning Compute Cluster to be created.
#   scale_down_nodes_after_idle_duration (string): (REQUIRED) Node Idle Time Before Scale Down: defines the time until the compute is shutdown when it has gone into Idle state. Is defined according to W3C XML schema standard for duration. Changing this forces a new Machine Learning Compute Cluster to be created.



# OPTIONAL VARIABLES

variable "ssh" {
  description = "Credentials for an administrator user account that will be created on each compute node. A 'ssh' block. Changing this forces a new Machine Learning Compute Cluster to be created."
  type        = map(any)
  default     = null
}
#
# ssh block structure    :
#   admin_username (string): (REQUIRED) Name of the administrator user account which can be used to SSH to nodes. Changing this forces a new Machine Learning Compute Cluster to be created.
#   admin_password (string): Password of the administrator user account. Changing this forces a new Machine Learning Compute Cluster to be created.
#   key_value (string)     : SSH public key of the administrator user account. Changing this forces a new Machine Learning Compute Cluster to be created.


variable "description" {
  description = "The description of the Machine Learning compute. Changing this forces a new Machine Learning Compute Cluster to be created."
  type        = string
  default     = null
}
variable "identity" {
  description = "An 'identity' block. Changing this forces a new Machine Learning Compute Cluster to be created."
  type        = map(any)
  default     = null
}
#
# identity block structure:
#   type (string)           : (REQUIRED) Specifies the type of Managed Service Identity that should be configured on this Machine Learning Compute Cluster. Possible values are 'SystemAssigned', 'UserAssigned', 'SystemAssigned, UserAssigned' (to enable both). Changing this forces a new resource to be created.
#   identity_ids (list)     : Specifies a list of User Assigned Managed Identity IDs to be assigned to this Machine Learning Compute Cluster. Changing this forces a new resource to be created.


variable "local_auth_enabled" {
  description = "Whether local authentication methods is enabled. Defaults to 'true'. Changing this forces a new Machine Learning Compute Cluster to be created."
  type        = bool
  default     = true
}
variable "node_public_ip_enabled" {
  description = "Whether the compute cluster will have a public ip. To set this to false a 'subnet_resource_id' needs to be set. Defaults to 'true'. Changing this forces a new Machine Learning Compute Cluster to be created."
  type        = bool
  default     = true
}
variable "ssh_public_access_enabled" {
  description = "A boolean value indicating whether enable the public SSH port. Changing this forces a new Machine Learning Compute Cluster to be created."
  type        = bool
  default     = null
}
variable "subnet_resource_id" {
  description = "The ID of the Subnet that the Compute Cluster should reside in. Changing this forces a new Machine Learning Compute Cluster to be created."
  type        = string
  default     = null
}
variable "tags" {
  description = "A mapping of tags which should be assigned to the Machine Learning Compute Cluster. Changing this forces a new Machine Learning Compute Cluster to be created."
  type        = map(any)
  default     = null
}
