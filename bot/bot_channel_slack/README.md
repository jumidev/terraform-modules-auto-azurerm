# azurerm_bot_channel_slack

Manages a Slack integration for a Bot Channel~> **Note** A bot can only have a single Slack Channel associated with it.

## Example minimal component.hclt

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git" 
   path = "bot/bot_channel_slack" 
}

inputs = {
   resource_group_name = "${resource_group}" 
   location = "${location}" 
   bot_name = "bot_name of bot_channel_slack" 
   client_id = "client_id of bot_channel_slack" 
   client_secret = "client_secret of bot_channel_slack" 
   verification_token = "verification_token of bot_channel_slack" 
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
| **var.resource_group_name** | string  The name of the resource group in which to create the Bot Channel. Changing this forces a new resource to be created. | 
| **var.location** | string  The supported Azure location where the resource exists. Changing this forces a new resource to be created. | 
| **var.bot_name** | string  The name of the Bot Resource this channel will be associated with. Changing this forces a new resource to be created. | 
| **var.client_id** | string  The Client ID that will be used to authenticate with Slack. | 
| **var.client_secret** | string  The Client Secret that will be used to authenticate with Slack. | 
| **var.verification_token** | string  The Verification Token that will be used to authenticate with Slack. | 

## Optional Variables

| Name | Type |  Description |
| ---- | --------- |  ----------- |
| **var.landing_page_url** | string  The Slack Landing Page URL. | 
| **var.signing_secret** | string  The Signing Secret that will be used to sign the requests. | 



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **id** | string | No  | The ID of the Slack Integration for a Bot Channel. | 

Additionally, all variables are provided as outputs.
