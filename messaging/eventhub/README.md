# azurerm_eventhub

Manages a Event Hubs as a nested resource within a Event Hubs namespace.

## Variables

| Name | Type | Required? |  Default  |  possible values |  Description |
| ---- | ---- | --------- |  ----------- | ----------- | ----------- |
| **var.name** | string | True | -  |  -  |  Specifies the name of the EventHub resource. Changing this forces a new resource to be created. | 
| **var.namespace_name** | string | True | -  |  -  |  Specifies the name of the EventHub Namespace. Changing this forces a new resource to be created. | 
| **var.resource_group_name** | string | True | -  |  -  |  The name of the resource group in which the EventHub's parent Namespace exists. Changing this forces a new resource to be created. | 
| **var.partition_count** | int | True | -  |  -  |  Specifies the current number of shards on the Event Hub. | 
| **var.message_retention** | int | True | -  |  -  |  Specifies the number of days to retain the events for this Event Hub. | 
| **var.capture_description** | block | False | -  |  -  |  A `capture_description` block. | 
| **var.status** | string | False | `Active`  |  `Active`, `Disabled`, `SendDisabled`  |  Specifies the status of the Event Hub resource. Possible values are `Active`, `Disabled` and `SendDisabled`. Defaults to `Active`. | 



## Outputs

| Name | Type | Description |
| ---- | ---- | --------- | 
| **name** | string  | - | 
| **namespace_name** | string  | - | 
| **resource_group_name** | string  | - | 
| **partition_count** | int  | - | 
| **message_retention** | int  | - | 
| **capture_description** | block  | - | 
| **status** | string  | - | 
| **id** | string  | The ID of the EventHub. | 
| **partition_ids** | string  | The identifiers for partitions created for Event Hubs. | 

## Example minimal hclt

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git" 
   path = "messaging/eventhub" 
}

inputs = {
   name = "name of eventhub" 
   namespace_name = "namespace_name of eventhub" 
   resource_group_name = "${resource_group}" 
   partition_count = "partition_count of eventhub" 
   message_retention = "message_retention of eventhub" 
}

tfstate_store = {
   storage_account = "${storage_account}" 
   container = "${container}" 
   container_path = "${COMPONENT_PATH}" 
}


```