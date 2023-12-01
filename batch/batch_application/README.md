# azurerm_batch_application

Manages Azure Batch Application instance.

## Example `component.hclt`

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git" 
   path = "batch/batch_application" 
}

inputs = {
   name = "name of batch_application" 
   resource_group_name = "${resource_group}" 
   account_name = "account_name of batch_application" 
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
| **name** | string |  The name of the application. This must be unique within the account. Changing this forces a new resource to be created. | 
| **resource_group_name** | string |  The name of the resource group that contains the Batch account. Changing this forces a new resource to be created. | 
| **account_name** | string |  The name of the Batch account. Changing this forces a new resource to be created. | 

## Optional Variables

| Name | Type |  Default  |  Description |
| ---- | --------- |  ----------- | ----------- |
| **allow_updates** | bool |  `True`  |  A value indicating whether packages within the application may be overwritten using the same version string. Defaults to `true`. | 
| **default_version** | string |  -  |  The package to use if a client requests the application but does not specify a version. This property can only be set to the name of an existing package. | 
| **display_name** | string |  -  |  The display name for the application. | 



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **id** | string | No  | The ID of the Batch Application. | 

Additionally, all variables are provided as outputs.
