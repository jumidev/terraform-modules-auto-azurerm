# azurerm_eventhub_consumer_group

Manages a Event Hubs Consumer Group as a nested resource within an Event Hub.

## Example `component.hclt`

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git" 
   path = "messaging/eventhub_consumer_group" 
}

inputs = {
   name = "name of eventhub_consumer_group" 
   namespace_name = "namespace_name of eventhub_consumer_group" 
   eventhub_name = "eventhub_name of eventhub_consumer_group" 
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
| **name** | string |  Specifies the name of the EventHub Consumer Group resource. Changing this forces a new resource to be created. | 
| **namespace_name** | string |  Specifies the name of the grandparent EventHub Namespace. Changing this forces a new resource to be created. | 
| **eventhub_name** | string |  Specifies the name of the EventHub. Changing this forces a new resource to be created. | 
| **resource_group_name** | string |  The name of the resource group in which the EventHub Consumer Group's grandparent Namespace exists. Changing this forces a new resource to be created. | 

## Optional Variables

| Name | Type |  Description |
| ---- | --------- |  ----------- |
| **user_metadata** | string |  Specifies the user metadata. | 



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **id** | string | No  | The ID of the EventHub Consumer Group. | 

Additionally, all variables are provided as outputs.
