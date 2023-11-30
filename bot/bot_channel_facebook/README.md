# azurerm_bot_channel_facebook

Manages a Facebook integration for a Bot Channel~> **Note** A bot can only have a single Facebook Channel associated with it.

## Example minimal component.hclt

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git" 
   path = "bot/bot_channel_facebook" 
}

inputs = {
   resource_group_name = "${resource_group}" 
   location = "${location}" 
   bot_name = "bot_name of bot_channel_facebook" 
   facebook_application_id = "facebook_application_id of bot_channel_facebook" 
   facebook_application_secret = "facebook_application_secret of bot_channel_facebook" 
   page = {
      example_page = {
         ...
      }
  
   }
 
}

tfstate_store = {
   storage_account = "${storage_account}" 
   container = "${container}" 
   container_path = "${COMPONENT_PATH}" 
}

```

## Variables

| Name | Type | Required? |  Description |
| ---- | ---- | --------- |  ----------- |
| **var.resource_group_name** | string | True | The name of the resource group where the Facebook Channel should be created. Changing this forces a new resource to be created. | 
| **var.location** | string | True | Specifies the supported Azure location where the resource exists. Changing this forces a new resource to be created. | 
| **var.bot_name** | string | True | The name of the Bot Resource this channel will be associated with. Changing this forces a new resource to be created. | 
| **var.facebook_application_id** | string | True | The Facebook Application ID for the Facebook Channel. | 
| **var.facebook_application_secret** | string | True | The Facebook Application Secret for the Facebook Channel. | 
| **var.page** | block | True | One or more `page` blocks. | 

### `page` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `access_token` | string | Yes | - | The Facebook Page Access Token for the Facebook Channel. |



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **id** | string | No  | The ID of the Facebook Integration for a Bot Channel. | 

Additionally, all variables are provided as outputs.
