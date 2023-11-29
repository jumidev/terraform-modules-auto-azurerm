# azurerm_stream_analytics_stream_input_eventhub_v2

~> **Note:** This resource creates a Stream Input of type `Microsoft.EventHub/EventHub`, to create a Stream Input of type `Microsoft.ServiceBus/EventHub` please use the resource azurerm_stream_analytics_stream_input_eventhub.Manages a Stream Analytics Stream Input EventHub V2.

## Variables

| Name | Type | Required? | Default  | possible values | Description |
| ---- | ---- | --------- | -------- | ----------- | ----------- |
| **var.name** | string | True | -  |  -  | The name of the Stream Input EventHub V2. Changing this forces a new resource to be created. | 
| **var.stream_analytics_job_id** | string | True | -  |  -  | The name of the Stream Analytics Job. Changing this forces a new resource to be created. | 
| **var.eventhub_name** | string | True | -  |  -  | The name of the Event Hub. | 
| **var.servicebus_namespace** | string | True | -  |  -  | The namespace that is associated with the desired Event Hub, Service Bus Queue, Service Bus Topic, etc. | 
| **var.serialization** | block | True | -  |  -  | A `serialization` block. | 
| **var.partition_key** | string | False | -  |  -  | The property the input Event Hub has been partitioned by. | 
| **var.authentication_mode** | string | False | `ConnectionString`  |  `Msi`, `ConnectionString`  | The authentication mode for the Stream Output. Possible values are `Msi` and `ConnectionString`. Defaults to `ConnectionString`. | 
| **var.eventhub_consumer_group_name** | string | False | -  |  -  | The name of an Event Hub Consumer Group that should be used to read events from the Event Hub. Specifying distinct consumer group names for multiple inputs allows each of those inputs to receive the same events from the Event Hub. If not set the input will use the Event Hub's default consumer group. | 
| **var.shared_access_policy_key** | string | False | -  |  -  | The shared access policy key for the specified shared access policy. | 
| **var.shared_access_policy_name** | string | False | -  |  -  | The shared access policy name for the Event Hub, Service Bus Queue, Service Bus Topic, etc. | 



## Outputs

| Name | Type | Description |
| ---- | ---- | --------- | 
| **name** | string  | - | 
| **stream_analytics_job_id** | string  | - | 
| **eventhub_name** | string  | - | 
| **servicebus_namespace** | string  | - | 
| **serialization** | block  | - | 
| **partition_key** | string  | - | 
| **authentication_mode** | string  | - | 
| **eventhub_consumer_group_name** | string  | - | 
| **shared_access_policy_key** | string  | - | 
| **shared_access_policy_name** | string  | - | 
| **id** | string  | The ID of the Stream Analytics Stream Input EventHub V2. | 