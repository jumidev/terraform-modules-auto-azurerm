# azurerm_gallery_application_version

Manages a Gallery Application Version.

## Attributes

| Name | Type | Required? | Default  | possible values | Description |
| ---- | ---- | --------- | -------- | ----------- | ----------- |
| **name** | string | True | -  |  -  | The version name of the Gallery Application Version, such as `1.0.0`. Changing this forces a new resource to be created. | 
| **gallery_application_id** | string | True | -  |  -  | The ID of the Gallery Application. Changing this forces a new resource to be created. | 
| **location** | string | True | -  |  -  | The Azure Region where the Gallery Application Version exists. Changing this forces a new resource to be created. | 
| **manage_action** | block | True | -  |  -  | A `manage_action` block. | 
| **source** | block | True | -  |  -  | A `source` block. | 
| **target_region** | block | True | -  |  -  | One or more `target_region` blocks. | 
| **config_file** | string | False | -  |  -  | Specifies the name of the config file on the VM. Changing this forces a new resource to be created. | 
| **enable_health_check** | bool | False | `False`  |  -  | Should the Gallery Application reports health. Defaults to `false`. | 
| **end_of_life_date** | datetime | False | -  |  -  | The end of life date in RFC3339 format of the Gallery Application Version. | 
| **exclude_from_latest** | bool | False | `False`  |  -  | Should the Gallery Application Version be excluded from the `latest` filter? If set to `true` this Gallery Application Version won't be returned for the `latest` version. Defaults to `false`. | 
| **package_file** | string | False | -  |  -  | Specifies the name of the package file on the VM. Changing this forces a new resource to be created. | 
| **tags** | map | False | -  |  -  | A mapping of tags to assign to the Gallery Application Version. | 

