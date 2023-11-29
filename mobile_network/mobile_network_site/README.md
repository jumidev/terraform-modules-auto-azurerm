# azurerm_mobile_network_site

Manages a Mobile Network Site.

## Variables

| Name | Type | Required? |  Description |
| ---- | ---- | --------- |  ----------- |
| **var.name** | string | True | The name which should be used for this Mobile Network Site. Changing this forces a new Mobile Network Site to be created. | 
| **var.mobile_network_id** | string | True | the ID of the Mobile Network which the Mobile Network Site belongs to. Changing this forces a new Mobile Network Site to be created. | 
| **var.location** | string | True | The Azure Region where the Mobile Network Site should exist. Changing this forces a new Mobile Network Site to be created. | 
| **var.tags** | map | False | A mapping of tags which should be assigned to the Mobile Network Site. | 



## Outputs

| Name | Type | Description |
| ---- | ---- | --------- | 
| **name** | string  | - | 
| **mobile_network_id** | string  | - | 
| **location** | string  | - | 
| **tags** | map  | - | 
| **id** | string  | The ID of the Mobile Network Site. | 
| **network_function_ids** | string  | An array of Id of Network Functions deployed on the site. | 