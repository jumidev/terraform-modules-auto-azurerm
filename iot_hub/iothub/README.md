# azurerm_iothub

Manages an IotHub~> **NOTE:** Endpoints can be defined either directly on the `azurerm_iothub` resource, or using the `azurerm_iothub_endpoint_*` resources - but the two ways of defining the endpoints cannot be used together. If both are used against the same IoTHub, spurious changes will occur. Also, defining a `azurerm_iothub_endpoint_*` resource and another endpoint of a different type directly on the `azurerm_iothub` resource is not supported.~> **NOTE:** Routes can be defined either directly on the `azurerm_iothub` resource, or using the `azurerm_iothub_route` resource - but the two cannot be used together. If both are used against the same IoTHub, spurious changes will occur.~> **NOTE:** Enrichments can be defined either directly on the `azurerm_iothub` resource, or using the `azurerm_iothub_enrichment` resource - but the two cannot be used together. If both are used against the same IoTHub, spurious changes will occur.~> **NOTE:** Fallback route can be defined either directly on the `azurerm_iothub` resource, or using the `azurerm_iothub_fallback_route` resource - but the two cannot be used together. If both are used against the same IoTHub, spurious changes will occur.~> **NOTE:** File upload can be defined either directly on the `azurerm_iothub` resource, or using the `azurerm_iothub_file_upload` resource - but the two cannot be used together. If both are used against the same IoTHub, spurious changes will occur.

## Example `component.hclt`

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git" 
   path = "iot_hub/iothub" 
}

