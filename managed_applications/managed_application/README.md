# azurerm_managed_application

Manages a Managed Application.

## Example minimal component.hclt

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git" 
   path = "managed_applications/managed_application" 
}

inputs = {
   name = "name of managed_application" 
   resource_group_name = "${resource_group}" 
   location = "${location}" 
   kind = "kind of managed_application" 
   managed_resource_group_name = "managed_resource_group_name of managed_application" 
}

tfstate_store = {
   storage_account = "${storage_account}" 
   container = "${container}" 
   container_path = "${COMPONENT_PATH}" 
}

```

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
| `plan` block structure: || 
|   name (string): (REQUIRED) Specifies the name of the plan from the marketplace. Changing this forces a new resource to be created. ||
|   product (string): (REQUIRED) Specifies the product of the plan from the marketplace. Changing this forces a new resource to be created. ||
|   publisher (string): (REQUIRED) Specifies the publisher of the plan. Changing this forces a new resource to be created. ||
|   version (string): (REQUIRED) Specifies the version of the plan from the marketplace. Changing this forces a new resource to be created. ||
|   promotion_code (string): Specifies the promotion code to use with the plan. Changing this forces a new resource to be created. ||
| **var.tags** | map | False | -  |  A mapping of tags to assign to the resource. | 



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **id** | string | No  | The ID of the Managed Application. | 
| **outputs** | string | No  | The name and value pairs that define the managed application outputs. | 

Additionally, all variables are provided as outputs.
