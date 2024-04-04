# REQUIRED VARIABLES

variable "storage_account_id" {
  description = "(REQUIRED) Specifies the ID of the storage account. Changing this forces a new resource to be created."
  type        = string

}
variable "default_action" {
  description = "(REQUIRED) Specifies the default action of allow or deny when no other rules match. Valid options are 'Deny' or 'Allow'."
  type        = string

}

# OPTIONAL VARIABLES

variable "bypass" {
  description = "Specifies whether traffic is bypassed for Logging/Metrics/AzureServices. Valid options are any combination of 'Logging', 'Metrics', 'AzureServices', or 'None'. -> **NOTE** User has to explicitly set 'bypass' to empty slice ('[]') to remove it."
  type        = string
  default     = null
}
variable "ip_rules" {
  description = "List of public IP or IP ranges in CIDR Format. Only IPv4 addresses are allowed. Private IP address ranges (as defined in [RFC 1918](https://tools.ietf.org/html/rfc1918#section-3)) are not allowed. -> **NOTE** Small address ranges using '/31' or '/32' prefix sizes are not supported. These ranges should be configured using individual IP address rules without prefix specified. -> **NOTE** IP network rules have no effect on requests originating from the same Azure region as the storage account. Use Virtual network rules to allow same-region requests. Services deployed in the same region as the storage account use private Azure IP addresses for communication. Thus, you cannot restrict access to specific Azure services based on their public outbound IP address range. -> **NOTE** User has to explicitly set 'ip_rules' to empty slice ('[]') to remove it."
  type        = string
  default     = null
}
variable "virtual_network_subnet_ids" {
  description = "A list of virtual network subnet ids to secure the storage account. -> **NOTE** User has to explicitly set 'virtual_network_subnet_ids' to empty slice ('[]') to remove it."
  type        = list(any)
  default     = []
}
variable "private_link_accesss" {
  description = "One or more 'private_link_access' block."
  type        = map(any)
  default     = null
}
#
# private_link_access block structure:
#   endpoint_resource_id (string)      : (REQUIRED) The resource id of the resource access rule to be granted access.
#   endpoint_tenant_id (string)        : The tenant id of the resource of the resource access rule to be granted access. Defaults to the current tenant id.


