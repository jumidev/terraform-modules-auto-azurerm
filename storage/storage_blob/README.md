# azurerm_storage_blob



## Example `component.hclt`

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git"   
   path = "storage/storage_blob"   
}

inputs = {
   name = "The name of the storage blob"   
   # storage_account_name → set in component_inputs
   # storage_container_name → set in component_inputs
   type = "The type of the storage blob to be created"   
}

component_inputs = {
   storage_account_name = "path/to/storage_account_component:name"   
   storage_container_name = "path/to/storage_container_component:name"   
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
| **name** | string |  -  |  The name of the storage blob. Must be unique within the storage container the blob is located. Changing this forces a new resource to be created. | 
| **storage_account_name** | string |  -  |  Specifies the storage account in which to create the storage container. Changing this forces a new resource to be created. Changing this forces a new resource to be created. | 
| **storage_container_name** | string |  -  |  The name of the storage container in which this blob should be created. Changing this forces a new resource to be created. | 
| **type** | string |  `Append`, `Block`, `Page`  |  The type of the storage blob to be created. Possible values are `Append`, `Block` or `Page`. Changing this forces a new resource to be created. | 

## Optional Variables

| Name | Type |  Default  |  possible values |  Description |
| ---- | --------- |  ----------- | ----------- | ----------- |
| **size** | string |  `0`  |  -  |  Used only for `page` blobs to specify the size in bytes of the blob to be created. Must be a multiple of 512. Defaults to `0`. Changing this forces a new resource to be created. ~> **Note:** `size` is required if `source_uri` is not set. | 
| **access_tier** | string |  -  |  `Archive`, `Cool`, `Hot`  |  The access tier of the storage blob. Possible values are `Archive`, `Cool` and `Hot`. | 
| **cache_control** | string |  -  |  -  |  Controls the [cache control header](https://developer.mozilla.org/en-US/docs/Web/HTTP/Headers/Cache-Control) content of the response when blob is requested . | 
| **content_type** | string |  `application/octet-stream`  |  -  |  The content type of the storage blob. Cannot be defined if `source_uri` is defined. Defaults to `application/octet-stream`. | 
| **content_md5** | string |  -  |  -  |  The MD5 sum of the blob contents. Cannot be defined if `source_uri` is defined, or if blob type is Append or Page. Changing this forces a new resource to be created. ~> **NOTE:** This property is intended to be used with the Terraform internal [filemd5](https://www.terraform.io/docs/configuration/functions/filemd5.html) and [md5](https://www.terraform.io/docs/configuration/functions/md5.html) functions when `source` or `source_content`, respectively, are defined. | 
| **source** | string |  -  |  -  |  An absolute path to a file on the local system. This field cannot be specified for Append blobs and cannot be specified if `source_content` or `source_uri` is specified. Changing this forces a new resource to be created. | 
| **source_content** | string |  -  |  -  |  The content for this blob which should be defined inline. This field can only be specified for Block blobs and cannot be specified if `source` or `source_uri` is specified. Changing this forces a new resource to be created. | 
| **source_uri** | string |  -  |  -  |  The URI of an existing blob, or a file in the Azure File service, to use as the source contents for the blob to be created. Changing this forces a new resource to be created. This field cannot be specified for Append blobs and cannot be specified if `source` or `source_content` is specified. | 
| **parallelism** | number |  `8`  |  -  |  The number of workers per CPU core to run for concurrent uploads. Defaults to `8`. Changing this forces a new resource to be created. ~> **NOTE:** `parallelism` is only applicable for Page blobs - support for [Block Blobs is blocked on the upstream issue](https://github.com/tombuildsstuff/giovanni/issues/15). | 
| **metadata** | string |  -  |  -  |  A map of custom blob metadata. | 



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **metadata** | string | No  | A map of custom blob metadata. In addition to the Arguments listed above - the following Attributes are exported: | 
| **id** | string | No  | The ID of the Storage Blob. | 
| **url** | string | No  | The URL of the blob | 

Additionally, all variables are provided as outputs.
