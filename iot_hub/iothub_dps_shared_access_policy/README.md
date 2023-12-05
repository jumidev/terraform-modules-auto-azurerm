# azurerm_iothub_dps_shared_access_policy

Manages an IotHub Device Provisioning Service Shared Access Policy

## Example `component.hclt`

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git"   
   path = "iot_hub/iothub_dps_shared_access_policy"   
}

inputs = {
   name = "name of iothub_dps_shared_access_policy"   
   resource_group_name = "${resource_group}"   
   # iothub_dps_name → set in tfstate_inputs
}

tfstate_inputs = {
   iothub_dps_name = "path/to/iothub_dps_component:name"   
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
| **name** | string |  Specifies the name of the IotHub Shared Access Policy resource. Changing this forces a new resource to be created. | 
| **resource_group_name** | string |  The name of the resource group under which the IotHub Shared Access Policy resource has to be created. Changing this forces a new resource to be created. | 
| **iothub_dps_name** | string |  The name of the IoT Hub Device Provisioning service to which this Shared Access Policy belongs. Changing this forces a new resource to be created. | 

## Optional Variables

| Name | Type |  Description |
| ---- | --------- |  ----------- |
| **enrollment_read** | string |  Adds `EnrollmentRead` permission to this Shared Access Account. It allows read access to enrollment data. | 
| **enrollment_write** | string |  Adds `EnrollmentWrite` permission to this Shared Access Account. It allows write access to enrollment data. | 
| **registration_read** | string |  Adds `RegistrationStatusRead` permission to this Shared Access Account. It allows read access to device registrations. | 
| **registration_write** | string |  Adds `RegistrationStatusWrite` permission to this Shared Access Account. It allows write access to device registrations. | 
| **service_config** | string |  Adds `ServiceConfig` permission to this Shared Access Account. It allows configuration of the Device Provisioning Service. | 



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **id** | string | No  | The ID of the IoTHub Device Provisioning Service Shared Access Policy. | 
| **primary_key** | string | No  | The primary key used to create the authentication token. | 
| **primary_connection_string** | string | No  | The primary connection string of the Shared Access Policy. | 
| **secondary_key** | string | No  | The secondary key used to create the authentication token. | 
| **secondary_connection_string** | string | No  | The secondary connection string of the Shared Access Policy. | 

Additionally, all variables are provided as outputs.
