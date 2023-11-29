# REQUIRED VARIABLES

variable "name" {
  description = "(REQUIRED) Specifies the name of the EventHub Namespace resource. Changing this forces a new resource to be created."
  type        = string

}
variable "resource_group_name" {
  description = "(REQUIRED) The name of the resource group in which to create the namespace. Changing this forces a new resource to be created."
  type        = string

}
variable "location" {
  description = "(REQUIRED) Specifies the supported Azure location where the resource exists. Changing this forces a new resource to be created."
  type        = string

}
variable "sku" {
  description = "(REQUIRED) Defines which tier to use. Valid options are 'Basic', 'Standard', and 'Premium'. Please note that setting this field to 'Premium' will force the creation of a new resource."
  type        = string

}

# OPTIONAL VARIABLES

variable "capacity" {
  description = "Specifies the Capacity / Throughput Units for a 'Standard' SKU namespace. Default capacity has a maximum of '2', but can be increased in blocks of 2 on a committed purchase basis. Defaults to '1'."
  type        = string
  default     = "1"
}
variable "auto_inflate_enabled" {
  description = "Is Auto Inflate enabled for the EventHub Namespace?"
  type        = bool
  default     = null
}
variable "dedicated_cluster_id" {
  description = "Specifies the ID of the EventHub Dedicated Cluster where this Namespace should created. Changing this forces a new resource to be created."
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
#   type (string)           : (REQUIRED) Specifies the type of Managed Service Identity that should be configured on this Event Hub Namespace. Possible values are 'SystemAssigned' or 'UserAssigned'.
#   identity_ids (string)   : Specifies a list of User Assigned Managed Identity IDs to be assigned to this EventHub namespace.


variable "maximum_throughput_units" {
  description = "Specifies the maximum number of throughput units when Auto Inflate is Enabled. Valid values range from '1' - '20'."
  type        = string
  default     = null
}
variable "zone_redundant" {
  description = "Specifies if the EventHub Namespace should be Zone Redundant (created across Availability Zones). Changing this forces a new resource to be created. Defaults to 'false'."
  type        = bool
  default     = false
}
variable "tags" {
  description = "A mapping of tags to assign to the resource."
  type        = map(any)
  default     = null
}
variable "network_rulesets" {
  description = "A 'network_rulesets' block."
  type        = map(any)
  default     = null
}
#
# network_rulesets block structure     :
#   default_action (string)              : (REQUIRED) The default action to take when a rule is not matched. Possible values are 'Allow' and 'Deny'.
#   public_network_access_enabled (bool) : Is public network access enabled for the EventHub Namespace? Defaults to 'true'.
#   trusted_service_access_enabled (bool): Whether Trusted Microsoft Services are allowed to bypass firewall.
#   virtual_network_rule (block)         : One or more 'virtual_network_rule' blocks.
#   ip_rule (block)                      : One or more 'ip_rule' blocks.
#
# ip_rule block structure:
#   ip_mask (string)       : (REQUIRED) The IP mask to match on.
#   action (string)        : The action to take when the rule is matched. Possible values are 'Allow'. Defaults to 'Allow'.
#
# virtual_network_rule block structure                    :
#   subnet_id (string)                                      : (REQUIRED) The id of the subnet to match on.
#   ignore_missing_virtual_network_service_endpoint (string): Are missing virtual network service endpoints ignored?


variable "local_authentication_enabled" {
  description = "Is SAS authentication enabled for the EventHub Namespace? Defaults to 'true'."
  type        = bool
  default     = true
}
variable "public_network_access_enabled" {
  description = "Is public network access enabled for the EventHub Namespace? Defaults to 'true'."
  type        = bool
  default     = true
}
variable "minimum_tls_version" {
  description = "The minimum supported TLS version for this EventHub Namespace. Valid values are: '1.0', '1.1' and '1.2'. The current default minimum TLS version is '1.2'."
  type        = string
  default     = null
}
