# azurerm_storage_share_file

Manages a File within an Azure Storage File Share.

## Attributes

| Name | Type | Required? | Default  | possible values | Description |
| ---- | ---- | --------- | -------- | ----------- | ----------- |
| **name** | string | True | -  |  -  | The name (or path) of the File that should be created within this File Share. Changing this forces a new resource to be created. | 
| **storage_share_id** | string | True | -  |  -  | The Storage Share ID in which this file will be placed into. Changing this forces a new resource to be created. | 
| **path** | string | False | ``  |  -  | The storage share directory that you would like the file placed into. Changing this forces a new resource to be created. Defaults to `""`. | 
| **source** | string | False | -  |  -  | An absolute path to a file on the local system. Changing this forces a new resource to be created. | 
| **content_type** | string | False | `application/octet-stream`  |  -  | The content type of the share file. Defaults to `application/octet-stream`. | 
| **content_md5** | string | False | -  |  -  | The MD5 sum of the file contents. Changing this forces a new resource to be created. | 
| **content_encoding** | string | False | -  |  -  | Specifies which content encodings have been applied to the file. | 
| **content_disposition** | string | False | -  |  -  | Sets the file’s Content-Disposition header. | 
| **metadata** | string | False | -  |  -  | A mapping of metadata to assign to this file. | 

