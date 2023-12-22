# azurerm_bot_channel_directline

Manages a Directline integration for a Bot Channel

## Example `component.hclt`

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git"   
   path = "bot/bot_channel_directline"   
}

inputs = {
   resource_group_name = "${resource_group}"   
   location = "${location}"   
   # bot_name → set in component_inputs
   site = {
      this_site = {
      }
      
   }
   
}

component_inputs = {
   bot_name = "path/to/bot_channels_registration_component:name"   
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
| **resource_group_name** | string |  The name of the resource group in which to create the Bot Channel. Changing this forces a new resource to be created. | 
| **location** | string |  The supported Azure location where the resource exists. Changing this forces a new resource to be created. | 
| **bot_name** | string |  The name of the Bot Resource this channel will be associated with. Changing this forces a new resource to be created. | 
| **site** | [block](#site-block-structure) |  A site represents a client application that you want to connect to your bot. One or more `site` blocks. | 

### `site` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `name` | string | Yes | - | The name of the site |
| `user_upload_enabled` | bool | No | True | Is the user upload enabled for this site? Defaults to 'true'. |
| `enabled` | bool | No | True | Enables/Disables this site. Defaults to 'true'. |
| `endpoint_parameters_enabled` | bool | No | - | Is the endpoint parameters enabled for this site? |
| `storage_enabled` | bool | No | True | Is the storage site enabled for detailed logging? Defaults to 'true'. |
| `v1_allowed` | bool | No | True | Enables v1 of the Directline protocol for this site. Defaults to 'true'. |
| `v3_allowed` | bool | No | True | Enables v3 of the Directline protocol for this site. Defaults to 'true'. |
| `enhanced_authentication_enabled` | bool | No | - | Enables additional security measures for this site, see [Enhanced Directline Authentication Features](https://blog.botframework.com/2018/09/25/enhanced-direct-line-authentication-features). Disabled by default. |
| `trusted_origins` | string | No | - | This field is required when 'is_secure_site_enabled' is enabled. Determines which origins can establish a Directline conversation for this site. |



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **id** | string | No  | Id for the site | 
| **key** | string | No  | Primary key for accessing this site | 
| **key2** | string | No  | Secondary key for accessing this site | 

Additionally, all variables are provided as outputs.
