# azurerm_container_app_environment_custom_domain



## Example `component.hclt`

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git"   
   path = "container_apps/container_app_environment_custom_domain"   
}
inputs = {
   # container_app_environment_id → set in component_inputs
   certificate_blob_base64 = "The bundle of Private Key and Certificate for the Custom DNS Suffix as a base64 ..."   
   certificate_password = "The password for the Certificate bundle"   
   dns_suffix = "Custom DNS Suffix for the Container App Environment..."   
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
| **container_app_environment_id** | string |  -  |  The ID of the Container Apps Managed Environment. Changing this forces a new resource to be created. | 
| **certificate_blob_base64** | string |  -  |  The bundle of Private Key and Certificate for the Custom DNS Suffix as a base64 encoded PFX or PEM. | 
| **certificate_password** | string |  `Random string of 32 characters`  |  The password for the Certificate bundle. | 
| **dns_suffix** | string |  -  |  Custom DNS Suffix for the Container App Environment. | 



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |

Additionally, all variables are provided as outputs.
