# azurerm_media_asset

Manages a Media Asset.

## Example `component.hclt`

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git"   
   path = "media/media_asset"   
}

inputs = {
   # media_services_account_name → set in tfstate_inputs
   name = "name of media_asset"   
   resource_group_name = "${resource_group}"   
}

tfstate_inputs = {
   media_services_account_name = "path/to/media_services_account_component:name"   
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
| **media_services_account_name** | string |  Specifies the name of the Media Services Account. Changing this forces a new Media Asset to be created. | 
| **name** | string |  The name which should be used for this Media Asset. Changing this forces a new Media Asset to be created. | 
| **resource_group_name** | string |  The name of the Resource Group where the Media Asset should exist. Changing this forces a new Media Asset to be created. | 

## Optional Variables

| Name | Type |  Description |
| ---- | --------- |  ----------- |
| **alternate_id** | string |  The alternate ID of the Asset. | 
| **container** | string |  The name of the asset blob container. Changing this forces a new Media Asset to be created. | 
| **description** | string |  The Asset description. | 
| **storage_account_name** | string |  The name of the storage account where to store the media asset. Changing this forces a new Media Asset to be created. | 



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **id** | string | No  | The ID of the Media Asset. | 

Additionally, all variables are provided as outputs.
