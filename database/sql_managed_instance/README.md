# azurerm_sql_managed_instance

Manages a SQL Azure Managed Instance.-> **Note:** The `azurerm_sql_managed_instance` resource is deprecated in version 3.0 of the AzureRM provider and will be removed in version 4.0. Please use the [`azurerm_mssql_managed_instance`](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/mssql_managed_instance) resource instead.~> **Note:** All arguments including the administrator login and password will be stored in the raw state as plain-text. [Read more about sensitive data in state](https://www.terraform.io/language/state/sensitive-data).

## Variables

| Name | Type | Required? |  Default  |  possible values |  Description |
| ---- | ---- | --------- |  ----------- | ----------- | ----------- |
| **var.name** | string | True | -  |  -  |  The name of the SQL Managed Instance. This needs to be globally unique within Azure. Changing this forces a new resource to be created. | 
| **var.resource_group_name** | string | True | -  |  -  |  The name of the resource group in which to create the SQL Server. Changing this forces a new resource to be created. | 
| **var.location** | string | True | -  |  -  |  Specifies the supported Azure location where the resource exists. Changing this forces a new resource to be created. | 
| **var.sku_name** | string | True | -  |  `GP_Gen4`, `GP_Gen5`, `BC_Gen4`, `BC_Gen5`  |  Specifies the SKU Name for the SQL Managed Instance. Valid values include `GP_Gen4`, `GP_Gen5`, `BC_Gen4`, `BC_Gen5`. | 
| **var.vcores** | int | True | -  |  -  |  Number of cores that should be assigned to your instance. Values can be `8`, `16`, or `24` if `sku_name` is `GP_Gen4`, or `8`, `16`, `24`, `32`, or `40` if `sku_name` is `GP_Gen5`. | 
| **var.storage_size_in_gb** | int | True | -  |  -  |  Maximum storage space for your instance. It should be a multiple of 32GB. | 
| **var.license_type** | string | True | -  |  `LicenseIncluded`, `BasePrice`  |  What type of license the Managed Instance will use. Valid values include can be `LicenseIncluded` or `BasePrice`. | 
| **var.administrator_login** | string | True | -  |  -  |  The administrator login name for the new server. Changing this forces a new resource to be created. | 
| **var.administrator_login_password** | string | True | -  |  -  |  The password associated with the `administrator_login` user. Needs to comply with Azure's [Password Policy](https://msdn.microsoft.com/library/ms161959.aspx) | 
| **var.subnet_id** | string | True | -  |  -  |  The subnet resource id that the SQL Managed Instance will be associated with. Changing this forces a new resource to be created. | 
| **var.collation** | string | False | -  |  -  |  Specifies how the SQL Managed Instance will be collated. Default value is `SQL_Latin1_General_CP1_CI_AS`. Changing this forces a new resource to be created. | 
| **var.public_data_endpoint_enabled** | bool | False | -  |  -  |  Is the public data endpoint enabled? Default value is `false`. | 
| **var.minimum_tls_version** | string | False | -  |  `1.0`, `1.1`, `1.2`  |  The Minimum TLS Version. Default value is `1.2` Valid values include `1.0`, `1.1`, `1.2`. | 
| **var.proxy_override** | string | False | -  |  `Default`, `Proxy`, `Redirect`  |  Specifies how the SQL Managed Instance will be accessed. Default value is `Default`. Valid values include `Default`, `Proxy`, and `Redirect`. | 
| **var.timezone_id** | string | False | -  |  -  |  The TimeZone ID that the SQL Managed Instance will be operating in. Default value is `UTC`. Changing this forces a new resource to be created. | 
| **var.dns_zone_partner_id** | string | False | -  |  -  |  The ID of the Managed Instance which will share the DNS zone. This is a prerequisite for creating a `azurerm_sql_managed_instance_failover_group`. Setting this after creation forces a new resource to be created. | 
| **var.identity** | block | False | -  |  -  |  An `identity` block. | 
| **var.storage_account_type** | string | False | `GRS`  |  `GRS`, `LRS`, `ZRS`  |  Specifies the storage account type used to store backups for this database. Changing this forces a new resource to be created. Possible values are `GRS`, `LRS` and `ZRS`. Defaults to `GRS`. | 
| **var.tags** | map | False | -  |  -  |  A mapping of tags to assign to the resource. | 



## Outputs

| Name | Type | Description |
| ---- | ---- | --------- | 
| **name** | string  | - | 
| **resource_group_name** | string  | - | 
| **location** | string  | - | 
| **sku_name** | string  | - | 
| **vcores** | int  | - | 
| **storage_size_in_gb** | int  | - | 
| **license_type** | string  | - | 
| **administrator_login** | string  | - | 
| **administrator_login_password** | string  | - | 
| **subnet_id** | string  | - | 
| **collation** | string  | - | 
| **public_data_endpoint_enabled** | bool  | - | 
| **minimum_tls_version** | string  | - | 
| **proxy_override** | string  | - | 
| **timezone_id** | string  | - | 
| **dns_zone_partner_id** | string  | - | 
| **identity** | block  | - | 
| **storage_account_type** | string  | - | 
| **tags** | map  | - | 
| **id** | string  | The SQL Managed Instance ID. | 
| **fqdn** | string  | The fully qualified domain name of the Azure Managed SQL Instance | 
| **identity** | block  | An `identity` block. | 
| **principal_id** | string  | The Principal ID for the Service Principal associated with the Identity of this SQL Managed Instance. | 
| **tenant_id** | string  | The Tenant ID for the Service Principal associated with the Identity of this SQL Managed Instance. | 

## Example minimal hclt

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git" 
   path = "database/sql_managed_instance" 
}

inputs = {
   name = "name of sql_managed_instance" 
   resource_group_name = "${resource_group}" 
   location = "${location}" 
   sku_name = "sku_name of sql_managed_instance" 
   vcores = "vcores of sql_managed_instance" 
   storage_size_in_gb = "storage_size_in_gb of sql_managed_instance" 
   license_type = "license_type of sql_managed_instance" 
   administrator_login = "administrator_login of sql_managed_instance" 
   administrator_login_password = "administrator_login_password of sql_managed_instance" 
   subnet_id = "subnet_id of sql_managed_instance" 
}

tfstate_store = {
   storage_account = "${storage_account}" 
   container = "${container}" 
   container_path = "${COMPONENT_PATH}" 
}


```