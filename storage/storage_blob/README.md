# azurerm_storage_blob

Manages a Blob within a Storage Container.

## Attributes

| Name | Type | Required? | Default  | possible values | Description |
| ---- | ---- | --------- | -------- | ----------- | ----------- |
| **name** | string | True | -  |  -  | The name of the storage blob. Must be unique within the storage container the blob is located. Changing this forces a new resource to be created. | 
| **storage_account_name** | string | True | -  |  -  | Specifies the storage account in which to create the storage container. Changing this forces a new resource to be created. Changing this forces a new resource to be created. | 
| **storage_container_name** | string | True | -  |  -  | The name of the storage container in which this blob should be created. Changing this forces a new resource to be created. | 
| **type** | string | True | -  |  `Append`, `Block`, `Page`  | The type of the storage blob to be created. Possible values are `Append`, `Block` or `Page`. Changing this forces a new resource to be created. | 
| **size** | string | False | `0`  |  -  | Used only for `page` blobs to specify the size in bytes of the blob to be created. Must be a multiple of 512. Defaults to `0`. Changing this forces a new resource to be created. | 
| **access_tier** | string | False | -  |  `Archive`, `Cool`, `Hot`  | The access tier of the storage blob. Possible values are `Archive`, `Cool` and `Hot`. | 
| **cache_control** | string | False | -  |  -  | Controls the [cache control header](https://developer.mozilla.org/en-US/docs/Web/HTTP/Headers/Cache-Control) content of the response when blob is requested . | 
| **content_type** | string | False | `application/octet-stream`  |  -  | The content type of the storage blob. Cannot be defined if `source_uri` is defined. Defaults to `application/octet-stream`. | 
| **content_md5** | string | False | -  |  -  | The MD5 sum of the blob contents. Cannot be defined if `source_uri` is defined, or if blob type is Append or Page. Changing this forces a new resource to be created. | 
| **source** | string | False | -  |  -  | An absolute path to a file on the local system. This field cannot be specified for Append blobs and cannot be specified if `source_content` or `source_uri` is specified. Changing this forces a new resource to be created. | 
| **source_content** | string | False | -  |  -  | The content for this blob which should be defined inline. This field can only be specified for Block blobs and cannot be specified if `source` or `source_uri` is specified. Changing this forces a new resource to be created. | 
| **source_uri** | string | False | -  |  -  | The URI of an existing blob, or a file in the Azure File service, to use as the source contents for the blob to be created. Changing this forces a new resource to be created. This field cannot be specified for Append blobs and cannot be specified if `source` or `source_content` is specified. | 
| **parallelism** | int | False | `8`  |  -  | The number of workers per CPU core to run for concurrent uploads. Defaults to `8`. Changing this forces a new resource to be created. | 
| **metadata** | string | False | -  |  -  | A map of custom blob metadata. | 

