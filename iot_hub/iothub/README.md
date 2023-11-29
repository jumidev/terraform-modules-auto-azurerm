# azurerm_iothub

Manages an IotHub~> **NOTE:** Endpoints can be defined either directly on the `azurerm_iothub` resource, or using the `azurerm_iothub_endpoint_*` resources - but the two ways of defining the endpoints cannot be used together. If both are used against the same IoTHub, spurious changes will occur. Also, defining a `azurerm_iothub_endpoint_*` resource and another endpoint of a different type directly on the `azurerm_iothub` resource is not supported.~> **NOTE:** Routes can be defined either directly on the `azurerm_iothub` resource, or using the `azurerm_iothub_route` resource - but the two cannot be used together. If both are used against the same IoTHub, spurious changes will occur.~> **NOTE:** Enrichments can be defined either directly on the `azurerm_iothub` resource, or using the `azurerm_iothub_enrichment` resource - but the two cannot be used together. If both are used against the same IoTHub, spurious changes will occur.~> **NOTE:** Fallback route can be defined either directly on the `azurerm_iothub` resource, or using the `azurerm_iothub_fallback_route` resource - but the two cannot be used together. If both are used against the same IoTHub, spurious changes will occur.~> **NOTE:** File upload can be defined either directly on the `azurerm_iothub` resource, or using the `azurerm_iothub_file_upload` resource - but the two cannot be used together. If both are used against the same IoTHub, spurious changes will occur.

## Attributes

| Name | Type | Required? | Default  | possible values | Description |
| ---- | ---- | --------- | -------- | ----------- | ----------- |
| **name** | string | True | -  |  -  | Specifies the name of the IotHub resource. Changing this forces a new resource to be created. | 
| **resource_group_name** | string | True | -  |  -  | The name of the resource group under which the IotHub resource has to be created. Changing this forces a new resource to be created. | 
| **location** | string | True | -  |  -  | Specifies the supported Azure location where the resource has to be created. Changing this forces a new resource to be created. | 
| **sku** | block | True | -  |  -  | A `sku` block. | 
| **local_authentication_enabled** | bool | False | `True`  |  -  | If false, SAS tokens with Iot hub scoped SAS keys cannot be used for authentication. Defaults to `true`. | 
| **event_hub_partition_count** | int | False | -  |  -  | The number of device-to-cloud partitions used by backing event hubs. Must be between `2` and `128`. | 
| **event_hub_retention_in_days** | int | False | -  |  -  | The event hub retention to use in days. Must be between `1` and `7`. | 
| **endpoint** | block | False | -  |  -  | An `endpoint` block. | 
| **fallback_route** | block | False | -  |  -  | A `fallback_route` block. If the fallback route is enabled, messages that don't match any of the supplied routes are automatically sent to this route. Defaults to messages/events. | 
| **file_upload** | block | False | -  |  -  | A `file_upload` block. | 
| **identity** | block | False | -  |  -  | An `identity` block. | 
| **network_rule_set** | block | False | -  |  -  | A `network_rule_set` block. | 
| **route** | block | False | -  |  -  | A `route` block. | 
| **enrichment** | block | False | -  |  -  | A `enrichment` block. | 
| **cloud_to_device** | block | False | -  |  -  | A `cloud_to_device` block. | 
| **public_network_access_enabled** | bool | False | -  |  -  | Is the IotHub resource accessible from a public network? | 
| **min_tls_version** | string | False | -  |  -  | Specifies the minimum TLS version to support for this hub. The only valid value is `1.2`. Changing this forces a new resource to be created. | 
| **tags** | map | False | -  |  -  | A mapping of tags to assign to the resource. | 

