# azurerm_api_connection

Manages an API Connection.

## Attributes

| Name | Type | Required? | Default  | possible values | Description |
| ---- | ---- | --------- | -------- | ----------- | ----------- |
| **managed_api_id** | string | True | -  |  -  | The ID of the Managed API which this API Connection is linked to. Changing this forces a new API Connection to be created. | 
| **name** | string | True | -  |  -  | The Name which should be used for this API Connection. Changing this forces a new API Connection to be created. | 
| **resource_group_name** | string | True | -  |  -  | The name of the Resource Group where this API Connection should exist. Changing this forces a new API Connection to be created. | 
| **display_name** | string | False | -  |  -  | A display name for this API Connection. Changing this forces a new API Connection to be created. | 
| **parameter_values** | string | False | -  |  -  | A map of parameter values associated with this API Connection. Changing this forces a new API Connection to be created. | 
| **tags** | map | False | -  |  -  | A mapping of tags which should be assigned to the API Connection. | 

