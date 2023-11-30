# azurerm_web_pubsub_custom_domain

Manages an Azure Web PubSub Custom Domain.

## Example minimal component.hclt

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

## Required Variables

| Name | Type |  Description |
| ---- | --------- |  ----------- |
| **var.name** | string |  Specifies the name of the Web PubSub Custom Domain. Changing this forces a new resource to be created. | 
| **var.domain_name** | string |  Specifies the custom domain name of the Web PubSub Custom Domain. Changing this forces a new resource to be created. | 
| **var.web_pubsub_id** | string |  Specifies the Web PubSub ID of the Web PubSub Custom Domain. Changing this forces a new resource to be created. | 
| **var.web_pubsub_custom_certificate_id** | string |  Specifies the Web PubSub Custom Certificate ID of the Web PubSub Custom Domain. Changing this forces a new resource to be created. | 



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **id** | string | No  | The ID of the Web PubSub Custom Domain. | 

Additionally, all variables are provided as outputs.
