# azurerm_servicebus_subscription_rule

Manages a ServiceBus Subscription Rule.

## Variables

| Name | Type | Required? |  possible values |  Description |
| ---- | ---- | --------- |  ----------- | ----------- |
| **var.name** | string | True | -  |  Specifies the name of the ServiceBus Subscription Rule. Changing this forces a new resource to be created. | 
| **var.subscription_id** | string | True | -  |  The ID of the ServiceBus Subscription in which this Rule should be created. Changing this forces a new resource to be created. | 
| **var.filter_type** | string | True | `SqlFilter`, `CorrelationFilter`  |  Type of filter to be applied to a BrokeredMessage. Possible values are `SqlFilter` and `CorrelationFilter`. | 
| **var.sql_filter** | string | False | -  |  Represents a filter written in SQL language-based syntax that to be evaluated against a BrokeredMessage. Required when `filter_type` is set to `SqlFilter`. | 
| **var.correlation_filter** | block | False | -  |  A `correlation_filter` block to be evaluated against a BrokeredMessage. Required when `filter_type` is set to `CorrelationFilter`. | 
| **var.action** | string | False | -  |  Represents set of actions written in SQL language-based syntax that is performed against a BrokeredMessage. | 



## Outputs

| Name | Type | Description |
| ---- | ---- | --------- | 
| **name** | string  | - | 
| **subscription_id** | string  | - | 
| **filter_type** | string  | - | 
| **sql_filter** | string  | - | 
| **correlation_filter** | block  | - | 
| **action** | string  | - | 
| **id** | string  | The ServiceBus Subscription Rule ID. | 

## Example minimal hclt

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