# azurerm_gallery_application

Manages a Gallery Application.

## Attributes

| Name | Type | Required? | Default  | possible values | Description |
| ---- | ---- | --------- | -------- | ----------- | ----------- |
| **name** | string | True | -  |  -  | The name of the Gallery Application. Changing this forces a new resource to be created. | 
| **gallery_id** | string | True | -  |  -  | The ID of the Shared Image Gallery. Changing this forces a new resource to be created. | 
| **location** | string | True | -  |  -  | The Azure Region where the Gallery Application exists. Changing this forces a new resource to be created. | 
| **supported_os_type** | string | True | -  |  `Linux`, `Windows`  | The type of the Operating System supported for the Gallery Application. Possible values are `Linux` and `Windows`. Changing this forces a new resource to be created. | 
| **description** | string | False | -  |  -  | A description of the Gallery Application. | 
| **end_of_life_date** | datetime | False | -  |  -  | The end of life date in RFC3339 format of the Gallery Application. | 
| **eula** | string | False | -  |  -  | The End User Licence Agreement of the Gallery Application. | 
| **privacy_statement_uri** | string | False | -  |  -  | The URI containing the Privacy Statement associated with the Gallery Application. | 
| **release_note_uri** | string | False | -  |  -  | The URI containing the Release Notes associated with the Gallery Application. | 
| **tags** | map | False | -  |  -  | A mapping of tags to assign to the Gallery Application. | 

