# REQUIRED VARIABLES

variable "namespace_id" {
  description = "(REQUIRED) Specifies the ServiceBus Namespace ID to which to attach the ServiceBus Namespace Network Rule Set. Changing this forces a new resource to be created."
  type        = string

}

# OPTIONAL VARIABLES

variable "default_action" {
  description = "Specifies the default action for the ServiceBus Namespace Network Rule Set. Possible values are 'Allow' and 'Deny'. Defaults to 'Allow'."
  type        = string
  default     = "Allow"
}
variable "public_network_access_enabled" {
  description = "Whether to allow traffic over public network. Possible values are 'true' and 'false'. Defaults to 'true'."
  type        = bool
  default     = true
}
variable "trusted_services_allowed" {
  description = "If True, then Azure Services that are known and trusted for this resource type are allowed to bypass firewall configuration. See [Trusted Microsoft Services](https://github.com/MicrosoftDocs/azure-docs/blob/master/articles/service-bus-messaging/includes/service-bus-trusted-services.md)"
  type        = bool
  default     = null
}
variable "ip_rules" {
  description = "One or more IP Addresses, or CIDR Blocks which should be able to access the ServiceBus Namespace."
  type        = list(any)
  default     = []
}
variable "network_rules" {
  description = "One or more 'network_rules' blocks."
  type        = map(map(any))
  default     = null
}
#
# network_rules block structure              :
#   subnet_id (string)                         : (REQUIRED) The Subnet ID which should be able to access this ServiceBus Namespace.
#   ignore_missing_vnet_service_endpoint (bool): Should the ServiceBus Namespace Network Rule Set ignore missing Virtual Network Service Endpoint option in the Subnet? Defaults to 'false'.


