# azurerm_dev_test_virtual_network

Manages a Virtual Network within a DevTest Lab.

## Attributes

| Name | Type | Required? | Default  | possible values | Description |
| ---- | ---- | --------- | -------- | ----------- | ----------- |
| **name** | string | True | -  |  -  | Specifies the name of the Dev Test Virtual Network. Changing this forces a new resource to be created. | 
| **lab_name** | string | True | -  |  -  | Specifies the name of the Dev Test Lab in which the Virtual Network should be created. Changing this forces a new resource to be created. | 
| **resource_group_name** | string | True | -  |  -  | The name of the resource group in which the Dev Test Lab resource exists. Changing this forces a new resource to be created. | 
| **description** | string | False | -  |  -  | A description for the Virtual Network. | 
| **subnet** | block | False | -  |  -  | A `subnet` block. | 
| **tags** | map | False | -  |  -  | A mapping of tags to assign to the resource. | 

