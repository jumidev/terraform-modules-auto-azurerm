# azurerm_eventgrid_domain_topic

Manages an EventGrid Domain Topic

## Example `component.hclt`

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git"   
   path = "messaging/eventgrid_domain_topic"   
}

inputs = {
   name = "Specifies the name of the EventGrid Domain Topic resource..."   
   domain_name = "Specifies the name of the EventGrid Domain"   
   resource_group_name = "${resource_group}"   
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
| **name** | string |  Specifies the name of the EventGrid Domain Topic resource. Changing this forces a new resource to be created. | 
| **domain_name** | string |  Specifies the name of the EventGrid Domain. Changing this forces a new resource to be created. | 
| **resource_group_name** | string |  The name of the resource group in which the EventGrid Domain exists. Changing this forces a new resource to be created. | 



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **id** | string | No  | The ID of the EventGrid Domain Topic. | 

Additionally, all variables are provided as outputs.
