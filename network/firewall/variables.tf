# REQUIRED VARIABLES

variable "name" {
  description = "(REQUIRED) Specifies the name of the Firewall. Changing this forces a new resource to be created."
  type        = string

}
variable "resource_group_name" {
  description = "(REQUIRED) The name of the resource group in which to create the resource. Changing this forces a new resource to be created."
  type        = string

}
variable "location" {
  description = "(REQUIRED) Specifies the supported Azure location where the resource exists. Changing this forces a new resource to be created."
  type        = string

}
variable "sku_name" {
  description = "(REQUIRED) SKU name of the Firewall. Possible values are 'AZFW_Hub' and 'AZFW_VNet'. Changing this forces a new resource to be created."
  type        = string

}
variable "sku_tier" {
  description = "(REQUIRED) SKU tier of the Firewall. Possible values are 'Premium', 'Standard' and 'Basic'."
  type        = string

}

# OPTIONAL VARIABLES

variable "firewall_policy_id" {
  description = "The ID of the Firewall Policy applied to this Firewall."
  type        = string
  default     = null
}
variable "ip_configuration" {
  description = "An 'ip_configuration' block."
  type        = map(any)
  default     = null
}
#
# ip_configuration block structure:
#   name (string)                   : (REQUIRED) Specifies the name of the IP Configuration.
#   subnet_id (string)              : Reference to the subnet associated with the IP Configuration. Changing this forces a new resource to be created. -> **NOTE** The Subnet used for the Firewall must have the name 'AzureFirewallSubnet' and the subnet mask must be at least a '/26'. -> **NOTE** At least one and only one 'ip_configuration' block may contain a 'subnet_id'.
#   public_ip_address_id (string)   : The ID of the Public IP Address associated with the firewall. -> **NOTE** A public ip address is required unless a 'management_ip_configuration' block is specified. -> **NOTE** When multiple 'ip_configuration' blocks with 'public_ip_address_id' are configured, 'terraform apply' will raise an error when one or some of these 'ip_configuration' blocks are removed. because the 'public_ip_address_id' is still used by the 'firewall' resource until the 'firewall' resource is updated. and the destruction of 'azurerm_public_ip' happens before the update of firewall by default. to destroy of 'azurerm_public_ip' will cause the error. The workaround is to set 'create_before_destroy=true' to the 'azurerm_public_ip' resource 'lifecycle' block. See more detail: [destroying.md#create-before-destroy](https://github.com/hashicorp/terraform/blob/main/docs/destroying.md#create-before-destroy) -> **NOTE** The Public IP must have a 'Static' allocation and 'Standard' SKU.


variable "dns_servers" {
  description = "A list of DNS servers that the Azure Firewall will direct DNS traffic to the for name resolution."
  type        = list(any)
  default     = []
}
variable "dns_proxy_enabled" {
  description = "Whether DNS proxy is enabled. It will forward DNS requests to the DNS servers when set to 'true'. It will be set to 'true' if 'dns_servers' provided with a not empty list."
  type        = bool
  default     = null
}
variable "private_ip_ranges" {
  description = "A list of SNAT private CIDR IP ranges, or the special string 'IANAPrivateRanges', which indicates Azure Firewall does not SNAT when the destination IP address is a private range per IANA RFC 1918."
  type        = list(any)
  default     = []
}
variable "management_ip_configuration" {
  description = "A 'management_ip_configuration' block, which allows force-tunnelling of traffic to be performed by the firewall. Adding or removing this block or changing the 'subnet_id' in an existing block forces a new resource to be created. Changing this forces a new resource to be created."
  type        = map(any)
  default     = null
}
#
# management_ip_configuration block structure:
#   name (string)                              : (REQUIRED) Specifies the name of the IP Configuration.
#   subnet_id (string)                         : (REQUIRED) Reference to the subnet associated with the IP Configuration. Changing this forces a new resource to be created. -> **NOTE** The Management Subnet used for the Firewall must have the name 'AzureFirewallManagementSubnet' and the subnet mask must be at least a '/26'.
#   public_ip_address_id (string)              : (REQUIRED) The ID of the Public IP Address associated with the firewall. -> **NOTE** The Public IP must have a 'Static' allocation and 'Standard' SKU.


variable "threat_intel_mode" {
  description = "The operation mode for threat intelligence-based filtering. Possible values are: 'Off', 'Alert' and 'Deny'. Defaults to 'Alert'."
  type        = string
  default     = "Alert"
}
variable "virtual_hub" {
  description = "A 'virtual_hub' block."
  type        = map(any)
  default     = null
}
#
# virtual_hub block structure:
#   virtual_hub_id (string)    : (REQUIRED) Specifies the ID of the Virtual Hub where the Firewall resides in.
#   public_ip_count (number)   : Specifies the number of public IPs to assign to the Firewall. Defaults to '1'.


variable "zones" {
  description = "Specifies a list of Availability Zones in which this Azure Firewall should be located. Changing this forces a new Azure Firewall to be created. -> **Please Note**: Availability Zones are [only supported in several regions at this time](https://docs.microsoft.com/azure/availability-zones/az-overview)."
  type        = list(any)
  default     = []
}
variable "tags" {
  description = "A mapping of tags to assign to the resource."
  type        = map(any)
  default     = null
}
