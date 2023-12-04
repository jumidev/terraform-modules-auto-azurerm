# azurerm_data_factory_integration_runtime_managed

Manages an Azure Data Factory Managed Integration Runtime.~> **NOTE:** The `azurerm_data_factory_integration_runtime_managed` resource has been superseded by the [`azurerm_data_factory_integration_runtime_azure_ssis`](data_factory_integration_runtime_azure_ssis.html) resource. The existing `azurerm_data_factory_integration_runtime_managed` resource will be deprecated (but still available) in version 3.0 of the AzureRM Terraform Provider - we recommend using the [`azurerm_data_factory_integration_runtime_azure_ssis`](data_factory_integration_runtime_azure_ssis.html) resource for new deployments.

## Example `component.hclt`

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git" 
   path = "data_factory/data_factory_integration_runtime_managed" 
}

inputs = {
   name = "name of data_factory_integration_runtime_managed" 
   # data_factory_id → set in tfstate_inputs
   location = "${location}" 
   node_size = "node_size of data_factory_integration_runtime_managed" 
}

tfstate_inputs = {
   data_factory_id = "path/to/data_factory_component:id" 
}

tfstate_store = {
   storage_account = "${storage_account}" 
   container = "${container}" 
   container_path = "${COMPONENT_PATH}" 
}

```

## Required Variables

| Name | Type |  possible values |  Description |
| ---- | --------- |  ----------- | ----------- |
| **name** | string |  -  |  Specifies the name of the Managed Integration Runtime. Changing this forces a new resource to be created. Must be globally unique. See the [Microsoft documentation](https://docs.microsoft.com/azure/data-factory/naming-rules) for all restrictions. | 
| **data_factory_id** | string |  -  |  The Data Factory ID in which to associate the Linked Service with. Changing this forces a new resource. | 
| **location** | string |  -  |  Specifies the supported Azure location where the resource exists. Changing this forces a new resource to be created. | 
| **node_size** | string |  `Standard_D2_v3`, `Standard_D4_v3`, `Standard_D8_v3`, `Standard_D16_v3`, `Standard_D32_v3`, `Standard_D64_v3`, `Standard_E2_v3`, `Standard_E4_v3`, `Standard_E8_v3`, `Standard_E16_v3`, `Standard_E32_v3`, `Standard_E64_v3`, `Standard_D1_v2`, `Standard_D2_v2`, `Standard_D3_v2`, `Standard_D4_v2`, `Standard_A4_v2`, `Standard_A8_v2`  |  The size of the nodes on which the Managed Integration Runtime runs. Valid values are: `Standard_D2_v3`, `Standard_D4_v3`, `Standard_D8_v3`, `Standard_D16_v3`, `Standard_D32_v3`, `Standard_D64_v3`, `Standard_E2_v3`, `Standard_E4_v3`, `Standard_E8_v3`, `Standard_E16_v3`, `Standard_E32_v3`, `Standard_E64_v3`, `Standard_D1_v2`, `Standard_D2_v2`, `Standard_D3_v2`, `Standard_D4_v2`, `Standard_A4_v2` and `Standard_A8_v2` | 

## Optional Variables

| Name | Type |  Default  |  possible values |  Description |
| ---- | --------- |  ----------- | ----------- | ----------- |
| **number_of_nodes** | int |  `1`  |  -  |  Number of nodes for the Managed Integration Runtime. Max is `10`. Defaults to `1`. | 
| **max_parallel_executions_per_node** | string |  `1`  |  -  |  Defines the maximum parallel executions per node. Defaults to `1`. Max is `1`. | 
| **edition** | string |  `Standard`  |  `Standard`, `Enterprise`  |  The Managed Integration Runtime edition. Valid values are `Standard` and `Enterprise`. Defaults to `Standard`. | 
| **license_type** | string |  `LicenseIncluded`  |  `LicenseIncluded`, `BasePrice`  |  The type of the license that is used. Valid values are `LicenseIncluded` and `BasePrice`. Defaults to `LicenseIncluded`. | 
| **catalog_info** | [block](#catalog_info-block-structure) |  -  |  -  |  A `catalog_info` block. | 
| **custom_setup_script** | [block](#custom_setup_script-block-structure) |  -  |  -  |  A `custom_setup_script` block. | 
| **vnet_integration** | [block](#vnet_integration-block-structure) |  -  |  -  |  A `vnet_integration` block. | 
| **description** | string |  -  |  -  |  Integration runtime description. | 

### `vnet_integration` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `vnet_id` | string | Yes | - | ID of the virtual network to which the nodes of the Managed Integration Runtime will be added. |
| `subnet_name` | string | Yes | - | Name of the subnet to which the nodes of the Managed Integration Runtime will be added. |

### `catalog_info` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `server_endpoint` | string | Yes | - | The endpoint of an Azure SQL Server that will be used to host the SSIS catalog. |
| `administrator_login` | string | No | - | Administrator login name for the SQL Server. |
| `administrator_password` | string | No | - | Administrator login password for the SQL Server. |
| `pricing_tier` | string | No | Basic | Pricing tier for the database that will be created for the SSIS catalog. Valid values are: 'Basic', 'Standard', 'Premium' and 'PremiumRS'. Defaults to 'Basic'. |

### `custom_setup_script` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `blob_container_uri` | string | Yes | - | The blob endpoint for the container which contains a custom setup script that will be run on every node on startup. See [https://docs.microsoft.com/azure/data-factory/how-to-configure-azure-ssis-ir-custom-setup](https://docs.microsoft.com/azure/data-factory/how-to-configure-azure-ssis-ir-custom-setup) for more information. |
| `sas_token` | string | Yes | - | A container SAS token that gives access to the files. See [https://docs.microsoft.com/azure/data-factory/how-to-configure-azure-ssis-ir-custom-setup](https://docs.microsoft.com/azure/data-factory/how-to-configure-azure-ssis-ir-custom-setup) for more information. |



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **id** | string | No  | The ID of the Data Factory Integration Managed Runtime. | 

Additionally, all variables are provided as outputs.
