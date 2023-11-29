# azurerm_api_management_named_value

Manages an API Management Named Value.

## Attributes

| Name | Type | Required? | Default  | possible values | Description |
| ---- | ---- | --------- | -------- | ----------- | ----------- |
| **name** | string | True | -  |  -  | The name of the API Management Named Value. Changing this forces a new resource to be created. | 
| **resource_group_name** | string | True | -  |  -  | The name of the Resource Group in which the API Management Named Value should exist. Changing this forces a new resource to be created. | 
| **api_management_name** | string | True | -  |  -  | The name of the [API Management Service](api_management.html) in which the API Management Named Value should exist. Changing this forces a new resource to be created. | 
| **display_name** | string | True | -  |  -  | The display name of this API Management Named Value. | 
| **value** | string | False | -  |  -  | The value of this API Management Named Value. | 
| **value_from_key_vault** | block | False | -  |  -  | A `value_from_key_vault` block. | 
| **secret** | string | False | -  |  `true`, `false`  | Specifies whether the API Management Named Value is secret. Valid values are `true` or `false`. The default value is `false`. | 
| **tags** | map | False | -  |  -  | A list of tags to be applied to the API Management Named Value. | 

