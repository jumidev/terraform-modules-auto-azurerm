# azurerm_media_asset

Manages a Media Asset.

## Attributes

| Name | Type | Required? | Default  | possible values | Description |
| ---- | ---- | --------- | -------- | ----------- | ----------- |
| **media_services_account_name** | string | True | -  |  -  | Specifies the name of the Media Services Account. Changing this forces a new Media Asset to be created. | 
| **name** | string | True | -  |  -  | The name which should be used for this Media Asset. Changing this forces a new Media Asset to be created. | 
| **resource_group_name** | string | True | -  |  -  | The name of the Resource Group where the Media Asset should exist. Changing this forces a new Media Asset to be created. | 
| **alternate_id** | string | False | -  |  -  | The alternate ID of the Asset. | 
| **container** | string | False | -  |  -  | The name of the asset blob container. Changing this forces a new Media Asset to be created. | 
| **description** | string | False | -  |  -  | The Asset description. | 
| **storage_account_name** | string | False | -  |  -  | The name of the storage account where to store the media asset. Changing this forces a new Media Asset to be created. | 

