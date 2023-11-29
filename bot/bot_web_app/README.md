# azurerm_bot_web_app

Manages a Bot Web App.

## Attributes

| Name | Type | Required? | Default  | possible values | Description |
| ---- | ---- | --------- | -------- | ----------- | ----------- |
| **name** | string | True | -  |  -  | Specifies the name of the Web App Bot. Changing this forces a new resource to be created. Must be globally unique. | 
| **resource_group_name** | string | True | -  |  -  | The name of the resource group in which to create the Web App Bot. Changing this forces a new resource to be created. | 
| **location** | string | True | -  |  -  | The supported Azure location where the resource exists. Changing this forces a new resource to be created. | 
| **sku** | string | True | -  |  `F0`, `S1`  | The SKU of the Web App Bot. Valid values include `F0` or `S1`. Changing this forces a new resource to be created. | 
| **microsoft_app_id** | string | True | -  |  -  | The Microsoft Application ID for the Web App Bot. Changing this forces a new resource to be created. | 
| **display_name** | string | False | `name`  |  -  | The name of the Web App Bot will be displayed as. This defaults to `name` if not specified. | 
| **endpoint** | string | False | -  |  -  | The Web App Bot endpoint. | 
| **developer_app_insights_key** | string | False | -  |  -  | The Application Insights Key to associate with the Web App Bot. | 
| **developer_app_insights_api_key** | string | False | -  |  -  | The Application Insights API Key to associate with the Web App Bot. | 
| **developer_app_insights_application_id** | string | False | -  |  -  | The Application Insights Application ID to associate with the Web App Bot. | 
| **luis_app_ids** | list | False | -  |  -  | A list of LUIS App IDs to associate with the Web App Bot. | 
| **luis_key** | string | False | -  |  -  | The LUIS key to associate with the Web App Bot. | 
| **tags** | map | False | -  |  -  | A mapping of tags to assign to the resource. | 

