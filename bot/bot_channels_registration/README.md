# azurerm_bot_channels_registration

Manages a Bot Channels Registration.

## Attributes

| Name | Type | Required? | Default  | possible values | Description |
| ---- | ---- | --------- | -------- | ----------- | ----------- |
| **name** | string | True | -  |  -  | Specifies the name of the Bot Channels Registration. Changing this forces a new resource to be created. Must be globally unique. | 
| **resource_group_name** | string | True | -  |  -  | The name of the resource group in which to create the Bot Channels Registration. Changing this forces a new resource to be created. | 
| **location** | string | True | -  |  -  | The supported Azure location where the resource exists. Changing this forces a new resource to be created. | 
| **sku** | string | True | -  |  `F0`, `S1`  | The SKU of the Bot Channels Registration. Valid values include `F0` or `S1`. Changing this forces a new resource to be created. | 
| **microsoft_app_id** | string | True | -  |  -  | The Microsoft Application ID for the Bot Channels Registration. Changing this forces a new resource to be created. | 
| **cmk_key_vault_url** | string | False | -  |  -  | The CMK Key Vault Key URL to encrypt the Bot Channels Registration with the Customer Managed Encryption Key. | 
| **display_name** | string | False | `name`  |  -  | The name of the Bot Channels Registration will be displayed as. This defaults to `name` if not specified. | 
| **description** | string | False | -  |  -  | The description of the Bot Channels Registration. | 
| **endpoint** | string | False | -  |  -  | The Bot Channels Registration endpoint. | 
| **developer_app_insights_key** | string | False | -  |  -  | The Application Insights Key to associate with the Bot Channels Registration. | 
| **developer_app_insights_api_key** | string | False | -  |  -  | The Application Insights API Key to associate with the Bot Channels Registration. | 
| **developer_app_insights_application_id** | string | False | -  |  -  | The Application Insights Application ID to associate with the Bot Channels Registration. | 
| **icon_url** | string | False | -  |  -  | The icon URL to visually identify the Bot Channels Registration. | 
| **streaming_endpoint_enabled** | bool | False | `False`  |  -  | Is the streaming endpoint enabled for the Bot Channels Registration. Defaults to `false`. | 
| **isolated_network_enabled** | bool | False | -  |  -  | Is the Bot Channels Registration in an isolated network? | 
| **public_network_access_enabled** | bool | False | -  |  -  | Is the Bot Channels Registration in an isolated network? | 
| **tags** | map | False | -  |  -  | A mapping of tags to assign to the resource. | 

