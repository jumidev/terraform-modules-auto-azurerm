# azurerm_gallery_application

Manages a Gallery Application.

## Example minimal component.hclt

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

## Required Variables

| Name | Type |  possible values |  Description |
| ---- | --------- |  ----------- | ----------- |
| **var.name** | string  -  |  The name of the Gallery Application. Changing this forces a new resource to be created. | 
| **var.gallery_id** | string  -  |  The ID of the Shared Image Gallery. Changing this forces a new resource to be created. | 
| **var.location** | string  -  |  The Azure Region where the Gallery Application exists. Changing this forces a new resource to be created. | 
| **var.supported_os_type** | string  `Linux`, `Windows`  |  The type of the Operating System supported for the Gallery Application. Possible values are `Linux` and `Windows`. Changing this forces a new resource to be created. | 

## Optional Variables

| Name | Type |  Description |
| ---- | --------- |  ----------- |
| **var.description** | string  A description of the Gallery Application. | 
| **var.end_of_life_date** | datetime  The end of life date in RFC3339 format of the Gallery Application. | 
| **var.eula** | string  The End User Licence Agreement of the Gallery Application. | 
| **var.privacy_statement_uri** | string  The URI containing the Privacy Statement associated with the Gallery Application. | 
| **var.release_note_uri** | string  The URI containing the Release Notes associated with the Gallery Application. | 
| **var.tags** | map  A mapping of tags to assign to the Gallery Application. | 



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **id** | string | No  | The ID of the Gallery Application. | 

Additionally, all variables are provided as outputs.
