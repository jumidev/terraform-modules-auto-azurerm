# azurerm_eventgrid_system_topic_event_subscription

Manages an EventGrid System Topic Event Subscription.

## Attributes

| Name | Type | Required? | Default  | possible values | Description |
| ---- | ---- | --------- | -------- | ----------- | ----------- |
| **name** | string | True | -  |  -  | The name which should be used for this Event Subscription. Changing this forces a new Event Subscription to be created. | 
| **system_topic** | string | True | -  |  -  | The System Topic where the Event Subscription should be created in. Changing this forces a new Event Subscription to be created. | 
| **resource_group_name** | string | True | -  |  -  | The name of the Resource Group where the System Topic exists. Changing this forces a new Event Subscription to be created. | 
| **expiration_time_utc** | string | False | -  |  -  | Specifies the expiration time of the event subscription (Datetime Format `RFC 3339`). | 
| **event_delivery_schema** | string | False | `EventGridSchema`  |  `EventGridSchema`, `CloudEventSchemaV1_0`, `CustomInputSchema`  | Specifies the event delivery schema for the event subscription. Possible values include: `EventGridSchema`, `CloudEventSchemaV1_0`, `CustomInputSchema`. Defaults to `EventGridSchema`. Changing this forces a new resource to be created. | 
| **azure_function_endpoint** | block | False | -  |  -  | An `azure_function_endpoint` block. | 
| **eventhub_endpoint_id** | string | False | -  |  -  | Specifies the id where the Event Hub is located. | 
| **hybrid_connection_endpoint_id** | string | False | -  |  -  | Specifies the id where the Hybrid Connection is located. | 
| **service_bus_queue_endpoint_id** | string | False | -  |  -  | Specifies the id where the Service Bus Queue is located. | 
| **service_bus_topic_endpoint_id** | string | False | -  |  -  | Specifies the id where the Service Bus Topic is located. | 
| **storage_queue_endpoint** | block | False | -  |  -  | A `storage_queue_endpoint` block. | 
| **webhook_endpoint** | block | False | -  |  -  | A `webhook_endpoint` block. | 
| **included_event_types** | list | False | -  |  -  | A list of applicable event types that need to be part of the event subscription. | 
| **subject_filter** | block | False | -  |  -  | A `subject_filter` block. | 
| **advanced_filter** | block | False | -  |  -  | A `advanced_filter` block. | 
| **delivery_identity** | block | False | -  |  -  | A `delivery_identity` block. | 
| **delivery_property** | block | False | -  |  -  | One or more `delivery_property` blocks. | 
| **dead_letter_identity** | block | False | -  |  -  | A `dead_letter_identity` block. | 
| **storage_blob_dead_letter_destination** | block | False | -  |  -  | A `storage_blob_dead_letter_destination` block. | 
| **retry_policy** | block | False | -  |  -  | A `retry_policy` block. | 
| **labels** | list | False | -  |  -  | A list of labels to assign to the event subscription. | 
| **advanced_filtering_on_arrays_enabled** | bool | False | `False`  |  -  | Specifies whether advanced filters should be evaluated against an array of values instead of expecting a singular value. Defaults to `false`. | 

