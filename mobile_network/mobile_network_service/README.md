# azurerm_mobile_network_service

Manages a Mobile Network Service.

## Example `component.hclt`

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git"   
   path = "mobile_network/mobile_network_service"   
}

inputs = {
   name = "Specifies the name which should be used for this Mobile Network Service..."   
   # mobile_network_id → set in component_inputs
   location = "${location}"   
   service_precedence = "A precedence value that is used to decide between services when identifying the ..."   
   pcc_rule = {
      name = "..."      
      precedence = "..."      
      service_data_flow_template = "..."      
   }
   
}

component_inputs = {
   mobile_network_id = "path/to/mobile_network_component:id"   
}

tfstate_store = {
   storage_account = "${storage_account}"   
   container = "${container}"   
   container_path = "${COMPONENT_PATH}"   
}

```

## Required Variables

| Name | Type |  Description |
| ---- | --------- |  ----------- |
| **name** | string |  Specifies the name which should be used for this Mobile Network Service. Changing this forces a new Mobile Network Service to be created. | 
| **mobile_network_id** | string |  Specifies the ID of the Mobile Network Service. Changing this forces a new Mobile Network Service to be created. | 
| **location** | string |  Specifies the Azure Region where the Mobile Network Service should exist. Changing this forces a new Mobile Network Service to be created. | 
| **service_precedence** | string |  A precedence value that is used to decide between services when identifying the QoS values to use for a particular SIM. A lower value means a higher priority. This value should be unique among all services configured in the mobile network. Must be between `0` and `255`. | 
| **pcc_rule** | [block](#pcc_rule-block-structure) |  A `pcc_rule` block. The set of PCC Rules that make up this service. | 

## Optional Variables

| Name | Type |  possible values |  Description |
| ---- | --------- |  ----------- | ----------- |
| **service_qos_policy** | string |  `pcc_rule`  |  A `service_qos_policy` block. The QoS policy to use for packets matching this service. This can be overridden for particular flows using the ruleQosPolicy field in a `pcc_rule`. If this field is not specified then the `sim_policy` of User Equipment (UE) will define the QoS settings. | 
| **tags** | map |  -  |  A mapping of tags which should be assigned to the Mobile Network Service. | 

### `qos_policy` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `allocation_and_retention_priority_level` | string | No | - | QoS Flow allocation and retention priority (ARP) level. Flows with higher priority preempt flows with lower priority, if the settings of 'preemption_capability' and 'preemption_vulnerability' allow it. 1 is the highest level of priority. If this field is not specified then 'qos_indicator' is used to derive the ARP value. See 3GPP TS23.501 section 5.7.2.2 for a full description of the ARP parameters. |
| `qos_indicator` | string | Yes | - | The QoS Indicator (5QI for 5G network /QCI for 4G net work) value identifies a set of QoS characteristics that control QoS forwarding treatment for QoS flows or EPS bearers. Recommended values: 5-9; 69-70; 79-80. Must be between '1' and '127'. |
| `guaranteed_bit_rate` | [block](#guaranteed_bit_rate-block-structure) | No | - | A 'guaranteed_bit_rate' block. The Guaranteed Bit Rate (GBR) for all service data flows that use this PCC Rule. If it's not specified, there will be no GBR set for the PCC Rule that uses this QoS definition. |
| `maximum_bit_rate` | [block](#maximum_bit_rate-block-structure) | Yes | - | A 'maximum_bit_rate' block. The Maximum Bit Rate (MBR) for all service data flows that use this PCC Rule or Service. |
| `preemption_capability` | string | No | NotPreempt | The Preemption Capability of a QoS Flow controls whether it can preempt another QoS Flow with a lower priority level. See 3GPP TS23.501 section 5.7.2.2 for a full description of the ARP parameters. Possible values are 'NotPreempt' and 'MayPreempt', Defaults to 'NotPreempt'. |
| `preemption_vulnerability` | string | No | Preemptable | The Preemption Vulnerability of a QoS Flow controls whether it can be preempted by QoS Flow with a higher priority level. See 3GPP TS23.501 section 5.7.2.2 for a full description of the ARP parameters. Possible values are 'NotPreemptable' and 'Preemptable'. Defaults to 'Preemptable'. |

### `pcc_rule` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `name` | string | Yes | - | Specifies the name of the rule. This must be unique within the parent service. You must not use any of the following reserved strings - 'default', 'requested' or 'service'. |
| `precedence` | string | Yes | - | A precedence value that is used to decide between data flow policy rules when identifying the QoS values to use for a particular SIM. A lower value means a higher priority. This value should be unique among all data flow policy rules configured in the mobile network. Must be between '0' and '255'. |
| `qos_policy` | [block](#qos_policy-block-structure) | No | - | A 'qos_policy' block. The QoS policy to use for packets matching this rule. If this field is not specified then the Service will define the QoS settings. |
| `service_data_flow_template` | [block](#service_data_flow_template-block-structure) | Yes | - | A 'service_data_flow_template' block. The set of service data flow templates to use for this PCC rule. |
| `traffic_control_enabled` | bool | No | True | Determines whether flows that match this data flow policy rule are permitted. Defaults to 'true'. |

### `maximum_bit_rate` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `downlink` | string | Yes | - | Downlink bit rate. Must be a number followed by 'bps', 'Kbps', 'Mbps', 'Gbps' or 'Tbps'. |
| `uplink` | string | Yes | - | Uplink bit rate. Must be a number followed by 'bps', 'Kbps', 'Mbps', 'Gbps' or 'Tbps'. |

### `guaranteed_bit_rate` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `downlink` | string | Yes | - | Downlink bit rate. Must be a number followed by 'Kbps', 'Mbps', 'Gbps' or 'Tbps'. |
| `uplink` | string | Yes | - | Uplink bit rate. Must be a number followed by 'Kbps', 'Mbps', 'Gbps' or 'Tbps'. |

### `service_data_flow_template` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `name` | string | Yes | - | Specifies the name of the data flow template. This must be unique within the parent data flow policy rule. You must not use any of the following reserved strings - 'default', 'requested' or 'service'. |
| `direction` | string | Yes | - | Specifies the direction of this flow. Possible values are 'Uplink', 'Downlink' and 'Bidirectional'. |
| `protocol` | list | Yes | - | A list of the allowed protocol(s) for this flow. If you want this flow to be able to use any protocol within the internet protocol suite, use the value 'ip'. If you only want to allow a selection of protocols, you must use the corresponding IANA Assigned Internet Protocol Number for each protocol, as described in https://www.iana.org/assignments/protocol-numbers/protocol-numbers.xhtml. For example, for UDP, you must use 17. If you use the value 'ip' then you must leave the field 'port' unspecified. |
| `remote_ip_list` | string | Yes | - | Specifies the remote IP address(es) to which UEs will connect for this flow. If you want to allow connections on any IP address, use the value 'any'. Otherwise, you must provide each of the remote IP addresses to which the packet core instance will connect for this flow. You must provide each IP address in CIDR notation, including the netmask (for example, '192.0.2.54/24'). |
| `ports` | list | No | - | The port(s) to which UEs will connect for this flow. You can specify zero or more ports or port ranges. If you specify one or more ports or port ranges then you must specify a value other than 'ip' in the 'protocol' field. If it is not specified then connections will be allowed on all ports. Port ranges must be specified as <FirstPort>-<LastPort>. For example: ['8080', '8082-8085']. |



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **id** | string | No  | The ID of the Mobile Network Service. | 

Additionally, all variables are provided as outputs.
