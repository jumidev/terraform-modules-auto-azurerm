# azurerm_storage_mover_source_endpoint

Manages a Storage Mover Source Endpoint.

## Example minimal component.hclt

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git" 
   path = "storage_mover/storage_mover_source_endpoint" 
}

inputs = {
   name = "name of storage_mover_source_endpoint" 
   storage_mover_id = "storage_mover_id of storage_mover_source_endpoint" 
   host = "host of storage_mover_source_endpoint" 
}

tfstate_store = {
   storage_account = "${storage_account}" 
   container = "${container}" 
   container_path = "${COMPONENT_PATH}" 
}


```

## Variables

| Name | Type | Required? |  Default  |  possible values |  Description |
| ---- | ---- | --------- |  ----------- | ----------- | ----------- |
| **var.name** | string | True | -  |  -  |  Specifies the name which should be used for this Storage Mover Source Endpoint. Changing this forces a new resource to be created. | 
| **var.storage_mover_id** | string | True | -  |  -  |  Specifies the ID of the Storage Mover for this Storage Mover Source Endpoint. Changing this forces a new resource to be created. | 
| **var.host** | string | True | -  |  -  |  Specifies the host name or IP address of the server exporting the file system. Changing this forces a new resource to be created. | 
| **var.export** | string | False | -  |  -  |  Specifies the directory being exported from the server. Changing this forces a new resource to be created. | 
| **var.nfs_version** | string | False | `NFSauto`  |  `NFSauto`, `NFSv3`, `NFSv4`  |  Specifies the NFS protocol version. Possible values are `NFSauto`, `NFSv3` and `NFSv4`. Defaults to `NFSauto`. Changing this forces a new resource to be created. | 
| **var.description** | string | False | -  |  -  |  Specifies a description for the Storage Mover Source Endpoint. | 



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **id** | string | No  | The ID of the Storage Mover Source Endpoint. | 

Additionally, all variables are provided as outputs.
