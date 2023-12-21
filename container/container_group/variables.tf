# REQUIRED VARIABLES

variable "name" {
  description = "(REQUIRED) Specifies the name of the Container Group. Changing this forces a new resource to be created."
  type        = string

}
variable "resource_group_name" {
  description = "(REQUIRED) The name of the resource group in which to create the Container Group. Changing this forces a new resource to be created."
  type        = string

}
variable "location" {
  description = "(REQUIRED) Specifies the supported Azure location where the resource exists. Changing this forces a new resource to be created."
  type        = string

}
variable "container" {
  description = "(REQUIRED) The definition of a container that is part of the group as documented in the 'container' block below. Changing this forces a new resource to be created."
  type        = string

}
variable "os_type" {
  description = "(REQUIRED) The OS for the container group. Allowed values are 'Linux' and 'Windows'. Changing this forces a new resource to be created."
  type        = string

}

# OPTIONAL VARIABLES

variable "sku" {
  description = "Specifies the sku of the Container Group. Possible values are 'Confidential', 'Dedicated' and 'Standard'. Defaults to 'Standard'. Changing this forces a new resource to be created."
  type        = string
  default     = "Standard"
}
variable "identity" {
  description = "An 'identity' block."
  type        = map(any)
  default     = null
}
#
# identity block structure:
#   type (string)           : (REQUIRED) Specifies the type of Managed Service Identity that should be configured on this Container Group. Possible values are 'SystemAssigned', 'UserAssigned', 'SystemAssigned, UserAssigned' (to enable both).
#   identity_ids (list)     : Specifies a list of User Assigned Managed Identity IDs to be assigned to this Container Group.


variable "init_container" {
  description = "The definition of an init container that is part of the group as documented in the 'init_container' block below. Changing this forces a new resource to be created."
  type        = string
  default     = null
}
variable "dns_config" {
  description = "A 'dns_config' block. Changing this forces a new resource to be created."
  type        = map(any)
  default     = null
}
#
# dns_config block structure:
#   nameservers (list)        : (REQUIRED) A list of nameservers the containers will search out to resolve requests. Changing this forces a new resource to be created.
#   search_domains (list)     : A list of search domains that DNS requests will search along. Changing this forces a new resource to be created.
#   options (list)            : A list of [resolver configuration options](https://man7.org/linux/man-pages/man5/resolv.conf.5.html). Changing this forces a new resource to be created.


variable "diagnostics" {
  description = "A 'diagnostics' block. Changing this forces a new resource to be created."
  type        = map(any)
  default     = null
}
#
# diagnostics block structure:
#   log_analytics (block)      : (REQUIRED) A 'log_analytics' block. Changing this forces a new resource to be created.
#
# log_analytics block structure:
#   log_type (string)            : The log type which should be used. Possible values are 'ContainerInsights' and 'ContainerInstanceLogs'. Changing this forces a new resource to be created.
#   workspace_id (string)        : (REQUIRED) The Workspace ID of the Log Analytics Workspace. Changing this forces a new resource to be created.
#   workspace_key (string)       : (REQUIRED) The Workspace Key of the Log Analytics Workspace. Changing this forces a new resource to be created.
#   metadata (string)            : Any metadata required for Log Analytics. Changing this forces a new resource to be created.


variable "dns_name_label" {
  description = "The DNS label/name for the container group's IP. Changing this forces a new resource to be created."
  type        = string
  default     = null
}
variable "dns_name_label_reuse_policy" {
  description = "The value representing the security enum. 'Noreuse', 'ResourceGroupReuse', 'SubscriptionReuse', 'TenantReuse' or 'Unsecure'. Defaults to 'Unsecure'."
  type        = string
  default     = "Unsecure"
}
variable "exposed_port" {
  description = "Zero or more 'exposed_port' blocks. Changing this forces a new resource to be created."
  type        = map(map(any))
  default     = null
}
#
# exposed_port block structure:
#   port (string)               : The port number the container will expose. Changing this forces a new resource to be created.
#   protocol (string)           : The network protocol associated with port. Possible values are 'TCP' & 'UDP'. Changing this forces a new resource to be created. Defaults to 'TCP'.


variable "ip_address_type" {
  description = "Specifies the IP address type of the container. 'Public', 'Private' or 'None'. Changing this forces a new resource to be created. If set to 'Private', 'subnet_ids' also needs to be set. Defaults to 'Public'."
  type        = string
  default     = "Public"
}
variable "key_vault_key_id" {
  description = "The Key Vault key URI for CMK encryption. Changing this forces a new resource to be created."
  type        = string
  default     = null
}
variable "key_vault_user_assigned_identity_id" {
  description = "The user assigned identity that has access to the Key Vault Key. If not specified, the RP principal named 'Azure Container Instance Service' will be used instead. Make sure the identity has the proper 'key_permissions' set, at least with 'Get', 'UnwrapKey', 'WrapKey' and 'GetRotationPolicy'."
  type        = string
  default     = null
}
variable "subnet_ids" {
  description = "The subnet resource IDs for a container group. Changing this forces a new resource to be created."
  type        = string
  default     = null
}
variable "image_registry_credential" {
  description = "An 'image_registry_credential' block. Changing this forces a new resource to be created."
  type        = map(any)
  default     = null
}
#
# image_registry_credential block structure:
#   user_assigned_identity_id (string)       : The identity ID for the private registry. Changing this forces a new resource to be created.
#   username (string)                        : The username with which to connect to the registry. Changing this forces a new resource to be created.
#   password (string)                        : The password with which to connect to the registry. Changing this forces a new resource to be created.
#   server (string)                          : (REQUIRED) The address to use to connect to the registry without protocol ('https'/'http'). For example: 'myacr.acr.io'. Changing this forces a new resource to be created.


variable "restart_policy" {
  description = "Restart policy for the container group. Allowed values are 'Always', 'Never', 'OnFailure'. Defaults to 'Always'. Changing this forces a new resource to be created."
  type        = string
  default     = "Always"
}
variable "zones" {
  description = "A list of Availability Zones in which this Container Group is located. Changing this forces a new resource to be created."
  type        = list(any)
  default     = []
}
variable "tags" {
  description = "A mapping of tags to assign to the resource."
  type        = map(any)
  default     = null
}
