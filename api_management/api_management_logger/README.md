# azurerm_api_management_logger

Manages a Logger within an API Management Service.

## Attributes

| Name | Type | Required? | Default  | possible values | Description |
| ---- | ---- | --------- | -------- | ----------- | ----------- |
| **name** | string | True | -  |  -  | The name of this Logger, which must be unique within the API Management Service. Changing this forces a new resource to be created. | 
| **resource_group_name** | string | True | -  |  -  | The name of the Resource Group in which the API Management Service exists. Changing this forces a new resource to be created. | 
| **api_management_name** | string | True | -  |  -  | The name of the API Management Service. Changing this forces a new resource to be created. | 
| **application_insights** | block | False | -  |  -  | An `application_insights` block. Changing this forces a new resource to be created. | 
| **buffered** | bool | False | `True`  |  -  | Specifies whether records should be buffered in the Logger prior to publishing. Defaults to `true`. | 
| **description** | string | False | -  |  -  | A description of this Logger. | 
| **eventhub** | block | False | -  |  -  | An `eventhub` block. Changing this forces a new resource to be created. | 
| **resource_id** | string | False | -  |  -  | The target resource id which will be linked in the API-Management portal page. Changing this forces a new resource to be created. | 

