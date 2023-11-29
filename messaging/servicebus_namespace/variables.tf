# REQUIRED VARIABLES

variable "name" {
  description = "(REQUIRED) Specifies the name of the ServiceBus Namespace resource . Changing this forces a new resource to be created."
  type        = string

}
variable "resource_group_name" {
  description = "(REQUIRED) The name of the resource group in which to Changing this forces a new resource to be created. create the namespace."
  type        = string

}
variable "location" {
  description = "(REQUIRED) Specifies the supported Azure location where the resource exists. Changing this forces a new resource to be created."
  type        = string

}
variable "sku" {
  description = "(REQUIRED) Defines which tier to use. Options are 'Basic', 'Standard' or 'Premium'. Please note that setting this field to 'Premium' will force the creation of a new resource."
  type        = string

}

# OPTIONAL VARIABLES

variable "identity" {
  description = "An 'identity' block."
  type        = map(any)
  default     = null
}
#
# identity block structure:
#   type (string)           : (REQUIRED) Specifies the type of Managed Service Identity that should be configured on this ServiceBus Namespace. Possible values are 'SystemAssigned', 'UserAssigned', 'SystemAssigned, UserAssigned' (to enable both).
#   identity_ids (string)   : Specifies a list of User Assigned Managed Identity IDs to be assigned to this ServiceBus namespace.


variable "capacity" {
  description = "Specifies the capacity. When 'sku' is 'Premium', capacity can be '1', '2', '4', '8' or '16'. When 'sku' is 'Basic' or 'Standard', capacity can be '0' only."
  type        = string
  default     = null
}
variable "customer_managed_key" {
  description = "An 'customer_managed_key' block."
  type        = map(any)
  default     = null
}
#
# customer_managed_key block structure    :
#   key_vault_key_id (string)               : (REQUIRED) The ID of the Key Vault Key which should be used to Encrypt the data in this ServiceBus Namespace.
#   identity_id (string)                    : (REQUIRED) The ID of the User Assigned Identity that has access to the key.
#   infrastructure_encryption_enabled (bool): Used to specify whether enable Infrastructure Encryption (Double Encryption). Changing this forces a new resource to be created.


variable "local_auth_enabled" {
  description = "Whether or not SAS authentication is enabled for the Service Bus namespace. Defaults to 'true'."
  type        = bool
  default     = true
}
variable "public_network_access_enabled" {
  description = "Is public network access enabled for the Service Bus Namespace? Defaults to 'true'."
  type        = bool
  default     = true
}
variable "minimum_tls_version" {
  description = "The minimum supported TLS version for this Service Bus Namespace. Valid values are: '1.0', '1.1' and '1.2'. The current default minimum TLS version is '1.2'."
  type        = string
  default     = null
}
variable "zone_redundant" {
  description = "Whether or not this resource is zone redundant. 'sku' needs to be 'Premium'. Changing this forces a new resource to be created."
  type        = string
  default     = null
}
variable "network_rule_set" {
  description = "An 'network_rule_set' block."
  type        = map(any)
  default     = null
}
#
# network_rule_set block structure    :
#   default_action (string)             : Specifies the default action for the Network Rule Set. Possible values are 'Allow' and 'Deny'. Defaults to 'Allow'.
#   public_network_access_enabled (bool): Whether to allow traffic over public network. Possible values are 'true' and 'false'. Defaults to 'true'.
#   trusted_services_allowed (bool)     : Are Azure Services that are known and trusted for this resource type are allowed to bypass firewall configuration? See [Trusted Microsoft Services](https://github.com/MicrosoftDocs/azure-docs/blob/master/articles/service-bus-messaging/includes/service-bus-trusted-services.md)
#   ip_rules (list)                     : One or more IP Addresses, or CIDR Blocks which should be able to access the ServiceBus Namespace.
#   network_rules (block)               : One or more 'network_rules' blocks.
#
# network_rules block structure              :
#   subnet_id (string)                         : (REQUIRED) The Subnet ID which should be able to access this ServiceBus Namespace.
#   ignore_missing_vnet_service_endpoint (bool): Should the ServiceBus Namespace Network Rule Set ignore missing Virtual Network Service Endpoint option in the Subnet? Defaults to 'false'.


variable "tags" {
  description = "A mapping of tags to assign to the resource."
  type        = map(any)
  default     = null
}
