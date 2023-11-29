# azurerm_stream_analytics_stream_input_eventhub

~> **Note:** This resource creates a Stream Input of type `Microsoft.ServiceBus/EventHub`, to create a Stream Input of type `Microsoft.EventHub/EventHub` please use the resource azurerm_stream_analytics_stream_input_eventhub_v2.Manages a Stream Analytics Stream Input EventHub.

## Attributes

| Name | Type | Required? | Default  | possible values | Description |
| ---- | ---- | --------- | -------- | ----------- | ----------- |
| **name** | string | True | -  |  -  | The name of the Stream Input EventHub. Changing this forces a new resource to be created. | 
| **resource_group_name** | string | True | -  |  -  | The name of the Resource Group where the Stream Analytics Job exists. Changing this forces a new resource to be created. | 
| **stream_analytics_job_name** | string | True | -  |  -  | The name of the Stream Analytics Job. Changing this forces a new resource to be created. | 
| **eventhub_name** | string | True | -  |  -  | The name of the Event Hub. | 
| **servicebus_namespace** | string | True | -  |  -  | The namespace that is associated with the desired Event Hub, Service Bus Queue, Service Bus Topic, etc. | 
| **serialization** | block | True | -  |  -  | A `serialization` block. | 
| **partition_key** | string | False | -  |  -  | The property the input Event Hub has been partitioned by. | 
| **authentication_mode** | string | False | `ConnectionString`  |  `Msi`, `ConnectionString`  | The authentication mode for the Stream Output. Possible values are `Msi` and `ConnectionString`. Defaults to `ConnectionString`. | 
| **eventhub_consumer_group_name** | string | False | -  |  -  | The name of an Event Hub Consumer Group that should be used to read events from the Event Hub. Specifying distinct consumer group names for multiple inputs allows each of those inputs to receive the same events from the Event Hub. If not set the input will use the Event Hub's default consumer group. | 
| **shared_access_policy_key** | string | False | -  |  -  | The shared access policy key for the specified shared access policy. | 
| **shared_access_policy_name** | string | False | -  |  -  | The shared access policy name for the Event Hub, Service Bus Queue, Service Bus Topic, etc. | 

