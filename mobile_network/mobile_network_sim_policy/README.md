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
   user_equipment_aggregate_maximum_bit_rate = {
      example_user_equipment_aggregate_maximum_bit_rate = {
         ...
      }
  
   }
 
   slice = {
      example_slice = {
         ...
      }
  
   }
 
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
| **var.slice** | block | True | -  |  An array of `slice` block. The allowed slices and the settings to use for them. The list must not contain duplicate items and must contain at least one item. | 
| **var.tags** | map | False | -  |  A mapping of tags which should be assigned to the Mobile Network Sim Policies. | 

### `user_equipment_aggregate_maximum_bit_rate` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `downlink` | string | Yes | - | Downlink bit rate. Must be a number followed by 'Kbps', 'Mbps', 'Gbps' or 'Tbps'. |
| `uplink` | string | Yes | - | Uplink bit rate. Must be a number followed by 'Kbps', 'Mbps', 'Gbps' or 'Tbps'. |

### `slice` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `data_network` | block | Yes | - | An array of 'data_network' block. |
| `default_data_network_id` | string | Yes | - | The ID of default data network to use if the user equipment does not explicitly specify it. Configuration for this object must exist in the 'data_network' block. |
| `slice_id` | string | Yes | - | The ID of the slice that these settings apply to. |



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **id** | string | No  | The ID of the Mobile Network Sim Policies. | 

Additionally, all variables are provided as outputs.
