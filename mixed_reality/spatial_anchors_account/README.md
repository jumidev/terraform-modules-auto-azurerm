# azurerm_spatial_anchors_account

Manages an Azure Spatial Anchors Account.

## Variables

| Name | Type | Required? | Default  | possible values | Description |
| ---- | ---- | --------- | -------- | ----------- | ----------- |
| **var.name** | string | True | -  |  -  | Specifies the name of the Spatial Anchors Account. Changing this forces a new resource to be created. Must be globally unique. | 
| **var.resource_group_name** | string | True | -  |  -  | The name of the resource group in which to create the Spatial Anchors Account. Changing this forces a new resource to be created. | 
| **var.location** | string | True | -  |  -  | Specifies the supported Azure location where the resource exists. Changing this forces a new resource to be created. | 
| **var.tags** | map | False | -  |  -  | A mapping of tags to assign to the resource. | 



## Outputs

| Name | Type | Description |
| ---- | ---- | --------- | 
| **name** | string  | - | 
| **resource_group_name** | string  | - | 
| **location** | string  | - | 
| **tags** | map  | - | 
| **id** | string  | The ID of the Spatial Anchors Account. | 
| **account_domain** | string  | The domain of the Spatial Anchors Account. | 
| **account_id** | string  | The account ID of the Spatial Anchors Account. | 