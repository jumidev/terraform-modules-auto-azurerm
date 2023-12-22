# azurerm_bot_channel_web_chat

Manages a Web Chat integration for a Bot Channel

## Example `component.hclt`

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git"   
   path = "bot/bot_channel_web_chat"   
}

inputs = {
   resource_group_name = "${resource_group}"   
   location = "${location}"   
   # bot_name → set in component_inputs
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
| **resource_group_name** | string |  The name of the resource group where the Web Chat Channel should be created. Changing this forces a new resource to be created. | 
| **location** | string |  Specifies the supported Azure location where the resource exists. Changing this forces a new resource to be created. | 
| **bot_name** | string |  The name of the Bot Resource this channel will be associated with. Changing this forces a new resource to be created. | 

## Optional Variables

| Name | Type |  Description |
| ---- | --------- |  ----------- |
| **site_names** | list |  A list of Web Chat Site names. | 
| **site** | [block](#site-block-structure) |  A site represents a client application that you want to connect to your bot. One or more `site` blocks. | 

### `site` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `name` | string | Yes | - | The name of the site. |
| `user_upload_enabled` | bool | No | True | Is the user upload enabled for this site? Defaults to 'true'. |
| `endpoint_parameters_enabled` | bool | No | - | Is the endpoint parameters enabled for this site? |
| `storage_enabled` | bool | No | True | Is the storage site enabled for detailed logging? Defaults to 'true'. |



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **id** | string | No  | The ID of the Web Chat Channel. | 

Additionally, all variables are provided as outputs.
