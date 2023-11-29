# azurerm_mobile_network_sim_policy

Manages a Mobile Network Sim Policy.

## Attributes

| Name | Type | Required? | Default  | possible values | Description |
| ---- | ---- | --------- | -------- | ----------- | ----------- |
| **name** | string | True | -  |  -  | The name which should be used for this Mobile Network Sim Policies. Changing this forces a new Mobile Network Sim Policies to be created. | 
| **mobile_network_id** | string | True | -  |  -  | The ID of the Mobile Network which the Sim Policy belongs to. Changing this forces a new Mobile Network Sim Policies to be created. | 
| **default_slice_id** | string | True | -  |  -  | The ID of default slice to use if the UE does not explicitly specify it. This slice must exist in the `slice` block. | 
| **location** | string | True | -  |  -  | Specifies the Azure Region where the Mobile Network Sim Policy should exist. Changing this forces a new Mobile Network Sim Policies to be created. | 
| **registration_timer_in_seconds** | int | False | `3240`  |  -  | Interval for the user equipment periodic registration update procedure. Defaults to `3240`. | 
| **rat_frequency_selection_priority_index** | string | False | -  |  -  | RAT/Frequency Selection Priority Index, defined in 3GPP TS 36.413. | 
| **user_equipment_aggregate_maximum_bit_rate** | block | True | -  |  -  | A `user_equipment_aggregate_maximum_bit_rate` block. | 
| **slice** | block | True | -  |  -  | An array of `slice` block. The allowed slices and the settings to use for them. The list must not contain duplicate items and must contain at least one item. | 
| **tags** | map | False | -  |  -  | A mapping of tags which should be assigned to the Mobile Network Sim Policies. | 

