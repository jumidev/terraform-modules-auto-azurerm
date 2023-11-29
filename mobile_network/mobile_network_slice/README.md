# azurerm_mobile_network_slice

Manages a Mobile Network Slice.

## Variables

| Name | Type | Required? | Default  | possible values | Description |
| ---- | ---- | --------- | -------- | ----------- | ----------- |
| **var.name** | string | True | -  |  -  | Specifies the name which should be used for this Mobile Network Slice. Changing this forces a new Mobile Network Slice to be created. | 
| **var.mobile_network_id** | string | True | -  |  -  | The ID of Mobile Network which the Mobile Network Slice belongs to. Changing this forces a new Mobile Network Slice to be created. | 
| **var.location** | string | True | -  |  -  | Specifies the Azure Region where the Mobile Network Slice should exist. Changing this forces a new Mobile Network Slice to be created. | 
| **var.single_network_slice_selection_assistance_information** | block | True | -  |  -  | A `single_network_slice_selection_assistance_information` block. Single-network slice selection assistance information (S-NSSAI). Unique at the scope of a mobile network. | 
| **var.description** | string | False | -  |  -  | A description for this Mobile Network Slice. | 
| **var.tags** | map | False | -  |  -  | A mapping of tags which should be assigned to the Mobile Network Slice. | 



## Outputs

| Name | Type | Description |
| ---- | ---- | --------- | 
| **name** | string  | - | 
| **mobile_network_id** | string  | - | 
| **location** | string  | - | 
| **single_network_slice_selection_assistance_information** | block  | - | 
| **description** | string  | - | 
| **tags** | map  | - | 
| **id** | string  | The ID of the Mobile Network Slice. | 