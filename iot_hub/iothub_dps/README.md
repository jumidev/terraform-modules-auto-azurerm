# azurerm_iothub_dps

Manages an IotHub Device Provisioning Service.

## Example minimal component.hclt

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git" 
   path = "iot_hub/iothub_dps" 
}

inputs = {
   name = "name of iothub_dps" 
   resource_group_name = "${resource_group}" 
   location = "${location}" 
   sku = "sku of iothub_dps" 
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
| **var.name** | string | True | -  |  Specifies the name of the Iot Device Provisioning Service resource. Changing this forces a new resource to be created. | 
| **var.resource_group_name** | string | True | -  |  The name of the resource group under which the Iot Device Provisioning Service resource has to be created. Changing this forces a new resource to be created. | 
| **var.location** | string | True | -  |  Specifies the supported Azure location where the resource has to be created. Changing this forces a new resource to be created. | 
| **var.allocation_policy** | string | False | `Hashed`  |  The allocation policy of the IoT Device Provisioning Service (`Hashed`, `GeoLatency` or `Static`). Defaults to `Hashed`. | 
| **var.data_residency_enabled** | bool | False | `False`  |  Specifies if the IoT Device Provisioning Service has data residency and disaster recovery enabled. Defaults to `false`. Changing this forces a new resource to be created. | 
| **var.sku** | block | True | -  |  A `sku` block. | 
| `sku` block structure: || 
|   name (string): (REQUIRED) The name of the sku. Currently can only be set to 'S1'. ||
|   capacity (int): (REQUIRED) The number of provisioned IoT Device Provisioning Service units. ||
| **var.linked_hub** | block | False | -  |  A `linked_hub` block. | 
| `linked_hub` block structure: || 
|   connection_string (string): (REQUIRED) The connection string to connect to the IoT Hub. ||
|   location (string): (REQUIRED) The location of the IoT hub. ||
|   apply_allocation_policy (bool): Determines whether to apply allocation policies to the IoT Hub. Defaults to 'true'. ||
|   allocation_weight (string): The weight applied to the IoT Hub. Defaults to '1'. ||
|   hostname (string): (Computed) The IoT Hub hostname. ||
| **var.public_network_access_enabled** | bool | False | `True`  |  Whether requests from Public Network are allowed. Defaults to `true`. | 
| **var.ip_filter_rule** | block | False | -  |  An `ip_filter_rule` block. | 
| `ip_filter_rule` block structure: || 
|   name (string): (REQUIRED) The name of the filter. ||
|   ip_mask (string): (REQUIRED) The IP address range in CIDR notation for the rule. ||
|   action (string): (REQUIRED) The desired action for requests captured by this rule. Possible values are 'Accept', 'Reject' ||
|   target (string): Target for requests captured by this rule. Possible values are 'all', 'deviceApi' and 'serviceApi'. ||
| **var.tags** | map | False | -  |  A mapping of tags to assign to the resource. | 



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **id** | string | No  | The ID of the IoT Device Provisioning Service. | 
| **device_provisioning_host_name** | string | No  | The device endpoint of the IoT Device Provisioning Service. | 
| **id_scope** | string | No  | The unique identifier of the IoT Device Provisioning Service. | 
| **service_operations_host_name** | string | No  | The service endpoint of the IoT Device Provisioning Service. | 

Additionally, all variables are provided as outputs.
