# azurerm_bot_service_azure_bot

Manages an Azure Bot Service.

## Example minimal component.hclt

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git" 
   path = "bot/bot_service_azure_bot" 
}

inputs = {
   name = "name of bot_service_azure_bot" 
   resource_group_name = "${resource_group}" 
   location = "${location}" 
   microsoft_app_id = "microsoft_app_id of bot_service_azure_bot" 
   sku = "sku of bot_service_azure_bot" 
}

tfstate_store = {
   storage_account = "${storage_account}" 
   container = "${container}" 
   container_path = "${COMPONENT_PATH}" 
}

```

## Required Variables

| Name | Type |  Description |
| ---- | --------- |  ----------- |
| **var.name** | string |  The name which should be used for this Azure Bot Service. Changing this forces a new resource to be created. | 
| **var.resource_group_name** | string |  The name of the Resource Group where the Azure Bot Service should exist. Changing this forces a new resource to be created. | 
| **var.location** | string |  The supported Azure location where the Azure Bot Service should exist. Changing this forces a new resource to be created. | 
| **var.microsoft_app_id** | string |  The Microsoft Application ID for the Azure Bot Service. Changing this forces a new resource to be created. | 
| **var.sku** | string |  The SKU of the Azure Bot Service. Accepted values are `F0` or `S1`. Changing this forces a new resource to be created. | 

## Optional Variables

| Name | Type |  Default  |  possible values |  Description |
| ---- | --------- |  ----------- | ----------- | ----------- |
| **var.developer_app_insights_api_key** | string |  -  |  -  |  The Application Insights API Key to associate with this Azure Bot Service. | 
| **var.developer_app_insights_application_id** | string |  -  |  -  |  The resource ID of the Application Insights instance to associate with this Azure Bot Service. | 
| **var.developer_app_insights_key** | string |  -  |  -  |  The Application Insight Key to associate with this Azure Bot Service. | 
| **var.display_name** | string |  `name`  |  -  |  The name that the Azure Bot Service will be displayed as. This defaults to the value set for `name` if not specified. | 
| **var.endpoint** | string |  -  |  -  |  The Azure Bot Service endpoint. | 
| **var.icon_url** | string |  `https://docs.botframework.com/static/devportal/client/images/bot-framework-default.png`  |  -  |  The Icon Url of the Azure Bot Service. Defaults to `https://docs.botframework.com/static/devportal/client/images/bot-framework-default.png`. | 
| **var.microsoft_app_msi_id** | string |  -  |  -  |  The ID of the Microsoft App Managed Identity for this Azure Bot Service. Changing this forces a new resource to be created. | 
| **var.microsoft_app_tenant_id** | string |  -  |  -  |  The Tenant ID of the Microsoft App for this Azure Bot Service. Changing this forces a new resource to be created. | 
| **var.microsoft_app_type** | string |  -  |  `MultiTenant`, `SingleTenant`, `UserAssignedMSI`  |  The Microsoft App Type for this Azure Bot Service. Possible values are `MultiTenant`, `SingleTenant` and `UserAssignedMSI`. Changing this forces a new resource to be created. | 
| **var.local_authentication_enabled** | bool |  `True`  |  -  |  Is local authentication enabled? Defaults to `true`. | 
| **var.luis_app_ids** | list |  -  |  -  |  A list of LUIS App IDs to associate with this Azure Bot Service. | 
| **var.luis_key** | string |  -  |  -  |  The LUIS key to associate with this Azure Bot Service. | 
| **var.streaming_endpoint_enabled** | bool |  `False`  |  -  |  Is the streaming endpoint enabled for this Azure Bot Service. Defaults to `false`. | 
| **var.tags** | map |  -  |  -  |  A mapping of tags which should be assigned to this Azure Bot Service. | 



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **id** | string | No  | The ID of the Azure Bot Service. | 

Additionally, all variables are provided as outputs.
