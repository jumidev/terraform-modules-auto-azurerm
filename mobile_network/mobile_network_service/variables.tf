# REQUIRED VARIABLES

variable "name" {
  description = "(REQUIRED) Specifies the name which should be used for this Mobile Network Service. Changing this forces a new Mobile Network Service to be created."
  type        = string

}
variable "mobile_network_id" {
  description = "(REQUIRED) Specifies the ID of the Mobile Network Service. Changing this forces a new Mobile Network Service to be created."
  type        = string

}
variable "location" {
  description = "(REQUIRED) Specifies the Azure Region where the Mobile Network Service should exist. Changing this forces a new Mobile Network Service to be created."
  type        = string

}
variable "service_precedence" {
  description = "(REQUIRED) A precedence value that is used to decide between services when identifying the QoS values to use for a particular SIM. A lower value means a higher priority. This value should be unique among all services configured in the mobile network. Must be between '0' and '255'."
  type        = string

}
variable "pcc_rule" {
  description = "(REQUIRED) A 'pcc_rule' block. The set of PCC Rules that make up this service."
  type        = map(any)
}
#
# pcc_rule block structure          :
#   precedence (string)               : (REQUIRED) A precedence value that is used to decide between data flow policy rules when identifying the QoS values to use for a particular SIM. A lower value means a higher priority. This value should be unique among all data flow policy rules configured in the mobile network. Must be between '0' and '255'.
#   qos_policy (block)                : A 'qos_policy' block. The QoS policy to use for packets matching this rule. If this field is not specified then the Service will define the QoS settings.
#   service_data_flow_template (block): (REQUIRED) A 'service_data_flow_template' block. The set of service data flow templates to use for this PCC rule.
#   traffic_control_enabled (bool)    : Determines whether flows that match this data flow policy rule are permitted. Defaults to 'true'.
#
# qos_policy block structure                      :
#   allocation_and_retention_priority_level (string): QoS Flow allocation and retention priority (ARP) level. Flows with higher priority preempt flows with lower priority, if the settings of 'preemption_capability' and 'preemption_vulnerability' allow it. 1 is the highest level of priority. If this field is not specified then 'qos_indicator' is used to derive the ARP value. See 3GPP TS23.501 section 5.7.2.2 for a full description of the ARP parameters.
#   qos_indicator (string)                          : (REQUIRED) The QoS Indicator (5QI for 5G network /QCI for 4G net work) value identifies a set of QoS characteristics that control QoS forwarding treatment for QoS flows or EPS bearers. Recommended values: 5-9; 69-70; 79-80. Must be between '1' and '127'.
#   guaranteed_bit_rate (block)                     : A 'guaranteed_bit_rate' block. The Guaranteed Bit Rate (GBR) for all service data flows that use this PCC Rule. If it's not specified, there will be no GBR set for the PCC Rule that uses this QoS definition.
#   maximum_bit_rate (block)                        : (REQUIRED) A 'maximum_bit_rate' block. The Maximum Bit Rate (MBR) for all service data flows that use this PCC Rule or Service.
#   preemption_capability (string)                  : The Preemption Capability of a QoS Flow controls whether it can preempt another QoS Flow with a lower priority level. See 3GPP TS23.501 section 5.7.2.2 for a full description of the ARP parameters. Possible values are 'NotPreempt' and 'MayPreempt', Defaults to 'NotPreempt'.
#   preemption_vulnerability (string)               : The Preemption Vulnerability of a QoS Flow controls whether it can be preempted by QoS Flow with a higher priority level. See 3GPP TS23.501 section 5.7.2.2 for a full description of the ARP parameters. Possible values are 'NotPreemptable' and 'Preemptable'. Defaults to 'Preemptable'.
#
# service_data_flow_template block structure:
#   direction (string)                        : (REQUIRED) Specifies the direction of this flow. Possible values are 'Uplink', 'Downlink' and 'Bidirectional'.
#   protocol (list)                           : (REQUIRED) A list of the allowed protocol(s) for this flow. If you want this flow to be able to use any protocol within the internet protocol suite, use the value 'ip'. If you only want to allow a selection of protocols, you must use the corresponding IANA Assigned Internet Protocol Number for each protocol, as described in https://www.iana.org/assignments/protocol-numbers/protocol-numbers.xhtml. For example, for UDP, you must use 17. If you use the value 'ip' then you must leave the field 'port' unspecified.
#   remote_ip_list (string)                   : (REQUIRED) Specifies the remote IP address(es) to which UEs will connect for this flow. If you want to allow connections on any IP address, use the value 'any'. Otherwise, you must provide each of the remote IP addresses to which the packet core instance will connect for this flow. You must provide each IP address in CIDR notation, including the netmask (for example, '192.0.2.54/24').
#   ports (list)                              : The port(s) to which UEs will connect for this flow. You can specify zero or more ports or port ranges. If you specify one or more ports or port ranges then you must specify a value other than 'ip' in the 'protocol' field. If it is not specified then connections will be allowed on all ports. Port ranges must be specified as <FirstPort>-<LastPort>. For example: ['8080', '8082-8085'].
#
# maximum_bit_rate block structure:
#   downlink (string)               : (REQUIRED) Downlink bit rate. Must be a number followed by 'bps', 'Kbps', 'Mbps', 'Gbps' or 'Tbps'.
#   uplink (string)                 : (REQUIRED) Uplink bit rate. Must be a number followed by 'bps', 'Kbps', 'Mbps', 'Gbps' or 'Tbps'.
#
# guaranteed_bit_rate block structure:
#   downlink (string)                  : (REQUIRED) Downlink bit rate. Must be a number followed by 'Kbps', 'Mbps', 'Gbps' or 'Tbps'.
#   uplink (string)                    : (REQUIRED) Uplink bit rate. Must be a number followed by 'Kbps', 'Mbps', 'Gbps' or 'Tbps'.



