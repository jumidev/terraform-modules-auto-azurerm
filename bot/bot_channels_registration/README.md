# azurerm_bot_channels_registration

Manages a Bot Channels Registration.

## Example `component.hclt`

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git"   
   path = "bot/bot_channels_registration"   
}

inputs = {
   name = "Specifies the name of the Bot Channels Registration..."   
   resource_group_name = "${resource_group}"   
   location = "${location}"   
   sku = "The SKU of the Bot Channels Registration"   
   microsoft_app_id = "The Microsoft Application ID for the Bot Channels Registration..."   
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
| **name** | string |  -  |  Specifies the name of the Bot Channels Registration. Changing this forces a new resource to be created. Must be globally unique. | 
| **resource_group_name** | string |  -  |  The name of the resource group in which to create the Bot Channels Registration. Changing this forces a new resource to be created. | 
| **location** | string |  -  |  The supported Azure location where the resource exists. Changing this forces a new resource to be created. | 
| **sku** | string |  `F0`, `S1`  |  The SKU of the Bot Channels Registration. Valid values include `F0` or `S1`. Changing this forces a new resource to be created. | 
| **microsoft_app_id** | string |  -  |  The Microsoft Application ID for the Bot Channels Registration. Changing this forces a new resource to be created. | 

## Optional Variables

| Name | Type |  Default  |  Description |
| ---- | --------- |  ----------- | ----------- |
| **cmk_key_vault_url** | string |  -  |  The CMK Key Vault Key URL to encrypt the Bot Channels Registration with the Customer Managed Encryption Key. | 
| **display_name** | string |  `name`  |  The name of the Bot Channels Registration will be displayed as. This defaults to `name` if not specified. | 
| **description** | string |  -  |  The description of the Bot Channels Registration. | 
| **endpoint** | string |  -  |  The Bot Channels Registration endpoint. | 
| **developer_app_insights_key** | string |  -  |  The Application Insights Key to associate with the Bot Channels Registration. | 
| **developer_app_insights_api_key** | string |  -  |  The Application Insights API Key to associate with the Bot Channels Registration. | 
| **developer_app_insights_application_id** | string |  -  |  The Application Insights Application ID to associate with the Bot Channels Registration. | 
| **icon_url** | string |  -  |  The icon URL to visually identify the Bot Channels Registration. | 
| **streaming_endpoint_enabled** | bool |  `False`  |  Is the streaming endpoint enabled for the Bot Channels Registration. Defaults to `false`. | 
| **isolated_network_enabled** | bool |  -  |  Is the Bot Channels Registration in an isolated network? | 
| **public_network_access_enabled** | bool |  -  |  Is the Bot Channels Registration in an isolated network? | 
| **tags** | map |  -  |  A mapping of tags to assign to the resource. | 



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **id** | string | No  | The ID of the Bot Channels Registration. | 

Additionally, all variables are provided as outputs.
