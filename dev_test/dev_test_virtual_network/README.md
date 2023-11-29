# azurerm_dev_test_virtual_network

Manages a Virtual Network within a DevTest Lab.

## Variables

| Name | Type | Required? |  Description |
| ---- | ---- | --------- |  ----------- |
| **var.name** | string | True | Specifies the name of the Dev Test Virtual Network. Changing this forces a new resource to be created. | 
| **var.lab_name** | string | True | Specifies the name of the Dev Test Lab in which the Virtual Network should be created. Changing this forces a new resource to be created. | 
| **var.resource_group_name** | string | True | The name of the resource group in which the Dev Test Lab resource exists. Changing this forces a new resource to be created. | 
| **var.description** | string | False | A description for the Virtual Network. | 
| **var.subnet** | block | False | A `subnet` block. | 
| **var.tags** | map | False | A mapping of tags to assign to the resource. | 



## Outputs

| Name | Type | Description |
| ---- | ---- | --------- | 
| **name** | string  | - | 
| **lab_name** | string  | - | 
| **resource_group_name** | string  | - | 
| **description** | string  | - | 
| **subnet** | block  | - | 
| **tags** | map  | - | 
| **id** | string  | The ID of the Dev Test Virtual Network. | 
| **subnet** | block  | A `subnet` block. | 
| **unique_identifier** | string  | The unique immutable identifier of the Dev Test Virtual Network. | 
| **name** | string  | The name of the Subnet for this Virtual Network. | 