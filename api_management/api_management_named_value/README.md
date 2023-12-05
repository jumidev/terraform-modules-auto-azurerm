# azurerm_api_management_named_value

Manages an API Management Named Value.

## Example `component.hclt`

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git"   
   path = "api_management/api_management_named_value"   
}

inputs = {
   name = "The name of the API Management Named Value"   
   resource_group_name = "${resource_group}"   
   # api_management_name → set in tfstate_inputs
   display_name = "The display name of this API Management Named Value..."   
}

tfstate_inputs = {
   api_management_name = "path/to/api_management_component:name"   
}

tfstate_store = {
   storage_account = "${storage_account}"   
   container = "${container}"   
   container_path = "${COMPONENT_PATH}"   
}

```

## Required Variables

| Name | Type |  Description |
| ---- | --------- |  ----------- |
| **name** | string |  The name of the API Management Named Value. Changing this forces a new resource to be created. | 
| **resource_group_name** | string |  The name of the Resource Group in which the API Management Named Value should exist. Changing this forces a new resource to be created. | 
| **api_management_name** | string |  The name of the [API Management Service](api_management.html) in which the API Management Named Value should exist. Changing this forces a new resource to be created. | 
| **display_name** | string |  The display name of this API Management Named Value. | 

## Optional Variables

| Name | Type |  possible values |  Description |
| ---- | --------- |  ----------- | ----------- |
| **value** | string |  -  |  The value of this API Management Named Value. | 
| **value_from_key_vault** | [block](#value_from_key_vault-block-structure) |  -  |  A `value_from_key_vault` block. | 
| **secret** | string |  `true`, `false`  |  Specifies whether the API Management Named Value is secret. Valid values are `true` or `false`. The default value is `false`. | 
| **tags** | map |  -  |  A list of tags to be applied to the API Management Named Value. | 

### `value_from_key_vault` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `secret_id` | string | Yes | - | The resource ID of the Key Vault Secret. |
| `identity_client_id` | string | No | - | The client ID of User Assigned Identity, for the API Management Service, which will be used to access the key vault secret. The System Assigned Identity will be used in absence. |



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **id** | string | No  | The ID of the API Management Named Value. | 

Additionally, all variables are provided as outputs.
