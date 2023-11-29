# azurerm_bot_channel_web_chat

Manages a Web Chat integration for a Bot Channel

## Attributes

| Name | Type | Required? | Default  | possible values | Description |
| ---- | ---- | --------- | -------- | ----------- | ----------- |
| **resource_group_name** | string | True | -  |  -  | The name of the resource group where the Web Chat Channel should be created. Changing this forces a new resource to be created. | 
| **location** | string | True | -  |  -  | Specifies the supported Azure location where the resource exists. Changing this forces a new resource to be created. | 
| **bot_name** | string | True | -  |  -  | The name of the Bot Resource this channel will be associated with. Changing this forces a new resource to be created. | 
| **site_names** | list | False | -  |  -  | A list of Web Chat Site names. | 
| **site** | block | False | -  |  -  | A site represents a client application that you want to connect to your bot. One or more `site` blocks. | 

