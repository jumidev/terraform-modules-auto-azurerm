# azurerm_databricks_access_connector

Manages a Databricks Access Connector

## Example minimal component.hclt

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git" 
   path = "databricks/databricks_access_connector" 
}

inputs = {
   name = "name of databricks_access_connector" 
   resource_group_name = "${resource_group}" 
   location = "${location}" 
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
| **var.name** | string | True | Specifies the name of the Databricks Access Connector resource. Changing this forces a new resource to be created. | 
| **var.resource_group_name** | string | True | The name of the Resource Group in which the Databricks Access Connector should exist. Changing this forces a new resource to be created. | 
| **var.location** | string | True | Specifies the supported Azure location where the resource has to be created. Changing this forces a new resource to be created. | 
| **var.identity** | block | False | An `identity` block. | 
| **var.tags** | map | False | A mapping of tags to assign to the resource. | 

### `identity` block structure

>`type` (string): (REQUIRED) Specifies the type of Managed Service Identity that should be configured on the Databricks Access Connector. Possible values include 'SystemAssigned' or 'UserAssigned'.
>`identity_ids` (string): Specifies a list of User Assigned Managed Identity IDs to be assigned to the Databricks Access Connector. Only one User Assigned Managed Identity ID is supported per Databricks Access Connector resource.



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **id** | string | No  | The ID of the Databricks Access Connector in the Azure management plane. | 
| **identity** | block | No  | A list of `identity` blocks containing the system-assigned managed identities as defined below. | 
| **type** | string | No  | The type of Managed Service Identity that is configured on this Access Connector. | 
| **principal_id** | string | No  | The Principal ID of the System Assigned Managed Service Identity that is configured on this Access Connector. | 
| **tenant_id** | string | No  | The Tenant ID of the System Assigned Managed Service Identity that is configured on this Access Connector. | 
| **identity_ids** | string | No  | The list of User Assigned Managed Identity IDs assigned to this Access Connector. | 

Additionally, all variables are provided as outputs.
