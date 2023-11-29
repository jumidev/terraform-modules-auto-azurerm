# azurerm_stream_analytics_output_servicebus_topic

Manages a Stream Analytics Output to a ServiceBus Topic.

## Variables

| Name | Type | Required? | Default  | possible values | Description |
| ---- | ---- | --------- | -------- | ----------- | ----------- |
| **var.name** | string | True | -  |  -  | The name of the Stream Output. Changing this forces a new resource to be created. | 
| **var.resource_group_name** | string | True | -  |  -  | The name of the Resource Group where the Stream Analytics Job exists. Changing this forces a new resource to be created. | 
| **var.stream_analytics_job_name** | string | True | -  |  -  | The name of the Stream Analytics Job. Changing this forces a new resource to be created. | 
| **var.topic_name** | string | True | -  |  -  | The name of the Service Bus Topic. | 
| **var.servicebus_namespace** | string | True | -  |  -  | The namespace that is associated with the desired Event Hub, Service Bus Topic, Service Bus Topic, etc. | 
| **var.shared_access_policy_key** | string | False | -  |  -  | The shared access policy key for the specified shared access policy. Required if `authentication_mode` is `ConnectionString`. | 
| **var.shared_access_policy_name** | string | False | -  |  -  | The shared access policy name for the Event Hub, Service Bus Queue, Service Bus Topic, etc. Required if `authentication_mode` is `ConnectionString`. | 
| **var.serialization** | block | True | -  |  -  | A `serialization` block. | 
| **var.property_columns** | list | False | -  |  -  | A list of property columns to add to the Service Bus Topic output. | 
| **var.authentication_mode** | string | False | `ConnectionString`  |  `Msi`, `ConnectionString`  | The authentication mode for the Stream Output. Possible values are `Msi` and `ConnectionString`. Defaults to `ConnectionString`. | 
| **var.system_property_columns** | string | False | -  |  -  | A key-value pair of system property columns that will be attached to the outgoing messages for the Service Bus Topic Output. | 



## Outputs

| Name | Type | Description |
| ---- | ---- | --------- | 
| **name** | string  | - | 
| **resource_group_name** | string  | - | 
| **stream_analytics_job_name** | string  | - | 
| **topic_name** | string  | - | 
| **servicebus_namespace** | string  | - | 
| **shared_access_policy_key** | string  | - | 
| **shared_access_policy_name** | string  | - | 
| **serialization** | block  | - | 
| **property_columns** | list  | - | 
| **authentication_mode** | string  | - | 
| **system_property_columns** | string  | - | 
| **id** | string  | The ID of the Stream Analytics Output ServiceBus Topic. | 