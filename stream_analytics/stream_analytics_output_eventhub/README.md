# azurerm_stream_analytics_output_eventhub

Manages a Stream Analytics Output to an EventHub.

## Variables

| Name | Type | Required? |  Default  |  possible values |  Description |
| ---- | ---- | --------- |  ----------- | ----------- | ----------- |
| **var.name** | string | True | -  |  -  |  The name of the Stream Output. Changing this forces a new resource to be created. | 
| **var.resource_group_name** | string | True | -  |  -  |  The name of the Resource Group where the Stream Analytics Job exists. Changing this forces a new resource to be created. | 
| **var.stream_analytics_job_name** | string | True | -  |  -  |  The name of the Stream Analytics Job. Changing this forces a new resource to be created. | 
| **var.eventhub_name** | string | True | -  |  -  |  The name of the Event Hub. | 
| **var.servicebus_namespace** | string | True | -  |  -  |  The namespace that is associated with the desired Event Hub, Service Bus Queue, Service Bus Topic, etc. | 
| **var.shared_access_policy_key** | string | False | -  |  -  |  The shared access policy key for the specified shared access policy. Required when `authentication_mode` is set to `ConnectionString`. | 
| **var.shared_access_policy_name** | string | False | -  |  -  |  The shared access policy name for the Event Hub, Service Bus Queue, Service Bus Topic, etc. Required when `authentication_mode` is set to `ConnectionString`. | 
| **var.serialization** | block | True | -  |  -  |  A `serialization` block. | 
| **var.property_columns** | list | False | -  |  -  |  A list of property columns to add to the Event Hub output. | 
| **var.authentication_mode** | string | False | `ConnectionString`  |  `Msi`, `ConnectionString`  |  The authentication mode for the Stream Output. Possible values are `Msi` and `ConnectionString`. Defaults to `ConnectionString`. | 
| **var.partition_key** | string | False | -  |  -  |  The column that is used for the Event Hub partition key. | 



## Outputs

| Name | Type | Description |
| ---- | ---- | --------- | 
| **name** | string  | - | 
| **resource_group_name** | string  | - | 
| **stream_analytics_job_name** | string  | - | 
| **eventhub_name** | string  | - | 
| **servicebus_namespace** | string  | - | 
| **shared_access_policy_key** | string  | - | 
| **shared_access_policy_name** | string  | - | 
| **serialization** | block  | - | 
| **property_columns** | list  | - | 
| **authentication_mode** | string  | - | 
| **partition_key** | string  | - | 
| **id** | string  | The ID of the Stream Analytics Output EventHub. | 