# azurerm_bot_service_azure_bot

Manages an Azure Bot Service.

## Attributes

| Name | Type | Required? | Default  | possible values | Description |
| ---- | ---- | --------- | -------- | ----------- | ----------- |
| **name** | string | True | -  |  -  | The name which should be used for this Azure Bot Service. Changing this forces a new resource to be created. | 
| **resource_group_name** | string | True | -  |  -  | The name of the Resource Group where the Azure Bot Service should exist. Changing this forces a new resource to be created. | 
| **location** | string | True | -  |  -  | The supported Azure location where the Azure Bot Service should exist. Changing this forces a new resource to be created. | 
| **microsoft_app_id** | string | True | -  |  -  | The Microsoft Application ID for the Azure Bot Service. Changing this forces a new resource to be created. | 
| **sku** | string | True | -  |  -  | The SKU of the Azure Bot Service. Accepted values are `F0` or `S1`. Changing this forces a new resource to be created. | 
| **developer_app_insights_api_key** | string | False | -  |  -  | The Application Insights API Key to associate with this Azure Bot Service. | 
| **developer_app_insights_application_id** | string | False | -  |  -  | The resource ID of the Application Insights instance to associate with this Azure Bot Service. | 
| **developer_app_insights_key** | string | False | -  |  -  | The Application Insight Key to associate with this Azure Bot Service. | 
| **display_name** | string | False | `name`  |  -  | The name that the Azure Bot Service will be displayed as. This defaults to the value set for `name` if not specified. | 
| **endpoint** | string | False | -  |  -  | The Azure Bot Service endpoint. | 
| **icon_url** | string | False | `https://docs.botframework.com/static/devportal/client/images/bot-framework-default.png`  |  -  | The Icon Url of the Azure Bot Service. Defaults to `https://docs.botframework.com/static/devportal/client/images/bot-framework-default.png`. | 
| **microsoft_app_msi_id** | string | False | -  |  -  | The ID of the Microsoft App Managed Identity for this Azure Bot Service. Changing this forces a new resource to be created. | 
| **microsoft_app_tenant_id** | string | False | -  |  -  | The Tenant ID of the Microsoft App for this Azure Bot Service. Changing this forces a new resource to be created. | 
| **microsoft_app_type** | string | False | -  |  `MultiTenant`, `SingleTenant`, `UserAssignedMSI`  | The Microsoft App Type for this Azure Bot Service. Possible values are `MultiTenant`, `SingleTenant` and `UserAssignedMSI`. Changing this forces a new resource to be created. | 
| **local_authentication_enabled** | bool | False | `True`  |  -  | Is local authentication enabled? Defaults to `true`. | 
| **luis_app_ids** | list | False | -  |  -  | A list of LUIS App IDs to associate with this Azure Bot Service. | 
| **luis_key** | string | False | -  |  -  | The LUIS key to associate with this Azure Bot Service. | 
| **streaming_endpoint_enabled** | bool | False | `False`  |  -  | Is the streaming endpoint enabled for this Azure Bot Service. Defaults to `false`. | 
| **tags** | map | False | -  |  -  | A mapping of tags which should be assigned to this Azure Bot Service. | 

