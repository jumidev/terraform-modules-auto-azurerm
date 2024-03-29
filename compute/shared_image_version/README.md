# azurerm_shared_image_version

Manages a Version of a Shared Image within a Shared Image Gallery.

## Example `component.hclt`

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git"   
   path = "compute/shared_image_version"   
}

inputs = {
   name = "The version number for this Image Version, such as `1..."   
   # gallery_name → set in component_inputs
   # image_name → set in component_inputs
   location = "${location}"   
   resource_group_name = "${resource_group}"   
   target_region = "One or more `target_region` blocks"   
}

component_inputs = {
   gallery_name = "path/to/shared_image_gallery_component:name"   
   image_name = "path/to/image_component:name"   
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
| **name** | string |  The version number for this Image Version, such as `1.0.0`. Changing this forces a new resource to be created. | 
| **gallery_name** | string |  The name of the Shared Image Gallery in which the Shared Image exists. Changing this forces a new resource to be created. | 
| **image_name** | string |  The name of the Shared Image within the Shared Image Gallery in which this Version should be created. Changing this forces a new resource to be created. | 
| **location** | string |  The Azure Region in which the Shared Image Gallery exists. Changing this forces a new resource to be created. | 
| **resource_group_name** | string |  The name of the Resource Group in which the Shared Image Gallery exists. Changing this forces a new resource to be created. | 
| **target_region** | string |  One or more `target_region` blocks. | 

## Optional Variables

| Name | Type |  Default  |  possible values |  Description |
| ---- | --------- |  ----------- | ----------- | ----------- |
| **blob_uri** | string |  -  |  -  |  URI of the Azure Storage Blob used to create the Image Version. Changing this forces a new resource to be created. -> **NOTE:** You must specify exact one of `blob_uri`, `managed_image_id` and `os_disk_snapshot_id`. -> **NOTE:** `blob_uri` and `storage_account_id` must be specified together | 
| **end_of_life_date** | string |  -  |  -  |  The end of life date in RFC3339 format of the Image Version. | 
| **exclude_from_latest** | bool |  `False`  |  -  |  Should this Image Version be excluded from the `latest` filter? If set to `true` this Image Version won't be returned for the `latest` version. Defaults to `false`. | 
| **managed_image_id** | string |  -  |  `azurerm_image`, `blob_uri`, `managed_image_id`, `os_disk_snapshot_id`  |  The ID of the Managed Image or Virtual Machine ID which should be used for this Shared Image Version. Changing this forces a new resource to be created. -> **NOTE:** The ID can be sourced from the `azurerm_image` [Data Source](https://www.terraform.io/docs/providers/azurerm/d/image.html) or [Resource](https://www.terraform.io/docs/providers/azurerm/r/image.html). -> **NOTE:** You must specify exact one of `blob_uri`, `managed_image_id` and `os_disk_snapshot_id`. | 
| **os_disk_snapshot_id** | string |  -  |  -  |  The ID of the OS disk snapshot which should be used for this Shared Image Version. Changing this forces a new resource to be created. -> **NOTE:** You must specify exact one of `blob_uri`, `managed_image_id` and `os_disk_snapshot_id`. | 
| **deletion_of_replicated_locations_enabled** | bool |  `False`  |  -  |  Specifies whether this Shared Image Version can be deleted from the Azure Regions this is replicated to. Defaults to `false`. Changing this forces a new resource to be created. | 
| **replication_mode** | string |  `Full`  |  `Full`, `Shallow`  |  Mode to be used for replication. Possible values are `Full` and `Shallow`. Defaults to `Full`. Changing this forces a new resource to be created. | 
| **storage_account_id** | string |  -  |  -  |  The ID of the Storage Account where the Blob exists. Changing this forces a new resource to be created. -> **NOTE:** `blob_uri` and `storage_account_id` must be specified together | 
| **tags** | map |  -  |  -  |  A collection of tags which should be applied to this resource. | 



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **storage_account_type** | string | No  | The storage account type for the image version. Possible values are `Standard_LRS`, `Premium_LRS` and `Standard_ZRS`. Defaults to `Standard_LRS`. You can store all of your image version replicas in Zone Redundant Storage by specifying `Standard_ZRS`. In addition to the Arguments listed above - the following Attributes are exported: | 
| **id** | string | No  | The ID of the Shared Image Version. | 

Additionally, all variables are provided as outputs.
