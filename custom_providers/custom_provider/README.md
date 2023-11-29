# azurerm_custom_provider

Manages an Azure Custom Provider.

## Variables

| Name | Type | Required? |  Description |
| ---- | ---- | --------- |  ----------- |
| **var.name** | string | True | Specifies the name of the Custom Provider. Changing this forces a new resource to be created. | 
| **var.resource_group_name** | string | True | The name of the resource group in which to create the Custom Provider. Changing this forces a new resource to be created. | 
| **var.location** | string | True | Specifies the supported Azure location where the resource exists. Changing this forces a new resource to be created. | 
| **var.resource_type** | block | False | Any number of `resource_type` block. One of `resource_type` or `action` must be specified. | 
| **var.action** | block | False | Any number of `action` block. One of `resource_type` or `action` must be specified. | 
| **var.validation** | block | False | Any number of `validation` block. | 
| **var.tags** | map | False | A mapping of tags to assign to the resource. Changing this forces a new resource to be created. | 



## Outputs

| Name | Type | Description |
| ---- | ---- | --------- | 
| **name** | string  | - | 
| **resource_group_name** | string  | - | 
| **location** | string  | - | 
| **resource_type** | block  | - | 
| **action** | block  | - | 
| **validation** | block  | - | 
| **tags** | map  | - | 
| **id** | string  | The ID of the Custom Provider. | 