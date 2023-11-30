# azurerm_servicebus_topic

Manages a ServiceBus Topic.**Note** Topics can only be created in Namespaces with an SKU of `standard` or higher.

## Example minimal component.hclt

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git" 
   path = "messaging/servicebus_topic" 
}

inputs = {
   name = "name of servicebus_topic" 
   namespace_id = "namespace_id of servicebus_topic" 
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
| **var.name** | string  Specifies the name of the ServiceBus Topic resource. Changing this forces a new resource to be created. | 
| **var.namespace_id** | string  The ID of the ServiceBus Namespace to create Changing this forces a new resource to be created. this topic in. Changing this forces a new resource to be created. | 

## Optional Variables

| Name | Type |  Default  |  Description |
| ---- | --------- |  ----------- | ----------- |
| **var.status** | string  `Active`  |  The Status of the Service Bus Topic. Acceptable values are `Active` or `Disabled`. Defaults to `Active`. | 
| **var.auto_delete_on_idle** | string  -  |  The ISO 8601 timespan duration of the idle interval after which the Topic is automatically deleted, minimum of 5 minutes. | 
| **var.default_message_ttl** | string  -  |  The ISO 8601 timespan duration of TTL of messages sent to this topic if no TTL value is set on the message itself. | 
| **var.duplicate_detection_history_time_window** | string  `PT10M`  |  The ISO 8601 timespan duration during which duplicates can be detected. Defaults to 10 minutes. (`PT10M`) | 
| **var.enable_batched_operations** | bool  -  |  Boolean flag which controls if server-side batched operations are enabled. | 
| **var.enable_express** | bool  -  |  Boolean flag which controls whether Express Entities are enabled. An express topic holds a message in memory temporarily before writing it to persistent storage. | 
| **var.enable_partitioning** | bool  -  |  Boolean flag which controls whether to enable the topic to be partitioned across multiple message brokers. Changing this forces a new resource to be created. | 
| **var.max_message_size_in_kilobytes** | int  -  |  Integer value which controls the maximum size of a message allowed on the topic for Premium SKU. For supported values see the "Large messages support" section of [this document](https://docs.microsoft.com/azure/service-bus-messaging/service-bus-premium-messaging#large-messages-support-preview). | 
| **var.max_size_in_megabytes** | int  -  |  Integer value which controls the size of memory allocated for the topic. For supported values see the "Queue/topic size" section of [this document](https://docs.microsoft.com/azure/service-bus-messaging/service-bus-quotas). | 
| **var.requires_duplicate_detection** | string  -  |  Boolean flag which controls whether Changing this forces a new resource to be created. the Topic requires duplicate detection. Defaults to false. Changing this forces a new resource to be created. | 
| **var.support_ordering** | bool  -  |  Boolean flag which controls whether the Topic supports ordering. | 



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **id** | string | No  | The ServiceBus Topic ID. | 

Additionally, all variables are provided as outputs.
