# azurerm_web_pubsub_custom_certificate

Manages an Azure Web PubSub Custom Certificate.

## Variables

| Name | Type | Required? |  Description |
| ---- | ---- | --------- |  ----------- |
| **var.name** | string | True | The name of the Web PubSub Custom Certificate. Changing this forces a new resource to be created. | 
| **var.web_pubsub_id** | string | True | The Web PubSub ID of the Web PubSub Custom Certificate. Changing this forces a new resource to be created. | 
| **var.custom_certificate_id** | string | True | The certificate ID of the Web PubSub Custom Certificate. Changing this forces a new resource to be created. | 



## Outputs

| Name | Type | Description |
| ---- | ---- | --------- | 
| **name** | string  | - | 
| **web_pubsub_id** | string  | - | 
| **custom_certificate_id** | string  | - | 
| **id** | string  | The ID of the Web PubSub Custom Certificate. | 
| **certificate_version** | string  | The certificate version of the Web PubSub Custom Certificate. | 