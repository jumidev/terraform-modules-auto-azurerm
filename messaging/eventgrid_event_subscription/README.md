# azurerm_eventgrid_event_subscription

Manages an EventGrid Event Subscription

## Example minimal component.hclt

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

### `azure_function_endpoint` block structure

> `function_id` (string): (REQUIRED) Specifies the ID of the Function where the Event Subscription will receive events. This must be the functions ID in format {function_app.id}/functions/{name}.
> `max_events_per_batch` (int): Maximum number of events per batch.
> `preferred_batch_size_in_kilobytes` (string): Preferred batch size in Kilobytes.

### `storage_queue_endpoint` block structure

> `storage_account_id` (string): (REQUIRED) Specifies the id of the storage account id where the storage queue is located.
> `queue_name` (string): (REQUIRED) Specifies the name of the storage queue where the Event Subscription will receive events.
> `queue_message_time_to_live_in_seconds` (int): Storage queue message time to live in seconds.

### `webhook_endpoint` block structure

> `url` (string): (REQUIRED) Specifies the url of the webhook where the Event Subscription will receive events.
> `base_url` (string): (Computed) The base url of the webhook where the Event Subscription will receive events.
> `max_events_per_batch` (int): Maximum number of events per batch.
> `preferred_batch_size_in_kilobytes` (string): Preferred batch size in Kilobytes.
> `active_directory_tenant_id` (string): The Azure Active Directory Tenant ID to get the access token that will be included as the bearer token in delivery requests.
> `active_directory_app_id_or_uri` (string): The Azure Active Directory Application ID or URI to get the access token that will be included as the bearer token in delivery requests.

### `subject_filter` block structure

> `subject_begins_with` (string): A string to filter events for an event subscription based on a resource path prefix.
> `subject_ends_with` (string): A string to filter events for an event subscription based on a resource path suffix.
> `case_sensitive` (string): Specifies if 'subject_begins_with' and 'subject_ends_with' case sensitive. This value

### `advanced_filter` block structure

> `bool_equals` (string): Compares a value of an event using a single boolean value.
> `number_greater_than` (string): Compares a value of an event using a single floating point number.
> `number_greater_than_or_equals` (string): Compares a value of an event using a single floating point number.
> `number_less_than` (string): Compares a value of an event using a single floating point number.
> `number_less_than_or_equals` (string): Compares a value of an event using a single floating point number.
> `number_in` (string): Compares a value of an event using multiple floating point numbers.
> `number_not_in` (string): Compares a value of an event using multiple floating point numbers.
> `number_in_range` (string): Compares a value of an event using multiple floating point number ranges.
> `number_not_in_range` (string): Compares a value of an event using multiple floating point number ranges.
> `string_begins_with` (string): Compares a value of an event using multiple string values.
> `string_not_begins_with` (string): Compares a value of an event using multiple string values.
> `string_ends_with` (string): Compares a value of an event using multiple string values.
> `string_not_ends_with` (string): Compares a value of an event using multiple string values.
> `string_contains` (string): Compares a value of an event using multiple string values.
> `string_not_contains` (string): Compares a value of an event using multiple string values.
> `string_in` (string): Compares a value of an event using multiple string values.
> `string_not_in` (string): Compares a value of an event using multiple string values.
> `is_not_null` (string): Evaluates if a value of an event isn't NULL or undefined.
> `is_null_or_undefined` (string): Evaluates if a value of an event is NULL or undefined.
> `key` (string): (REQUIRED) Specifies the field within the event data that you want to use for filtering. Type of the field can be a number, boolean, or string.
> `value` (string): (REQUIRED) Specifies a single value to compare to when using a single value operator.
> `values` (string): (REQUIRED) Specifies an array of values to compare to when using a multiple values operator.

### `delivery_identity` block structure

> `type` (string): (REQUIRED) Specifies the type of Managed Service Identity that is used for event delivery. Allowed value is 'SystemAssigned', 'UserAssigned'.
> `user_assigned_identity` (string): The user identity associated with the resource.

### `delivery_property` block structure

> `header_name` (string): (REQUIRED) The name of the header to send on to the destination
> `type` (string): (REQUIRED) Either 'Static' or 'Dynamic'
> `value` (string): If the 'type' is 'Static', then provide the value to use
> `source_field` (string): If the 'type' is 'Dynamic', then provide the payload field to be used as the value. Valid source fields differ by subscription type.
> `secret` (string): True if the 'value' is a secret and should be protected, otherwise false. If True, then this value won't be returned from Azure API calls

### `dead_letter_identity` block structure

> `type` (string): (REQUIRED) Specifies the type of Managed Service Identity that is used for dead lettering. Allowed value is 'SystemAssigned', 'UserAssigned'.
> `user_assigned_identity` (string): The user identity associated with the resource.

### `storage_blob_dead_letter_destination` block structure

> `storage_account_id` (string): (REQUIRED) Specifies the id of the storage account id where the storage blob is located.
> `storage_blob_container_name` (string): (REQUIRED) Specifies the name of the Storage blob container that is the destination of the deadletter events.

### `retry_policy` block structure

> `max_delivery_attempts` (int): (REQUIRED) Specifies the maximum number of delivery retry attempts for events.
> `event_time_to_live` (string): (REQUIRED) Specifies the time to live (in minutes) for events. Supported range is '1' to '1440'. See [official documentation](https://docs.microsoft.com/azure/event-grid/manage-event-delivery#set-retry-policy) for more details.



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **id** | string | No  | The ID of the EventGrid Event Subscription. | 

Additionally, all variables are provided as outputs.
