# azurerm_mobile_network_sim_policy

Manages a Mobile Network Sim Policy.

## Example minimal component.hclt

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git" 
   path = "mobile_network/mobile_network_sim_policy" 
}

inputs = {
   name = "name of mobile_network_sim_policy" 
   mobile_network_id = "mobile_network_id of mobile_network_sim_policy" 
   default_slice_id = "default_slice_id of mobile_network_sim_policy" 
   location = "${location}" 
   user_equipment_aggregate_maximum_bit_rate = "user_equipment_aggregate_maximum_bit_rate of mobile_network_sim_policy" 
   slice = "slice of mobile_network_sim_policy" 
}

tfstate_store = {
   storage_account = "${storage_account}" 
   container = "${container}" 
   container_path = "${COMPONENT_PATH}" 
}

```

## Variables

| Name | Type | Required? |  Default  |  Description |
| ---- | ---- | --------- |  ----------- | ----------- |
| **var.name** | string | True | -  |  The name which should be used for this Mobile Network Sim Policies. Changing this forces a new Mobile Network Sim Policies to be created. | 
| **var.mobile_network_id** | string | True | -  |  The ID of the Mobile Network which the Sim Policy belongs to. Changing this forces a new Mobile Network Sim Policies to be created. | 
| **var.default_slice_id** | string | True | -  |  The ID of default slice to use if the UE does not explicitly specify it. This slice must exist in the `slice` block. | 
| **var.location** | string | True | -  |  Specifies the Azure Region where the Mobile Network Sim Policy should exist. Changing this forces a new Mobile Network Sim Policies to be created. | 
| **var.registration_timer_in_seconds** | int | False | `3240`  |  Interval for the user equipment periodic registration update procedure. Defaults to `3240`. | 
| **var.rat_frequency_selection_priority_index** | string | False | -  |  RAT/Frequency Selection Priority Index, defined in 3GPP TS 36.413. | 
| **var.user_equipment_aggregate_maximum_bit_rate** | block | True | -  |  A `user_equipment_aggregate_maximum_bit_rate` block. | 
| `user_equipment_aggregate_maximum_bit_rate` block structure: || 
|   downlink (string): (REQUIRED) Downlink bit rate. Must be a number followed by 'Kbps', 'Mbps', 'Gbps' or 'Tbps'. ||
|   uplink (string): (REQUIRED) Uplink bit rate. Must be a number followed by 'Kbps', 'Mbps', 'Gbps' or 'Tbps'. ||
| **var.slice** | block | True | -  |  An array of `slice` block. The allowed slices and the settings to use for them. The list must not contain duplicate items and must contain at least one item. | 
| `slice` block structure: || 
|   data_network (block): (REQUIRED) An array of 'data_network' block. ||
|   default_data_network_id (string): (REQUIRED) The ID of default data network to use if the user equipment does not explicitly specify it. Configuration for this object must exist in the 'data_network' block. ||
|   slice_id (string): (REQUIRED) The ID of the slice that these settings apply to. ||
| **var.tags** | map | False | -  |  A mapping of tags which should be assigned to the Mobile Network Sim Policies. | 



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **id** | string | No  | The ID of the Mobile Network Sim Policies. | 

Additionally, all variables are provided as outputs.
