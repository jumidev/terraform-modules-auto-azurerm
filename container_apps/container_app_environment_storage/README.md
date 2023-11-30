# azurerm_container_app_environment_storage

Manages a Container App Environment Storage.

## Example minimal component.hclt

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git" 
   path = "container_apps/container_app_environment_storage" 
}

inputs = {
   name = "name of container_app_environment_storage" 
   container_app_environment_id = "container_app_environment_id of container_app_environment_storage" 
   account_name = "account_name of container_app_environment_storage" 
   access_key = "access_key of container_app_environment_storage" 
   share_name = "share_name of container_app_environment_storage" 
   access_mode = "access_mode of container_app_environment_storage" 
}

tfstate_store = {
   storage_account = "${storage_account}" 
   container = "${container}" 
   container_path = "${COMPONENT_PATH}" 
}

```

## Required Variables

| Name | Type |  possible values |  Description |
| ---- | --------- |  ----------- | ----------- |
| **var.name** | string |  -  |  The name for this Container App Environment Storage. Changing this forces a new resource to be created. | 
| **var.container_app_environment_id** | string |  -  |  The ID of the Container App Environment to which this storage belongs. Changing this forces a new resource to be created. | 
| **var.account_name** | string |  -  |  The Azure Storage Account in which the Share to be used is located. Changing this forces a new resource to be created. | 
| **var.access_key** | string |  -  |  The Storage Account Access Key. | 
| **var.share_name** | string |  -  |  The name of the Azure Storage Share to use. Changing this forces a new resource to be created. | 
| **var.access_mode** | string |  `ReadOnly`, `ReadWrite`  |  The access mode to connect this storage to the Container App. Possible values include `ReadOnly` and `ReadWrite`. Changing this forces a new resource to be created. | 



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **id** | string | No  | The ID of the Container App Environment Storage | 

Additionally, all variables are provided as outputs.
