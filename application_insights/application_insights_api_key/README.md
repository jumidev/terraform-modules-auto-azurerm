# azurerm_application_insights_api_key

Manages an Application Insights API key.

## Variables

| Name | Type | Required? |  possible values |  Description |
| ---- | ---- | --------- |  ----------- | ----------- |
| **var.name** | string | True | -  |  Specifies the name of the Application Insights API key. Changing this forces a new resource to be created. | 
| **var.application_insights_id** | string | True | -  |  The ID of the Application Insights component on which the API key operates. Changing this forces a new resource to be created. | 
| **var.read_permissions** | string | False | `agentconfig`, `aggregate`, `api`, `draft`, `extendqueries`, `search`  |  Specifies the list of read permissions granted to the API key. Valid values are `agentconfig`, `aggregate`, `api`, `draft`, `extendqueries`, `search`. Please note these values are case sensitive. Changing this forces a new resource to be created. | 
| **var.write_permissions** | string | False | `annotations`  |  Specifies the list of write permissions granted to the API key. Valid values are `annotations`. Please note these values are case sensitive. Changing this forces a new resource to be created. | 



## Outputs

| Name | Type | Description |
| ---- | ---- | --------- | 
| **name** | string  | - | 
| **application_insights_id** | string  | - | 
| **read_permissions** | string  | - | 
| **write_permissions** | string  | - | 
| **id** | string  | The ID of the Application Insights API key. | 
| **api_key** | string  | The API Key secret (Sensitive). | 