inputs = {
   name = "name of iothub" 
   resource_group_name = "${resource_group}" 
   location = "${location}" 
   sku = {
      example_sku = {
         capacity = "..."   
      }
  
   }
 
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
| **name** | string |  Specifies the name of the IotHub resource. Changing this forces a new resource to be created. | 
| **resource_group_name** | string |  The name of the resource group under which the IotHub resource has to be created. Changing this forces a new resource to be created. | 
| **location** | string |  Specifies the supported Azure location where the resource has to be created. Changing this forces a new resource to be created. | 
| **sku** | [block](#sku-block-structure) |  A `sku` block. | 

## Optional Variables

| Name | Type |  Default  |  Description |
| ---- | --------- |  ----------- | ----------- |
| **local_authentication_enabled** | bool |  `True`  |  If false, SAS tokens with Iot hub scoped SAS keys cannot be used for authentication. Defaults to `true`. | 
| **event_hub_partition_count** | int |  -  |  The number of device-to-cloud partitions used by backing event hubs. Must be between `2` and `128`. | 
| **event_hub_retention_in_days** | int |  -  |  The event hub retention to use in days. Must be between `1` and `7`. | 
| **endpoint** | [block](#endpoint-block-structure) |  -  |  An `endpoint` block. | 
| **fallback_route** | [block](#fallback_route-block-structure) |  -  |  A `fallback_route` block. If the fallback route is enabled, messages that don't match any of the supplied routes are automatically sent to this route. Defaults to messages/events. | 
| **file_upload** | [block](#file_upload-block-structure) |  -  |  A `file_upload` block. | 
| **identity** | [block](#identity-block-structure) |  -  |  An `identity` block. | 
| **network_rule_set** | [block](#network_rule_set-block-structure) |  -  |  A `network_rule_set` block. | 
| **route** | [block](#route-block-structure) |  -  |  A `route` block. | 
| **enrichment** | [block](#enrichment-block-structure) |  -  |  A `enrichment` block. | 
| **cloud_to_device** | [block](#cloud_to_device-block-structure) |  -  |  A `cloud_to_device` block. | 
| **public_network_access_enabled** | bool |  -  |  Is the IotHub resource accessible from a public network? | 
| **min_tls_version** | string |  -  |  Specifies the minimum TLS version to support for this hub. The only valid value is `1.2`. Changing this forces a new resource to be created. | 
| **tags** | map |  -  |  A mapping of tags to assign to the resource. | 

### `sku` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `capacity` | int | Yes | - | The number of provisioned IoT Hub units. |

### `endpoint` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `type` | string | Yes | - | The type of the endpoint. Possible values are 'AzureIotHub.StorageContainer', 'AzureIotHub.ServiceBusQueue', 'AzureIotHub.ServiceBusTopic' or 'AzureIotHub.EventHub'. |
| `authentication_type` | string | No | keyBased | The type used to authenticate against the endpoint. Possible values are 'keyBased' and 'identityBased'. Defaults to 'keyBased'. |
| `identity_id` | string | No | - | The ID of the User Managed Identity used to authenticate against the endpoint. |
| `endpoint_uri` | string | No | - | URI of the Service Bus or Event Hubs Namespace endpoint. This attribute can only be specified and is mandatory when 'authentication_type' is 'identityBased' for endpoint type 'AzureIotHub.ServiceBusQueue', 'AzureIotHub.ServiceBusTopic' or 'AzureIotHub.EventHub'. |
| `entity_path` | string | No | - | Name of the Service Bus Queue/Topic or Event Hub. This attribute can only be specified and is mandatory when 'authentication_type' is 'identityBased' for endpoint type 'AzureIotHub.ServiceBusQueue', 'AzureIotHub.ServiceBusTopic' or 'AzureIotHub.EventHub'. |
| `connection_string` | string | No | - | The connection string for the endpoint. This attribute is mandatory and can only be specified when 'authentication_type' is 'keyBased'. |
| `batch_frequency_in_seconds` | int | No | - | Time interval at which blobs are written to storage. Value should be between 60 and 720 seconds. Default value is 300 seconds. This attribute is applicable for endpoint type 'AzureIotHub.StorageContainer'. |
| `max_chunk_size_in_bytes` | int | No | - | Maximum number of bytes for each blob written to storage. Value should be between 10485760(10MB) and 524288000(500MB). Default value is 314572800(300MB). This attribute is applicable for endpoint type 'AzureIotHub.StorageContainer'. |
| `container_name` | string | No | - | The name of storage container in the storage account. This attribute is mandatory for endpoint type 'AzureIotHub.StorageContainer'. |
| `encoding` | string | No | - | Encoding that is used to serialize messages to blobs. Supported values are 'Avro', 'AvroDeflate' and 'JSON'. Default value is 'Avro'. This attribute is applicable for endpoint type 'AzureIotHub.StorageContainer'. Changing this forces a new resource to be created. |
| `file_name_format` | string | No | {iothub}/{partition}/{YYYY}/{MM}/{DD}/{HH}/{mm} | File name format for the blob. All parameters are mandatory but can be reordered. This attribute is applicable for endpoint type 'AzureIotHub.StorageContainer'. Defaults to '{iothub}/{partition}/{YYYY}/{MM}/{DD}/{HH}/{mm}'. |
| `resource_group_name` | string | No | - | The resource group in which the endpoint will be created. |

### `cloud_to_device` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `max_delivery_count` | int | No | 10 | The maximum delivery count for cloud-to-device per-device queues. This value must be between '1' and '100'. Defaults to '10'. |
| `default_ttl` | string | No | PT1H | The default time to live for cloud-to-device messages, specified as an [ISO 8601 timespan duration](https://en.wikipedia.org/wiki/ISO_8601#Durations). This value must be between 1 minute and 48 hours. Defaults to 'PT1H'. |
| `feedback` | [block](#cloud_to_device-block-structure) | No | - | A 'feedback' block. |

### `enrichment` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `key` | string | Yes | - | The key of the enrichment. |
| `value` | string | Yes | - | The value of the enrichment. Value can be any static string, the name of the IoT Hub sending the message (use '$iothubname') or information from the device twin (ex: '$twin.tags.latitude') |
| `endpoint_names` | string | Yes | - | The list of endpoints which will be enriched. |

### `route` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `source` | string | Yes | - | The source that the routing rule is to be applied to, such as 'DeviceMessages'. Possible values include: 'Invalid', 'DeviceMessages', 'TwinChangeEvents', 'DeviceLifecycleEvents', 'DeviceConnectionStateEvents', 'DeviceJobLifecycleEvents' and 'DigitalTwinChangeEvents'. |
| `condition` | bool | No | True | The condition that is evaluated to apply the routing rule. Defaults to 'true'. For grammar, see: <https://docs.microsoft.com/azure/iot-hub/iot-hub-devguide-query-language>. |
| `endpoint_names` | string | Yes | - | The list of endpoints to which messages that satisfy the condition are routed. |
| `enabled` | bool | Yes | - | Used to specify whether a route is enabled. |

### `file_upload` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `authentication_type` | string | No | keyBased | The type used to authenticate against the storage account. Possible values are 'keyBased' and 'identityBased'. Defaults to 'keyBased'. |
| `identity_id` | string | No | - | The ID of the User Managed Identity used to authenticate against the storage account. |
| `connection_string` | string | Yes | - | The connection string for the Azure Storage account to which files are uploaded. |
| `container_name` | string | Yes | - | The name of the root container where the files should be uploaded to. The container need not exist but should be creatable using the connection_string specified. |
| `sas_ttl` | string | No | PT1H | The period of time for which the SAS URI generated by IoT Hub for file upload is valid, specified as an [ISO 8601 timespan duration](https://en.wikipedia.org/wiki/ISO_8601#Durations). This value must be between 1 minute and 24 hours. Defaults to 'PT1H'. |
| `notifications` | bool | No | False | Used to specify whether file notifications are sent to IoT Hub on upload. Defaults to 'false'. |
| `lock_duration` | string | No | PT1M | The lock duration for the file upload notifications queue, specified as an [ISO 8601 timespan duration](https://en.wikipedia.org/wiki/ISO_8601#Durations). This value must be between 5 and 300 seconds. Defaults to 'PT1M'. |
| `default_ttl` | string | No | PT1H | The period of time for which a file upload notification message is available to consume before it expires, specified as an [ISO 8601 timespan duration](https://en.wikipedia.org/wiki/ISO_8601#Durations). This value must be between 1 minute and 48 hours. Defaults to 'PT1H'. |
| `max_delivery_count` | int | No | 10 | The number of times the IoT Hub attempts to deliver a file upload notification message. Defaults to '10'. |

### `network_rule_set` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `default_action` | string | No | Deny | Default Action for Network Rule Set. Possible values are 'Deny', 'Allow'. Defaults to 'Deny'. |
| `apply_to_builtin_eventhub_endpoint` | bool | No | False | Determines if Network Rule Set is also applied to the BuiltIn EventHub EndPoint of the IotHub. Defaults to 'false'. |
| `ip_rule` | [block](#network_rule_set-block-structure) | No | - | One or more 'ip_rule' blocks. |

### `feedback` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `time_to_live` | string | No | PT1H | The retention time for service-bound feedback messages, specified as an [ISO 8601 timespan duration](https://en.wikipedia.org/wiki/ISO_8601#Durations). This value must be between 1 minute and 48 hours. Defaults to 'PT1H'. |
| `max_delivery_count` | int | No | 10 | The maximum delivery count for the feedback queue. This value must be between '1' and '100'. Defaults to '10'. |
| `lock_duration` | string | No | PT60S | The lock duration for the feedback queue, specified as an [ISO 8601 timespan duration](https://en.wikipedia.org/wiki/ISO_8601#Durations). This value must be between 5 and 300 seconds. Defaults to 'PT60S'. |

### `fallback_route` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `source` | string | No | DeviceMessages | The source that the routing rule is to be applied to, such as 'DeviceMessages'. Possible values include: 'Invalid', 'DeviceMessages', 'TwinChangeEvents', 'DeviceLifecycleEvents', 'DeviceConnectionStateEvents', 'DeviceJobLifecycleEvents' and 'DigitalTwinChangeEvents'. Defaults to 'DeviceMessages'. |
| `condition` | bool | No | True | The condition that is evaluated to apply the routing rule. Defaults to 'true'. For grammar, see: <https://docs.microsoft.com/azure/iot-hub/iot-hub-devguide-query-language>. |
| `endpoint_names` | string | No | - | The endpoints to which messages that satisfy the condition are routed. Currently only 1 endpoint is allowed. |
| `enabled` | bool | No | - | Used to specify whether the fallback route is enabled. |

### `ip_rule` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `ip_mask` | string | Yes | - | The IP address range in CIDR notation for the IP rule. |
| `action` | string | No | Allow | The desired action for requests captured by this rule. Possible values are 'Allow'. Defaults to 'Allow'. |

### `identity` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `type` | string | Yes | - | Specifies the type of Managed Service Identity that should be configured on this IoT Hub. Possible values are 'SystemAssigned', 'UserAssigned', 'SystemAssigned, UserAssigned' (to enable both). |
| `identity_ids` | string | No | - | Specifies a list of User Assigned Managed Identity IDs to be assigned to this IoT Hub. |



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **id** | string | No  | The ID of the IoTHub. | 
| **event_hub_events_endpoint** | string | No  | The EventHub compatible endpoint for events data | 
| **event_hub_events_namespace** | string | No  | The EventHub namespace for events data | 
| **event_hub_events_path** | string | No  | The EventHub compatible path for events data | 
| **event_hub_operations_endpoint** | string | No  | The EventHub compatible endpoint for operational data | 
| **event_hub_operations_path** | string | No  | The EventHub compatible path for operational data | 
| **hostname** | string | No  | The hostname of the IotHub Resource. | 
| **identity** | block | No  | An `identity` block. | 
| **shared_access_policy** | block | No  | One or more `shared_access_policy` blocks. | 
| **principal_id** | string | No  | The Principal ID associated with this Managed Service Identity. | 
| **tenant_id** | string | No  | The Tenant ID associated with this Managed Service Identity. | 
| **key_name** | string | No  | The name of the shared access policy. | 
| **primary_key** | string | No  | The primary key. | 
| **secondary_key** | string | No  | The secondary key. | 
| **permissions** | string | No  | The permissions assigned to the shared access policy. | 

Additionally, all variables are provided as outputs.
