# azurerm_gallery_application

Manages a Gallery Application.

## Example `component.hclt`

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git"   
   path = "compute/gallery_application"   
}

inputs = {
   name = "The name of the Gallery Application"   
   # gallery_id → set in tfstate_inputs
   location = "${location}"   
   supported_os_type = "The type of the Operating System supported for the Gallery Application..."   
}

tfstate_inputs = {
   gallery_id = "path/to/shared_image_gallery_component:id"   
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
| **name** | string |  -  |  The name of the Gallery Application. Changing this forces a new resource to be created. | 
| **gallery_id** | string |  -  |  The ID of the Shared Image Gallery. Changing this forces a new resource to be created. | 
| **location** | string |  -  |  The Azure Region where the Gallery Application exists. Changing this forces a new resource to be created. | 
| **supported_os_type** | string |  `Linux`, `Windows`  |  The type of the Operating System supported for the Gallery Application. Possible values are `Linux` and `Windows`. Changing this forces a new resource to be created. | 

## Optional Variables

| Name | Type |  Description |
| ---- | --------- |  ----------- |
| **description** | string |  A description of the Gallery Application. | 
| **end_of_life_date** | datetime |  The end of life date in RFC3339 format of the Gallery Application. | 
| **eula** | string |  The End User Licence Agreement of the Gallery Application. | 
| **privacy_statement_uri** | string |  The URI containing the Privacy Statement associated with the Gallery Application. | 
| **release_note_uri** | string |  The URI containing the Release Notes associated with the Gallery Application. | 
| **tags** | map |  A mapping of tags to assign to the Gallery Application. | 



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **id** | string | No  | The ID of the Gallery Application. | 

Additionally, all variables are provided as outputs.
