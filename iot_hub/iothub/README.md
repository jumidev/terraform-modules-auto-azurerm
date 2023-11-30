# azurerm_iothub

Manages an IotHub~> **NOTE:** Endpoints can be defined either directly on the `azurerm_iothub` resource, or using the `azurerm_iothub_endpoint_*` resources - but the two ways of defining the endpoints cannot be used together. If both are used against the same IoTHub, spurious changes will occur. Also, defining a `azurerm_iothub_endpoint_*` resource and another endpoint of a different type directly on the `azurerm_iothub` resource is not supported.~> **NOTE:** Routes can be defined either directly on the `azurerm_iothub` resource, or using the `azurerm_iothub_route` resource - but the two cannot be used together. If both are used against the same IoTHub, spurious changes will occur.~> **NOTE:** Enrichments can be defined either directly on the `azurerm_iothub` resource, or using the `azurerm_iothub_enrichment` resource - but the two cannot be used together. If both are used against the same IoTHub, spurious changes will occur.~> **NOTE:** Fallback route can be defined either directly on the `azurerm_iothub` resource, or using the `azurerm_iothub_fallback_route` resource - but the two cannot be used together. If both are used against the same IoTHub, spurious changes will occur.~> **NOTE:** File upload can be defined either directly on the `azurerm_iothub` resource, or using the `azurerm_iothub_file_upload` resource - but the two cannot be used together. If both are used against the same IoTHub, spurious changes will occur.

## Example minimal component.hclt

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git" 
   path = "iot_hub/iothub" 
}

inputs = {
   name = "name of iothub" 
   resource_group_name = "${resource_group}" 
   location = "${location}" 
   sku = "sku of iothub" 
}

tfstate_store = {
   storage_account = "${storage_account}" 
   container = "${container}" 
   container_path = "${COMPONENT_PATH}" 
}


```

## Variables

| Name | Type | Required? |  Default  |  Description |
| ---- | ---- | --------- |  ----------- | ----------- |
| **var.name** | string | True | -  |  Specifies the name of the IotHub resource. Changing this forces a new resource to be created. | 
| **var.resource_group_name** | string | True | -  |  The name of the resource group under which the IotHub resource has to be created. Changing this forces a new resource to be created. | 
| **var.location** | string | True | -  |  Specifies the supported Azure location where the resource has to be created. Changing this forces a new resource to be created. | 
| **var.sku** | block | True | -  |  A `sku` block. | 
| **var.local_authentication_enabled** | bool | False | `True`  |  If false, SAS tokens with Iot hub scoped SAS keys cannot be used for authentication. Defaults to `true`. | 
| **var.event_hub_partition_count** | int | False | -  |  The number of device-to-cloud partitions used by backing event hubs. Must be between `2` and `128`. | 
| **var.event_hub_retention_in_days** | int | False | -  |  The event hub retention to use in days. Must be between `1` and `7`. | 
| **var.endpoint** | block | False | -  |  An `endpoint` block. | 
| **var.fallback_route** | block | False | -  |  A `fallback_route` block. If the fallback route is enabled, messages that don't match any of the supplied routes are automatically sent to this route. Defaults to messages/events. | 
| **var.file_upload** | block | False | -  |  A `file_upload` block. | 
| **var.identity** | block | False | -  |  An `identity` block. | 
| **var.network_rule_set** | block | False | -  |  A `network_rule_set` block. | 
| **var.route** | block | False | -  |  A `route` block. | 
| **var.enrichment** | block | False | -  |  A `enrichment` block. | 
| **var.cloud_to_device** | block | False | -  |  A `cloud_to_device` block. | 
| **var.public_network_access_enabled** | bool | False | -  |  Is the IotHub resource accessible from a public network? | 
| **var.min_tls_version** | string | False | -  |  Specifies the minimum TLS version to support for this hub. The only valid value is `1.2`. Changing this forces a new resource to be created. | 
| **var.tags** | map | False | -  |  A mapping of tags to assign to the resource. | 



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
