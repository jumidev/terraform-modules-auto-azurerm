# azurerm_eventgrid_event_subscription

Manages an EventGrid Event Subscription

## Variables

| Name | Type | Required? |  Default  |  possible values |  Description |
| ---- | ---- | --------- |  ----------- | ----------- | ----------- |
| **var.name** | string | True | -  |  -  |  Specifies the name of the EventGrid Event Subscription resource. Changing this forces a new resource to be created. | 
| **var.scope** | string | True | -  |  -  |  Specifies the scope at which the EventGrid Event Subscription should be created. Changing this forces a new resource to be created. | 
| **var.expiration_time_utc** | string | False | -  |  -  |  Specifies the expiration time of the event subscription (Datetime Format `RFC 3339`). | 
| **var.event_delivery_schema** | string | False | `EventGridSchema`  |  `EventGridSchema`, `CloudEventSchemaV1_0`, `CustomInputSchema`  |  Specifies the event delivery schema for the event subscription. Possible values include: `EventGridSchema`, `CloudEventSchemaV1_0`, `CustomInputSchema`. Defaults to `EventGridSchema`. Changing this forces a new resource to be created. | 
| **var.azure_function_endpoint** | block | False | -  |  -  |  An `azure_function_endpoint` block. | 
| **var.eventhub_endpoint_id** | string | False | -  |  -  |  Specifies the id where the Event Hub is located. | 
| **var.hybrid_connection_endpoint_id** | string | False | -  |  -  |  Specifies the id where the Hybrid Connection is located. | 
| **var.service_bus_queue_endpoint_id** | string | False | -  |  -  |  Specifies the id where the Service Bus Queue is located. | 
| **var.service_bus_topic_endpoint_id** | string | False | -  |  -  |  Specifies the id where the Service Bus Topic is located. | 
| **var.storage_queue_endpoint** | block | False | -  |  -  |  A `storage_queue_endpoint` block. | 
| **var.webhook_endpoint** | block | False | -  |  -  |  A `webhook_endpoint` block. | 
| **var.included_event_types** | list | False | -  |  -  |  A list of applicable event types that need to be part of the event subscription. | 
| **var.subject_filter** | block | False | -  |  -  |  A `subject_filter` block. | 
| **var.advanced_filter** | block | False | -  |  -  |  A `advanced_filter` block. | 
| **var.delivery_identity** | block | False | -  |  -  |  A `delivery_identity` block. | 
| **var.delivery_property** | block | False | -  |  -  |  One or more `delivery_property` blocks. | 
| **var.dead_letter_identity** | block | False | -  |  -  |  A `dead_letter_identity` block. | 
| **var.storage_blob_dead_letter_destination** | block | False | -  |  -  |  A `storage_blob_dead_letter_destination` block. | 
| **var.retry_policy** | block | False | -  |  -  |  A `retry_policy` block. | 
| **var.labels** | list | False | -  |  -  |  A list of labels to assign to the event subscription. | 
| **var.advanced_filtering_on_arrays_enabled** | bool | False | `False`  |  -  |  Specifies whether advanced filters should be evaluated against an array of values instead of expecting a singular value. Defaults to `false`. | 



## Outputs

| Name | Type | Description |
| ---- | ---- | --------- | 
| **name** | string  | - | 
| **scope** | string  | - | 
| **expiration_time_utc** | string  | - | 
| **event_delivery_schema** | string  | - | 
| **azure_function_endpoint** | block  | - | 
| **eventhub_endpoint_id** | string  | - | 
| **hybrid_connection_endpoint_id** | string  | - | 
| **service_bus_queue_endpoint_id** | string  | - | 
| **service_bus_topic_endpoint_id** | string  | - | 
| **storage_queue_endpoint** | block  | - | 
| **webhook_endpoint** | block  | - | 
| **included_event_types** | list  | - | 
| **subject_filter** | block  | - | 
| **advanced_filter** | block  | - | 
| **delivery_identity** | block  | - | 
| **delivery_property** | block  | - | 
| **dead_letter_identity** | block  | - | 
| **storage_blob_dead_letter_destination** | block  | - | 
| **retry_policy** | block  | - | 
| **labels** | list  | - | 
| **advanced_filtering_on_arrays_enabled** | bool  | - | 
| **id** | string  | The ID of the EventGrid Event Subscription. | 

## Example minimal hclt

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git" 
   path = "messaging/eventgrid_event_subscription" 
}

inputs = {
   name = "name of eventgrid_event_subscription" 
   scope = "scope of eventgrid_event_subscription" 
}

tfstate_store = {
   storage_account = "${storage_account}" 
   container = "${container}" 
   container_path = "${COMPONENT_PATH}" 
}


```