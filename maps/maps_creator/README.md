# azurerm_maps_creator

Manages an Azure Maps Creator.

## Variables

| Name | Type | Required? |  Description |
| ---- | ---- | --------- |  ----------- |
| **var.name** | string | True | The name of the Azure Maps Creator. Changing this forces a new resource to be created. | 
| **var.maps_account_id** | string | True | The ID of the Azure Maps Creator. Changing this forces a new resource to be created. | 
| **var.location** | string | True | The Azure Region where the Azure Maps Creator should exist. Changing this forces a new resource to be created. | 
| **var.storage_units** | string | True | The storage units to be allocated. Integer values from 1 to 100, inclusive. | 
| **var.tags** | map | False | A mapping of tags which should be assigned to the Azure Maps Creator. | 



## Outputs

| Name | Type | Description |
| ---- | ---- | --------- | 
| **name** | string  | - | 
| **maps_account_id** | string  | - | 
| **location** | string  | - | 
| **storage_units** | string  | - | 
| **tags** | map  | - | 
| **id** | string  | The ID of the Azure Maps Creator. | 