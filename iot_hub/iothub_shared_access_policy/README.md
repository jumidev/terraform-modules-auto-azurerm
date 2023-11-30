# azurerm_iothub_shared_access_policy

Manages an IotHub Shared Access Policy

## Example `component.hclt`

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git" 
   path = "iot_hub/iothub_shared_access_policy" 
}

inputs = {
   name = "name of iothub_shared_access_policy" 
   resource_group_name = "${resource_group}" 
   iothub_name = "iothub_name of iothub_shared_access_policy" 
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
| **var.name** | string |  Specifies the name of the IotHub Shared Access Policy resource. Changing this forces a new resource to be created. | 
| **var.resource_group_name** | string |  The name of the resource group under which the IotHub Shared Access Policy resource has to be created. Changing this forces a new resource to be created. | 
| **var.iothub_name** | string |  The name of the IoTHub to which this Shared Access Policy belongs. Changing this forces a new resource to be created. | 

## Optional Variables

| Name | Type |  Description |
| ---- | --------- |  ----------- |
| **var.registry_read** | string |  Adds `RegistryRead` permission to this Shared Access Account. It allows read access to the identity registry. | 
| **var.registry_write** | string |  Adds `RegistryWrite` permission to this Shared Access Account. It allows write access to the identity registry. | 
| **var.service_connect** | string |  Adds `ServiceConnect` permission to this Shared Access Account. It allows sending and receiving on the cloud-side endpoints. | 
| **var.device_connect** | string |  Adds `DeviceConnect` permission to this Shared Access Account. It allows sending and receiving on the device-side endpoints. | 



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **id** | string | No  | The ID of the IoTHub Shared Access Policy. | 
| **primary_key** | string | No  | The primary key used to create the authentication token. | 
| **primary_connection_string** | string | No  | The primary connection string of the Shared Access Policy. | 
| **secondary_key** | string | No  | The secondary key used to create the authentication token. | 
| **secondary_connection_string** | string | No  | The secondary connection string of the Shared Access Policy. | 

Additionally, all variables are provided as outputs.
