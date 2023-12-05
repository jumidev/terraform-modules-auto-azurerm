# azurerm_data_factory_linked_service_key_vault

Manages a Linked Service (connection) between Key Vault and Azure Data Factory.

## Example `component.hclt`

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git"   
   path = "data_factory/data_factory_linked_service_key_vault"   
}

inputs = {
   name = "Specifies the name of the Data Factory Linked Service Key Vault..."   
   # data_factory_id → set in tfstate_inputs
   # key_vault_id → set in tfstate_inputs
}

tfstate_inputs = {
   data_factory_id = "path/to/data_factory_component:id"   
   key_vault_id = "path/to/key_vault_component:id"   
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
| **name** | string |  Specifies the name of the Data Factory Linked Service Key Vault. Changing this forces a new resource to be created. Must be unique within a data factory. See the [Microsoft documentation](https://docs.microsoft.com/azure/data-factory/naming-rules) for all restrictions. | 
| **data_factory_id** | string |  The Data Factory ID in which to associate the Linked Service with. Changing this forces a new resource. | 
| **key_vault_id** | string |  The ID the Azure Key Vault resource. | 

## Optional Variables

| Name | Type |  Description |
| ---- | --------- |  ----------- |
| **description** | string |  The description for the Data Factory Linked Service Key Vault. | 
| **integration_runtime_name** | string |  The integration runtime reference to associate with the Data Factory Linked Service Key Vault. | 
| **annotations** | string |  List of tags that can be used for describing the Data Factory Linked Service Key Vault. | 
| **parameters** | string |  A map of parameters to associate with the Data Factory Linked Service Key Vault. | 
| **additional_properties** | string |  A map of additional properties to associate with the Data Factory Linked Service Key Vault. | 



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **id** | string | No  | The ID of the Data Factory Key Vault Linked Service. | 

Additionally, all variables are provided as outputs.
