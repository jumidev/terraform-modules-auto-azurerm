# REQUIRED VARIABLES

variable "name" {
  description = "(REQUIRED) Specifies the name of the Container Registry. Only Alphanumeric characters allowed. Changing this forces a new resource to be created."
  type        = string

}
variable "resource_group_name" {
  description = "(REQUIRED) The name of the resource group in which to create the Container Registry. Changing this forces a new resource to be created."
  type        = string

}
variable "location" {
  description = "(REQUIRED) Specifies the supported Azure location where the resource exists. Changing this forces a new resource to be created."
  type        = string

}
variable "sku" {
  description = "(REQUIRED) The SKU name of the container registry. Possible values are 'Basic', 'Standard' and 'Premium'."
  type        = string

}

# OPTIONAL VARIABLES

variable "admin_enabled" {
  description = "Specifies whether the admin user is enabled. Defaults to 'false'."
  type        = bool
  default     = false
}
variable "tags" {
  description = "A mapping of tags to assign to the resource."
  type        = map(any)
  default     = null
}
variable "georeplications" {
  description = "A 'georeplications' block."
  type        = map(any)
  default     = null
}
#
# georeplications block structure :
#   location (string)               : (REQUIRED) A location where the container registry should be geo-replicated.
#   regional_endpoint_enabled (bool): Whether regional endpoint is enabled for this Container Registry?
#   zone_redundancy_enabled (bool)  : Whether zone redundancy is enabled for this replication location? Defaults to 'false'.
#   tags (map)                      : A mapping of tags to assign to this replication location.


variable "network_rule_set" {
  description = "A 'network_rule_set' block."
  type        = map(any)
  default     = null
}
#
# network_rule_set block structure:
#   default_action (string)         : The behaviour for requests matching no rules. Either 'Allow' or 'Deny'. Defaults to 'Allow'
#   ip_rule (block)                 : One or more 'ip_rule' blocks.
#   virtual_network (block)         : One or more 'virtual_network' blocks.
#
# ip_rule block structure:
#   action (string)        : (REQUIRED) The behaviour for requests matching this rule. At this time the only supported value is 'Allow'
#   ip_range (string)      : (REQUIRED) The CIDR block from which requests will match the rule.
#
# virtual_network block structure:
#   action (string)                : (REQUIRED) The behaviour for requests matching this rule. At this time the only supported value is 'Allow'
#   subnet_id (string)             : (REQUIRED) The subnet id from which requests will match the rule.


variable "public_network_access_enabled" {
  description = "Whether public network access is allowed for the container registry. Defaults to 'true'."
  type        = bool
  default     = true
}
variable "quarantine_policy_enabled" {
  description = "Boolean value that indicates whether quarantine policy is enabled."
  type        = bool
  default     = null
}
variable "retention_policy" {
  description = "A 'retention_policy' block."
  type        = map(any)
  default     = null
}
#
# retention_policy block structure:
#   days (int)                      : The number of days to retain an untagged manifest after which it gets purged. Default is '7'.
#   enabled (bool)                  : Boolean value that indicates whether the policy is enabled.


variable "trust_policy" {
  description = "A 'trust_policy' block."
  type        = map(any)
  default     = null
}
#
# trust_policy block structure:
#   enabled (bool)              : Boolean value that indicates whether the policy is enabled.


variable "zone_redundancy_enabled" {
  description = "Whether zone redundancy is enabled for this Container Registry? Changing this forces a new resource to be created. Defaults to 'false'."
  type        = bool
  default     = false
}
variable "export_policy_enabled" {
  description = "Boolean value that indicates whether export policy is enabled. Defaults to 'true'. In order to set it to 'false', make sure the 'public_network_access_enabled' is also set to 'false'."
  type        = bool
  default     = true
}
variable "identity" {
  description = "An 'identity' block."
  type        = map(any)
  default     = null
}
#
# identity block structure:
#   type (string)           : (REQUIRED) Specifies the type of Managed Service Identity that should be configured on this Container Registry. Possible values are 'SystemAssigned', 'UserAssigned', 'SystemAssigned, UserAssigned' (to enable both).
#   identity_ids (string)   : Specifies a list of User Assigned Managed Identity IDs to be assigned to this Container Registry.


variable "encryption" {
  description = "An 'encryption' block."
  type        = map(any)
  default     = null
}
#
# encryption block structure :
#   enabled (bool)             : Boolean value that indicates whether encryption is enabled.
#   key_vault_key_id (string)  : (REQUIRED) The ID of the Key Vault Key.
#   identity_client_id (string): (REQUIRED) The client ID of the managed identity associated with the encryption key.


variable "anonymous_pull_enabled" {
  description = "Whether allows anonymous (unauthenticated) pull access to this Container Registry? This is only supported on resources with the 'Standard' or 'Premium' SKU."
  type        = bool
  default     = null
}
variable "data_endpoint_enabled" {
  description = "Whether to enable dedicated data endpoints for this Container Registry? This is only supported on resources with the 'Premium' SKU."
  type        = bool
  default     = null
}
variable "network_rule_bypass_option" {
  description = "Whether to allow trusted Azure services to access a network restricted Container Registry? Possible values are 'None' and 'AzureServices'. Defaults to 'AzureServices'."
  type        = string
  default     = "AzureServices"
}
