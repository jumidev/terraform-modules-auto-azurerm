# azurerm_data_factory_linked_service_azure_databricks

Manages a Linked Service (connection) between Azure Databricks and Azure Data Factory.

## Attributes

| Name | Type | Required? | Default  | possible values | Description |
| ---- | ---- | --------- | -------- | ----------- | ----------- |
| **adb_domain** | string | True | -  |  -  | The domain URL of the databricks instance. | 
| **data_factory_id** | string | True | -  |  -  | The Data Factory ID in which to associate the Linked Service with. Changing this forces a new resource. | 
| **name** | string | True | -  |  -  | Specifies the name of the Data Factory Linked Service. Changing this forces a new resource to be created. Must be unique within a data factory. See the [Microsoft documentation](https://docs.microsoft.com/azure/data-factory/naming-rules) for all restrictions. | 
| **access_token** | string | False | -  |  -  | Authenticate to ADB via an access token. | 
| **key_vault_password** | block | False | -  |  -  | Authenticate to ADB via Azure Key Vault Linked Service as defined in the `key_vault_password` block below. | 
| **msi_work_space_resource_id** | string | False | -  |  -  | Authenticate to ADB via managed service identity. | 
| **existing_cluster_id** | string | False | -  |  -  | The cluster_id of an existing cluster within the linked ADB instance. | 
| **instance_pool** | string | False | -  |  -  | Leverages an instance pool within the linked ADB instance as one `instance_pool` block defined below. | 
| **new_cluster_config** | string | False | -  |  -  | Creates new clusters within the linked ADB instance as defined in the `new_cluster_config` block below. | 
| **additional_properties** | string | False | -  |  -  | A map of additional properties to associate with the Data Factory Linked Service. | 
| **annotations** | string | False | -  |  -  | List of tags that can be used for describing the Data Factory Linked Service. | 
| **description** | string | False | -  |  -  | The description for the Data Factory Linked Service. | 
| **integration_runtime_name** | string | False | -  |  -  | The integration runtime reference to associate with the Data Factory Linked Service. | 
| **parameters** | string | False | -  |  -  | A map of parameters to associate with the Data Factory Linked Service. | 

