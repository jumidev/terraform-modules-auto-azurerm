# azurerm_data_factory_linked_service_snowflake

Manages a Linked Service (connection) between Snowflake and Azure Data Factory.~> **Note:** All arguments including the client secret will be stored in the raw state as plain-text. [Read more about sensitive data in state](/docs/state/sensitive-data.html).

## Example minimal component.hclt

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git" 
   path = "data_factory/data_factory_linked_service_snowflake" 
}

inputs = {
   name = "name of data_factory_linked_service_snowflake" 
   data_factory_id = "data_factory_id of data_factory_linked_service_snowflake" 
   connection_string = "connection_string of data_factory_linked_service_snowflake" 
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
| **var.name** | string |  Specifies the name of the Data Factory Linked Service. Changing this forces a new resource to be created. Must be unique within a data factory. See the [Microsoft documentation](https://docs.microsoft.com/azure/data-factory/naming-rules) for all restrictions. | 
| **var.data_factory_id** | string |  The Data Factory ID in which to associate the Linked Service with. Changing this forces a new resource. | 
| **var.connection_string** | string |  The connection string in which to authenticate with Snowflake. | 

## Optional Variables

| Name | Type |  Description |
| ---- | --------- |  ----------- |
| **var.description** | string |  The description for the Data Factory Linked Service. | 
| **var.integration_runtime_name** | string |  The integration runtime reference to associate with the Data Factory Linked Service. | 
| **var.annotations** | string |  List of tags that can be used for describing the Data Factory Linked Service. | 
| **var.parameters** | string |  A map of parameters to associate with the Data Factory Linked Service. | 
| **var.additional_properties** | string |  A map of additional properties to associate with the Data Factory Linked Service. | 
| **var.key_vault_password** | block |  A `key_vault_password` block. Use this argument to store Snowflake password in an existing Key Vault. It needs an existing Key Vault Data Factory Linked Service. | 

### `key_vault_password` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `linked_service_name` | string | Yes | - | Specifies the name of an existing Key Vault Data Factory Linked Service. |
| `secret_name` | string | Yes | - | Specifies the secret name in Azure Key Vault that stores Snowflake password. |



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **id** | string | No  | The ID of the Data Factory Snowflake Linked Service. | 

Additionally, all variables are provided as outputs.
