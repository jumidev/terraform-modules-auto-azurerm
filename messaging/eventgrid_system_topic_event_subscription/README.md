# azurerm_eventgrid_system_topic_event_subscription

Manages an EventGrid System Topic Event Subscription.

## Example `component.hclt`

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git" 
   path = "messaging/eventgrid_system_topic_event_subscription" 
}

inputs = {
   name = "name of eventgrid_system_topic_event_subscription" 
   system_topic = "system_topic of eventgrid_system_topic_event_subscription" 
   resource_group_name = "${resource_group}" 
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
| **name** | string |  The name which should be used for this Event Subscription. Changing this forces a new Event Subscription to be created. | 
| **system_topic** | string |  The System Topic where the Event Subscription should be created in. Changing this forces a new Event Subscription to be created. | 
| **resource_group_name** | string |  The name of the Resource Group where the System Topic exists. Changing this forces a new Event Subscription to be created. | 

## Optional Variables

| Name | Type |  Default  |  possible values |  Description |
| ---- | --------- |  ----------- | ----------- | ----------- |
| **expiration_time_utc** | string |  -  |  -  |  Specifies the expiration time of the event subscription (Datetime Format `RFC 3339`). | 
| **event_delivery_schema** | string |  `EventGridSchema`  |  `EventGridSchema`, `CloudEventSchemaV1_0`, `CustomInputSchema`  |  Specifies the event delivery schema for the event subscription. Possible values include: `EventGridSchema`, `CloudEventSchemaV1_0`, `CustomInputSchema`. Defaults to `EventGridSchema`. Changing this forces a new resource to be created. | 
| **azure_function_endpoint** | [block](#azure_function_endpoint-block-structure) |  -  |  -  |  An `azure_function_endpoint` block. | 
| **eventhub_endpoint_id** | string |  -  |  -  |  Specifies the id where the Event Hub is located. | 
| **hybrid_connection_endpoint_id** | string |  -  |  -  |  Specifies the id where the Hybrid Connection is located. | 
| **service_bus_queue_endpoint_id** | string |  -  |  -  |  Specifies the id where the Service Bus Queue is located. | 
| **service_bus_topic_endpoint_id** | string |  -  |  -  |  Specifies the id where the Service Bus Topic is located. | 
| **storage_queue_endpoint** | [block](#storage_queue_endpoint-block-structure) |  -  |  -  |  A `storage_queue_endpoint` block. | 
| **webhook_endpoint** | [block](#webhook_endpoint-block-structure) |  -  |  -  |  A `webhook_endpoint` block. | 
| **included_event_types** | list |  -  |  -  |  A list of applicable event types that need to be part of the event subscription. | 
| **subject_filter** | [block](#subject_filter-block-structure) |  -  |  -  |  A `subject_filter` block. | 
| **advanced_filter** | [block](#advanced_filter-block-structure) |  -  |  -  |  A `advanced_filter` block. | 
| **delivery_identity** | [block](#delivery_identity-block-structure) |  -  |  -  |  A `delivery_identity` block. | 
| **delivery_property** | [block](#delivery_property-block-structure) |  -  |  -  |  One or more `delivery_property` blocks. | 
| **dead_letter_identity** | [block](#dead_letter_identity-block-structure) |  -  |  -  |  A `dead_letter_identity` block. | 
| **storage_blob_dead_letter_destination** | [block](#storage_blob_dead_letter_destination-block-structure) |  -  |  -  |  A `storage_blob_dead_letter_destination` block. | 
| **retry_policy** | [block](#retry_policy-block-structure) |  -  |  -  |  A `retry_policy` block. | 
| **labels** | list |  -  |  -  |  A list of labels to assign to the event subscription. | 
| **advanced_filtering_on_arrays_enabled** | bool |  `False`  |  -  |  Specifies whether advanced filters should be evaluated against an array of values instead of expecting a singular value. Defaults to `false`. | 

### `retry_policy` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `max_delivery_attempts` | int | Yes | - | Specifies the maximum number of delivery retry attempts for events. |
| `event_time_to_live` | string | Yes | - | Specifies the time to live (in minutes) for events. Supported range is '1' to '1440'. See [official documentation](https://docs.microsoft.com/azure/event-grid/manage-event-delivery#set-retry-policy) for more details. |

### `dead_letter_identity` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `type` | string | Yes | - | Specifies the type of Managed Service Identity that is used for dead lettering. Allowed value is 'SystemAssigned', 'UserAssigned'. |
| `user_assigned_identity` | string | No | - | The user identity associated with the resource. |

### `storage_queue_endpoint` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `storage_account_id` | string | Yes | - | Specifies the id of the storage account id where the storage queue is located. |
| `queue_name` | string | Yes | - | Specifies the name of the storage queue where the Event Subscription will receive events. |
| `queue_message_time_to_live_in_seconds` | int | No | - | Storage queue message time to live in seconds. |

### `delivery_property` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `header_name` | string | Yes | - | The name of the header to send on to the destination. |
| `type` | string | Yes | - | Either 'Static' or 'Dynamic'. |
| `value` | string | No | - | If the 'type' is 'Static', then provide the value to use. |
| `source_field` | string | No | - | If the 'type' is 'Dynamic', then provide the payload field to be used as the value. Valid source fields differ by subscription type. |
| `secret` | string | No | - | Set to 'true' if the 'value' is a secret and should be protected, otherwise 'false'. If 'true' then this value won't be returned from Azure API calls. |

### `subject_filter` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `subject_begins_with` | string | No | - | A string to filter events for an event subscription based on a resource path prefix. |
| `subject_ends_with` | string | No | - | A string to filter events for an event subscription based on a resource path suffix. |
| `case_sensitive` | string | No | - | Specifies if 'subject_begins_with' and 'subject_ends_with' case sensitive. This value |

### `azure_function_endpoint` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `function_id` | string | Yes | - | Specifies the ID of the Function where the Event Subscription will receive events. This must be the functions ID in format {function_app.id}/functions/{name}. |
| `max_events_per_batch` | int | No | - | Maximum number of events per batch. |
| `preferred_batch_size_in_kilobytes` | string | No | - | Preferred batch size in Kilobytes. |

### `webhook_endpoint` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `url` | string | Yes | - | Specifies the url of the webhook where the Event Subscription will receive events. |
| `base_url` | string | No | - | (Computed) The base url of the webhook where the Event Subscription will receive events. |
| `max_events_per_batch` | int | No | - | Maximum number of events per batch. |
| `preferred_batch_size_in_kilobytes` | string | No | - | Preferred batch size in Kilobytes. |
| `active_directory_tenant_id` | string | No | - | The Azure Active Directory Tenant ID to get the access token that will be included as the bearer token in delivery requests. |
| `active_directory_app_id_or_uri` | string | No | - | The Azure Active Directory Application ID or URI to get the access token that will be included as the bearer token in delivery requests. |

### `advanced_filter` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `bool_equals` | string | No | - | Compares a value of an event using a single boolean value. |
| `number_greater_than` | string | No | - | Compares a value of an event using a single floating point number. |
| `number_greater_than_or_equals` | string | No | - | Compares a value of an event using a single floating point number. |
| `number_less_than` | string | No | - | Compares a value of an event using a single floating point number. |
| `number_less_than_or_equals` | string | No | - | Compares a value of an event using a single floating point number. |
| `number_in` | string | No | - | Compares a value of an event using multiple floating point numbers. |
| `number_not_in` | string | No | - | Compares a value of an event using multiple floating point numbers. |
| `number_in_range` | string | No | - | Compares a value of an event using multiple floating point number ranges. |
| `number_not_in_range` | string | No | - | Compares a value of an event using multiple floating point number ranges. |
| `string_begins_with` | string | No | - | Compares a value of an event using multiple string values. |
| `string_not_begins_with` | string | No | - | Compares a value of an event using multiple string values. |
| `string_ends_with` | string | No | - | Compares a value of an event using multiple string values. |
| `string_not_ends_with` | string | No | - | Compares a value of an event using multiple string values. |
| `string_contains` | string | No | - | Compares a value of an event using multiple string values. |
| `string_not_contains` | string | No | - | Compares a value of an event using multiple string values. |
| `string_in` | string | No | - | Compares a value of an event using multiple string values. |
| `string_not_in` | string | No | - | Compares a value of an event using multiple string values. |
| `is_not_null` | string | No | - | Evaluates if a value of an event isn't NULL or undefined. |
| `is_null_or_undefined` | string | No | - | Evaluates if a value of an event is NULL or undefined. |
| `key` | string | Yes | - | Specifies the field within the event data that you want to use for filtering. Type of the field can be a number, boolean, or string. |
| `value` | string | Yes | - | Specifies a single value to compare to when using a single value operator. |
| `values` | string | Yes | - | Specifies an array of values to compare to when using a multiple values operator. |

### `storage_blob_dead_letter_destination` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `storage_account_id` | string | Yes | - | Specifies the id of the storage account id where the storage blob is located. |
| `storage_blob_container_name` | string | Yes | - | Specifies the name of the Storage blob container that is the destination of the deadletter events. |

### `delivery_identity` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `type` | string | Yes | - | Specifies the type of Managed Service Identity that is used for event delivery. Allowed value is 'SystemAssigned', 'UserAssigned'. |
| `user_assigned_identity` | string | No | - | The user identity associated with the resource. |



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **id** | string | No  | The ID of the EventGrid System Topic. | 

Additionally, all variables are provided as outputs.
