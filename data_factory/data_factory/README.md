# azurerm_data_factory

Manages an Azure Data Factory (Version 2).

## Variables

| Name | Type | Required? | Default  | possible values | Description |
| ---- | ---- | --------- | -------- | ----------- | ----------- |
| **var.name** | string | True | -  |  -  | Specifies the name of the Data Factory. Changing this forces a new resource to be created. Must be globally unique. See the [Microsoft documentation](https://docs.microsoft.com/azure/data-factory/naming-rules) for all restrictions. | 
| **var.resource_group_name** | string | True | -  |  -  | The name of the resource group in which to create the Data Factory. Changing this forces a new resource to be created. | 
| **var.location** | string | True | -  |  -  | Specifies the supported Azure location where the resource exists. Changing this forces a new resource to be created. | 
| **var.github_configuration** | block | False | -  |  -  | A `github_configuration` block. | 
| **var.global_parameter** | block | False | -  |  -  | A list of `global_parameter` blocks. | 
| **var.identity** | block | False | -  |  -  | An `identity` block. | 
| **var.vsts_configuration** | block | False | -  |  -  | A `vsts_configuration` block. | 
| **var.managed_virtual_network_enabled** | bool | False | -  |  -  | Is Managed Virtual Network enabled? | 
| **var.public_network_enabled** | bool | False | `True`  |  -  | Is the Data Factory visible to the public network? Defaults to `true`. | 
| **var.customer_managed_key_id** | string | False | -  |  -  | Specifies the Azure Key Vault Key ID to be used as the Customer Managed Key (CMK) for double encryption. Required with user assigned identity. | 
| **var.customer_managed_key_identity_id** | string | False | -  |  -  | Specifies the ID of the user assigned identity associated with the Customer Managed Key. Must be supplied if `customer_managed_key_id` is set. | 
| **var.purview_id** | string | False | -  |  -  | Specifies the ID of the purview account resource associated with the Data Factory. | 
| **var.tags** | map | False | -  |  -  | A mapping of tags to assign to the resource. | 



## Outputs

| Name | Type | Description |
| ---- | ---- | --------- | 
| **name** | string  | - | 
| **resource_group_name** | string  | - | 
| **location** | string  | - | 
| **github_configuration** | block  | - | 
| **global_parameter** | block  | - | 
| **identity** | block  | - | 
| **vsts_configuration** | block  | - | 
| **managed_virtual_network_enabled** | bool  | - | 
| **public_network_enabled** | bool  | - | 
| **customer_managed_key_id** | string  | - | 
| **customer_managed_key_identity_id** | string  | - | 
| **purview_id** | string  | - | 
| **tags** | map  | - | 
| **id** | string  | The ID of the Data Factory. | 
| **identity** | block  | An `identity` block. | 
| **principal_id** | string  | The Principal ID associated with this Managed Service Identity. | 
| **tenant_id** | string  | The Tenant ID associated with this Managed Service Identity. | 