# azurerm_eventgrid_domain_topic

Manages an EventGrid Domain Topic

## Variables

| Name | Type | Required? |  Description |
| ---- | ---- | --------- |  ----------- |
| **var.name** | string | True | Specifies the name of the EventGrid Domain Topic resource. Changing this forces a new resource to be created. | 
| **var.domain_name** | string | True | Specifies the name of the EventGrid Domain. Changing this forces a new resource to be created. | 
| **var.resource_group_name** | string | True | The name of the resource group in which the EventGrid Domain exists. Changing this forces a new resource to be created. | 



## Outputs

| Name | Type | Description |
| ---- | ---- | --------- | 
| **name** | string  | - | 
| **domain_name** | string  | - | 
| **resource_group_name** | string  | - | 
| **id** | string  | The ID of the EventGrid Domain Topic. | 

## Example minimal hclt

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git" 
   path = "messaging/eventgrid_domain_topic" 
}

inputs = {
   name = "name of eventgrid_domain_topic" 
   domain_name = "domain_name of eventgrid_domain_topic" 
   resource_group_name = "${resource_group}" 
}

tfstate_store = {
   storage_account = "${storage_account}" 
   container = "${container}" 
   container_path = "${COMPONENT_PATH}" 
}


```