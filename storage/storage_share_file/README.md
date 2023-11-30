# azurerm_storage_share_file

Manages a File within an Azure Storage File Share.

## Example `component.hclt`

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git" 
   path = "storage/storage_share_file" 
}

inputs = {
   name = "name of storage_share_file" 
   storage_share_id = "storage_share_id of storage_share_file" 
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
| **var.name** | string |  The name (or path) of the File that should be created within this File Share. Changing this forces a new resource to be created. | 
| **var.storage_share_id** | string |  The Storage Share ID in which this file will be placed into. Changing this forces a new resource to be created. | 

## Optional Variables

| Name | Type |  Default  |  Description |
| ---- | --------- |  ----------- | ----------- |
| **var.path** | string |  ``  |  The storage share directory that you would like the file placed into. Changing this forces a new resource to be created. Defaults to `""`. | 
| **var.source** | string |  -  |  An absolute path to a file on the local system. Changing this forces a new resource to be created. | 
| **var.content_type** | string |  `application/octet-stream`  |  The content type of the share file. Defaults to `application/octet-stream`. | 
| **var.content_md5** | string |  -  |  The MD5 sum of the file contents. Changing this forces a new resource to be created. | 
| **var.content_encoding** | string |  -  |  Specifies which content encodings have been applied to the file. | 
| **var.content_disposition** | string |  -  |  Sets the file’s Content-Disposition header. | 
| **var.metadata** | string |  -  |  A mapping of metadata to assign to this file. | 



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **id** | string | No  | The ID of the file within the File Share. | 
| **content_length** | string | No  | The length in bytes of the file content | 

Additionally, all variables are provided as outputs.
