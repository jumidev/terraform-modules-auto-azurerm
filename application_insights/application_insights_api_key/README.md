# azurerm_application_insights_api_key

Manages an Application Insights API key.

## Attributes

| Name | Type | Required? | Default  | possible values | Description |
| ---- | ---- | --------- | -------- | ----------- | ----------- |
| **name** | string | True | -  |  -  | Specifies the name of the Application Insights API key. Changing this forces a new resource to be created. | 
| **application_insights_id** | string | True | -  |  -  | The ID of the Application Insights component on which the API key operates. Changing this forces a new resource to be created. | 
| **read_permissions** | string | False | -  |  `agentconfig`, `aggregate`, `api`, `draft`, `extendqueries`, `search`  | Specifies the list of read permissions granted to the API key. Valid values are `agentconfig`, `aggregate`, `api`, `draft`, `extendqueries`, `search`. Please note these values are case sensitive. Changing this forces a new resource to be created. | 
| **write_permissions** | string | False | -  |  `annotations`  | Specifies the list of write permissions granted to the API key. Valid values are `annotations`. Please note these values are case sensitive. Changing this forces a new resource to be created. | 

