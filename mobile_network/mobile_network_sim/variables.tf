# REQUIRED VARIABLES

variable "name" {
  description = "(REQUIRED) The name which should be used for this Mobile Network Sim. Changing this forces a new Mobile Network Sim to be created."
  type        = string

}
variable "mobile_network_sim_group_id" {
  description = "(REQUIRED) The ID of the Mobile Network which the Mobile Network Sim belongs to. Changing this forces a new Mobile Network Sim to be created."
  type        = string

}
variable "authentication_key" {
  description = "(REQUIRED) The Ki value for the SIM."
  type        = string

}
variable "international_mobile_subscriber_identity" {
  description = "(REQUIRED) The international mobile subscriber identity (IMSI) for the SIM. Changing this forces a new Mobile Network Sim to be created."
  type        = string

}
variable "integrated_circuit_card_identifier" {
  description = "(REQUIRED) The integrated circuit card ID (ICCID) for the SIM. Changing this forces a new Mobile Network Sim to be created."
  type        = string

}
variable "operator_key_code" {
  description = "(REQUIRED) The Opc value for the SIM."
  type        = string

}

# OPTIONAL VARIABLES

variable "device_type" {
  description = "An optional free-form text field that can be used to record the device type this SIM is associated with, for example 'Video camera'. The Azure portal allows SIMs to be grouped and filtered based on this value."
  type        = string
  default     = null
}
variable "sim_policy_id" {
  description = "The ID of SIM policy used by this SIM."
  type        = string
  default     = null
}
variable "static_ip_configuration" {
  description = "A 'static_ip_configuration' block."
  type        = map(any)
  default     = null
}
#
# static_ip_configuration block structure:
#   attached_data_network_id (string)      : (REQUIRED) The ID of attached data network on which the static IP address will be used. The combination of attached data network and slice defines the network scope of the IP address.
#   slice_id (string)                      : (REQUIRED) The ID of network slice on which the static IP address will be used. The combination of attached data network and slice defines the network scope of the IP address.
#   static_ipv4_address (string)           : The IPv4 address assigned to the SIM at this network scope. This address must be in the userEquipmentStaticAddressPoolPrefix defined in the attached data network.


