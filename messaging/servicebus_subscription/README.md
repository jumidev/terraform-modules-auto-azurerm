# azurerm_servicebus_subscription

Manages a ServiceBus Subscription.

## Variables

| Name | Type | Required? | Default  | possible values | Description |
| ---- | ---- | --------- | -------- | ----------- | ----------- |
| **var.name** | string | True | -  |  -  | Specifies the name of the ServiceBus Subscription resource. Changing this forces a new resource to be created. | 
| **var.topic_id** | string | True | -  |  -  | The ID of the ServiceBus Topic to create this Subscription in. Changing this forces a new resource to be created. | 
| **var.max_delivery_count** | int | True | -  |  -  | The maximum number of deliveries. | 
| **var.auto_delete_on_idle** | string | False | -  |  -  | The idle interval after which the topic is automatically deleted as an [ISO 8601 duration](https://en.wikipedia.org/wiki/ISO_8601#Durations). The minimum duration is `5` minutes or `PT5M`. | 
| **var.default_message_ttl** | string | False | -  |  -  | The Default message timespan to live as an [ISO 8601 duration](https://en.wikipedia.org/wiki/ISO_8601#Durations). This is the duration after which the message expires, starting from when the message is sent to Service Bus. This is the default value used when TimeToLive is not set on a message itself. | 
| **var.lock_duration** | string | False | -  |  -  | The lock duration for the subscription as an [ISO 8601 duration](https://en.wikipedia.org/wiki/ISO_8601#Durations). The default value is `1` minute or `P0DT0H1M0S` . The maximum value is `5` minutes or `P0DT0H5M0S` . | 
| **var.dead_lettering_on_message_expiration** | bool | False | -  |  -  | Boolean flag which controls whether the Subscription has dead letter support when a message expires. | 
| **var.dead_lettering_on_filter_evaluation_error** | bool | False | `True`  |  -  | Boolean flag which controls whether the Subscription has dead letter support on filter evaluation exceptions. Defaults to `true`. | 
| **var.enable_batched_operations** | bool | False | -  |  -  | Boolean flag which controls whether the Subscription supports batched operations. | 
| **var.requires_session** | string | False | -  |  -  | Boolean flag which controls whether this Subscription supports the concept of a session. Changing this forces a new resource to be created. | 
| **var.forward_to** | string | False | -  |  -  | The name of a Queue or Topic to automatically forward messages to. | 
| **var.forward_dead_lettered_messages_to** | string | False | -  |  -  | The name of a Queue or Topic to automatically forward Dead Letter messages to. | 
| **var.status** | string | False | `Active`  |  `Active`, `ReceiveDisabled`, `Disabled`  | The status of the Subscription. Possible values are `Active`,`ReceiveDisabled`, or `Disabled`. Defaults to `Active`. | 
| **var.client_scoped_subscription_enabled** | bool | False | `False`  |  -  | whether the subscription is scoped to a client id. Defaults to `false`. | 
| **var.client_scoped_subscription** | block | False | -  |  -  | A `client_scoped_subscription` block. | 



## Outputs

| Name | Type | Description |
| ---- | ---- | --------- | 
| **name** | string  | - | 
| **topic_id** | string  | - | 
| **max_delivery_count** | int  | - | 
| **auto_delete_on_idle** | string  | - | 
| **default_message_ttl** | string  | - | 
| **lock_duration** | string  | - | 
| **dead_lettering_on_message_expiration** | bool  | - | 
| **dead_lettering_on_filter_evaluation_error** | bool  | - | 
| **enable_batched_operations** | bool  | - | 
| **requires_session** | string  | - | 
| **forward_to** | string  | - | 
| **forward_dead_lettered_messages_to** | string  | - | 
| **status** | string  | - | 
| **client_scoped_subscription_enabled** | bool  | - | 
| **client_scoped_subscription** | block  | - | 
| **id** | string  | The ServiceBus Subscription ID. | 