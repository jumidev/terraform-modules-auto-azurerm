# azurerm_spatial_anchors_account

Manages an Azure Spatial Anchors Account.

## Attributes

| Name | Type | Required? | Default  | possible values | Description |
| ---- | ---- | --------- | -------- | ----------- | ----------- |
| **name** | string | True | -  |  -  | Specifies the name of the Spatial Anchors Account. Changing this forces a new resource to be created. Must be globally unique. | 
| **resource_group_name** | string | True | -  |  -  | The name of the resource group in which to create the Spatial Anchors Account. Changing this forces a new resource to be created. | 
| **location** | string | True | -  |  -  | Specifies the supported Azure location where the resource exists. Changing this forces a new resource to be created. | 
| **tags** | map | False | -  |  -  | A mapping of tags to assign to the resource. | 

