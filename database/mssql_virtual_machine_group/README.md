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



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **id** | string | No  | The ID of the Microsoft SQL Virtual Machine Group. | 

Additionally, all variables are provided as outputs.
