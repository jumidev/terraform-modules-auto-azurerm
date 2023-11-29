# azurerm_iothub_dps_shared_access_policy

Manages an IotHub Device Provisioning Service Shared Access Policy

## Attributes

| Name | Type | Required? | Default  | possible values | Description |
| ---- | ---- | --------- | -------- | ----------- | ----------- |
| **name** | string | True | -  |  -  | Specifies the name of the IotHub Shared Access Policy resource. Changing this forces a new resource to be created. | 
| **resource_group_name** | string | True | -  |  -  | The name of the resource group under which the IotHub Shared Access Policy resource has to be created. Changing this forces a new resource to be created. | 
| **iothub_dps_name** | string | True | -  |  -  | The name of the IoT Hub Device Provisioning service to which this Shared Access Policy belongs. Changing this forces a new resource to be created. | 
| **enrollment_read** | string | False | -  |  -  | Adds `EnrollmentRead` permission to this Shared Access Account. It allows read access to enrollment data. | 
| **enrollment_write** | string | False | -  |  -  | Adds `EnrollmentWrite` permission to this Shared Access Account. It allows write access to enrollment data. | 
| **registration_read** | string | False | -  |  -  | Adds `RegistrationStatusRead` permission to this Shared Access Account. It allows read access to device registrations. | 
| **registration_write** | string | False | -  |  -  | Adds `RegistrationStatusWrite` permission to this Shared Access Account. It allows write access to device registrations. | 
| **service_config** | string | False | -  |  -  | Adds `ServiceConfig` permission to this Shared Access Account. It allows configuration of the Device Provisioning Service. | 

