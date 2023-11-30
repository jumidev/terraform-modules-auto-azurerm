# azurerm_stream_analytics_stream_input_eventhub

~> **Note:** This resource creates a Stream Input of type `Microsoft.ServiceBus/EventHub`, to create a Stream Input of type `Microsoft.EventHub/EventHub` please use the resource azurerm_stream_analytics_stream_input_eventhub_v2.Manages a Stream Analytics Stream Input EventHub.

## Example minimal component.hclt

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git" 
   path = "stream_analytics/stream_analytics_stream_input_eventhub" 
}

inputs = {
   name = "name of stream_analytics_stream_input_eventhub" 
   resource_group_name = "${resource_group}" 
   stream_analytics_job_name = "stream_analytics_job_name of stream_analytics_stream_input_eventhub" 
   eventhub_name = "eventhub_name of stream_analytics_stream_input_eventhub" 
   servicebus_namespace = "servicebus_namespace of stream_analytics_stream_input_eventhub" 
   serialization = {
      example_serialization = {
         type = "..."   
      }
  
   }
 
}

tfstate_store = {
   storage_account = "${storage_account}" 
   container = "${container}" 
   container_path = "${COMPONENT_PATH}" 
}

```

## Variables

| Name | Type | Required? |  Default  |  possible values |  Description |
| ---- | ---- | --------- |  ----------- | ----------- | ----------- |
| **var.name** | string | True | -  |  -  |  The name of the Stream Input EventHub. Changing this forces a new resource to be created. | 
| **var.resource_group_name** | string | True | -  |  -  |  The name of the Resource Group where the Stream Analytics Job exists. Changing this forces a new resource to be created. | 
| **var.stream_analytics_job_name** | string | True | -  |  -  |  The name of the Stream Analytics Job. Changing this forces a new resource to be created. | 
| **var.eventhub_name** | string | True | -  |  -  |  The name of the Event Hub. | 
| **var.servicebus_namespace** | string | True | -  |  -  |  The namespace that is associated with the desired Event Hub, Service Bus Queue, Service Bus Topic, etc. | 
| **var.serialization** | block | True | -  |  -  |  A `serialization` block. | 
| **var.partition_key** | string | False | -  |  -  |  The property the input Event Hub has been partitioned by. | 
| **var.authentication_mode** | string | False | `ConnectionString`  |  `Msi`, `ConnectionString`  |  The authentication mode for the Stream Output. Possible values are `Msi` and `ConnectionString`. Defaults to `ConnectionString`. | 
| **var.eventhub_consumer_group_name** | string | False | -  |  -  |  The name of an Event Hub Consumer Group that should be used to read events from the Event Hub. Specifying distinct consumer group names for multiple inputs allows each of those inputs to receive the same events from the Event Hub. If not set the input will use the Event Hub's default consumer group. | 
| **var.shared_access_policy_key** | string | False | -  |  -  |  The shared access policy key for the specified shared access policy. | 
| **var.shared_access_policy_name** | string | False | -  |  -  |  The shared access policy name for the Event Hub, Service Bus Queue, Service Bus Topic, etc. | 

### `serialization` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `type` | string | Yes | - | The serialization format used for incoming data streams. Possible values are 'Avro', 'Csv' and 'Json'. |
| `encoding` | string | No | - | The encoding of the incoming data in the case of input and the encoding of outgoing data in the case of output. It currently can only be set to 'UTF8'. |
| `field_delimiter` | string | No | - | The delimiter that will be used to separate comma-separated value (CSV) records. Possible values are ' ' (space), ',' (comma), '	' (tab), '|' (pipe) and ';'. |



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **id** | string | No  | The ID of the Stream Analytics Stream Input EventHub. | 

Additionally, all variables are provided as outputs.
