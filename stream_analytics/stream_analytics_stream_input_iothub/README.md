# azurerm_stream_analytics_stream_input_iothub

Manages a Stream Analytics Stream Input IoTHub.

## Example minimal component.hclt

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git" 
   path = "stream_analytics/stream_analytics_stream_input_iothub" 
}

inputs = {
   name = "name of stream_analytics_stream_input_iothub" 
   resource_group_name = "${resource_group}" 
   stream_analytics_job_name = "stream_analytics_job_name of stream_analytics_stream_input_iothub" 
   eventhub_consumer_group_name = "eventhub_consumer_group_name of stream_analytics_stream_input_iothub" 
   endpoint = "endpoint of stream_analytics_stream_input_iothub" 
   iothub_namespace = "iothub_namespace of stream_analytics_stream_input_iothub" 
   serialization = {
      example_serialization = {
         type = "..."   
      }
  
   }
 
   shared_access_policy_key = "shared_access_policy_key of stream_analytics_stream_input_iothub" 
   shared_access_policy_name = "shared_access_policy_name of stream_analytics_stream_input_iothub" 
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
| **var.name** | string |  The name of the Stream Input IoTHub. Changing this forces a new resource to be created. | 
| **var.resource_group_name** | string |  The name of the Resource Group where the Stream Analytics Job exists. Changing this forces a new resource to be created. | 
| **var.stream_analytics_job_name** | string |  The name of the Stream Analytics Job. Changing this forces a new resource to be created. | 
| **var.eventhub_consumer_group_name** | string |  The name of an Event Hub Consumer Group that should be used to read events from the Event Hub. Specifying distinct consumer group names for multiple inputs allows each of those inputs to receive the same events from the Event Hub. | 
| **var.endpoint** | string |  The IoT Hub endpoint to connect to (ie. messages/events, messages/operationsMonitoringEvents, etc.). | 
| **var.iothub_namespace** | string |  The name or the URI of the IoT Hub. | 
| **var.serialization** | block |  A `serialization` block. | 
| **var.shared_access_policy_key** | string |  The shared access policy key for the specified shared access policy. Changing this forces a new resource to be created. | 
| **var.shared_access_policy_name** | string |  The shared access policy name for the Event Hub, Service Bus Queue, Service Bus Topic, etc. | 

### `serialization` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `type` | string | Yes | - | The serialization format used for incoming data streams. Possible values are 'Avro', 'Csv' and 'Json'. |
| `encoding` | string | No | - | The encoding of the incoming data in the case of input and the encoding of outgoing data in the case of output. It currently can only be set to 'UTF8'. |
| `field_delimiter` | string | No | - | The delimiter that will be used to separate comma-separated value (CSV) records. Possible values are ' ' (space), ',' (comma), '	' (tab), '|' (pipe) and ';'. |



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **id** | string | No  | The ID of the Stream Analytics Stream Input IoTHub. | 

Additionally, all variables are provided as outputs.
