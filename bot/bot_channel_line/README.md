# azurerm_bot_channel_line

Manages a Line integration for a Bot Channel~> **Note** A bot can only have a single Line Channel associated with it.

## Example minimal component.hclt

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git" 
   path = "bot/bot_channel_line" 
}

inputs = {
   resource_group_name = "${resource_group}" 
   location = "${location}" 
   bot_name = "bot_name of bot_channel_line" 
   line_channel = {
      example_line_channel = {
         access_token = "..."   
         secret = "..."   
      }
  
   }
 
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
| **var.resource_group_name** | string |  The name of the resource group where the Line Channel should be created. Changing this forces a new resource to be created. | 
| **var.location** | string |  Specifies the supported Azure location where the resource exists. Changing this forces a new resource to be created. | 
| **var.bot_name** | string |  The name of the Bot Resource this channel will be associated with. Changing this forces a new resource to be created. | 
| **var.line_channel** | block |  One or more `line_channel` blocks. | 

### `line_channel` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `access_token` | string | Yes | - | The access token which is used to call the Line Channel API. |
| `secret` | string | Yes | - | The secret which is used to access the Line Channel. |



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **id** | string | No  | The ID of the Line Integration for a Bot Channel. | 

Additionally, all variables are provided as outputs.