# OPTIONAL VARIABLES

variable "service_qos_policy" {
  description = "A 'service_qos_policy' block. The QoS policy to use for packets matching this service. This can be overridden for particular flows using the ruleQosPolicy field in a 'pcc_rule'. If this field is not specified then the 'sim_policy' of User Equipment (UE) will define the QoS settings."
  type        = map(any)
  default     = null
}
#
# service_qos_policy block structure              :
#   allocation_and_retention_priority_level (string): QoS Flow allocation and retention priority (ARP) level. Flows with higher priority preempt flows with lower priority, if the settings of 'preemption_capability' and 'preemption_vulnerability' allow it. 1 is the highest level of priority. If this field is not specified then 'qos_indicator' is used to derive the ARP value. Defaults to '9'. See 3GPP TS23.501 section 5.7.2.2 for a full description of the ARP parameters.
#   qos_indicator (string)                          : The QoS Indicator (5QI for 5G network /QCI for 4G net work) value identifies a set of QoS characteristics that control QoS forwarding treatment for QoS flows or EPS bearers. Recommended values: 5-9; 69-70; 79-80. Must be between '1' and '127'.
#   maximum_bit_rate (block)                        : (REQUIRED) A 'maximum_bit_rate' block. The Maximum Bit Rate (MBR) for all service data flows that use this PCC Rule or Service.
#   preemption_capability (string)                  : The Preemption Capability of a QoS Flow controls whether it can preempt another QoS Flow with a lower priority level. See 3GPP TS23.501 section 5.7.2.2 for a full description of the ARP parameters. Possible values are 'NotPreempt' and 'MayPreempt',.
#   preemption_vulnerability (string)               : The Preemption Vulnerability of a QoS Flow controls whether it can be preempted by QoS Flow with a higher priority level. See 3GPP TS23.501 section 5.7.2.2 for a full description of the ARP parameters. Possible values are 'NotPreemptable' and 'Preemptable'.
#
# maximum_bit_rate block structure:
#   downlink (string)               : (REQUIRED) Downlink bit rate. Must be a number followed by 'bps', 'Kbps', 'Mbps', 'Gbps' or 'Tbps'.
#   uplink (string)                 : (REQUIRED) Uplink bit rate. Must be a number followed by 'bps', 'Kbps', 'Mbps', 'Gbps' or 'Tbps'.


variable "tags" {
  description = "A mapping of tags which should be assigned to the Mobile Network Service."
  type        = map(any)
  default     = null
}
