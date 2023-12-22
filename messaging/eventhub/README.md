# azurerm_eventhub

Manages a Event Hubs as a nested resource within a Event Hubs namespace.

## Example `component.hclt`

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git"   
   path = "messaging/eventhub"   
}

inputs = {
   name = "Specifies the name of the EventHub resource"   
   # namespace_name → set in component_inputs
   resource_group_name = "${resource_group}"   
   partition_count = "Specifies the current number of shards on the Event Hub..."   
   message_retention = "Specifies the number of days to retain the events for this Event Hub..."   
}

component_inputs = {
   namespace_name = "path/to/eventhub_namespace_component:name"   
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
| **name** | string |  Specifies the name of the EventHub resource. Changing this forces a new resource to be created. | 
| **namespace_name** | string |  Specifies the name of the EventHub Namespace. Changing this forces a new resource to be created. | 
| **resource_group_name** | string |  The name of the resource group in which the EventHub's parent Namespace exists. Changing this forces a new resource to be created. | 
| **partition_count** | number |  Specifies the current number of shards on the Event Hub. | 
| **message_retention** | number |  Specifies the number of days to retain the events for this Event Hub. | 

## Optional Variables

| Name | Type |  Default  |  possible values |  Description |
| ---- | --------- |  ----------- | ----------- | ----------- |
| **capture_description** | [block](#capture_description-block-structure) |  -  |  -  |  A `capture_description` block. | 
| **status** | string |  `Active`  |  `Active`, `Disabled`, `SendDisabled`  |  Specifies the status of the Event Hub resource. Possible values are `Active`, `Disabled` and `SendDisabled`. Defaults to `Active`. | 

### `capture_description` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `enabled` | bool | Yes | - | Specifies if the Capture Description is Enabled. |
| `encoding` | string | Yes | - | Specifies the Encoding used for the Capture Description. Possible values are 'Avro' and 'AvroDeflate'. |
| `interval_in_seconds` | number | No | 300 | Specifies the time interval in seconds at which the capture will happen. Values can be between '60' and '900' seconds. Defaults to '300' seconds. |
| `size_limit_in_bytes` | string | No | 314572800 | Specifies the amount of data built up in your EventHub before a Capture Operation occurs. Value should be between '10485760' and '524288000' bytes. Defaults to '314572800' bytes. |
| `skip_empty_archives` | bool | No | False | Specifies if empty files should not be emitted if no events occur during the Capture time window. Defaults to 'false'. |
| `destination` | [block](#destination-block-structure) | Yes | - | A 'destination' block. |

### `destination` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `name` | string | Yes | - | The Name of the Destination where the capture should take place. At this time the only supported value is 'EventHubArchive.AzureBlockBlob'. |
| `archive_name_format` | string | Yes | - | The Blob naming convention for archiving. e.g. '{Namespace}/{EventHub}/{PartitionId}/{Year}/{Month}/{Day}/{Hour}/{Minute}/{Second}'. Here all the parameters (Namespace,EventHub .. etc) are mandatory irrespective of order |
| `blob_container_name` | string | Yes | - | The name of the Container within the Blob Storage Account where messages should be archived. |
| `storage_account_id` | string | Yes | - | The ID of the Blob Storage Account where messages should be archived. |



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **id** | string | No  | The ID of the EventHub. | 
| **partition_ids** | string | No  | The identifiers for partitions created for Event Hubs. | 

Additionally, all variables are provided as outputs.
