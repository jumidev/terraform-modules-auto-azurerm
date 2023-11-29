# azurerm_servicebus_subscription

Manages a ServiceBus Subscription.

## Attributes

| Name | Type | Required? | Default  | possible values | Description |
| ---- | ---- | --------- | -------- | ----------- | ----------- |
| **name** | string | True | -  |  -  | Specifies the name of the ServiceBus Subscription resource. Changing this forces a new resource to be created. | 
| **topic_id** | string | True | -  |  -  | The ID of the ServiceBus Topic to create this Subscription in. Changing this forces a new resource to be created. | 
| **max_delivery_count** | int | True | -  |  -  | The maximum number of deliveries. | 
| **auto_delete_on_idle** | string | False | -  |  -  | The idle interval after which the topic is automatically deleted as an [ISO 8601 duration](https://en.wikipedia.org/wiki/ISO_8601#Durations). The minimum duration is `5` minutes or `PT5M`. | 
| **default_message_ttl** | string | False | -  |  -  | The Default message timespan to live as an [ISO 8601 duration](https://en.wikipedia.org/wiki/ISO_8601#Durations). This is the duration after which the message expires, starting from when the message is sent to Service Bus. This is the default value used when TimeToLive is not set on a message itself. | 
| **lock_duration** | string | False | -  |  -  | The lock duration for the subscription as an [ISO 8601 duration](https://en.wikipedia.org/wiki/ISO_8601#Durations). The default value is `1` minute or `P0DT0H1M0S` . The maximum value is `5` minutes or `P0DT0H5M0S` . | 
| **dead_lettering_on_message_expiration** | bool | False | -  |  -  | Boolean flag which controls whether the Subscription has dead letter support when a message expires. | 
| **dead_lettering_on_filter_evaluation_error** | bool | False | `True`  |  -  | Boolean flag which controls whether the Subscription has dead letter support on filter evaluation exceptions. Defaults to `true`. | 
| **enable_batched_operations** | bool | False | -  |  -  | Boolean flag which controls whether the Subscription supports batched operations. | 
| **requires_session** | string | False | -  |  -  | Boolean flag which controls whether this Subscription supports the concept of a session. Changing this forces a new resource to be created. | 
| **forward_to** | string | False | -  |  -  | The name of a Queue or Topic to automatically forward messages to. | 
| **forward_dead_lettered_messages_to** | string | False | -  |  -  | The name of a Queue or Topic to automatically forward Dead Letter messages to. | 
| **status** | string | False | `Active`  |  `Active`, `ReceiveDisabled`, `Disabled`  | The status of the Subscription. Possible values are `Active`,`ReceiveDisabled`, or `Disabled`. Defaults to `Active`. | 
| **client_scoped_subscription_enabled** | bool | False | `False`  |  -  | whether the subscription is scoped to a client id. Defaults to `false`. | 
| **client_scoped_subscription** | block | False | -  |  -  | A `client_scoped_subscription` block. | 

