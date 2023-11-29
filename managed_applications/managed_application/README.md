# azurerm_managed_application

Manages a Managed Application.

## Variables

| Name | Type | Required? |  possible values |  Description |
| ---- | ---- | --------- |  ----------- | ----------- |
| **var.name** | string | True | -  |  Specifies the name of the Managed Application. Changing this forces a new resource to be created. | 
| **var.resource_group_name** | string | True | -  |  The name of the Resource Group where the Managed Application should exist. Changing this forces a new resource to be created. | 
| **var.location** | string | True | -  |  Specifies the supported Azure location where the resource exists. Changing this forces a new resource to be created. | 
| **var.kind** | string | True | `MarketPlace`, `ServiceCatalog`  |  The kind of the managed application to deploy. Possible values are `MarketPlace` and `ServiceCatalog`. Changing this forces a new resource to be created. | 
| **var.managed_resource_group_name** | string | True | -  |  The name of the target resource group where all the resources deployed by the managed application will reside. Changing this forces a new resource to be created. | 
| **var.application_definition_id** | string | False | -  |  The application definition ID to deploy. | 
| **var.parameters** | string | False | -  |  A mapping of name and value pairs to pass to the managed application as parameters. | 
| **var.parameter_values** | string | False | -  |  The parameter values to pass to the Managed Application. This field is a JSON object that allows you to assign parameters to this Managed Application. | 
| **var.plan** | block | False | -  |  One `plan` block. Changing this forces a new resource to be created. | 
| **var.tags** | map | False | -  |  A mapping of tags to assign to the resource. | 



## Outputs

| Name | Type | Description |
| ---- | ---- | --------- | 
| **name** | string  | - | 
| **resource_group_name** | string  | - | 
| **location** | string  | - | 
| **kind** | string  | - | 
| **managed_resource_group_name** | string  | - | 
| **application_definition_id** | string  | - | 
| **parameters** | string  | - | 
| **parameter_values** | string  | - | 
| **plan** | block  | - | 
| **tags** | map  | - | 
| **id** | string  | The ID of the Managed Application. | 
| **outputs** | string  | The name and value pairs that define the managed application outputs. | 