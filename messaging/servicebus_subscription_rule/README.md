# azurerm_servicebus_subscription_rule

Manages a ServiceBus Subscription Rule.

## Attributes

| Name | Type | Required? | Default  | possible values | Description |
| ---- | ---- | --------- | -------- | ----------- | ----------- |
| **name** | string | True | -  |  -  | Specifies the name of the ServiceBus Subscription Rule. Changing this forces a new resource to be created. | 
| **subscription_id** | string | True | -  |  -  | The ID of the ServiceBus Subscription in which this Rule should be created. Changing this forces a new resource to be created. | 
| **filter_type** | string | True | -  |  `SqlFilter`, `CorrelationFilter`  | Type of filter to be applied to a BrokeredMessage. Possible values are `SqlFilter` and `CorrelationFilter`. | 
| **sql_filter** | string | False | -  |  -  | Represents a filter written in SQL language-based syntax that to be evaluated against a BrokeredMessage. Required when `filter_type` is set to `SqlFilter`. | 
| **correlation_filter** | block | False | -  |  -  | A `correlation_filter` block to be evaluated against a BrokeredMessage. Required when `filter_type` is set to `CorrelationFilter`. | 
| **action** | string | False | -  |  -  | Represents set of actions written in SQL language-based syntax that is performed against a BrokeredMessage. | 

