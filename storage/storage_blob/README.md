# azurerm_storage_blob

Manages a Blob within a Storage Container.

## Example minimal component.hclt

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git" 
   path = "storage/storage_blob" 
}

inputs = {
   name = "name of storage_blob" 
   storage_account_name = "storage_account_name of storage_blob" 
   storage_container_name = "storage_container_name of storage_blob" 
   type = "type of storage_blob" 
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
| **var.name** | string | True | -  |  -  |  The name of the storage blob. Must be unique within the storage container the blob is located. Changing this forces a new resource to be created. | 
| **var.storage_account_name** | string | True | -  |  -  |  Specifies the storage account in which to create the storage container. Changing this forces a new resource to be created. Changing this forces a new resource to be created. | 
| **var.storage_container_name** | string | True | -  |  -  |  The name of the storage container in which this blob should be created. Changing this forces a new resource to be created. | 
| **var.type** | string | True | -  |  `Append`, `Block`, `Page`  |  The type of the storage blob to be created. Possible values are `Append`, `Block` or `Page`. Changing this forces a new resource to be created. | 
| **var.size** | string | False | `0`  |  -  |  Used only for `page` blobs to specify the size in bytes of the blob to be created. Must be a multiple of 512. Defaults to `0`. Changing this forces a new resource to be created. | 
| **var.access_tier** | string | False | -  |  `Archive`, `Cool`, `Hot`  |  The access tier of the storage blob. Possible values are `Archive`, `Cool` and `Hot`. | 
| **var.cache_control** | string | False | -  |  -  |  Controls the [cache control header](https://developer.mozilla.org/en-US/docs/Web/HTTP/Headers/Cache-Control) content of the response when blob is requested . | 
| **var.content_type** | string | False | `application/octet-stream`  |  -  |  The content type of the storage blob. Cannot be defined if `source_uri` is defined. Defaults to `application/octet-stream`. | 
| **var.content_md5** | string | False | -  |  -  |  The MD5 sum of the blob contents. Cannot be defined if `source_uri` is defined, or if blob type is Append or Page. Changing this forces a new resource to be created. | 
| **var.source** | string | False | -  |  -  |  An absolute path to a file on the local system. This field cannot be specified for Append blobs and cannot be specified if `source_content` or `source_uri` is specified. Changing this forces a new resource to be created. | 
| **var.source_content** | string | False | -  |  -  |  The content for this blob which should be defined inline. This field can only be specified for Block blobs and cannot be specified if `source` or `source_uri` is specified. Changing this forces a new resource to be created. | 
| **var.source_uri** | string | False | -  |  -  |  The URI of an existing blob, or a file in the Azure File service, to use as the source contents for the blob to be created. Changing this forces a new resource to be created. This field cannot be specified for Append blobs and cannot be specified if `source` or `source_content` is specified. | 
| **var.parallelism** | int | False | `8`  |  -  |  The number of workers per CPU core to run for concurrent uploads. Defaults to `8`. Changing this forces a new resource to be created. | 
| **var.metadata** | string | False | -  |  -  |  A map of custom blob metadata. | 



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **id** | string | No  | The ID of the Storage Blob. | 
| **url** | string | No  | The URL of the blob | 

Additionally, all variables are provided as outputs.
