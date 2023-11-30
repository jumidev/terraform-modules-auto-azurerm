# azurerm_stream_analytics_stream_input_eventhub_v2

~> **Note:** This resource creates a Stream Input of type `Microsoft.EventHub/EventHub`, to create a Stream Input of type `Microsoft.ServiceBus/EventHub` please use the resource azurerm_stream_analytics_stream_input_eventhub.Manages a Stream Analytics Stream Input EventHub V2.

## Example minimal component.hclt

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git" 
   path = "stream_analytics/stream_analytics_stream_input_eventhub_v2" 
}

inputs = {
   name = "name of stream_analytics_stream_input_eventhub_v2" 
   stream_analytics_job_id = "stream_analytics_job_id of stream_analytics_stream_input_eventhub_v2" 
   eventhub_name = "eventhub_name of stream_analytics_stream_input_eventhub_v2" 
   servicebus_namespace = "servicebus_namespace of stream_analytics_stream_input_eventhub_v2" 
   serialization = "serialization of stream_analytics_stream_input_eventhub_v2" 
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
| **var.name** | string | True | -  |  -  |  The name of the Stream Input EventHub V2. Changing this forces a new resource to be created. | 
| **var.stream_analytics_job_id** | string | True | -  |  -  |  The name of the Stream Analytics Job. Changing this forces a new resource to be created. | 
| **var.eventhub_name** | string | True | -  |  -  |  The name of the Event Hub. | 
| **var.servicebus_namespace** | string | True | -  |  -  |  The namespace that is associated with the desired Event Hub, Service Bus Queue, Service Bus Topic, etc. | 
| **var.serialization** | block | True | -  |  -  |  A `serialization` block. | 
| `serialization` block structure: || 
|   type (string): (REQUIRED) The serialization format used for incoming data streams. Possible values are 'Avro', 'Csv' and 'Json'. ||
|   encoding (string): The encoding of the incoming data in the case of input and the encoding of outgoing data in the case of output. It currently can only be set to 'UTF8'. ||
|   field_delimiter (string): The delimiter that will be used to separate comma-separated value (CSV) records. Possible values are ' ' (space), ',' (comma), '	' (tab), '|' (pipe) and ';'. ||
| **var.partition_key** | string | False | -  |  -  |  The property the input Event Hub has been partitioned by. | 
| **var.authentication_mode** | string | False | `ConnectionString`  |  `Msi`, `ConnectionString`  |  The authentication mode for the Stream Output. Possible values are `Msi` and `ConnectionString`. Defaults to `ConnectionString`. | 
| **var.eventhub_consumer_group_name** | string | False | -  |  -  |  The name of an Event Hub Consumer Group that should be used to read events from the Event Hub. Specifying distinct consumer group names for multiple inputs allows each of those inputs to receive the same events from the Event Hub. If not set the input will use the Event Hub's default consumer group. | 
| **var.shared_access_policy_key** | string | False | -  |  -  |  The shared access policy key for the specified shared access policy. | 
| **var.shared_access_policy_name** | string | False | -  |  -  |  The shared access policy name for the Event Hub, Service Bus Queue, Service Bus Topic, etc. | 



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **id** | string | No  | The ID of the Stream Analytics Stream Input EventHub V2. | 

Additionally, all variables are provided as outputs.
