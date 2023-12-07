# azurerm_mobile_network_sim_policy

Manages a Mobile Network Sim Policy.

## Example `component.hclt`

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git"   
   path = "mobile_network/mobile_network_sim_policy"   
}

inputs = {
   name = "The name which should be used for this Mobile Network Sim Policies..."   
   # mobile_network_id → set in tfstate_inputs
   default_slice_id = "The ID of default slice to use if the UE does not explicitly specify it..."   
   location = "${location}"   
   user_equipment_aggregate_maximum_bit_rate = {
      downlink = "..."      
      uplink = "..."      
   }
   
   slice = {
      data_network = "..."      
      default_data_network_id = "..."      
      slice_id = "..."      
   }
   
}

tfstate_inputs = {
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
| **name** | string |  The name which should be used for this Mobile Network Sim Policies. Changing this forces a new Mobile Network Sim Policies to be created. | 
| **mobile_network_id** | string |  The ID of the Mobile Network which the Sim Policy belongs to. Changing this forces a new Mobile Network Sim Policies to be created. | 
| **default_slice_id** | string |  The ID of default slice to use if the UE does not explicitly specify it. This slice must exist in the `slice` block. | 
| **location** | string |  Specifies the Azure Region where the Mobile Network Sim Policy should exist. Changing this forces a new Mobile Network Sim Policies to be created. | 
| **user_equipment_aggregate_maximum_bit_rate** | [block](#user_equipment_aggregate_maximum_bit_rate-block-structure) |  A `user_equipment_aggregate_maximum_bit_rate` block. | 
| **slice** | [block](#slice-block-structure) |  An array of `slice` block. The allowed slices and the settings to use for them. The list must not contain duplicate items and must contain at least one item. | 

## Optional Variables

| Name | Type |  Default  |  Description |
| ---- | --------- |  ----------- | ----------- |
| **registration_timer_in_seconds** | int |  `3240`  |  Interval for the user equipment periodic registration update procedure. Defaults to `3240`. | 
| **rat_frequency_selection_priority_index** | string |  -  |  RAT/Frequency Selection Priority Index, defined in 3GPP TS 36.413. | 
| **tags** | map |  -  |  A mapping of tags which should be assigned to the Mobile Network Sim Policies. | 

### `user_equipment_aggregate_maximum_bit_rate` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `downlink` | string | Yes | - | Downlink bit rate. Must be a number followed by 'Kbps', 'Mbps', 'Gbps' or 'Tbps'. |
| `uplink` | string | Yes | - | Uplink bit rate. Must be a number followed by 'Kbps', 'Mbps', 'Gbps' or 'Tbps'. |

### `data_network` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `allowed_services_ids` | string | Yes | - | An array of IDs of services that can be used as part of this SIM policy. The array must not contain duplicate items and must contain at least one item. |
| `data_network_id` | string | Yes | - | The ID of Mobile Network Data Network which these settings apply to. |
| `session_aggregate_maximum_bit_rate` | [block](#session_aggregate_maximum_bit_rate-block-structure) | Yes | - | A 'session_aggregate_maximum_bit_rate' block. |
| `allocation_and_retention_priority_level` | string | No | - | Default QoS Flow allocation and retention priority (ARP) level. Flows with higher priority preempt flows with lower priority, if the settings of 'preemption_capability' and 'preemption_vulnerability' allow it. '1' is the highest level of priority. If this field is not specified then 'qos_indicator' is used to derive the ARP value. See 3GPP TS23.501 section 5.7.2.2 for a full description of the ARP parameters. |
| `additional_allowed_session_types` | string | No | - | Allowed session types in addition to the default session type. Must not duplicate the default session type. Possible values are 'IPv4' and 'IPv6'. |
| `default_session_type` | string | No | IPv4 | The default PDU session type, which is used if the user equipment does not request a specific session type. Possible values are 'IPv4' and 'IPv6'. Defaults to 'IPv4'. |
| `qos_indicator` | string | Yes | - | The QoS Indicator (5QI for 5G network /QCI for 4G net work) value identifies a set of QoS characteristics, it controls QoS forwarding treatment for QoS flows or EPS bearers. Recommended values: 5-9; 69-70; 79-80. Must be between '1' and '127'. |
| `max_buffered_packets` | int | No | 10 | The maximum number of downlink packets to buffer at the user plane for High Latency Communication - Extended Buffering. Defaults to '10', Must be at least '0', See 3GPP TS29.272 v15.10.0 section 7.3.188 for a full description. This maximum is not guaranteed because there is a internal limit on buffered packets across all PDU sessions. |
| `preemption_capability` | string | No | NotPreempt | The Preemption Capability of a QoS Flow, it controls whether it can preempt another QoS Flow with a lower priority level. See 3GPP TS23.501 section 5.7.2.2 for a full description of the ARP parameters. Possible values are 'NotPreempt' and 'MayPreempt', Defaults to 'NotPreempt'. |
| `preemption_vulnerability` | string | No | NotPreemptable | The Preemption Vulnerability of a QoS Flow, it controls whether it can be preempted by QoS Flow with a higher priority level. See 3GPP TS23.501 section 5.7.2.2 for a full description of the ARP parameters. Possible values are 'NotPreemptable' and 'Preemptable'. Defaults to 'NotPreemptable'. |

### `session_aggregate_maximum_bit_rate` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `downlink` | string | Yes | - | Downlink bit rate. Must be a number followed by 'Kbps', 'Mbps', 'Gbps' or 'Tbps'. |
| `uplink` | string | Yes | - | Uplink bit rate. Must be a number followed by 'Kbps', 'Mbps', 'Gbps' or 'Tbps'. |

### `slice` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `data_network` | [block](#data_network-block-structure) | Yes | - | An array of 'data_network' block. |
| `default_data_network_id` | string | Yes | - | The ID of default data network to use if the user equipment does not explicitly specify it. Configuration for this object must exist in the 'data_network' block. |
| `slice_id` | string | Yes | - | The ID of the slice that these settings apply to. |



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **id** | string | No  | The ID of the Mobile Network Sim Policies. | 

Additionally, all variables are provided as outputs.
