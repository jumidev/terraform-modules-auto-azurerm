# azurerm_gallery_application_version

Manages a Gallery Application Version.

## Variables

| Name | Type | Required? |  Default  |  Description |
| ---- | ---- | --------- |  ----------- | ----------- |
| **var.name** | string | True | -  |  The version name of the Gallery Application Version, such as `1.0.0`. Changing this forces a new resource to be created. | 
| **var.gallery_application_id** | string | True | -  |  The ID of the Gallery Application. Changing this forces a new resource to be created. | 
| **var.location** | string | True | -  |  The Azure Region where the Gallery Application Version exists. Changing this forces a new resource to be created. | 
| **var.manage_action** | block | True | -  |  A `manage_action` block. | 
| **var.source** | block | True | -  |  A `source` block. | 
| **var.target_region** | block | True | -  |  One or more `target_region` blocks. | 
| **var.config_file** | string | False | -  |  Specifies the name of the config file on the VM. Changing this forces a new resource to be created. | 
| **var.enable_health_check** | bool | False | `False`  |  Should the Gallery Application reports health. Defaults to `false`. | 
| **var.end_of_life_date** | datetime | False | -  |  The end of life date in RFC3339 format of the Gallery Application Version. | 
| **var.exclude_from_latest** | bool | False | `False`  |  Should the Gallery Application Version be excluded from the `latest` filter? If set to `true` this Gallery Application Version won't be returned for the `latest` version. Defaults to `false`. | 
| **var.package_file** | string | False | -  |  Specifies the name of the package file on the VM. Changing this forces a new resource to be created. | 
| **var.tags** | map | False | -  |  A mapping of tags to assign to the Gallery Application Version. | 



## Outputs

| Name | Type | Description |
| ---- | ---- | --------- | 
| **name** | string  | - | 
| **gallery_application_id** | string  | - | 
| **location** | string  | - | 
| **manage_action** | block  | - | 
| **source** | block  | - | 
| **target_region** | block  | - | 
| **config_file** | string  | - | 
| **enable_health_check** | bool  | - | 
| **end_of_life_date** | datetime  | - | 
| **exclude_from_latest** | bool  | - | 
| **package_file** | string  | - | 
| **tags** | map  | - | 
| **id** | string  | The ID of the Gallery Application Version. | 