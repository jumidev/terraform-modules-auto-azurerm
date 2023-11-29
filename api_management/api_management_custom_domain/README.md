# azurerm_api_management_custom_domain

Manages a API Management Custom Domain.## Disclaimers~> **Note:** It's possible to define Custom Domains both within [the `azurerm_api_management` resource](api_management.html) via the `hostname_configurations` block and by using this resource. However it's not possible to use both methods to manage Custom Domains within an API Management Service, since there will be conflicts.

## Attributes

| Name | Type | Required? | Default  | possible values | Description |
| ---- | ---- | --------- | -------- | ----------- | ----------- |
| **api_management_id** | string | True | -  |  -  | The ID of the API Management service for which to configure Custom Domains. Changing this forces a new API Management Custom Domain resource to be created. | 
| **developer_portal** | block | False | -  |  -  | One or more `developer_portal` blocks. | 
| **management** | block | False | -  |  -  | One or more `management` blocks. | 
| **portal** | block | False | -  |  -  | One or more `portal` blocks. | 
| **gateway** | block | False | -  |  -  | One or more `gateway` blocks. | 
| **scm** | block | False | -  |  -  | One or more `scm` blocks. | 

