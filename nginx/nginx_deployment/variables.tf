# REQUIRED VARIABLES

variable "resource_group_name" {
  description = "(REQUIRED) The name of the Resource Group where the Nginx Deployment should exist. Changing this forces a new Nginx Deployment to be created."
  type        = string

}
variable "name" {
  description = "(REQUIRED) The name which should be used for this Nginx Deployment. Changing this forces a new Nginx Deployment to be created."
  type        = string

}
variable "location" {
  description = "(REQUIRED) The Azure Region where the Nginx Deployment should exist. Changing this forces a new Nginx Deployment to be created."
  type        = string

}
variable "sku" {
  description = "(REQUIRED) Specify the Name of Nginx deployment SKU. The possible value are 'publicpreview_Monthly_gmz7xq9ge3py' and 'standard_Monthly'."
  type        = string

}

# OPTIONAL VARIABLES

variable "managed_resource_group" {
  description = "Specify the managed resource group to deploy VNet injection related network resources. Changing this forces a new Nginx Deployment to be created."
  type        = string
  default     = null
}
variable "capacity" {
  description = "Specify the number of NGINX capacity units for this NGINX deployment. Defaults to '20'."
  type        = int
  default     = 20
}
variable "diagnose_support_enabled" {
  description = "Should the diagnosis support be enabled?"
  type        = bool
  default     = null
}
variable "email" {
  description = "Specify the preferred support contact email address of the user used for sending alerts and notification."
  type        = string
  default     = null
}
variable "identity" {
  description = "An 'identity' block."
  type        = map(any)
  default     = null
}
#
# identity block structure:
#   type (string)           : (REQUIRED) Specifies the identity type of the Nginx Deployment. Possible values is 'UserAssigned' where you can specify the Service Principal IDs in the 'identity_ids' field.
#   identity_ids (string)   : Specifies a list of user managed identity ids to be assigned. Required if 'type' is 'UserAssigned'.


variable "frontend_private" {
  description = "One or more 'frontend_private' blocks. Changing this forces a new Nginx Deployment to be created."
  type        = map(map(any))
  default     = null
}
#
# frontend_private block structure:
#   allocation_method (string)      : (REQUIRED) Specify the methos of allocating the private IP. Possible values are 'Static' and 'Dynamic'.
#   ip_address (string)             : (REQUIRED) Specify the IP Address of this private IP.
#   subnet_id (string)              : (REQUIRED) Specify the SubNet Resource ID to this Nginx Deployment.


variable "frontend_public" {
  description = "A 'frontend_public' block. Changing this forces a new Nginx Deployment to be created."
  type        = map(any)
  default     = null
}
#
# frontend_public block structure:
#   ip_address (string)            : Specifies a list of Public IP Resouce ID to this Nginx Deployment.


variable "logging_storage_account" {
  description = "One or more 'logging_storage_account' blocks."
  type        = map(map(any))
  default     = null
}
#
# logging_storage_account block structure:
#   container_name (string)                : Specify the container name of Stoage Account for logging.
#   name (string)                          : The account name of the StorageAccount for Nginx Logging.


variable "network_interface" {
  description = "One or more 'network_interface' blocks. Changing this forces a new Nginx Deployment to be created."
  type        = map(map(any))
  default     = null
}
#
# network_interface block structure:
#   subnet_id (string)               : (REQUIRED) Specify The SubNet Resource ID to this Nginx Deployment.


variable "tags" {
  description = "A mapping of tags which should be assigned to the Nginx Deployment."
  type        = map(any)
  default     = null
}
