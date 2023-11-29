# azurerm_bot_channels_registration

Manages a Bot Channels Registration.

## Variables

| Name | Type | Required? | Default  | possible values | Description |
| ---- | ---- | --------- | -------- | ----------- | ----------- |
| **var.name** | string | True | -  |  -  | Specifies the name of the Bot Channels Registration. Changing this forces a new resource to be created. Must be globally unique. | 
| **var.resource_group_name** | string | True | -  |  -  | The name of the resource group in which to create the Bot Channels Registration. Changing this forces a new resource to be created. | 
| **var.location** | string | True | -  |  -  | The supported Azure location where the resource exists. Changing this forces a new resource to be created. | 
| **var.sku** | string | True | -  |  `F0`, `S1`  | The SKU of the Bot Channels Registration. Valid values include `F0` or `S1`. Changing this forces a new resource to be created. | 
| **var.microsoft_app_id** | string | True | -  |  -  | The Microsoft Application ID for the Bot Channels Registration. Changing this forces a new resource to be created. | 
| **var.cmk_key_vault_url** | string | False | -  |  -  | The CMK Key Vault Key URL to encrypt the Bot Channels Registration with the Customer Managed Encryption Key. | 
| **var.display_name** | string | False | `name`  |  -  | The name of the Bot Channels Registration will be displayed as. This defaults to `name` if not specified. | 
| **var.description** | string | False | -  |  -  | The description of the Bot Channels Registration. | 
| **var.endpoint** | string | False | -  |  -  | The Bot Channels Registration endpoint. | 
| **var.developer_app_insights_key** | string | False | -  |  -  | The Application Insights Key to associate with the Bot Channels Registration. | 
| **var.developer_app_insights_api_key** | string | False | -  |  -  | The Application Insights API Key to associate with the Bot Channels Registration. | 
| **var.developer_app_insights_application_id** | string | False | -  |  -  | The Application Insights Application ID to associate with the Bot Channels Registration. | 
| **var.icon_url** | string | False | -  |  -  | The icon URL to visually identify the Bot Channels Registration. | 
| **var.streaming_endpoint_enabled** | bool | False | `False`  |  -  | Is the streaming endpoint enabled for the Bot Channels Registration. Defaults to `false`. | 
| **var.isolated_network_enabled** | bool | False | -  |  -  | Is the Bot Channels Registration in an isolated network? | 
| **var.public_network_access_enabled** | bool | False | -  |  -  | Is the Bot Channels Registration in an isolated network? | 
| **var.tags** | map | False | -  |  -  | A mapping of tags to assign to the resource. | 



## Outputs

| Name | Type | Description |
| ---- | ---- | --------- | 
| **name** | string  | - | 
| **resource_group_name** | string  | - | 
| **location** | string  | - | 
| **sku** | string  | - | 
| **microsoft_app_id** | string  | - | 
| **cmk_key_vault_url** | string  | - | 
| **display_name** | string  | - | 
| **description** | string  | - | 
| **endpoint** | string  | - | 
| **developer_app_insights_key** | string  | - | 
| **developer_app_insights_api_key** | string  | - | 
| **developer_app_insights_application_id** | string  | - | 
| **icon_url** | string  | - | 
| **streaming_endpoint_enabled** | bool  | - | 
| **isolated_network_enabled** | bool  | - | 
| **public_network_access_enabled** | bool  | - | 
| **tags** | map  | - | 
| **id** | string  | The ID of the Bot Channels Registration. | 