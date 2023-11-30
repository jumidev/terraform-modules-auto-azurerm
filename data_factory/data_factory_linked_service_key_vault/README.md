# azurerm_data_factory_linked_service_key_vault

Manages a Linked Service (connection) between Key Vault and Azure Data Factory.

## Example minimal component.hclt

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git" 
   path = "data_factory/data_factory_linked_service_key_vault" 
}

inputs = {
   name = "name of data_factory_linked_service_key_vault" 
   data_factory_id = "data_factory_id of data_factory_linked_service_key_vault" 
   key_vault_id = "key_vault_id of data_factory_linked_service_key_vault" 
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
| **var.name** | string | True | Specifies the name of the Data Factory Linked Service Key Vault. Changing this forces a new resource to be created. Must be unique within a data factory. See the [Microsoft documentation](https://docs.microsoft.com/azure/data-factory/naming-rules) for all restrictions. | 
| **var.data_factory_id** | string | True | The Data Factory ID in which to associate the Linked Service with. Changing this forces a new resource. | 
| **var.key_vault_id** | string | True | The ID the Azure Key Vault resource. | 
| **var.description** | string | False | The description for the Data Factory Linked Service Key Vault. | 
| **var.integration_runtime_name** | string | False | The integration runtime reference to associate with the Data Factory Linked Service Key Vault. | 
| **var.annotations** | string | False | List of tags that can be used for describing the Data Factory Linked Service Key Vault. | 
| **var.parameters** | string | False | A map of parameters to associate with the Data Factory Linked Service Key Vault. | 
| **var.additional_properties** | string | False | A map of additional properties to associate with the Data Factory Linked Service Key Vault. | 



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **id** | string | No  | The ID of the Data Factory Key Vault Linked Service. | 

Additionally, all variables are provided as outputs.
