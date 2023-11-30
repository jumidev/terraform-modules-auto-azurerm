# azurerm_storage_object_replication

Manages a Storage Object Replication.

## Example minimal component.hclt

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git" 
   path = "storage/storage_object_replication" 
}

inputs = {
   source_storage_account_id = "source_storage_account_id of storage_object_replication" 
   destination_storage_account_id = "destination_storage_account_id of storage_object_replication" 
   rules = {
      example_rules = {
         source_container_name = "..."   
         destination_container_name = "..."   
      }
  
   }
 
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
| **var.source_storage_account_id** | string |  The ID of the source storage account. Changing this forces a new Storage Object Replication to be created. | 
| **var.destination_storage_account_id** | string |  The ID of the destination storage account. Changing this forces a new Storage Object Replication to be created. | 
| **var.rules** | block |  One or more `rules` blocks. | 

### `rules` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `source_container_name` | string | Yes | - | The source storage container name. Changing this forces a new Storage Object Replication to be created. |
| `destination_container_name` | string | Yes | - | The destination storage container name. Changing this forces a new Storage Object Replication to be created. |
| `copy_blobs_created_after` | string | No | OnlyNewObjects | The time after which the Block Blobs created will be copies to the destination. Possible values are 'OnlyNewObjects', 'Everything' and time in RFC3339 format: '2006-01-02T15:04:00Z'. Defaults to 'OnlyNewObjects'. |
| `filter_out_blobs_with_prefix` | string | No | - | Specifies a list of filters prefixes, the blobs whose names begin with which will be replicated. |



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **id** | string | No  | The ID of the Storage Object Replication in the destination storage account. It's composed as format `source_object_replication_id;destination_object_replication_id`. | 
| **source_object_replication_id** | string | No  | The ID of the Object Replication in the source storage account. | 
| **destination_object_replication_id** | string | No  | The ID of the Object Replication in the destination storage account. | 

Additionally, all variables are provided as outputs.
