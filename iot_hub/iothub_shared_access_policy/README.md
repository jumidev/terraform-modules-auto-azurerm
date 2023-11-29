# azurerm_iothub_shared_access_policy

Manages an IotHub Shared Access Policy

## Attributes

| Name | Type | Required? | Default  | possible values | Description |
| ---- | ---- | --------- | -------- | ----------- | ----------- |
| **name** | string | True | -  |  -  | Specifies the name of the IotHub Shared Access Policy resource. Changing this forces a new resource to be created. | 
| **resource_group_name** | string | True | -  |  -  | The name of the resource group under which the IotHub Shared Access Policy resource has to be created. Changing this forces a new resource to be created. | 
| **iothub_name** | string | True | -  |  -  | The name of the IoTHub to which this Shared Access Policy belongs. Changing this forces a new resource to be created. | 
| **registry_read** | string | False | -  |  -  | Adds `RegistryRead` permission to this Shared Access Account. It allows read access to the identity registry. | 
| **registry_write** | string | False | -  |  -  | Adds `RegistryWrite` permission to this Shared Access Account. It allows write access to the identity registry. | 
| **service_connect** | string | False | -  |  -  | Adds `ServiceConnect` permission to this Shared Access Account. It allows sending and receiving on the cloud-side endpoints. | 
| **device_connect** | string | False | -  |  -  | Adds `DeviceConnect` permission to this Shared Access Account. It allows sending and receiving on the device-side endpoints. | 

