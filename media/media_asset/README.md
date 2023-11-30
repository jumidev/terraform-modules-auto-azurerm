# azurerm_media_asset

Manages a Media Asset.

## Example minimal component.hclt

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git" 
   path = "media/media_asset" 
}

inputs = {
   media_services_account_name = "media_services_account_name of media_asset" 
   name = "name of media_asset" 
   resource_group_name = "${resource_group}" 
}

tfstate_store = {
   storage_account = "${storage_account}" 
   container = "${container}" 
   container_path = "${COMPONENT_PATH}" 
}

```

## Variables

| Name | Type | Required? |  Description |
| ---- | ---- | --------- |  ----------- |
| **var.media_services_account_name** | string | True | Specifies the name of the Media Services Account. Changing this forces a new Media Asset to be created. | 
| **var.name** | string | True | The name which should be used for this Media Asset. Changing this forces a new Media Asset to be created. | 
| **var.resource_group_name** | string | True | The name of the Resource Group where the Media Asset should exist. Changing this forces a new Media Asset to be created. | 
| **var.alternate_id** | string | False | The alternate ID of the Asset. | 
| **var.container** | string | False | The name of the asset blob container. Changing this forces a new Media Asset to be created. | 
| **var.description** | string | False | The Asset description. | 
| **var.storage_account_name** | string | False | The name of the storage account where to store the media asset. Changing this forces a new Media Asset to be created. | 



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **id** | string | No  | The ID of the Media Asset. | 

Additionally, all variables are provided as outputs.
