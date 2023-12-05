# REQUIRED VARIABLES

variable "iotcentral_application_id" {
  description = "(REQUIRED) The ID of the IoT Central Application. Changing this forces a new resource to be created."
  type        = string

}

# OPTIONAL VARIABLES

variable "apply_to_device" {
  description = "Whether these IP Rules apply for device connectivity to IoT Hub and Device Provisioning Service associated with this IoT Central Application. Possible values are 'true', 'false'. Defaults to 'true'"
  type        = bool
  default     = true
}
variable "default_action" {
  description = "Specifies the default action for the IoT Central Application Network Rule Set. Possible values are 'Allow' and 'Deny'. Defaults to 'Deny'."
  type        = string
  default     = "Deny"
}
variable "ip_rule" {
  description = "One or more 'ip_rule' blocks."
  type        = map(map(any))
  default     = null
}
#
# ip_rule block structure:
#   name (string)          : (REQUIRED) The name of the IP Rule
#   ip_mask (string)       : (REQUIRED) The IP address range in CIDR notation for the IP Rule.


