# REQUIRED VARIABLES

variable "name" {
  description = "(REQUIRED) The name which should be used for this Machine Learning Compute Instance. Changing this forces a new Machine Learning Compute Instance to be created."
  type        = string

}
variable "location" {
  description = "(REQUIRED) The Azure Region where the Machine Learning Compute Instance should exist. Changing this forces a new Machine Learning Compute Instance to be created."
  type        = string

}
variable "machine_learning_workspace_id" {
  description = "(REQUIRED) The ID of the Machine Learning Workspace. Changing this forces a new Machine Learning Compute Instance to be created."
  type        = string

}
variable "virtual_machine_size" {
  description = "(REQUIRED) The Virtual Machine Size. Changing this forces a new Machine Learning Compute Instance to be created."
  type        = string

}

# OPTIONAL VARIABLES

variable "authorization_type" {
  description = "The Compute Instance Authorization type. Possible values include: 'personal'. Changing this forces a new Machine Learning Compute Instance to be created."
  type        = string
  default     = null
}
variable "assign_to_user" {
  description = "A 'assign_to_user' block. A user explicitly assigned to a personal compute instance. Changing this forces a new Machine Learning Compute Instance to be created."
  type        = map(any)
  default     = null
}
#
# assign_to_user block structure:
#   object_id (string)            : User’s AAD Object Id.
#   tenant_id (string)            : User’s AAD Tenant Id.


variable "description" {
  description = "The description of the Machine Learning Compute Instance. Changing this forces a new Machine Learning Compute Instance to be created."
  type        = string
  default     = null
}
variable "identity" {
  description = "An 'identity' block. Changing this forces a new Machine Learning Compute Instance to be created."
  type        = map(any)
  default     = null
}
#
# identity block structure:
#   type (string)           : (REQUIRED) Specifies the type of Managed Service Identity that should be configured on this Machine Learning Compute Instance. Possible values are 'SystemAssigned', 'UserAssigned', 'SystemAssigned, UserAssigned' (to enable both). Changing this forces a new resource to be created.
#   identity_ids (list)     : Specifies a list of User Assigned Managed Identity IDs to be assigned to this Machine Learning Compute Instance. Changing this forces a new resource to be created.


variable "local_auth_enabled" {
  description = "Whether local authentication methods is enabled. Defaults to 'true'. Changing this forces a new Machine Learning Compute Instance to be created."
  type        = bool
  default     = true
}
variable "ssh" {
  description = "A 'ssh' block. Specifies policy and settings for SSH access. Changing this forces a new Machine Learning Compute Instance to be created."
  type        = map(any)
  default     = null
}
#
# ssh block structure:
#   public_key (string): (REQUIRED) Specifies the SSH rsa public key file as a string. Use 'ssh-keygen -t rsa -b 2048' to generate your SSH key pairs.


variable "subnet_resource_id" {
  description = "Virtual network subnet resource ID the compute nodes belong to. Changing this forces a new Machine Learning Compute Instance to be created."
  type        = string
  default     = null
}
variable "node_public_ip_enabled" {
  description = "Whether the compute instance will have a public ip. To set this to false a 'subnet_resource_id' needs to be set. Defaults to 'true'. Changing this forces a new Machine Learning Compute Cluster to be created."
  type        = bool
  default     = true
}
variable "tags" {
  description = "A mapping of tags which should be assigned to the Machine Learning Compute Instance. Changing this forces a new Machine Learning Compute Instance to be created."
  type        = map(any)
  default     = null
}
