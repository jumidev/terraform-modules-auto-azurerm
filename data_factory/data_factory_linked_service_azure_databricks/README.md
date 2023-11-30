# azurerm_data_factory_linked_service_azure_databricks

Manages a Linked Service (connection) between Azure Databricks and Azure Data Factory.

## Example `component.hclt`

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git" 
   path = "data_factory/data_factory_linked_service_azure_databricks" 
}

inputs = {
   adb_domain = "adb_domain of data_factory_linked_service_azure_databricks" 
   data_factory_id = "data_factory_id of data_factory_linked_service_azure_databricks" 
   name = "name of data_factory_linked_service_azure_databricks" 
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
| **var.adb_domain** | string |  The domain URL of the databricks instance. | 
| **var.data_factory_id** | string |  The Data Factory ID in which to associate the Linked Service with. Changing this forces a new resource. | 
| **var.name** | string |  Specifies the name of the Data Factory Linked Service. Changing this forces a new resource to be created. Must be unique within a data factory. See the [Microsoft documentation](https://docs.microsoft.com/azure/data-factory/naming-rules) for all restrictions. | 

## Optional Variables

| Name | Type |  Description |
| ---- | --------- |  ----------- |
| **var.access_token** | string |  Authenticate to ADB via an access token. | 
| **var.key_vault_password** | [block](#key_vault_password-block-structure) |  Authenticate to ADB via Azure Key Vault Linked Service as defined in the `key_vault_password` block below. | 
| **var.msi_work_space_resource_id** | string |  Authenticate to ADB via managed service identity. | 
| **var.existing_cluster_id** | string |  The cluster_id of an existing cluster within the linked ADB instance. | 
| **var.instance_pool** | string |  Leverages an instance pool within the linked ADB instance as one `instance_pool` block defined below. | 
| **var.new_cluster_config** | string |  Creates new clusters within the linked ADB instance as defined in the `new_cluster_config` block below. | 
| **var.additional_properties** | string |  A map of additional properties to associate with the Data Factory Linked Service. | 
| **var.annotations** | string |  List of tags that can be used for describing the Data Factory Linked Service. | 
| **var.description** | string |  The description for the Data Factory Linked Service. | 
| **var.integration_runtime_name** | string |  The integration runtime reference to associate with the Data Factory Linked Service. | 
| **var.parameters** | string |  A map of parameters to associate with the Data Factory Linked Service. | 

### `key_vault_password` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `linked_service_name` | string | Yes | - | Specifies the name of an existing Key Vault Data Factory Linked Service. |
| `secret_name` | string | Yes | - | Specifies the secret name in Azure Key Vault that stores ADB access token. |



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **id** | string | No  | The ID of the Data Factory Linked Service. | 

Additionally, all variables are provided as outputs.
