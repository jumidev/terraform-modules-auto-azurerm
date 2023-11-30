# azurerm_mssql_virtual_machine_group

Manages a Microsoft SQL Virtual Machine Group.

## Example minimal component.hclt

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git" 
   path = "database/mssql_virtual_machine_group" 
}

inputs = {
   name = "name of mssql_virtual_machine_group" 
   resource_group_name = "${resource_group}" 
   location = "${location}" 
   sql_image_offer = "sql_image_offer of mssql_virtual_machine_group" 
   sql_image_sku = "sql_image_sku of mssql_virtual_machine_group" 
   wsfc_domain_profile = "wsfc_domain_profile of mssql_virtual_machine_group" 
}

tfstate_store = {
   storage_account = "${storage_account}" 
   container = "${container}" 
   container_path = "${COMPONENT_PATH}" 
}

```

## Variables

| Name | Type | Required? |  possible values |  Description |
| ---- | ---- | --------- |  ----------- | ----------- |
| **var.name** | string | True | -  |  The name which should be used for the Microsoft SQL Virtual Machine Group. Changing this forces a new resource to be created. | 
| **var.resource_group_name** | string | True | -  |  The name of the Resource Group where the Microsoft SQL Virtual Machine Group should exist. Changing this forces a new resource to be created. | 
| **var.location** | string | True | -  |  The Azure Region where the Microsoft SQL Virtual Machine Group should exist. Changing this forces a new resource to be created. | 
| **var.sql_image_offer** | string | True | -  |  The offer type of the marketplace image cluster to be used by the SQL Virtual Machine Group. Changing this forces a new resource to be created. | 
| **var.sql_image_sku** | string | True | `Developer`, `Enterprise`  |  The sku type of the marketplace image cluster to be used by the SQL Virtual Machine Group. Possible values are `Developer` and `Enterprise`. | 
| **var.wsfc_domain_profile** | block | True | -  |  A `wsfc_domain_profile` block. | 
| **var.tags** | map | False | -  |  A mapping of tags which should be assigned to the Microsoft SQL Virtual Machine Group. | 

### `wsfc_domain_profile` block structure

>`cluster_subnet_type` (string): (REQUIRED) The subnet type of the SQL Virtual Machine cluster. Possible values are 'MultiSubnet' and 'SingleSubnet'. Changing this forces a new resource to be created.
>`fqdn` (string): (REQUIRED) The fully qualified name of the domain. Changing this forces a new resource to be created.
>`cluster_bootstrap_account_name` (string): The account name used for creating cluster. Changing this forces a new resource to be created.
>`cluster_operator_account_name` (string): The account name used for operating cluster. Changing this forces a new resource to be created.
>`organizational_unit_path` (string): The organizational Unit path in which the nodes and cluster will be present. Changing this forces a new resource to be created.
>`sql_service_account_name` (string): The account name under which SQL service will run on all participating SQL virtual machines in the cluster. Changing this forces a new resource to be created.
>`storage_account_primary_key` (string): The primary key of the Storage Account.
>`storage_account_url` (string): The SAS URL to the Storage Container of the witness storage account. Changing this forces a new resource to be created.



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **id** | string | No  | The ID of the Microsoft SQL Virtual Machine Group. | 

Additionally, all variables are provided as outputs.
