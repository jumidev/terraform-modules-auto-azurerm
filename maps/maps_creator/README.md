# azurerm_maps_creator

Manages an Azure Maps Creator.

## Attributes

| Name | Type | Required? | Default  | possible values | Description |
| ---- | ---- | --------- | -------- | ----------- | ----------- |
| **name** | string | True | -  |  -  | The name of the Azure Maps Creator. Changing this forces a new resource to be created. | 
| **maps_account_id** | string | True | -  |  -  | The ID of the Azure Maps Creator. Changing this forces a new resource to be created. | 
| **location** | string | True | -  |  -  | The Azure Region where the Azure Maps Creator should exist. Changing this forces a new resource to be created. | 
| **storage_units** | string | True | -  |  -  | The storage units to be allocated. Integer values from 1 to 100, inclusive. | 
| **tags** | map | False | -  |  -  | A mapping of tags which should be assigned to the Azure Maps Creator. | 

