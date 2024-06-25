# azurerm_container_app_custom_domain



## Example `component.hclt`

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git"   
   path = "container_apps/container_app_custom_domain"   
}
inputs = {
   name = "The fully qualified name of the Custom Domain"   
   # container_app_id → set in component_inputs
}
component_inputs = {
   container_app_id = "path/to/container_app_component:id"   
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
| **name** | string |  The fully qualified name of the Custom Domain. Must be the CN or a named SAN in the certificate specified by the `container_app_environment_certificate_id`. Changing this forces a new resource to be created. ~> **Note:** The Custom Domain verification TXT record requires a prefix of `asuid.`, however, this must be trimmed from the `name` property here. See the [official docs](https://learn.microsoft.com/en-us/azure/container-apps/custom-domains-certificates) for more information. | 
| **container_app_id** | string |  The ID of the Container App to which this Custom Domain should be bound. Changing this forces a new resource to be created. | 

## Optional Variables

| Name | Type |  possible values |  Description |
| ---- | --------- |  ----------- | ----------- |
| **container_app_environment_certificate_id** | string |  -  |  The ID of the Container App Environment Certificate to use. Changing this forces a new resource to be created. -> **NOTE:** Omit this value if you wish to use an Azure Managed certificate. You must create the relevant DNS verification steps before this process will be successful. | 
| **certificate_binding_type** | bool |  `Disabled`, `SniEnabled`  |  The Certificate Binding type. Possible values include `Disabled` and `SniEnabled`.  Required with `container_app_environment_certificate_id`. Changing this forces a new resource to be created. !> **NOTE:** If using an Azure Managed Certificate `container_app_environment_certificate_id` and `certificate_binding_type` should be added to `ignore_changes` to prevent resource recreation due to these values being modified asynchronously outside of Terraform. | 



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |

Additionally, all variables are provided as outputs.
