# azurerm_servicebus_subscription_rule

Manages a ServiceBus Subscription Rule.

## Example `component.hclt`

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git" 
   path = "messaging/servicebus_subscription_rule" 
}

inputs = {
   name = "name of servicebus_subscription_rule" 
   # subscription_id → set in tfstate_inputs
   filter_type = "filter_type of servicebus_subscription_rule" 
}

tfstate_inputs = {
   subscription_id = "path/to/subscription_component:subscription_id" 
}

tfstate_store = {
   storage_account = "${storage_account}" 
   container = "${container}" 
   container_path = "${COMPONENT_PATH}" 
}

```

## Required Variables

| Name | Type |  possible values |  Description |
| ---- | --------- |  ----------- | ----------- |
| **name** | string |  -  |  Specifies the name of the ServiceBus Subscription Rule. Changing this forces a new resource to be created. | 
| **subscription_id** | string |  -  |  The ID of the ServiceBus Subscription in which this Rule should be created. Changing this forces a new resource to be created. | 
| **filter_type** | string |  `SqlFilter`, `CorrelationFilter`  |  Type of filter to be applied to a BrokeredMessage. Possible values are `SqlFilter` and `CorrelationFilter`. | 

## Optional Variables

| Name | Type |  Description |
| ---- | --------- |  ----------- |
| **sql_filter** | string |  Represents a filter written in SQL language-based syntax that to be evaluated against a BrokeredMessage. Required when `filter_type` is set to `SqlFilter`. | 
| **correlation_filter** | [block](#correlation_filter-block-structure) |  A `correlation_filter` block to be evaluated against a BrokeredMessage. Required when `filter_type` is set to `CorrelationFilter`. | 
| **action** | string |  Represents set of actions written in SQL language-based syntax that is performed against a BrokeredMessage. | 

### `correlation_filter` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `content_type` | string | No | - | Content type of the message. |
| `correlation_id` | string | No | - | Identifier of the correlation. |
| `label` | string | No | - | Application specific label. |
| `message_id` | string | No | - | Identifier of the message. |
| `reply_to` | string | No | - | Address of the queue to reply to. |
| `reply_to_session_id` | string | No | - | Session identifier to reply to. |
| `session_id` | string | No | - | Session identifier. |
| `properties` | list | No | - | A list of user defined properties to be included in the filter. Specified as a map of name/value pairs. |



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **id** | string | No  | The ServiceBus Subscription Rule ID. | 

Additionally, all variables are provided as outputs.
