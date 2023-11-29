# azurerm_web_pubsub_custom_domain

Manages an Azure Web PubSub Custom Domain.

## Variables

| Name | Type | Required? |  Description |
| ---- | ---- | --------- |  ----------- |
| **var.name** | string | True | Specifies the name of the Web PubSub Custom Domain. Changing this forces a new resource to be created. | 
| **var.domain_name** | string | True | Specifies the custom domain name of the Web PubSub Custom Domain. Changing this forces a new resource to be created. | 
| **var.web_pubsub_id** | string | True | Specifies the Web PubSub ID of the Web PubSub Custom Domain. Changing this forces a new resource to be created. | 
| **var.web_pubsub_custom_certificate_id** | string | True | Specifies the Web PubSub Custom Certificate ID of the Web PubSub Custom Domain. Changing this forces a new resource to be created. | 



## Outputs

| Name | Type | Description |
| ---- | ---- | --------- | 
| **name** | string  | - | 
| **domain_name** | string  | - | 
| **web_pubsub_id** | string  | - | 
| **web_pubsub_custom_certificate_id** | string  | - | 
| **id** | string  | The ID of the Web PubSub Custom Domain. | 