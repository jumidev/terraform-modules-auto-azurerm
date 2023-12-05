# azurerm_web_pubsub_custom_domain

Manages an Azure Web PubSub Custom Domain.

## Example `component.hclt`

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git"   
   path = "messaging/web_pubsub_custom_domain"   
}

inputs = {
   name = "Specifies the name of the Web PubSub Custom Domain"   
   domain_name = "Specifies the custom domain name of the Web PubSub Custom Domain..."   
   # web_pubsub_id → set in tfstate_inputs
   # web_pubsub_custom_certificate_id → set in tfstate_inputs
}

tfstate_inputs = {
   web_pubsub_id = "path/to/web_pubsub_component:id"   
   web_pubsub_custom_certificate_id = "path/to/web_pubsub_custom_certificate_component:id"   
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
| **name** | string |  Specifies the name of the Web PubSub Custom Domain. Changing this forces a new resource to be created. | 
| **domain_name** | string |  Specifies the custom domain name of the Web PubSub Custom Domain. Changing this forces a new resource to be created. | 
| **web_pubsub_id** | string |  Specifies the Web PubSub ID of the Web PubSub Custom Domain. Changing this forces a new resource to be created. | 
| **web_pubsub_custom_certificate_id** | string |  Specifies the Web PubSub Custom Certificate ID of the Web PubSub Custom Domain. Changing this forces a new resource to be created. | 



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **id** | string | No  | The ID of the Web PubSub Custom Domain. | 

Additionally, all variables are provided as outputs.
