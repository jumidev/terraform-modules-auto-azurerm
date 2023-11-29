# azurerm_bot_channel_slack

Manages a Slack integration for a Bot Channel~> **Note** A bot can only have a single Slack Channel associated with it.

## Attributes

| Name | Type | Required? | Default  | possible values | Description |
| ---- | ---- | --------- | -------- | ----------- | ----------- |
| **resource_group_name** | string | True | -  |  -  | The name of the resource group in which to create the Bot Channel. Changing this forces a new resource to be created. | 
| **location** | string | True | -  |  -  | The supported Azure location where the resource exists. Changing this forces a new resource to be created. | 
| **bot_name** | string | True | -  |  -  | The name of the Bot Resource this channel will be associated with. Changing this forces a new resource to be created. | 
| **client_id** | string | True | -  |  -  | The Client ID that will be used to authenticate with Slack. | 
| **client_secret** | string | True | -  |  -  | The Client Secret that will be used to authenticate with Slack. | 
| **verification_token** | string | True | -  |  -  | The Verification Token that will be used to authenticate with Slack. | 
| **landing_page_url** | string | False | -  |  -  | The Slack Landing Page URL. | 
| **signing_secret** | string | False | -  |  -  | The Signing Secret that will be used to sign the requests. | 

