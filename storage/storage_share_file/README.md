# azurerm_storage_share_file

Manages a File within an Azure Storage File Share.

## Variables

| Name | Type | Required? |  Default  |  Description |
| ---- | ---- | --------- |  ----------- | ----------- |
| **var.name** | string | True | -  |  The name (or path) of the File that should be created within this File Share. Changing this forces a new resource to be created. | 
| **var.storage_share_id** | string | True | -  |  The Storage Share ID in which this file will be placed into. Changing this forces a new resource to be created. | 
| **var.path** | string | False | ``  |  The storage share directory that you would like the file placed into. Changing this forces a new resource to be created. Defaults to `""`. | 
| **var.source** | string | False | -  |  An absolute path to a file on the local system. Changing this forces a new resource to be created. | 
| **var.content_type** | string | False | `application/octet-stream`  |  The content type of the share file. Defaults to `application/octet-stream`. | 
| **var.content_md5** | string | False | -  |  The MD5 sum of the file contents. Changing this forces a new resource to be created. | 
| **var.content_encoding** | string | False | -  |  Specifies which content encodings have been applied to the file. | 
| **var.content_disposition** | string | False | -  |  Sets the file’s Content-Disposition header. | 
| **var.metadata** | string | False | -  |  A mapping of metadata to assign to this file. | 



## Outputs

| Name | Type | Description |
| ---- | ---- | --------- | 
| **name** | string  | - | 
| **storage_share_id** | string  | - | 
| **path** | string  | - | 
| **source** | string  | - | 
| **content_type** | string  | - | 
| **content_md5** | string  | - | 
| **content_encoding** | string  | - | 
| **content_disposition** | string  | - | 
| **metadata** | string  | - | 
| **id** | string  | The ID of the file within the File Share. | 
| **content_length** | string  | The length in bytes of the file content | 