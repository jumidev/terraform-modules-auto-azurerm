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

## Example minimal hclt

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git" 
   path = "messaging/web_pubsub_custom_domain" 
}

inputs = {
   name = "name of web_pubsub_custom_domain" 
   domain_name = "domain_name of web_pubsub_custom_domain" 
   web_pubsub_id = "web_pubsub_id of web_pubsub_custom_domain" 
   web_pubsub_custom_certificate_id = "web_pubsub_custom_certificate_id of web_pubsub_custom_domain" 
}

tfstate_store = {
   storage_account = "${storage_account}" 
   container = "${container}" 
   container_path = "${COMPONENT_PATH}" 
}


```