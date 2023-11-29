# azurerm_data_factory_integration_runtime_azure_ssis

Manages a Data Factory Azure-SSIS Integration Runtime.

## Variables

| Name | Type | Required? | Default  | possible values | Description |
| ---- | ---- | --------- | -------- | ----------- | ----------- |
| **var.name** | string | True | -  |  -  | Specifies the name of the Azure-SSIS Integration Runtime. Changing this forces a new resource to be created. Must be globally unique. See the [Microsoft documentation](https://docs.microsoft.com/azure/data-factory/naming-rules) for all restrictions. | 
| **var.data_factory_id** | string | True | -  |  -  | The Data Factory ID in which to associate the Linked Service with. Changing this forces a new resource. | 
| **var.location** | string | True | -  |  -  | Specifies the supported Azure location where the resource exists. Changing this forces a new resource to be created. | 
| **var.node_size** | string | True | -  |  `Standard_D2_v3`, `Standard_D4_v3`, `Standard_D8_v3`, `Standard_D16_v3`, `Standard_D32_v3`, `Standard_D64_v3`, `Standard_E2_v3`, `Standard_E4_v3`, `Standard_E8_v3`, `Standard_E16_v3`, `Standard_E32_v3`, `Standard_E64_v3`, `Standard_D1_v2`, `Standard_D2_v2`, `Standard_D3_v2`, `Standard_D4_v2`, `Standard_A4_v2`, `Standard_A8_v2`  | The size of the nodes on which the Azure-SSIS Integration Runtime runs. Valid values are: `Standard_D2_v3`, `Standard_D4_v3`, `Standard_D8_v3`, `Standard_D16_v3`, `Standard_D32_v3`, `Standard_D64_v3`, `Standard_E2_v3`, `Standard_E4_v3`, `Standard_E8_v3`, `Standard_E16_v3`, `Standard_E32_v3`, `Standard_E64_v3`, `Standard_D1_v2`, `Standard_D2_v2`, `Standard_D3_v2`, `Standard_D4_v2`, `Standard_A4_v2` and `Standard_A8_v2` | 
| **var.number_of_nodes** | int | False | `1`  |  -  | Number of nodes for the Azure-SSIS Integration Runtime. Max is `10`. Defaults to `1`. | 
| **var.max_parallel_executions_per_node** | string | False | `1`  |  -  | Defines the maximum parallel executions per node. Defaults to `1`. Max is `1`. | 
| **var.edition** | string | False | `Standard`  |  `Standard`, `Enterprise`  | The Azure-SSIS Integration Runtime edition. Valid values are `Standard` and `Enterprise`. Defaults to `Standard`. | 
| **var.license_type** | string | False | `LicenseIncluded`  |  `LicenseIncluded`, `BasePrice`  | The type of the license that is used. Valid values are `LicenseIncluded` and `BasePrice`. Defaults to `LicenseIncluded`. | 
| **var.catalog_info** | block | False | -  |  -  | A `catalog_info` block. | 
| **var.custom_setup_script** | block | False | -  |  -  | A `custom_setup_script` block. | 
| **var.express_custom_setup** | block | False | -  |  -  | An `express_custom_setup` block. | 
| **var.express_vnet_integration** | block | False | -  |  -  | A `express_vnet_integration` block. | 
| **var.package_store** | block | False | -  |  -  | One or more `package_store` block. | 
| **var.proxy** | block | False | -  |  -  | A `proxy` block. | 
| **var.vnet_integration** | block | False | -  |  -  | A `vnet_integration` block. | 
| **var.description** | string | False | -  |  -  | Integration runtime description. | 



## Outputs

| Name | Type | Description |
| ---- | ---- | --------- | 
| **name** | string  | - | 
| **data_factory_id** | string  | - | 
| **location** | string  | - | 
| **node_size** | string  | - | 
| **number_of_nodes** | int  | - | 
| **max_parallel_executions_per_node** | string  | - | 
| **edition** | string  | - | 
| **license_type** | string  | - | 
| **catalog_info** | block  | - | 
| **custom_setup_script** | block  | - | 
| **express_custom_setup** | block  | - | 
| **express_vnet_integration** | block  | - | 
| **package_store** | block  | - | 
| **proxy** | block  | - | 
| **vnet_integration** | block  | - | 
| **description** | string  | - | 
| **id** | string  | The ID of the Data Factory Azure-SSIS Integration Runtime. | 