# azurerm_iothub_dps

Manages an IotHub Device Provisioning Service.

## Attributes

| Name | Type | Required? | Default  | possible values | Description |
| ---- | ---- | --------- | -------- | ----------- | ----------- |
| **name** | string | True | -  |  -  | Specifies the name of the Iot Device Provisioning Service resource. Changing this forces a new resource to be created. | 
| **resource_group_name** | string | True | -  |  -  | The name of the resource group under which the Iot Device Provisioning Service resource has to be created. Changing this forces a new resource to be created. | 
| **location** | string | True | -  |  -  | Specifies the supported Azure location where the resource has to be created. Changing this forces a new resource to be created. | 
| **allocation_policy** | string | False | `Hashed`  |  -  | The allocation policy of the IoT Device Provisioning Service (`Hashed`, `GeoLatency` or `Static`). Defaults to `Hashed`. | 
| **data_residency_enabled** | bool | False | `False`  |  -  | Specifies if the IoT Device Provisioning Service has data residency and disaster recovery enabled. Defaults to `false`. Changing this forces a new resource to be created. | 
| **sku** | block | True | -  |  -  | A `sku` block. | 
| **linked_hub** | block | False | -  |  -  | A `linked_hub` block. | 
| **public_network_access_enabled** | bool | False | `True`  |  -  | Whether requests from Public Network are allowed. Defaults to `true`. | 
| **ip_filter_rule** | block | False | -  |  -  | An `ip_filter_rule` block. | 
| **tags** | map | False | -  |  -  | A mapping of tags to assign to the resource. | 

