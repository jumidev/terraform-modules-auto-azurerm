# azurerm_gallery_application_version

Manages a Gallery Application Version.

## Example `component.hclt`

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git"   
   path = "compute/gallery_application_version"   
}

inputs = {
   name = "The version name of the Gallery Application Version, such as `1..."   
   # gallery_application_id → set in tfstate_inputs
   location = "${location}"   
   manage_action = {
      install = "..."      
      remove = "..."      
   }
   
   source = {
      media_link = "..."      
   }
   
   target_region = {
      this_target_region = {
         regional_replica_count = "Possible values: 1 | 10"         
      }
      
   }
   
}

tfstate_inputs = {
   gallery_application_id = "path/to/gallery_application_component:id"   
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
| **name** | string |  The version name of the Gallery Application Version, such as `1.0.0`. Changing this forces a new resource to be created. | 
| **gallery_application_id** | string |  The ID of the Gallery Application. Changing this forces a new resource to be created. | 
| **location** | string |  The Azure Region where the Gallery Application Version exists. Changing this forces a new resource to be created. | 
| **manage_action** | [block](#manage_action-block-structure) |  A `manage_action` block. | 
| **source** | [block](#source-block-structure) |  A `source` block. | 
| **target_region** | [block](#target_region-block-structure) |  One or more `target_region` blocks. | 

## Optional Variables

| Name | Type |  Default  |  Description |
| ---- | --------- |  ----------- | ----------- |
| **config_file** | string |  -  |  Specifies the name of the config file on the VM. Changing this forces a new resource to be created. | 
| **enable_health_check** | bool |  `False`  |  Should the Gallery Application reports health. Defaults to `false`. | 
| **end_of_life_date** | string |  -  |  The end of life date in RFC3339 format of the Gallery Application Version. | 
| **exclude_from_latest** | bool |  `False`  |  Should the Gallery Application Version be excluded from the `latest` filter? If set to `true` this Gallery Application Version won't be returned for the `latest` version. Defaults to `false`. | 
| **package_file** | string |  -  |  Specifies the name of the package file on the VM. Changing this forces a new resource to be created. | 
| **tags** | map |  -  |  A mapping of tags to assign to the Gallery Application Version. | 

### `target_region` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `name` | string | Yes | - | The Azure Region in which the Gallery Application Version exists. |
| `regional_replica_count` | string | Yes | - | The number of replicas of the Gallery Application Version to be created per region. Possible values are between '1' and '10'. |
| `exclude_from_latest` | bool | No | False | Specifies whether this Gallery Application Version should be excluded from the 'latest' filter. If set to 'true', this Gallery Application Version won't be returned for the 'latest' version. Defaults to 'false'. |
| `storage_account_type` | string | No | Standard_LRS | The storage account type for the Gallery Application Version. Possible values are 'Standard_LRS', 'Premium_LRS' and 'Standard_ZRS'. Defaults to 'Standard_LRS'. |

### `source` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `media_link` | string | Yes | - | The Storage Blob URI of the source application package. Changing this forces a new resource to be created. |
| `default_configuration_link` | string | No | - | The Storage Blob URI of the default configuration. Changing this forces a new resource to be created. |

### `manage_action` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `install` | string | Yes | - | The command to install the Gallery Application. Changing this forces a new resource to be created. |
| `remove` | string | Yes | - | The command to remove the Gallery Application. Changing this forces a new resource to be created. |
| `update` | string | No | - | The command to update the Gallery Application. Changing this forces a new resource to be created. |



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **id** | string | No  | The ID of the Gallery Application Version. | 

Additionally, all variables are provided as outputs.
