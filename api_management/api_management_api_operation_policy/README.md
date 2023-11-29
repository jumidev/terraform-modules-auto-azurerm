# azurerm_api_management_api_operation_policy

Manages an API Management API Operation Policy

## Attributes

| Name | Type | Required? | Default  | possible values | Description |
| ---- | ---- | --------- | -------- | ----------- | ----------- |
| **api_name** | string | True | -  |  -  | The name of the API within the API Management Service where the Operation exists. Changing this forces a new resource to be created. | 
| **api_management_name** | string | True | -  |  -  | The name of the API Management Service. Changing this forces a new resource to be created. | 
| **resource_group_name** | string | True | -  |  -  | The name of the Resource Group in which the API Management Service exists. Changing this forces a new resource to be created. | 
| **operation_id** | string | True | -  |  -  | The operation identifier within an API. Must be unique in the current API Management service instance. Changing this forces a new resource to be created. | 
| **xml_content** | string | False | -  |  -  | The XML Content for this Policy. | 
| **xml_link** | string | False | -  |  -  | A link to a Policy XML Document, which must be publicly available. | 

