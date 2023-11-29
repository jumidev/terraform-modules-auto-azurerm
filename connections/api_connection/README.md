# azurerm_api_connection

Manages an API Connection.

## Variables

| Name | Type | Required? |  Description |
| ---- | ---- | --------- |  ----------- |
| **var.managed_api_id** | string | True | The ID of the Managed API which this API Connection is linked to. Changing this forces a new API Connection to be created. | 
| **var.name** | string | True | The Name which should be used for this API Connection. Changing this forces a new API Connection to be created. | 
| **var.resource_group_name** | string | True | The name of the Resource Group where this API Connection should exist. Changing this forces a new API Connection to be created. | 
| **var.display_name** | string | False | A display name for this API Connection. Changing this forces a new API Connection to be created. | 
| **var.parameter_values** | string | False | A map of parameter values associated with this API Connection. Changing this forces a new API Connection to be created. | 
| **var.tags** | map | False | A mapping of tags which should be assigned to the API Connection. | 



## Outputs

| Name | Type | Description |
| ---- | ---- | --------- | 
| **managed_api_id** | string  | - | 
| **name** | string  | - | 
| **resource_group_name** | string  | - | 
| **display_name** | string  | - | 
| **parameter_values** | string  | - | 
| **tags** | map  | - | 
| **id** | string  | The ID of the API Connection. | 