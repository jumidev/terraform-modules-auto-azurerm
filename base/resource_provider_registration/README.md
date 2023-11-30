# azurerm_resource_provider_registration

Manages the registration of a Resource Provider - which allows access to the API's supported by this Resource Provider.-> The Azure Provider will automatically register all of the Resource Providers which it supports on launch (unless opted-out using the `skip_provider_registration` field within the provider block).!> **Note:** The errors returned from the Azure API when a Resource Provider is unregistered are unclear (example `API version '2019-01-01' was not found for 'Microsoft.Foo'`) - please ensure that all of the necessary Resource Providers you're using are registered - if in doubt **we strongly recommend letting Terraform register these for you**.-> **Note:** Adding or Removing a Preview Feature will re-register the Resource Provider.

## Variables

| Name | Type | Required? |  Description |
| ---- | ---- | --------- |  ----------- |
| **var.name** | string | True | The namespace of the Resource Provider which should be registered. Changing this forces a new resource to be created. | 
| **var.feature** | block | False | A list of `feature` blocks. | 



## Outputs

| Name | Type | Description |
| ---- | ---- | --------- | 
| **name** | string  | - | 
| **feature** | block  | - | 

## Example minimal hclt

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git" 
   path = "base/resource_provider_registration" 
}

inputs = {
   name = "name of resource_provider_registration" 
}

tfstate_store = {
   storage_account = "${storage_account}" 
   container = "${container}" 
   container_path = "${COMPONENT_PATH}" 
}


```