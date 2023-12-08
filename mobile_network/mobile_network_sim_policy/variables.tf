# REQUIRED VARIABLES

variable "name" {
  description = "(REQUIRED) The name which should be used for this Mobile Network Sim Policies. Changing this forces a new Mobile Network Sim Policies to be created."
  type        = string

}
variable "mobile_network_id" {
  description = "(REQUIRED) The ID of the Mobile Network which the Sim Policy belongs to. Changing this forces a new Mobile Network Sim Policies to be created."
  type        = string

}
variable "default_slice_id" {
  description = "(REQUIRED) The ID of default slice to use if the UE does not explicitly specify it. This slice must exist in the 'slice' block."
  type        = string

}
variable "location" {
  description = "(REQUIRED) Specifies the Azure Region where the Mobile Network Sim Policy should exist. Changing this forces a new Mobile Network Sim Policies to be created."
  type        = string

}
variable "user_equipment_aggregate_maximum_bit_rate" {
  description = "(REQUIRED) A 'user_equipment_aggregate_maximum_bit_rate' block."
  type        = map(any)
}
#
# user_equipment_aggregate_maximum_bit_rate block structure:
#   downlink (string)                                        : (REQUIRED) Downlink bit rate. Must be a number followed by 'Kbps', 'Mbps', 'Gbps' or 'Tbps'.
#   uplink (string)                                          : (REQUIRED) Uplink bit rate. Must be a number followed by 'Kbps', 'Mbps', 'Gbps' or 'Tbps'.


variable "slice" {
  description = "(REQUIRED) An array of 'slice' block. The allowed slices and the settings to use for them. The list must not contain duplicate items and must contain at least one item."
  type        = map(any)
}
#
# slice block structure           :
#   data_network (block)            : (REQUIRED) An array of 'data_network' block.
#   default_data_network_id (string): (REQUIRED) The ID of default data network to use if the user equipment does not explicitly specify it. Configuration for this object must exist in the 'data_network' block.
#   slice_id (string)               : (REQUIRED) The ID of the slice that these settings apply to.
#
# session_aggregate_maximum_bit_rate block structure:
#   downlink (string)                                 : (REQUIRED) Downlink bit rate. Must be a number followed by 'Kbps', 'Mbps', 'Gbps' or 'Tbps'.
#   uplink (string)                                   : (REQUIRED) Uplink bit rate. Must be a number followed by 'Kbps', 'Mbps', 'Gbps' or 'Tbps'.
#
# data_network block structure                    :
#   allowed_services_ids (string)                   : (REQUIRED) An array of IDs of services that can be used as part of this SIM policy. The array must not contain duplicate items and must contain at least one item.
#   data_network_id (string)                        : (REQUIRED) The ID of Mobile Network Data Network which these settings apply to.
#   session_aggregate_maximum_bit_rate (block)      : (REQUIRED) A 'session_aggregate_maximum_bit_rate' block.
#   allocation_and_retention_priority_level (string): Default QoS Flow allocation and retention priority (ARP) level. Flows with higher priority preempt flows with lower priority, if the settings of 'preemption_capability' and 'preemption_vulnerability' allow it. '1' is the highest level of priority. If this field is not specified then 'qos_indicator' is used to derive the ARP value. See 3GPP TS23.501 section 5.7.2.2 for a full description of the ARP parameters.
#   additional_allowed_session_types (string)       : Allowed session types in addition to the default session type. Must not duplicate the default session type. Possible values are 'IPv4' and 'IPv6'.
#   default_session_type (string)                   : The default PDU session type, which is used if the user equipment does not request a specific session type. Possible values are 'IPv4' and 'IPv6'. Defaults to 'IPv4'.
#   qos_indicator (string)                          : (REQUIRED) The QoS Indicator (5QI for 5G network /QCI for 4G net work) value identifies a set of QoS characteristics, it controls QoS forwarding treatment for QoS flows or EPS bearers. Recommended values: 5-9; 69-70; 79-80. Must be between '1' and '127'.
#   max_buffered_packets (number)                   : The maximum number of downlink packets to buffer at the user plane for High Latency Communication - Extended Buffering. Defaults to '10', Must be at least '0', See 3GPP TS29.272 v15.10.0 section 7.3.188 for a full description. This maximum is not guaranteed because there is a internal limit on buffered packets across all PDU sessions.
#   preemption_capability (string)                  : The Preemption Capability of a QoS Flow, it controls whether it can preempt another QoS Flow with a lower priority level. See 3GPP TS23.501 section 5.7.2.2 for a full description of the ARP parameters. Possible values are 'NotPreempt' and 'MayPreempt', Defaults to 'NotPreempt'.
#   preemption_vulnerability (string)               : The Preemption Vulnerability of a QoS Flow, it controls whether it can be preempted by QoS Flow with a higher priority level. See 3GPP TS23.501 section 5.7.2.2 for a full description of the ARP parameters. Possible values are 'NotPreemptable' and 'Preemptable'. Defaults to 'NotPreemptable'.



# OPTIONAL VARIABLES

variable "registration_timer_in_seconds" {
  description = "Interval for the user equipment periodic registration update procedure. Defaults to '3240'."
  type        = number
  default     = 3240
}
variable "rat_frequency_selection_priority_index" {
  description = "RAT/Frequency Selection Priority Index, defined in 3GPP TS 36.413."
  type        = string
  default     = null
}
variable "tags" {
  description = "A mapping of tags which should be assigned to the Mobile Network Sim Policies."
  type        = map(any)
  default     = null
}
