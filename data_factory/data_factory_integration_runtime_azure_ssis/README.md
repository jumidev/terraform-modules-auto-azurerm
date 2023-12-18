# azurerm_data_factory_integration_runtime_azure_ssis

Manages a Data Factory Azure-SSIS Integration Runtime.

## Example `component.hclt`

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git"   
   path = "data_factory/data_factory_integration_runtime_azure_ssis"   
}

inputs = {
   name = "Specifies the name of the Azure-SSIS Integration Runtime..."   
   # data_factory_id → set in tfstate_inputs
   location = "${location}"   
   node_size = "The size of the nodes on which the Azure-SSIS Integration Runtime runs..."   
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
| **name** | string |  -  |  Specifies the name of the Azure-SSIS Integration Runtime. Changing this forces a new resource to be created. Must be globally unique. See the [Microsoft documentation](https://docs.microsoft.com/azure/data-factory/naming-rules) for all restrictions. | 
| **data_factory_id** | string |  -  |  The Data Factory ID in which to associate the Linked Service with. Changing this forces a new resource. | 
| **location** | string |  -  |  Specifies the supported Azure location where the resource exists. Changing this forces a new resource to be created. | 
| **node_size** | string |  `Standard_D2_v3`, `Standard_D4_v3`, `Standard_D8_v3`, `Standard_D16_v3`, `Standard_D32_v3`, `Standard_D64_v3`, `Standard_E2_v3`, `Standard_E4_v3`, `Standard_E8_v3`, `Standard_E16_v3`, `Standard_E32_v3`, `Standard_E64_v3`, `Standard_D1_v2`, `Standard_D2_v2`, `Standard_D3_v2`, `Standard_D4_v2`, `Standard_A4_v2`, `Standard_A8_v2`  |  The size of the nodes on which the Azure-SSIS Integration Runtime runs. Valid values are: `Standard_D2_v3`, `Standard_D4_v3`, `Standard_D8_v3`, `Standard_D16_v3`, `Standard_D32_v3`, `Standard_D64_v3`, `Standard_E2_v3`, `Standard_E4_v3`, `Standard_E8_v3`, `Standard_E16_v3`, `Standard_E32_v3`, `Standard_E64_v3`, `Standard_D1_v2`, `Standard_D2_v2`, `Standard_D3_v2`, `Standard_D4_v2`, `Standard_A4_v2` and `Standard_A8_v2` | 

## Optional Variables

| Name | Type |  Default  |  possible values |  Description |
| ---- | --------- |  ----------- | ----------- | ----------- |
| **number_of_nodes** | number |  `1`  |  -  |  Number of nodes for the Azure-SSIS Integration Runtime. Max is `10`. Defaults to `1`. | 
| **max_parallel_executions_per_node** | string |  `1`  |  -  |  Defines the maximum parallel executions per node. Defaults to `1`. Max is `1`. | 
| **edition** | string |  `Standard`  |  `Standard`, `Enterprise`  |  The Azure-SSIS Integration Runtime edition. Valid values are `Standard` and `Enterprise`. Defaults to `Standard`. | 
| **license_type** | string |  `LicenseIncluded`  |  `LicenseIncluded`, `BasePrice`  |  The type of the license that is used. Valid values are `LicenseIncluded` and `BasePrice`. Defaults to `LicenseIncluded`. | 
| **catalog_info** | [block](#catalog_info-block-structure) |  -  |  -  |  A `catalog_info` block. | 
| **custom_setup_script** | [block](#custom_setup_script-block-structure) |  -  |  -  |  A `custom_setup_script` block. | 
| **express_custom_setup** | [block](#express_custom_setup-block-structure) |  -  |  -  |  An `express_custom_setup` block. | 
| **express_vnet_integration** | [block](#express_vnet_integration-block-structure) |  -  |  -  |  A `express_vnet_integration` block. | 
| **package_store** | [block](#package_store-block-structure) |  -  |  -  |  One or more `package_store` block. | 
| **proxy** | [block](#proxy-block-structure) |  -  |  -  |  A `proxy` block. | 
| **vnet_integration** | [block](#vnet_integration-block-structure) |  -  |  -  |  A `vnet_integration` block. | 
| **description** | string |  -  |  -  |  Integration runtime description. | 

### `package_store` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `name` | string | Yes | - | Name of the package store. |
| `linked_service_name` | string | Yes | - | Name of the Linked Service to associate with the packages. |

### `catalog_info` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `server_endpoint` | string | Yes | - | The endpoint of an Azure SQL Server that will be used to host the SSIS catalog. |
| `administrator_login` | string | No | - | Administrator login name for the SQL Server. |
| `administrator_password` | string | No | - | Administrator login password for the SQL Server. |
| `pricing_tier` | string | No | - | Pricing tier for the database that will be created for the SSIS catalog. Valid values are: 'Basic', 'S0', 'S1', 'S2', 'S3', 'S4', 'S6', 'S7', 'S9', 'S12', 'P1', 'P2', 'P4', 'P6', 'P11', 'P15', 'GP_S_Gen5_1', 'GP_S_Gen5_2', 'GP_S_Gen5_4', 'GP_S_Gen5_6', 'GP_S_Gen5_8', 'GP_S_Gen5_10', 'GP_S_Gen5_12', 'GP_S_Gen5_14', 'GP_S_Gen5_16', 'GP_S_Gen5_18', 'GP_S_Gen5_20', 'GP_S_Gen5_24', 'GP_S_Gen5_32', 'GP_S_Gen5_40', 'GP_Gen5_2', 'GP_Gen5_4', 'GP_Gen5_6', 'GP_Gen5_8', 'GP_Gen5_10', 'GP_Gen5_12', 'GP_Gen5_14', 'GP_Gen5_16', 'GP_Gen5_18', 'GP_Gen5_20', 'GP_Gen5_24', 'GP_Gen5_32', 'GP_Gen5_40', 'GP_Gen5_80', 'BC_Gen5_2', 'BC_Gen5_4', 'BC_Gen5_6', 'BC_Gen5_8', 'BC_Gen5_10', 'BC_Gen5_12', 'BC_Gen5_14', 'BC_Gen5_16', 'BC_Gen5_18', 'BC_Gen5_20', 'BC_Gen5_24', 'BC_Gen5_32', 'BC_Gen5_40', 'BC_Gen5_80', 'HS_Gen5_2', 'HS_Gen5_4', 'HS_Gen5_6', 'HS_Gen5_8', 'HS_Gen5_10', 'HS_Gen5_12', 'HS_Gen5_14', 'HS_Gen5_16', 'HS_Gen5_18', 'HS_Gen5_20', 'HS_Gen5_24', 'HS_Gen5_32', 'HS_Gen5_40' and 'HS_Gen5_80'. Mutually exclusive with 'elastic_pool_name'. |
| `elastic_pool_name` | string | No | - | The name of SQL elastic pool where the database will be created for the SSIS catalog. Mutually exclusive with 'pricing_tier'. |
| `dual_standby_pair_name` | string | No | - | The dual standby Azure-SSIS Integration Runtime pair with SSISDB failover. |

### `proxy` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `self_hosted_integration_runtime_name` | string | Yes | - | Name of Self Hosted Integration Runtime as a proxy. |
| `staging_storage_linked_service_name` | string | Yes | - | Name of Azure Blob Storage linked service to reference the staging data store to be used when moving data between self-hosted and Azure-SSIS integration runtimes. |
| `path` | string | No | - | The path in the data store to be used when moving data between Self-Hosted and Azure-SSIS Integration Runtimes. |

### `vnet_integration` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `vnet_id` | string | No | - | ID of the virtual network to which the nodes of the Azure-SSIS Integration Runtime will be added. |
| `subnet_name` | string | No | - | Name of the subnet to which the nodes of the Azure-SSIS Integration Runtime will be added. |
| `subnet_id` | string | No | - | id of the subnet to which the nodes of the Azure-SSIS Integration Runtime will be added. |
| `public_ips` | string | No | - | Static public IP addresses for the Azure-SSIS Integration Runtime. The size must be 2. |

### `component` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `name` | string | Yes | - | The Component Name installed for the Azure-SSIS Integration Runtime. |
| `license` | string | No | - | The license used for the Component. |
| `key_vault_license` | [block](#key_vault_secret_reference-block-structure) | No | - | A 'key_vault_secret_reference' block. |

### `express_custom_setup` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `command_key` | [block](#command_key-block-structure) | No | - | One or more 'command_key' blocks. |
| `component` | [block](#component-block-structure) | No | - | One or more 'component' blocks. |
| `environment` | string | No | - | The Environment Variables for the Azure-SSIS Integration Runtime. |
| `powershell_version` | string | No | - | The version of Azure Powershell installed for the Azure-SSIS Integration Runtime. |

### `key_vault_secret_reference` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `linked_service_name` | string | Yes | - | Specifies the name of an existing Key Vault Data Factory Linked Service. |
| `secret_name` | string | Yes | - | Specifies the secret name in Azure Key Vault. |
| `secret_version` | string | No | - | Specifies the secret version in Azure Key Vault. |
| `parameters` | string | No | - | A map of parameters to associate with the Key Vault Data Factory Linked Service. |

### `express_vnet_integration` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `subnet_id` | string | Yes | - | id of the subnet to which the nodes of the Azure-SSIS Integration Runtime will be added. |

### `command_key` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `target_name` | string | Yes | - | The target computer or domain name. |
| `user_name` | string | Yes | - | The username for the target device. |
| `password` | string | No | - | The password for the target device. |
| `key_vault_password` | [block](#key_vault_secret_reference-block-structure) | No | - | A 'key_vault_secret_reference' block. |

### `custom_setup_script` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `blob_container_uri` | string | Yes | - | The blob endpoint for the container which contains a custom setup script that will be run on every node on startup. See [https://docs.microsoft.com/azure/data-factory/how-to-configure-azure-ssis-ir-custom-setup](https://docs.microsoft.com/azure/data-factory/how-to-configure-azure-ssis-ir-custom-setup) for more information. |
| `sas_token` | string | Yes | - | A container SAS token that gives access to the files. See [https://docs.microsoft.com/azure/data-factory/how-to-configure-azure-ssis-ir-custom-setup](https://docs.microsoft.com/azure/data-factory/how-to-configure-azure-ssis-ir-custom-setup) for more information. |



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **id** | string | No  | The ID of the Data Factory Azure-SSIS Integration Runtime. | 

Additionally, all variables are provided as outputs.
