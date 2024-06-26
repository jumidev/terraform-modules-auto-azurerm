# azurerm_container_app_environment_certificate



## Example `component.hclt`

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git"   
   path = "container_apps/container_app_environment_certificate"   
}
inputs = {
   name = "The name of the Container Apps Environment Certificate..."   
   # container_app_environment_id → set in component_inputs
   certificate_blob_base64 = "The Certificate Private Key as a base64 encoded PFX or PEM..."   
   certificate_password = "The password for the Certificate"   
}
component_inputs = {
   container_app_environment_id = "path/to/container_app_environment_component:id"   
}
tfstate_store = {
   storage_account = "${storage_account}"   
   container = "${container}"   
   container_path = "${COMPONENT_PATH}"   
}
```

## Required Variables

| Name | Type |  Default  |  Description |
| ---- | --------- |  ----------- | ----------- |
| **name** | string |  -  |  The name of the Container Apps Environment Certificate. Changing this forces a new resource to be created. | 
| **container_app_environment_id** | string |  -  |  The Container App Managed Environment ID to configure this Certificate on. Changing this forces a new resource to be created. | 
| **certificate_blob_base64** | string |  -  |  The Certificate Private Key as a base64 encoded PFX or PEM. Changing this forces a new resource to be created. | 
| **certificate_password** | string |  `Random string of 32 characters`  |  The password for the Certificate. Changing this forces a new resource to be created. | 

## Optional Variables

| Name | Type |  Description |
| ---- | --------- |  ----------- |
| **tags** | map |  A mapping of tags to assign to the resource. | 



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **tags** | map | No  | A mapping of tags to assign to the resource. In addition to the Arguments listed above - the following Attributes are exported: | 
| **id** | string | No  | The ID of the Container App Environment Certificate | 
| **expiration_date** | string | No  | The expiration date for the Certificate. | 
| **issue_date** | string | No  | The date of issue for the Certificate. | 
| **issuer** | string | No  | The Certificate Issuer. | 
| **subject_name** | string | No  | The Subject Name for the Certificate. | 
| **thumbprint** | string | No  | The Thumbprint of the Certificate. | 

Additionally, all variables are provided as outputs.
