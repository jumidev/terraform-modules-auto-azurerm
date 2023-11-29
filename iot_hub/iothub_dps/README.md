# azurerm_iothub_dps

Manages an IotHub Device Provisioning Service.

## Variables

| Name | Type | Required? |  Default  |  Description |
| ---- | ---- | --------- |  ----------- | ----------- |
| **var.name** | string | True | -  |  Specifies the name of the Iot Device Provisioning Service resource. Changing this forces a new resource to be created. | 
| **var.resource_group_name** | string | True | -  |  The name of the resource group under which the Iot Device Provisioning Service resource has to be created. Changing this forces a new resource to be created. | 
| **var.location** | string | True | -  |  Specifies the supported Azure location where the resource has to be created. Changing this forces a new resource to be created. | 
| **var.allocation_policy** | string | False | `Hashed`  |  The allocation policy of the IoT Device Provisioning Service (`Hashed`, `GeoLatency` or `Static`). Defaults to `Hashed`. | 
| **var.data_residency_enabled** | bool | False | `False`  |  Specifies if the IoT Device Provisioning Service has data residency and disaster recovery enabled. Defaults to `false`. Changing this forces a new resource to be created. | 
| **var.sku** | block | True | -  |  A `sku` block. | 
| **var.linked_hub** | block | False | -  |  A `linked_hub` block. | 
| **var.public_network_access_enabled** | bool | False | `True`  |  Whether requests from Public Network are allowed. Defaults to `true`. | 
| **var.ip_filter_rule** | block | False | -  |  An `ip_filter_rule` block. | 
| **var.tags** | map | False | -  |  A mapping of tags to assign to the resource. | 



## Outputs

| Name | Type | Description |
| ---- | ---- | --------- | 
| **name** | string  | - | 
| **resource_group_name** | string  | - | 
| **location** | string  | - | 
| **allocation_policy** | string  | - | 
| **data_residency_enabled** | bool  | - | 
| **sku** | block  | - | 
| **linked_hub** | block  | - | 
| **public_network_access_enabled** | bool  | - | 
| **ip_filter_rule** | block  | - | 
| **tags** | map  | - | 
| **id** | string  | The ID of the IoT Device Provisioning Service. | 
| **device_provisioning_host_name** | string  | The device endpoint of the IoT Device Provisioning Service. | 
| **id_scope** | string  | The unique identifier of the IoT Device Provisioning Service. | 
| **service_operations_host_name** | string  | The service endpoint of the IoT Device Provisioning Service. | 