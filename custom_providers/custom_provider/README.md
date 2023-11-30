# azurerm_custom_provider

Manages an Azure Custom Provider.

## Example minimal component.hclt

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git" 
   path = "custom_providers/custom_provider" 
}

inputs = {
   name = "name of custom_provider" 
   resource_group_name = "${resource_group}" 
   location = "${location}" 
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
| **var.name** | string | True | Specifies the name of the Custom Provider. Changing this forces a new resource to be created. | 
| **var.resource_group_name** | string | True | The name of the resource group in which to create the Custom Provider. Changing this forces a new resource to be created. | 
| **var.location** | string | True | Specifies the supported Azure location where the resource exists. Changing this forces a new resource to be created. | 
| **var.resource_type** | block | False | Any number of `resource_type` block. One of `resource_type` or `action` must be specified. | | `resource_type` block structure: || 
|   name (string): (REQUIRED) Specifies the name of the route definition. ||
|   endpoint (string): (REQUIRED) Specifies the endpoint of the route definition. ||
|   routing_type (string): The routing type that is supported for the resource request. Valid values are 'Proxy' and 'Proxy,Cache'. Defaults to 'Proxy'. ||

| **var.action** | block | False | Any number of `action` block. One of `resource_type` or `action` must be specified. | | `action` block structure: || 
|   name (string): (REQUIRED) Specifies the name of the action. ||
|   endpoint (string): (REQUIRED) Specifies the endpoint of the action. ||

| **var.validation** | block | False | Any number of `validation` block. | | `validation` block structure: || 
|   specification (string): (REQUIRED) The endpoint where the validation specification is located. ||

| **var.tags** | map | False | A mapping of tags to assign to the resource. Changing this forces a new resource to be created. | 



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **id** | string | No  | The ID of the Custom Provider. | 

Additionally, all variables are provided as outputs.
