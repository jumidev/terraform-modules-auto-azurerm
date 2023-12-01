# azurerm_web_pubsub_custom_certificate

Manages an Azure Web PubSub Custom Certificate.

## Example `component.hclt`

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git" 
   path = "messaging/web_pubsub_custom_certificate" 
}

inputs = {
   name = "name of web_pubsub_custom_certificate" 
   web_pubsub_id = "web_pubsub_id of web_pubsub_custom_certificate" 
   custom_certificate_id = "custom_certificate_id of web_pubsub_custom_certificate" 
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
| **name** | string |  The name of the Web PubSub Custom Certificate. Changing this forces a new resource to be created. | 
| **web_pubsub_id** | string |  The Web PubSub ID of the Web PubSub Custom Certificate. Changing this forces a new resource to be created. | 
| **custom_certificate_id** | string |  The certificate ID of the Web PubSub Custom Certificate. Changing this forces a new resource to be created. | 



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **id** | string | No  | The ID of the Web PubSub Custom Certificate. | 
| **certificate_version** | string | No  | The certificate version of the Web PubSub Custom Certificate. | 

Additionally, all variables are provided as outputs.
