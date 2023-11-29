# azurerm_managed_application

Manages a Managed Application.

## Attributes

| Name | Type | Required? | Default  | possible values | Description |
| ---- | ---- | --------- | -------- | ----------- | ----------- |
| **name** | string | True | -  |  -  | Specifies the name of the Managed Application. Changing this forces a new resource to be created. | 
| **resource_group_name** | string | True | -  |  -  | The name of the Resource Group where the Managed Application should exist. Changing this forces a new resource to be created. | 
| **location** | string | True | -  |  -  | Specifies the supported Azure location where the resource exists. Changing this forces a new resource to be created. | 
| **kind** | string | True | -  |  `MarketPlace`, `ServiceCatalog`  | The kind of the managed application to deploy. Possible values are `MarketPlace` and `ServiceCatalog`. Changing this forces a new resource to be created. | 
| **managed_resource_group_name** | string | True | -  |  -  | The name of the target resource group where all the resources deployed by the managed application will reside. Changing this forces a new resource to be created. | 
| **application_definition_id** | string | False | -  |  -  | The application definition ID to deploy. | 
| **parameters** | string | False | -  |  -  | A mapping of name and value pairs to pass to the managed application as parameters. | 
| **parameter_values** | string | False | -  |  -  | The parameter values to pass to the Managed Application. This field is a JSON object that allows you to assign parameters to this Managed Application. | 
| **plan** | block | False | -  |  -  | One `plan` block. Changing this forces a new resource to be created. | 
| **tags** | map | False | -  |  -  | A mapping of tags to assign to the resource. | 

