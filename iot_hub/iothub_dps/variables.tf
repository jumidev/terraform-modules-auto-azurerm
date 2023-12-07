# REQUIRED VARIABLES

variable "name" {
  description = "(REQUIRED) Specifies the name of the Iot Device Provisioning Service resource. Changing this forces a new resource to be created."
  type        = string

}
variable "resource_group_name" {
  description = "(REQUIRED) The name of the resource group under which the Iot Device Provisioning Service resource has to be created. Changing this forces a new resource to be created."
  type        = string

}
variable "location" {
  description = "(REQUIRED) Specifies the supported Azure location where the resource has to be created. Changing this forces a new resource to be created."
  type        = string

}
variable "sku" {
  description = "(REQUIRED) A 'sku' block."
  type        = map(any)
}
#
# sku block structure:
#   name (string)      : (REQUIRED) The name of the sku. Currently can only be set to 'S1'.
#   capacity (number)  : (REQUIRED) The number of provisioned IoT Device Provisioning Service units.



# OPTIONAL VARIABLES

variable "allocation_policy" {
  description = "The allocation policy of the IoT Device Provisioning Service ('Hashed', 'GeoLatency' or 'Static'). Defaults to 'Hashed'."
  type        = string
  default     = "Hashed"
}
variable "data_residency_enabled" {
  description = "Specifies if the IoT Device Provisioning Service has data residency and disaster recovery enabled. Defaults to 'false'. Changing this forces a new resource to be created."
  type        = bool
  default     = false
}
variable "linked_hub" {
  description = "A 'linked_hub' block."
  type        = map(any)
  default     = null
}
#
# linked_hub block structure    :
#   connection_string (string)    : (REQUIRED) The connection string to connect to the IoT Hub.
#   location (string)             : (REQUIRED) The location of the IoT hub.
#   apply_allocation_policy (bool): Determines whether to apply allocation policies to the IoT Hub. Defaults to 'true'.
#   allocation_weight (string)    : The weight applied to the IoT Hub. Defaults to '1'.
#   hostname (string)             : (Computed) The IoT Hub hostname.


variable "public_network_access_enabled" {
  description = "Whether requests from Public Network are allowed. Defaults to 'true'."
  type        = bool
  default     = true
}
variable "ip_filter_rule" {
  description = "An 'ip_filter_rule' block."
  type        = map(any)
  default     = null
}
#
# ip_filter_rule block structure:
#   name (string)                 : (REQUIRED) The name of the filter.
#   ip_mask (string)              : (REQUIRED) The IP address range in CIDR notation for the rule.
#   action (string)               : (REQUIRED) The desired action for requests captured by this rule. Possible values are 'Accept', 'Reject'
#   target (string)               : Target for requests captured by this rule. Possible values are 'all', 'deviceApi' and 'serviceApi'.


variable "tags" {
  description = "A mapping of tags to assign to the resource."
  type        = map(any)
  default     = null
}
