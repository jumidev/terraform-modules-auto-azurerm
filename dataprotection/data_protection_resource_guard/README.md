# azurerm_data_protection_resource_guard

Manages a Resource Guard.

## Attributes

| Name | Type | Required? | Default  | possible values | Description |
| ---- | ---- | --------- | -------- | ----------- | ----------- |
| **name** | string | True | -  |  -  | The name of the Resource Guard. Changing this forces a new resource to be created. | 
| **resource_group_name** | string | True | -  |  -  | The name of the Resource Group where the Resource Guard should exist. Changing this forces a new resource to be created. | 
| **location** | string | True | -  |  -  | The Azure Region where the Resource Guard should exist. Changing this forces a new resource to be created. | 
| **vault_critical_operation_exclusion_list** | list | False | -  |  -  | A list of the critical operations which are not protected by this Resource Guard. | 
| **tags** | map | False | -  |  -  | A mapping of tags which should be assigned to the Resource Guard. | 

