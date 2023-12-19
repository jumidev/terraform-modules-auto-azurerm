# azurerm_container_app_environment_storage

Manages a Container App Environment Storage.

## Example `component.hclt`

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git"   
   path = "container_apps/container_app_environment_storage"   
}

inputs = {
   name = "The name for this Container App Environment Storage..."   
   # container_app_environment_id → set in component_inputs
   account_name = "The Azure Storage Account in which the Share to be used is located..."   
   access_key = "The Storage Account Access Key"   
   share_name = "The name of the Azure Storage Share to use"   
   access_mode = "The access mode to connect this storage to the Container App..."   
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

| Name | Type |  possible values |  Description |
| ---- | --------- |  ----------- | ----------- |
| **name** | string |  -  |  The name for this Container App Environment Storage. Changing this forces a new resource to be created. | 
| **container_app_environment_id** | string |  -  |  The ID of the Container App Environment to which this storage belongs. Changing this forces a new resource to be created. | 
| **account_name** | string |  -  |  The Azure Storage Account in which the Share to be used is located. Changing this forces a new resource to be created. | 
| **access_key** | string |  -  |  The Storage Account Access Key. | 
| **share_name** | string |  -  |  The name of the Azure Storage Share to use. Changing this forces a new resource to be created. | 
| **access_mode** | string |  `ReadOnly`, `ReadWrite`  |  The access mode to connect this storage to the Container App. Possible values include `ReadOnly` and `ReadWrite`. Changing this forces a new resource to be created. | 



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **id** | string | No  | The ID of the Container App Environment Storage | 

Additionally, all variables are provided as outputs.
