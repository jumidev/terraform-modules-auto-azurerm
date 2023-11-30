# azurerm_bot_web_app

Manages a Bot Web App.

## Variables

| Name | Type | Required? |  Default  |  possible values |  Description |
| ---- | ---- | --------- |  ----------- | ----------- | ----------- |
| **var.name** | string | True | -  |  -  |  Specifies the name of the Web App Bot. Changing this forces a new resource to be created. Must be globally unique. | 
| **var.resource_group_name** | string | True | -  |  -  |  The name of the resource group in which to create the Web App Bot. Changing this forces a new resource to be created. | 
| **var.location** | string | True | -  |  -  |  The supported Azure location where the resource exists. Changing this forces a new resource to be created. | 
| **var.sku** | string | True | -  |  `F0`, `S1`  |  The SKU of the Web App Bot. Valid values include `F0` or `S1`. Changing this forces a new resource to be created. | 
| **var.microsoft_app_id** | string | True | -  |  -  |  The Microsoft Application ID for the Web App Bot. Changing this forces a new resource to be created. | 
| **var.display_name** | string | False | `name`  |  -  |  The name of the Web App Bot will be displayed as. This defaults to `name` if not specified. | 
| **var.endpoint** | string | False | -  |  -  |  The Web App Bot endpoint. | 
| **var.developer_app_insights_key** | string | False | -  |  -  |  The Application Insights Key to associate with the Web App Bot. | 
| **var.developer_app_insights_api_key** | string | False | -  |  -  |  The Application Insights API Key to associate with the Web App Bot. | 
| **var.developer_app_insights_application_id** | string | False | -  |  -  |  The Application Insights Application ID to associate with the Web App Bot. | 
| **var.luis_app_ids** | list | False | -  |  -  |  A list of LUIS App IDs to associate with the Web App Bot. | 
| **var.luis_key** | string | False | -  |  -  |  The LUIS key to associate with the Web App Bot. | 
| **var.tags** | map | False | -  |  -  |  A mapping of tags to assign to the resource. | 



## Outputs

| Name | Type | Description |
| ---- | ---- | --------- | 
| **name** | string  | - | 
| **resource_group_name** | string  | - | 
| **location** | string  | - | 
| **sku** | string  | - | 
| **microsoft_app_id** | string  | - | 
| **display_name** | string  | - | 
| **endpoint** | string  | - | 
| **developer_app_insights_key** | string  | - | 
| **developer_app_insights_api_key** | string  | - | 
| **developer_app_insights_application_id** | string  | - | 
| **luis_app_ids** | list  | - | 
| **luis_key** | string  | - | 
| **tags** | map  | - | 
| **id** | string  | The ID of the Bot Web App. | 

## Example minimal hclt

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