# azurerm_logic_app_integration_account_assembly

Manages a Logic App Integration Account Assembly.

## Example `component.hclt`

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git" 
   path = "logic_app/logic_app_integration_account_assembly" 
}

inputs = {
   name = "name of logic_app_integration_account_assembly" 
   resource_group_name = "${resource_group}" 
   integration_account_name = "integration_account_name of logic_app_integration_account_assembly" 
   assembly_name = "assembly_name of logic_app_integration_account_assembly" 
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
| **name** | string |  The name which should be used for this Logic App Integration Account Assembly Artifact. Changing this forces a new resource to be created. | 
| **resource_group_name** | string |  The name of the Resource Group where the Logic App Integration Account Assembly Artifact should exist. Changing this forces a new resource to be created. | 
| **integration_account_name** | string |  The name of the Logic App Integration Account. Changing this forces a new resource to be created. | 
| **assembly_name** | string |  The name of the Logic App Integration Account Assembly. | 

## Optional Variables

| Name | Type |  Default  |  Description |
| ---- | --------- |  ----------- | ----------- |
| **assembly_version** | string |  `0.0.0.0`  |  The version of the Logic App Integration Account Assembly. Defaults to `0.0.0.0`. | 
| **content** | string |  -  |  The content of the Logic App Integration Account Assembly. | 
| **content_link_uri** | string |  -  |  The content link URI of the Logic App Integration Account Assembly. | 
| **metadata** | string |  -  |  The metadata of the Logic App Integration Account Assembly. | 



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **id** | string | No  | The ID of the Logic App Integration Account Assembly. | 

Additionally, all variables are provided as outputs.
