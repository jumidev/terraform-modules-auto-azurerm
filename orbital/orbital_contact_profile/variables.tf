# REQUIRED VARIABLES

variable "name" {
  description = "(REQUIRED) The name of the contact profile. Changing this forces a new resource to be created."
  type        = string

}
variable "resource_group_name" {
  description = "(REQUIRED) The name of the Resource Group where the contact profile exists. Changing this forces a new resource to be created."
  type        = string

}
variable "location" {
  description = "(REQUIRED) The location where the contact profile exists. Changing this forces a new resource to be created."
  type        = string

}
variable "minimum_variable_contact_duration" {
  description = "(REQUIRED) Minimum viable contact duration in ISO 8601 format. Used for listing the available contacts with a spacecraft at a given ground station."
  type        = string

}
variable "auto_tracking" {
  description = "(REQUIRED) Auto-tracking configurations for a spacecraft. Possible values are 'disabled', 'xBand' and 'sBand'."
  type        = string

}
variable "network_configuration_subnet_id" {
  description = "(REQUIRED) ARM resource identifier of the subnet delegated to the Microsoft.Orbital/orbitalGateways. Needs to be at least a class C subnet, and should not have any IP created in it. Changing this forces a new resource to be created."
  type        = string

}
variable "links" {
  description = "(REQUIRED) A list of spacecraft links. A 'links' block. Changing this forces a new resource to be created."
  type        = map(map(any))
}
#
# links block structure:
#   channels (block)     : (REQUIRED) A list of contact profile link channels. A 'channels' block. Changing this forces a new resource to be created.
#   direction (string)   : (REQUIRED) Direction of the link. Possible values are 'Uplink' and 'Downlink'.
#   name (string)        : (REQUIRED) Name of the link.
#   polarization (string): (REQUIRED) Polarization of the link. Possible values are 'LHCP', 'RHCP', 'linearVertical' and 'linearHorizontal'.
#
# end_point block structure:
#   end_point_name (string)  : (REQUIRED) Name of an end point.
#   port (string)            : (REQUIRED) TCP port to listen on to receive data.
#   protocol (string)        : (REQUIRED) Protocol of an end point. Possible values are 'TCP' and 'UDP'.
#   ip_address (string)      : IP address of an end point.
#
# channels block structure           :
#   name (string)                      : (REQUIRED) Name of the channel.
#   center_frequency_mhz (string)      : (REQUIRED) Center frequency in MHz.
#   bandwidth_mhz (string)             : (REQUIRED) Bandwidth in MHz.
#   end_point (block)                  : (REQUIRED) Customer End point to store/retrieve data during a contact. An 'end_point' block.
#   modulation_configuration (string)  : Copy of the modem configuration file such as Kratos QRadio. Only valid for uplink directions. If provided, the modem connects to the customer endpoint and accepts commands from the customer instead of a VITA.49 stream.
#   demodulation_configuration (string): Copy of the modem configuration file such as Kratos QRadio or Kratos QuantumRx. Only valid for downlink directions. If provided, the modem connects to the customer endpoint and sends demodulated data instead of a VITA.49 stream.



# OPTIONAL VARIABLES

variable "event_hub_uri" {
  description = "ARM resource identifier of the Event Hub used for telemetry. Requires granting Orbital Resource Provider the rights to send telemetry into the hub."
  type        = string
  default     = null
}
variable "minimum_elevation_degrees" {
  description = "Maximum elevation of the antenna during the contact in decimal degrees."
  type        = string
  default     = null
}
variable "tags" {
  description = "A mapping of tags to assign to the resource."
  type        = map(any)
  default     = null
}
