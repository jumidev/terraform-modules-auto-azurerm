# azurerm_healthcare_workspace

Manages a Healthcare workspace

## Attributes

| Name | Type | Required? | Default  | possible values | Description |
| ---- | ---- | --------- | -------- | ----------- | ----------- |
| **name** | string | True | -  |  -  | Specifies the name of the Healthcare Workspace. Changing this forces a new Healthcare Workspace to be created. | 
| **resource_group_name** | string | True | -  |  -  | Specifies the name of the Resource Group where the Healthcare Workspace should exist. Changing this forces a new Healthcare Workspace to be created. | 
| **location** | string | True | -  |  -  | Specifies the Azure Region where the Healthcare Workspace should be created. Changing this forces a new Healthcare Workspace to be created. | 
| **tags** | map | False | -  |  -  | A mapping of tags to assign to the Healthcare Workspace. | 

