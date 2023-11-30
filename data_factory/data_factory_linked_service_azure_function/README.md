# azurerm_data_factory_linked_service_azure_function

Manages a Linked Service (connection) between an Azure Function and Azure Data Factory.~> **Note:** All arguments including the client secret will be stored in the raw state as plain-text. [Read more about sensitive data in state](/docs/state/sensitive-data.html).

## Example minimal component.hclt

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git" 
   path = "data_factory/data_factory_linked_service_azure_function" 
}

inputs = {
   name = "name of data_factory_linked_service_azure_function" 
   data_factory_id = "data_factory_id of data_factory_linked_service_azure_function" 
   url = "url of data_factory_linked_service_azure_function" 
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
| **var.url** | string |  The url of the Azure Function. | 

## Optional Variables

| Name | Type |  Description |
| ---- | --------- |  ----------- |
| **var.description** | string |  The description for the Data Factory Linked Service. | 
| **var.integration_runtime_name** | string |  The integration runtime reference to associate with the Data Factory Linked Service. | 
| **var.annotations** | string |  List of tags that can be used for describing the Data Factory Linked Service. | 
| **var.parameters** | string |  A map of parameters to associate with the Data Factory Linked Service. | 
| **var.additional_properties** | string |  A map of additional properties to associate with the Data Factory Linked Service. | 
| **var.key** | string |  The system key of the Azure Function. Exactly one of either `key` or `key_vault_key` is required | 
| **var.key_vault_key** | block |  A `key_vault_key` block. Use this Argument to store the system key of the Azure Function in an existing Key Vault. It needs an existing Key Vault Data Factory Linked Service. Exactly one of either `key` or `key_vault_key` is required. | 

### `key_vault_key` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `linked_service_name` | string | Yes | - | Specifies the name of an existing Key Vault Data Factory Linked Service. |
| `secret_name` | string | Yes | - | Specifies the secret name in Azure Key Vault that stores the system key of the Azure Function. |



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **id** | string | No  | The ID of the Data Factory Linked Service. | 

Additionally, all variables are provided as outputs.
