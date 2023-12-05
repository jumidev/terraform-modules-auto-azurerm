# azurerm_stream_analytics_stream_input_eventhub_v2

~> **Note:** This resource creates a Stream Input of type `Microsoft.EventHub/EventHub`, to create a Stream Input of type `Microsoft.ServiceBus/EventHub` please use the resource azurerm_stream_analytics_stream_input_eventhub.Manages a Stream Analytics Stream Input EventHub V2.

## Example `component.hclt`

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git"   
   path = "stream_analytics/stream_analytics_stream_input_eventhub_v2"   
}

inputs = {
   name = "name of stream_analytics_stream_input_eventhub_v2"   
   # stream_analytics_job_id → set in tfstate_inputs
   # eventhub_name → set in tfstate_inputs
   servicebus_namespace = "servicebus_namespace of stream_analytics_stream_input_eventhub_v2"   
   serialization = {
      this_serialization = {
         type = "..."         
      }
      
   }
   
}

tfstate_inputs = {
   stream_analytics_job_id = "path/to/stream_analytics_job_component:id"   
   eventhub_name = "path/to/eventhub_component:name"   
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
| **name** | string |  The name of the Stream Input EventHub V2. Changing this forces a new resource to be created. | 
| **stream_analytics_job_id** | string |  The name of the Stream Analytics Job. Changing this forces a new resource to be created. | 
| **eventhub_name** | string |  The name of the Event Hub. | 
| **servicebus_namespace** | string |  The namespace that is associated with the desired Event Hub, Service Bus Queue, Service Bus Topic, etc. | 
| **serialization** | [block](#serialization-block-structure) |  A `serialization` block. | 

## Optional Variables

| Name | Type |  Default  |  possible values |  Description |
| ---- | --------- |  ----------- | ----------- | ----------- |
| **partition_key** | string |  -  |  -  |  The property the input Event Hub has been partitioned by. | 
| **authentication_mode** | string |  `ConnectionString`  |  `Msi`, `ConnectionString`  |  The authentication mode for the Stream Output. Possible values are `Msi` and `ConnectionString`. Defaults to `ConnectionString`. | 
| **eventhub_consumer_group_name** | string |  -  |  -  |  The name of an Event Hub Consumer Group that should be used to read events from the Event Hub. Specifying distinct consumer group names for multiple inputs allows each of those inputs to receive the same events from the Event Hub. If not set the input will use the Event Hub's default consumer group. | 
| **shared_access_policy_key** | string |  -  |  -  |  The shared access policy key for the specified shared access policy. | 
| **shared_access_policy_name** | string |  -  |  -  |  The shared access policy name for the Event Hub, Service Bus Queue, Service Bus Topic, etc. | 

### `serialization` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `type` | string | Yes | - | The serialization format used for incoming data streams. Possible values are 'Avro', 'Csv' and 'Json'. |
| `encoding` | string | No | - | The encoding of the incoming data in the case of input and the encoding of outgoing data in the case of output. It currently can only be set to 'UTF8'. |
| `field_delimiter` | string | No | - | The delimiter that will be used to separate comma-separated value (CSV) records. Possible values are ' ' (space), ',' (comma), '	' (tab), '|' (pipe) and ';'. |



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **id** | string | No  | The ID of the Stream Analytics Stream Input EventHub V2. | 

Additionally, all variables are provided as outputs.
