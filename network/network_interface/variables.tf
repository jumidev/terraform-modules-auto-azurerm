# REQUIRED VARIABLES

variable "ip_configuration" {
  description = "(REQUIRED) One or more 'ip_configuration' blocks."
  type        = map(map(any))
}
#
# ip_configuration block structure                           :
#   name (string)                                              : (REQUIRED) A name used for this IP Configuration.
#   gateway_load_balancer_frontend_ip_configuration_id (string): The Frontend IP Configuration ID of a Gateway SKU Load Balancer.
#   subnet_id (string)                                         : The ID of the Subnet where this Network Interface should be located in. -> **Note:** This is required when 'private_ip_address_version' is set to 'IPv4'.
#   private_ip_address_version (string)                        : The IP Version to use. Possible values are 'IPv4' or 'IPv6'. Defaults to 'IPv4'.
#   private_ip_address_allocation (string)                     : (REQUIRED) The allocation method used for the Private IP Address. Possible values are 'Dynamic' and 'Static'. ~> **Note:** 'Dynamic' means 'An IP is automatically assigned during creation of this Network Interface'; 'Static' means 'User supplied IP address will be used'
#   public_ip_address_id (string)                              : Reference to a Public IP Address to associate with this NIC
#   primary (bool)                                             : Is this the Primary IP Configuration? Must be 'true' for the first 'ip_configuration' when multiple are specified. Defaults to 'false'. When 'private_ip_address_allocation' is set to 'Static' the following fields can be configured:
#   private_ip_address (string)                                : The Static IP Address which should be used. When 'private_ip_address_version' is set to 'IPv4' the following fields can be configured:


variable "location" {
  description = "(REQUIRED) The location where the Network Interface should exist. Changing this forces a new resource to be created."
  type        = string

}
variable "name" {
  description = "(REQUIRED) The name of the Network Interface. Changing this forces a new resource to be created."
  type        = string

}
variable "resource_group_name" {
  description = "(REQUIRED) The name of the Resource Group in which to create the Network Interface. Changing this forces a new resource to be created."
  type        = string

}

# OPTIONAL VARIABLES

variable "auxiliary_mode" {
  description = "Specifies the auxiliary mode used to enable network high-performance feature on Network Virtual Appliances (NVAs). This feature offers competitive performance in Connections Per Second (CPS) optimization, along with improvements to handling large amounts of simultaneous connections. Possible values are 'AcceleratedConnections', 'Floating', 'MaxConnections' and 'None'. -> **Note:** 'auxiliary_mode' is in **Preview** and requires that the preview is enabled - [more information can be found in the Azure documentation](https://learn.microsoft.com/azure/networking/nva-accelerated-connections#prerequisites)."
  type        = string
  default     = null
}
variable "auxiliary_sku" {
  description = "Specifies the SKU used for the network high-performance feature on Network Virtual Appliances (NVAs). Possible values are 'A8', 'A4', 'A1', 'A2' and 'None'. -> **Note:** 'auxiliary_sku' is in **Preview** and requires that the preview is enabled - [more information can be found in the Azure documentation](https://learn.microsoft.com/azure/networking/nva-accelerated-connections#prerequisites)."
  type        = string
  default     = null
}
variable "dns_servers" {
  description = "A list of IP Addresses defining the DNS Servers which should be used for this Network Interface. -> **Note:** Configuring DNS Servers on the Network Interface will override the DNS Servers defined on the Virtual Network."
  type        = list(any)
  default     = []
}
variable "edge_zone" {
  description = "Specifies the Edge Zone within the Azure Region where this Network Interface should exist. Changing this forces a new Network Interface to be created."
  type        = string
  default     = null
}
variable "enable_ip_forwarding" {
  description = "Should IP Forwarding be enabled? Defaults to 'false'."
  type        = bool
  default     = false
}
variable "enable_accelerated_networking" {
  description = "Should Accelerated Networking be enabled? Defaults to 'false'. -> **Note:** Only certain Virtual Machine sizes are supported for Accelerated Networking - [more information can be found in this document](https://docs.microsoft.com/azure/virtual-network/create-vm-accelerated-networking-cli). -> **Note:** To use Accelerated Networking in an Availability Set, the Availability Set must be deployed onto an Accelerated Networking enabled cluster."
  type        = bool
  default     = false
}
variable "internal_dns_name_label" {
  description = "The (relative) DNS Name used for internal communications between Virtual Machines in the same Virtual Network."
  type        = string
  default     = null
}
variable "tags" {
  description = "A mapping of tags to assign to the resource."
  type        = map(any)
  default     = null
}

# OPTIONAL VARIABLES

variable "dns_a_record" {
  type    = map(any)
  default = null
}
# REQUIRED VARIABLES

variable "application_security_group_id" {
  description = "(REQUIRED) The ID of the Application Security Group which this Network Interface which should be connected to. Changing this forces a new resource to be created."
  type        = string

}

# OPTIONAL VARIABLES

variable "network_interface_backend_address_pool_association" {
  type    = map(any)
  default = null
}
# REQUIRED VARIABLES

variable "network_security_group_id" {
  description = "(REQUIRED) The ID of the Network Security Group which should be attached to the Network Interface. Changing this forces a new resource to be created."
  type        = string

}

# OPTIONAL VARIABLES

variable "network_interface_application_gateway_backend_address_pool_association" {
  type    = map(any)
  default = null
}

# OPTIONAL VARIABLES

variable "network_interface_nat_rule_association" {
  type    = map(any)
  default = null
}

# OPTIONAL VARIABLES

variable "private_dns_a_record" {
  type    = map(any)
  default = null
}
