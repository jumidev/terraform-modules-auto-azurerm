# azurerm_api_management_custom_domain

Manages a API Management Custom Domain.## Disclaimers~> **Note:** It's possible to define Custom Domains both within [the `azurerm_api_management` resource](api_management.html) via the `hostname_configurations` block and by using this resource. However it's not possible to use both methods to manage Custom Domains within an API Management Service, since there will be conflicts.

## Variables

| Name | Type | Required? |  Description |
| ---- | ---- | --------- |  ----------- |
| **var.api_management_id** | string | True | The ID of the API Management service for which to configure Custom Domains. Changing this forces a new API Management Custom Domain resource to be created. | 
| **var.developer_portal** | block | False | One or more `developer_portal` blocks. | 
| **var.management** | block | False | One or more `management` blocks. | 
| **var.portal** | block | False | One or more `portal` blocks. | 
| **var.gateway** | block | False | One or more `gateway` blocks. | 
| **var.scm** | block | False | One or more `scm` blocks. | 



## Outputs

| Name | Type | Description |
| ---- | ---- | --------- | 
| **api_management_id** | string  | - | 
| **developer_portal** | block  | - | 
| **management** | block  | - | 
| **portal** | block  | - | 
| **gateway** | block  | - | 
| **scm** | block  | - | 
| **id** | string  | The ID of the API Management Custom Domain. | 

## Example minimal hclt

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git" 
   path = "api_management/api_management_custom_domain" 
}

inputs = {
   api_management_id = "api_management_id of api_management_custom_domain" 
}

tfstate_store = {
   storage_account = "${storage_account}" 
   container = "${container}" 
   container_path = "${COMPONENT_PATH}" 
}


```