# azurerm_gallery_application

Manages a Gallery Application.

## Variables

| Name | Type | Required? |  possible values |  Description |
| ---- | ---- | --------- |  ----------- | ----------- |
| **var.name** | string | True | -  |  The name of the Gallery Application. Changing this forces a new resource to be created. | 
| **var.gallery_id** | string | True | -  |  The ID of the Shared Image Gallery. Changing this forces a new resource to be created. | 
| **var.location** | string | True | -  |  The Azure Region where the Gallery Application exists. Changing this forces a new resource to be created. | 
| **var.supported_os_type** | string | True | `Linux`, `Windows`  |  The type of the Operating System supported for the Gallery Application. Possible values are `Linux` and `Windows`. Changing this forces a new resource to be created. | 
| **var.description** | string | False | -  |  A description of the Gallery Application. | 
| **var.end_of_life_date** | datetime | False | -  |  The end of life date in RFC3339 format of the Gallery Application. | 
| **var.eula** | string | False | -  |  The End User Licence Agreement of the Gallery Application. | 
| **var.privacy_statement_uri** | string | False | -  |  The URI containing the Privacy Statement associated with the Gallery Application. | 
| **var.release_note_uri** | string | False | -  |  The URI containing the Release Notes associated with the Gallery Application. | 
| **var.tags** | map | False | -  |  A mapping of tags to assign to the Gallery Application. | 



## Outputs

| Name | Type | Description |
| ---- | ---- | --------- | 
| **name** | string  | - | 
| **gallery_id** | string  | - | 
| **location** | string  | - | 
| **supported_os_type** | string  | - | 
| **description** | string  | - | 
| **end_of_life_date** | datetime  | - | 
| **eula** | string  | - | 
| **privacy_statement_uri** | string  | - | 
| **release_note_uri** | string  | - | 
| **tags** | map  | - | 
| **id** | string  | The ID of the Gallery Application. | 

## Example minimal hclt

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git" 
   path = "compute/gallery_application" 
}

inputs = {
   name = "name of gallery_application" 
   gallery_id = "gallery_id of gallery_application" 
   location = "${location}" 
   supported_os_type = "supported_os_type of gallery_application" 
}

tfstate_store = {
   storage_account = "${storage_account}" 
   container = "${container}" 
   container_path = "${COMPONENT_PATH}" 
}


```