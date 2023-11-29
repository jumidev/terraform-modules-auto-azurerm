# azurerm_custom_provider

Manages an Azure Custom Provider.

## Attributes

| Name | Type | Required? | Default  | possible values | Description |
| ---- | ---- | --------- | -------- | ----------- | ----------- |
| **name** | string | True | -  |  -  | Specifies the name of the Custom Provider. Changing this forces a new resource to be created. | 
| **resource_group_name** | string | True | -  |  -  | The name of the resource group in which to create the Custom Provider. Changing this forces a new resource to be created. | 
| **location** | string | True | -  |  -  | Specifies the supported Azure location where the resource exists. Changing this forces a new resource to be created. | 
| **resource_type** | block | False | -  |  -  | Any number of `resource_type` block. One of `resource_type` or `action` must be specified. | 
| **action** | block | False | -  |  -  | Any number of `action` block. One of `resource_type` or `action` must be specified. | 
| **validation** | block | False | -  |  -  | Any number of `validation` block. | 
| **tags** | map | False | -  |  -  | A mapping of tags to assign to the resource. Changing this forces a new resource to be created. | 

