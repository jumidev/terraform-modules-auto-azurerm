# azurerm_dev_center

Manages a Dev Center.

## Attributes

| Name | Type | Required? | Default  | possible values | Description |
| ---- | ---- | --------- | -------- | ----------- | ----------- |
| **location** | string | True | -  |  -  | The Azure Region where the Dev Center should exist. Changing this forces a new Dev Center to be created. | 
| **name** | string | True | -  |  -  | Specifies the name of this Dev Center. Changing this forces a new Dev Center to be created. | 
| **resource_group_name** | string | True | -  |  -  | Specifies the name of the Resource Group within which this Dev Center should exist. Changing this forces a new Dev Center to be created. | 
| **identity** | block | False | -  |  -  | An `identity` block. Specifies the Managed Identity which should be assigned to this Dev Center. | 
| **tags** | map | False | -  |  -  | A mapping of tags which should be assigned to the Dev Center. | 

