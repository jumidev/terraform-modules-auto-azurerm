# azurerm_dev_center

Manages a Dev Center.

## Variables

| Name | Type | Required? |  Description |
| ---- | ---- | --------- |  ----------- |
| **var.location** | string | True | The Azure Region where the Dev Center should exist. Changing this forces a new Dev Center to be created. | 
| **var.name** | string | True | Specifies the name of this Dev Center. Changing this forces a new Dev Center to be created. | 
| **var.resource_group_name** | string | True | Specifies the name of the Resource Group within which this Dev Center should exist. Changing this forces a new Dev Center to be created. | 
| **var.identity** | block | False | An `identity` block. Specifies the Managed Identity which should be assigned to this Dev Center. | 
| **var.tags** | map | False | A mapping of tags which should be assigned to the Dev Center. | 



## Outputs

| Name | Type | Description |
| ---- | ---- | --------- | 
| **location** | string  | - | 
| **name** | string  | - | 
| **resource_group_name** | string  | - | 
| **identity** | block  | - | 
| **tags** | map  | - | 
| **id** | string  | The ID of the Dev Center. | 
| **dev_center_uri** | string  | The URI of the Dev Center. | 