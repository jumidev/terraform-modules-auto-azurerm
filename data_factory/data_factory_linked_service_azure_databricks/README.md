# azurerm_data_factory_linked_service_azure_databricks

Manages a Linked Service (connection) between Azure Databricks and Azure Data Factory.

## Example minimal component.hclt

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

## Variables

| Name | Type | Required? |  Description |
| ---- | ---- | --------- |  ----------- |
| **var.adb_domain** | string | True | The domain URL of the databricks instance. | 
| **var.data_factory_id** | string | True | The Data Factory ID in which to associate the Linked Service with. Changing this forces a new resource. | 
| **var.name** | string | True | Specifies the name of the Data Factory Linked Service. Changing this forces a new resource to be created. Must be unique within a data factory. See the [Microsoft documentation](https://docs.microsoft.com/azure/data-factory/naming-rules) for all restrictions. | 
| **var.access_token** | string | False | Authenticate to ADB via an access token. | 
| **var.key_vault_password** | block | False | Authenticate to ADB via Azure Key Vault Linked Service as defined in the `key_vault_password` block below. | 
| **var.msi_work_space_resource_id** | string | False | Authenticate to ADB via managed service identity. | 
| **var.existing_cluster_id** | string | False | The cluster_id of an existing cluster within the linked ADB instance. | 
| **var.instance_pool** | string | False | Leverages an instance pool within the linked ADB instance as one `instance_pool` block defined below. | 
| **var.new_cluster_config** | string | False | Creates new clusters within the linked ADB instance as defined in the `new_cluster_config` block below. | 
| **var.additional_properties** | string | False | A map of additional properties to associate with the Data Factory Linked Service. | 
| **var.annotations** | string | False | List of tags that can be used for describing the Data Factory Linked Service. | 
| **var.description** | string | False | The description for the Data Factory Linked Service. | 
| **var.integration_runtime_name** | string | False | The integration runtime reference to associate with the Data Factory Linked Service. | 
| **var.parameters** | string | False | A map of parameters to associate with the Data Factory Linked Service. | 

### `key_vault_password` block structure

> `linked_service_name` (string): (REQUIRED) Specifies the name of an existing Key Vault Data Factory Linked Service.\
> `secret_name` (string): (REQUIRED) Specifies the secret name in Azure Key Vault that stores ADB access token.\



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **id** | string | No  | The ID of the Data Factory Linked Service. | 

Additionally, all variables are provided as outputs.
