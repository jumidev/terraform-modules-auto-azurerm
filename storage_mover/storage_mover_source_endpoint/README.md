# azurerm_storage_mover_source_endpoint

Manages a Storage Mover Source Endpoint.

## Example `component.hclt`

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git"   
   path = "storage_mover/storage_mover_source_endpoint"   
}

inputs = {
   name = "Specifies the name which should be used for this Storage Mover Source Endpoint..."   
   # storage_mover_id → set in tfstate_inputs
   host = "Specifies the host name or IP address of the server exporting the file system..."   
}

tfstate_inputs = {
   storage_mover_id = "path/to/storage_mover_component:id"   
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
| **name** | string |  Specifies the name which should be used for this Storage Mover Source Endpoint. Changing this forces a new resource to be created. | 
| **storage_mover_id** | string |  Specifies the ID of the Storage Mover for this Storage Mover Source Endpoint. Changing this forces a new resource to be created. | 
| **host** | string |  Specifies the host name or IP address of the server exporting the file system. Changing this forces a new resource to be created. | 

## Optional Variables

| Name | Type |  Default  |  possible values |  Description |
| ---- | --------- |  ----------- | ----------- | ----------- |
| **export** | string |  -  |  -  |  Specifies the directory being exported from the server. Changing this forces a new resource to be created. | 
| **nfs_version** | string |  `NFSauto`  |  `NFSauto`, `NFSv3`, `NFSv4`  |  Specifies the NFS protocol version. Possible values are `NFSauto`, `NFSv3` and `NFSv4`. Defaults to `NFSauto`. Changing this forces a new resource to be created. | 
| **description** | string |  -  |  -  |  Specifies a description for the Storage Mover Source Endpoint. | 



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **id** | string | No  | The ID of the Storage Mover Source Endpoint. | 

Additionally, all variables are provided as outputs.
