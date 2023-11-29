# azurerm_data_protection_resource_guard

Manages a Resource Guard.

## Variables

| Name | Type | Required? |  Description |
| ---- | ---- | --------- |  ----------- |
| **var.name** | string | True | The name of the Resource Guard. Changing this forces a new resource to be created. | 
| **var.resource_group_name** | string | True | The name of the Resource Group where the Resource Guard should exist. Changing this forces a new resource to be created. | 
| **var.location** | string | True | The Azure Region where the Resource Guard should exist. Changing this forces a new resource to be created. | 
| **var.vault_critical_operation_exclusion_list** | list | False | A list of the critical operations which are not protected by this Resource Guard. | 
| **var.tags** | map | False | A mapping of tags which should be assigned to the Resource Guard. | 



## Outputs

| Name | Type | Description |
| ---- | ---- | --------- | 
| **name** | string  | - | 
| **resource_group_name** | string  | - | 
| **location** | string  | - | 
| **vault_critical_operation_exclusion_list** | list  | - | 
| **tags** | map  | - | 
| **id** | string  | The ID of the Resource Guard. | 