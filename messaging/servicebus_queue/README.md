# azurerm_servicebus_queue

Manages a ServiceBus Queue.

## Example minimal component.hclt

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git" 
   path = "messaging/servicebus_queue" 
}

inputs = {
   name = "name of servicebus_queue" 
   namespace_id = "namespace_id of servicebus_queue" 
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
| **var.name** | string |  Specifies the name of the ServiceBus Queue resource. Changing this forces a new resource to be created. | 
| **var.namespace_id** | string |  The ID of the ServiceBus Namespace to create this queue in. Changing this forces a new resource to be created. | 

## Optional Variables

| Name | Type |  Default  |  possible values |  Description |
| ---- | --------- |  ----------- | ----------- | ----------- |
| **var.lock_duration** | string |  `PT1M`  |  -  |  The ISO 8601 timespan duration of a peek-lock; that is, the amount of time that the message is locked for other receivers. Maximum value is 5 minutes. Defaults to 1 minute (`PT1M`). | 
| **var.max_message_size_in_kilobytes** | int |  -  |  -  |  Integer value which controls the maximum size of a message allowed on the queue for Premium SKU. For supported values see the "Large messages support" section of [this document](https://docs.microsoft.com/azure/service-bus-messaging/service-bus-premium-messaging#large-messages-support-preview). | 
| **var.max_size_in_megabytes** | int |  `1024`  |  -  |  Integer value which controls the size of memory allocated for the queue. For supported values see the "Queue or topic size" section of [Service Bus Quotas](https://docs.microsoft.com/azure/service-bus-messaging/service-bus-quotas). Defaults to `1024`. | 
| **var.requires_duplicate_detection** | bool |  `False`  |  -  |  Boolean flag which controls whether the Queue requires duplicate detection. Changing this forces a new resource to be created. Defaults to `false`. | 
| **var.requires_session** | bool |  `False`  |  -  |  Boolean flag which controls whether the Queue requires sessions. This will allow ordered handling of unbounded sequences of related messages. With sessions enabled a queue can guarantee first-in-first-out delivery of messages. Changing this forces a new resource to be created. Defaults to `false`. | 
| **var.default_message_ttl** | string |  -  |  -  |  The ISO 8601 timespan duration of the TTL of messages sent to this queue. This is the default value used when TTL is not set on message itself. | 
| **var.dead_lettering_on_message_expiration** | bool |  `False`  |  -  |  Boolean flag which controls whether the Queue has dead letter support when a message expires. Defaults to `false`. | 
| **var.duplicate_detection_history_time_window** | string |  `PT10M`  |  -  |  The ISO 8601 timespan duration during which duplicates can be detected. Defaults to 10 minutes (`PT10M`). | 
| **var.max_delivery_count** | int |  `10`  |  -  |  Integer value which controls when a message is automatically dead lettered. Defaults to `10`. | 
| **var.status** | string |  `Active`  |  `Active`, `Creating`, `Deleting`, `Disabled`, `ReceiveDisabled`, `Renaming`, `SendDisabled`, `Unknown`  |  The status of the Queue. Possible values are `Active`, `Creating`, `Deleting`, `Disabled`, `ReceiveDisabled`, `Renaming`, `SendDisabled`, `Unknown`. Note that `Restoring` is not accepted. Defaults to `Active`. | 
| **var.enable_batched_operations** | bool |  `True`  |  -  |  Boolean flag which controls whether server-side batched operations are enabled. Defaults to `true`. | 
| **var.auto_delete_on_idle** | string |  -  |  -  |  The ISO 8601 timespan duration of the idle interval after which the Queue is automatically deleted, minimum of 5 minutes. | 
| **var.enable_partitioning** | bool |  `False`  |  -  |  Boolean flag which controls whether to enable the queue to be partitioned across multiple message brokers. Changing this forces a new resource to be created. Defaults to `false` for Basic and Standard. | 
| **var.enable_express** | bool |  `False`  |  -  |  Boolean flag which controls whether Express Entities are enabled. An express queue holds a message in memory temporarily before writing it to persistent storage. Defaults to `false` for Basic and Standard. For Premium, it MUST be set to `false`. | 
| **var.forward_to** | string |  -  |  -  |  The name of a Queue or Topic to automatically forward messages to. Please [see the documentation](https://docs.microsoft.com/azure/service-bus-messaging/service-bus-auto-forwarding) for more information. | 
| **var.forward_dead_lettered_messages_to** | string |  -  |  -  |  The name of a Queue or Topic to automatically forward dead lettered messages to. | 



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **id** | string | No  | The ServiceBus Queue ID. | 

Additionally, all variables are provided as outputs.
