# azurerm_storage_mover_source_endpoint

Manages a Storage Mover Source Endpoint.

## Attributes

| Name | Type | Required? | Default  | possible values | Description |
| ---- | ---- | --------- | -------- | ----------- | ----------- |
| **name** | string | True | -  |  -  | Specifies the name which should be used for this Storage Mover Source Endpoint. Changing this forces a new resource to be created. | 
| **storage_mover_id** | string | True | -  |  -  | Specifies the ID of the Storage Mover for this Storage Mover Source Endpoint. Changing this forces a new resource to be created. | 
| **host** | string | True | -  |  -  | Specifies the host name or IP address of the server exporting the file system. Changing this forces a new resource to be created. | 
| **export** | string | False | -  |  -  | Specifies the directory being exported from the server. Changing this forces a new resource to be created. | 
| **nfs_version** | string | False | `NFSauto`  |  `NFSauto`, `NFSv3`, `NFSv4`  | Specifies the NFS protocol version. Possible values are `NFSauto`, `NFSv3` and `NFSv4`. Defaults to `NFSauto`. Changing this forces a new resource to be created. | 
| **description** | string | False | -  |  -  | Specifies a description for the Storage Mover Source Endpoint. | 

