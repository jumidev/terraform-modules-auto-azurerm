# azurerm_data_factory_integration_runtime_managed

Manages an Azure Data Factory Managed Integration Runtime.~> **NOTE:** The `azurerm_data_factory_integration_runtime_managed` resource has been superseded by the [`azurerm_data_factory_integration_runtime_azure_ssis`](data_factory_integration_runtime_azure_ssis.html) resource. The existing `azurerm_data_factory_integration_runtime_managed` resource will be deprecated (but still available) in version 3.0 of the AzureRM Terraform Provider - we recommend using the [`azurerm_data_factory_integration_runtime_azure_ssis`](data_factory_integration_runtime_azure_ssis.html) resource for new deployments.

## Attributes

| Name | Type | Required? | Default  | possible values | Description |
| ---- | ---- | --------- | -------- | ----------- | ----------- |
| **name** | string | True | -  |  -  | Specifies the name of the Managed Integration Runtime. Changing this forces a new resource to be created. Must be globally unique. See the [Microsoft documentation](https://docs.microsoft.com/azure/data-factory/naming-rules) for all restrictions. | 
| **data_factory_id** | string | True | -  |  -  | The Data Factory ID in which to associate the Linked Service with. Changing this forces a new resource. | 
| **location** | string | True | -  |  -  | Specifies the supported Azure location where the resource exists. Changing this forces a new resource to be created. | 
| **node_size** | string | True | -  |  `Standard_D2_v3`, `Standard_D4_v3`, `Standard_D8_v3`, `Standard_D16_v3`, `Standard_D32_v3`, `Standard_D64_v3`, `Standard_E2_v3`, `Standard_E4_v3`, `Standard_E8_v3`, `Standard_E16_v3`, `Standard_E32_v3`, `Standard_E64_v3`, `Standard_D1_v2`, `Standard_D2_v2`, `Standard_D3_v2`, `Standard_D4_v2`, `Standard_A4_v2`, `Standard_A8_v2`  | The size of the nodes on which the Managed Integration Runtime runs. Valid values are: `Standard_D2_v3`, `Standard_D4_v3`, `Standard_D8_v3`, `Standard_D16_v3`, `Standard_D32_v3`, `Standard_D64_v3`, `Standard_E2_v3`, `Standard_E4_v3`, `Standard_E8_v3`, `Standard_E16_v3`, `Standard_E32_v3`, `Standard_E64_v3`, `Standard_D1_v2`, `Standard_D2_v2`, `Standard_D3_v2`, `Standard_D4_v2`, `Standard_A4_v2` and `Standard_A8_v2` | 
| **number_of_nodes** | int | False | `1`  |  -  | Number of nodes for the Managed Integration Runtime. Max is `10`. Defaults to `1`. | 
| **max_parallel_executions_per_node** | string | False | `1`  |  -  | Defines the maximum parallel executions per node. Defaults to `1`. Max is `1`. | 
| **edition** | string | False | `Standard`  |  `Standard`, `Enterprise`  | The Managed Integration Runtime edition. Valid values are `Standard` and `Enterprise`. Defaults to `Standard`. | 
| **license_type** | string | False | `LicenseIncluded`  |  `LicenseIncluded`, `BasePrice`  | The type of the license that is used. Valid values are `LicenseIncluded` and `BasePrice`. Defaults to `LicenseIncluded`. | 
| **catalog_info** | block | False | -  |  -  | A `catalog_info` block. | 
| **custom_setup_script** | block | False | -  |  -  | A `custom_setup_script` block. | 
| **vnet_integration** | block | False | -  |  -  | A `vnet_integration` block. | 
| **description** | string | False | -  |  -  | Integration runtime description. | 

