# azurerm_bot_web_app

Manages a Bot Web App.

## Example `component.hclt`

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git" 
   path = "bot/bot_web_app" 
}

inputs = {
   name = "name of bot_web_app" 
   resource_group_name = "${resource_group}" 
   location = "${location}" 
   sku = "sku of bot_web_app" 
   microsoft_app_id = "microsoft_app_id of bot_web_app" 
}

tfstate_store = {
   storage_account = "${storage_account}" 
   container = "${container}" 
   container_path = "${COMPONENT_PATH}" 
}

```

## Required Variables

| Name | Type |  possible values |  Description |
| ---- | --------- |  ----------- | ----------- |
| **name** | string |  -  |  Specifies the name of the Web App Bot. Changing this forces a new resource to be created. Must be globally unique. | 
| **resource_group_name** | string |  -  |  The name of the resource group in which to create the Web App Bot. Changing this forces a new resource to be created. | 
| **location** | string |  -  |  The supported Azure location where the resource exists. Changing this forces a new resource to be created. | 
| **sku** | string |  `F0`, `S1`  |  The SKU of the Web App Bot. Valid values include `F0` or `S1`. Changing this forces a new resource to be created. | 
| **microsoft_app_id** | string |  -  |  The Microsoft Application ID for the Web App Bot. Changing this forces a new resource to be created. | 

## Optional Variables

| Name | Type |  Default  |  Description |
| ---- | --------- |  ----------- | ----------- |
| **display_name** | string |  `name`  |  The name of the Web App Bot will be displayed as. This defaults to `name` if not specified. | 
| **endpoint** | string |  -  |  The Web App Bot endpoint. | 
| **developer_app_insights_key** | string |  -  |  The Application Insights Key to associate with the Web App Bot. | 
| **developer_app_insights_api_key** | string |  -  |  The Application Insights API Key to associate with the Web App Bot. | 
| **developer_app_insights_application_id** | string |  -  |  The Application Insights Application ID to associate with the Web App Bot. | 
| **luis_app_ids** | list |  -  |  A list of LUIS App IDs to associate with the Web App Bot. | 
| **luis_key** | string |  -  |  The LUIS key to associate with the Web App Bot. | 
| **tags** | map |  -  |  A mapping of tags to assign to the resource. | 



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **id** | string | No  | The ID of the Bot Web App. | 

Additionally, all variables are provided as outputs.
