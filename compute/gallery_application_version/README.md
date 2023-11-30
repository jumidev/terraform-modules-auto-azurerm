# azurerm_gallery_application_version

Manages a Gallery Application Version.

## Example minimal component.hclt

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git" 
   path = "compute/gallery_application_version" 
}

inputs = {
   name = "name of gallery_application_version" 
   gallery_application_id = "gallery_application_id of gallery_application_version" 
   location = "${location}" 
   manage_action = "manage_action of gallery_application_version" 
   source = "source of gallery_application_version" 
   target_region = "target_region of gallery_application_version" 
}

tfstate_store = {
   storage_account = "${storage_account}" 
   container = "${container}" 
   container_path = "${COMPONENT_PATH}" 
}

```

## Variables

| Name | Type | Required? |  Default  |  Description |
| ---- | ---- | --------- |  ----------- | ----------- |
| **var.name** | string | True | -  |  The version name of the Gallery Application Version, such as `1.0.0`. Changing this forces a new resource to be created. | 
| **var.gallery_application_id** | string | True | -  |  The ID of the Gallery Application. Changing this forces a new resource to be created. | 
| **var.location** | string | True | -  |  The Azure Region where the Gallery Application Version exists. Changing this forces a new resource to be created. | 
| **var.manage_action** | block | True | -  |  A `manage_action` block. | 
| `manage_action` block structure: || 
|   install (string): (REQUIRED) The command to install the Gallery Application. Changing this forces a new resource to be created. ||
|   remove (string): (REQUIRED) The command to remove the Gallery Application. Changing this forces a new resource to be created. ||
|   update (datetime): The command to update the Gallery Application. Changing this forces a new resource to be created. ||
| **var.source** | block | True | -  |  A `source` block. | 
| `source` block structure: || 
|   media_link (string): (REQUIRED) The Storage Blob URI of the source application package. Changing this forces a new resource to be created. ||
|   default_configuration_link (string): The Storage Blob URI of the default configuration. Changing this forces a new resource to be created. ||
| **var.target_region** | block | True | -  |  One or more `target_region` blocks. | 
| `target_region` block structure: || 
|   name (string): (REQUIRED) The Azure Region in which the Gallery Application Version exists. ||
|   regional_replica_count (string): (REQUIRED) The number of replicas of the Gallery Application Version to be created per region. Possible values are between '1' and '10'. ||
|   exclude_from_latest (bool): Specifies whether this Gallery Application Version should be excluded from the 'latest' filter. If set to 'true', this Gallery Application Version won't be returned for the 'latest' version. Defaults to 'false'. ||
|   storage_account_type (string): The storage account type for the Gallery Application Version. Possible values are 'Standard_LRS', 'Premium_LRS' and 'Standard_ZRS'. Defaults to 'Standard_LRS'. ||
| **var.config_file** | string | False | -  |  Specifies the name of the config file on the VM. Changing this forces a new resource to be created. | 
| **var.enable_health_check** | bool | False | `False`  |  Should the Gallery Application reports health. Defaults to `false`. | 
| **var.end_of_life_date** | datetime | False | -  |  The end of life date in RFC3339 format of the Gallery Application Version. | 
| **var.exclude_from_latest** | bool | False | `False`  |  Should the Gallery Application Version be excluded from the `latest` filter? If set to `true` this Gallery Application Version won't be returned for the `latest` version. Defaults to `false`. | 
| **var.package_file** | string | False | -  |  Specifies the name of the package file on the VM. Changing this forces a new resource to be created. | 
| **var.tags** | map | False | -  |  A mapping of tags to assign to the Gallery Application Version. | 



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **id** | string | No  | The ID of the Gallery Application Version. | 

Additionally, all variables are provided as outputs.
