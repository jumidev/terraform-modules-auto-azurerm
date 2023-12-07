# azurerm_servicebus_subscription

Manages a ServiceBus Subscription.

## Example `component.hclt`

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git"   
   path = "messaging/servicebus_subscription"   
}

inputs = {
   name = "Specifies the name of the ServiceBus Subscription resource..."   
   topic_id = "The ID of the ServiceBus Topic to create this Subscription in..."   
   max_delivery_count = "The maximum number of deliveries"   
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
| **name** | string |  Specifies the name of the ServiceBus Subscription resource. Changing this forces a new resource to be created. | 
| **topic_id** | string |  The ID of the ServiceBus Topic to create this Subscription in. Changing this forces a new resource to be created. | 
| **max_delivery_count** | int |  The maximum number of deliveries. | 

## Optional Variables

| Name | Type |  Default  |  possible values |  Description |
| ---- | --------- |  ----------- | ----------- | ----------- |
| **auto_delete_on_idle** | string |  -  |  -  |  The idle interval after which the topic is automatically deleted as an [ISO 8601 duration](https://en.wikipedia.org/wiki/ISO_8601#Durations). The minimum duration is `5` minutes or `PT5M`. | 
| **default_message_ttl** | string |  -  |  -  |  The Default message timespan to live as an [ISO 8601 duration](https://en.wikipedia.org/wiki/ISO_8601#Durations). This is the duration after which the message expires, starting from when the message is sent to Service Bus. This is the default value used when TimeToLive is not set on a message itself. | 
| **lock_duration** | string |  `1`  |  -  |  The lock duration for the subscription as an [ISO 8601 duration](https://en.wikipedia.org/wiki/ISO_8601#Durations). The default value is `1` minute or `P0DT0H1M0S` . The maximum value is `5` minutes or `P0DT0H5M0S` . | 
| **dead_lettering_on_message_expiration** | bool |  -  |  -  |  Boolean flag which controls whether the Subscription has dead letter support when a message expires. | 
| **dead_lettering_on_filter_evaluation_error** | bool |  `True`  |  -  |  Boolean flag which controls whether the Subscription has dead letter support on filter evaluation exceptions. Defaults to `true`. | 
| **enable_batched_operations** | bool |  -  |  -  |  Boolean flag which controls whether the Subscription supports batched operations. | 
| **requires_session** | string |  -  |  -  |  Boolean flag which controls whether this Subscription supports the concept of a session. Changing this forces a new resource to be created. | 
| **forward_to** | string |  -  |  -  |  The name of a Queue or Topic to automatically forward messages to. | 
| **forward_dead_lettered_messages_to** | string |  -  |  -  |  The name of a Queue or Topic to automatically forward Dead Letter messages to. | 
| **status** | string |  `Active`  |  `Active`, `ReceiveDisabled`, `Disabled`  |  The status of the Subscription. Possible values are `Active`,`ReceiveDisabled`, or `Disabled`. Defaults to `Active`. | 
| **client_scoped_subscription_enabled** | bool |  `False`  |  -  |  whether the subscription is scoped to a client id. Defaults to `false`. | 
| **client_scoped_subscription** | [block](#client_scoped_subscription-block-structure) |  -  |  -  |  A `client_scoped_subscription` block. | 

### `client_scoped_subscription` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `client_id` | string | No | - | Specifies the Client ID of the application that created the client-scoped subscription. Changing this forces a new resource to be created. |
| `is_client_scoped_subscription_shareable` | bool | No | True | Whether the client scoped subscription is shareable. Defaults to 'true' Changing this forces a new resource to be created. |
| `is_client_scoped_subscription_durable` | bool | No | - | Whether the client scoped subscription is durable. This property can only be controlled from the application side. |



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **id** | string | No  | The ServiceBus Subscription ID. | 

Additionally, all variables are provided as outputs.
