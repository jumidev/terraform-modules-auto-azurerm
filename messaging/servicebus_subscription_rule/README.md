# azurerm_servicebus_subscription_rule

Manages a ServiceBus Subscription Rule.

## Example minimal component.hclt

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git" 
   path = "messaging/servicebus_subscription_rule" 
}

inputs = {
   name = "name of servicebus_subscription_rule" 
   subscription_id = "subscription_id of servicebus_subscription_rule" 
   filter_type = "filter_type of servicebus_subscription_rule" 
}

tfstate_store = {
   storage_account = "${storage_account}" 
   container = "${container}" 
   container_path = "${COMPONENT_PATH}" 
}

```

## Variables

| Name | Type | Required? |  possible values |  Description |
| ---- | ---- | --------- |  ----------- | ----------- |
| **var.name** | string | True | -  |  Specifies the name of the ServiceBus Subscription Rule. Changing this forces a new resource to be created. | 
| **var.subscription_id** | string | True | -  |  The ID of the ServiceBus Subscription in which this Rule should be created. Changing this forces a new resource to be created. | 
| **var.filter_type** | string | True | `SqlFilter`, `CorrelationFilter`  |  Type of filter to be applied to a BrokeredMessage. Possible values are `SqlFilter` and `CorrelationFilter`. | 
| **var.sql_filter** | string | False | -  |  Represents a filter written in SQL language-based syntax that to be evaluated against a BrokeredMessage. Required when `filter_type` is set to `SqlFilter`. | 
| **var.correlation_filter** | block | False | -  |  A `correlation_filter` block to be evaluated against a BrokeredMessage. Required when `filter_type` is set to `CorrelationFilter`. | 
| **var.action** | string | False | -  |  Represents set of actions written in SQL language-based syntax that is performed against a BrokeredMessage. | 

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
