# azurerm_stream_analytics_output_servicebus_queue

Manages a Stream Analytics Output to a ServiceBus Queue.

## Attributes

| Name | Type | Required? | Default  | possible values | Description |
| ---- | ---- | --------- | -------- | ----------- | ----------- |
| **name** | string | True | -  |  -  | The name of the Stream Output. Changing this forces a new resource to be created. | 
| **resource_group_name** | string | True | -  |  -  | The name of the Resource Group where the Stream Analytics Job exists. Changing this forces a new resource to be created. | 
| **stream_analytics_job_name** | string | True | -  |  -  | The name of the Stream Analytics Job. Changing this forces a new resource to be created. | 
| **queue_name** | string | True | -  |  -  | The name of the Service Bus Queue. | 
| **servicebus_namespace** | string | True | -  |  -  | The namespace that is associated with the desired Event Hub, Service Bus Queue, Service Bus Topic, etc. | 
| **shared_access_policy_key** | string | False | -  |  -  | The shared access policy key for the specified shared access policy. Required if `authentication_mode` is `ConnectionString`. | 
| **shared_access_policy_name** | string | False | -  |  -  | The shared access policy name for the Event Hub, Service Bus Queue, Service Bus Topic, etc. Required if `authentication_mode` is `ConnectionString`. | 
| **serialization** | block | True | -  |  -  | A `serialization` block. | 
| **property_columns** | list | False | -  |  -  | A list of property columns to add to the Service Bus Queue output. | 
| **authentication_mode** | string | False | `ConnectionString`  |  `Msi`, `ConnectionString`  | The authentication mode for the Stream Output. Possible values are `Msi` and `ConnectionString`. Defaults to `ConnectionString`. | 
| **system_property_columns** | string | False | -  |  -  | A key-value pair of system property columns that will be attached to the outgoing messages for the Service Bus Queue Output. | 

