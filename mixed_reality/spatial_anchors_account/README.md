# azurerm_spatial_anchors_account

Manages an Azure Spatial Anchors Account.

## Example `component.hclt`

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git"   
   path = "mixed_reality/spatial_anchors_account"   
}

inputs = {
   name = "name of spatial_anchors_account"   
   resource_group_name = "${resource_group}"   
   location = "${location}"   
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
| **name** | string |  Specifies the name of the Spatial Anchors Account. Changing this forces a new resource to be created. Must be globally unique. | 
| **resource_group_name** | string |  The name of the resource group in which to create the Spatial Anchors Account. Changing this forces a new resource to be created. | 
| **location** | string |  Specifies the supported Azure location where the resource exists. Changing this forces a new resource to be created. | 

## Optional Variables

| Name | Type |  Description |
| ---- | --------- |  ----------- |
| **tags** | map |  A mapping of tags to assign to the resource. | 



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **id** | string | No  | The ID of the Spatial Anchors Account. | 
| **account_domain** | string | No  | The domain of the Spatial Anchors Account. | 
| **account_id** | string | No  | The account ID of the Spatial Anchors Account. | 

Additionally, all variables are provided as outputs.
