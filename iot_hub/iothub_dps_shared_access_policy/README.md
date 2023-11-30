# azurerm_iothub_dps_shared_access_policy

Manages an IotHub Device Provisioning Service Shared Access Policy

## Variables

| Name | Type | Required? |  Description |
| ---- | ---- | --------- |  ----------- |
| **var.name** | string | True | Specifies the name of the IotHub Shared Access Policy resource. Changing this forces a new resource to be created. | 
| **var.resource_group_name** | string | True | The name of the resource group under which the IotHub Shared Access Policy resource has to be created. Changing this forces a new resource to be created. | 
| **var.iothub_dps_name** | string | True | The name of the IoT Hub Device Provisioning service to which this Shared Access Policy belongs. Changing this forces a new resource to be created. | 
| **var.enrollment_read** | string | False | Adds `EnrollmentRead` permission to this Shared Access Account. It allows read access to enrollment data. | 
| **var.enrollment_write** | string | False | Adds `EnrollmentWrite` permission to this Shared Access Account. It allows write access to enrollment data. | 
| **var.registration_read** | string | False | Adds `RegistrationStatusRead` permission to this Shared Access Account. It allows read access to device registrations. | 
| **var.registration_write** | string | False | Adds `RegistrationStatusWrite` permission to this Shared Access Account. It allows write access to device registrations. | 
| **var.service_config** | string | False | Adds `ServiceConfig` permission to this Shared Access Account. It allows configuration of the Device Provisioning Service. | 



## Outputs

| Name | Type | Description |
| ---- | ---- | --------- | 
| **name** | string  | - | 
| **resource_group_name** | string  | - | 
| **iothub_dps_name** | string  | - | 
| **enrollment_read** | string  | - | 
| **enrollment_write** | string  | - | 
| **registration_read** | string  | - | 
| **registration_write** | string  | - | 
| **service_config** | string  | - | 
| **id** | string  | The ID of the IoTHub Device Provisioning Service Shared Access Policy. | 
| **primary_key** | string  | The primary key used to create the authentication token. | 
| **primary_connection_string** | string  | The primary connection string of the Shared Access Policy. | 
| **secondary_key** | string  | The secondary key used to create the authentication token. | 
| **secondary_connection_string** | string  | The secondary connection string of the Shared Access Policy. | 

## Example minimal hclt

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git" 
   path = "iot_hub/iothub_dps_shared_access_policy" 
}

inputs = {
   name = "name of iothub_dps_shared_access_policy" 
   resource_group_name = "${resource_group}" 
   iothub_dps_name = "iothub_dps_name of iothub_dps_shared_access_policy" 
}

tfstate_store = {
   storage_account = "${storage_account}" 
   container = "${container}" 
   container_path = "${COMPONENT_PATH}" 
}


```