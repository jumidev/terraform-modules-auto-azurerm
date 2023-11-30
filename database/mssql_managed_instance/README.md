# azurerm_mssql_managed_instance

Manages a Microsoft SQL Azure Managed Instance.~> **Note:** All arguments including the administrator login and password will be stored in the raw state as plain-text. [Read more about sensitive data in state](/docs/state/sensitive-data.html).

## Variables

| Name | Type | Required? |  Default  |  possible values |  Description |
| ---- | ---- | --------- |  ----------- | ----------- | ----------- |
| **var.administrator_login** | string | True | -  |  -  |  The administrator login name for the new SQL Managed Instance. Changing this forces a new resource to be created. | 
| **var.administrator_login_password** | string | True | -  |  -  |  The password associated with the `administrator_login` user. Needs to comply with Azure's [Password Policy](https://msdn.microsoft.com/library/ms161959.aspx) | 
| **var.license_type** | string | True | -  |  `LicenseIncluded`, `BasePrice`  |  What type of license the Managed Instance will use. Possible values are `LicenseIncluded` and `BasePrice`. | 
| **var.location** | string | True | -  |  -  |  Specifies the supported Azure location where the resource exists. Changing this forces a new resource to be created. | 
| **var.name** | string | True | -  |  -  |  The name of the SQL Managed Instance. This needs to be globally unique within Azure. Changing this forces a new resource to be created. | 
| **var.resource_group_name** | string | True | -  |  -  |  The name of the resource group in which to create the SQL Managed Instance. Changing this forces a new resource to be created. | 
| **var.sku_name** | string | True | -  |  `GP_Gen4`, `GP_Gen5`, `GP_Gen8IM`, `GP_Gen8IH`, `BC_Gen4`, `BC_Gen5`, `BC_Gen8IM`, `BC_Gen8IH`  |  Specifies the SKU Name for the SQL Managed Instance. Valid values include `GP_Gen4`, `GP_Gen5`, `GP_Gen8IM`, `GP_Gen8IH`, `BC_Gen4`, `BC_Gen5`, `BC_Gen8IM` or `BC_Gen8IH`. | 
| **var.storage_size_in_gb** | int | True | -  |  -  |  Maximum storage space for the SQL Managed instance. This should be a multiple of 32 (GB). | 
| **var.subnet_id** | string | True | -  |  -  |  The subnet resource id that the SQL Managed Instance will be associated with. Changing this forces a new resource to be created. | 
| **var.vcores** | int | True | -  |  -  |  Number of cores that should be assigned to the SQL Managed Instance. Values can be `8`, `16`, or `24` for Gen4 SKUs, or `4`, `8`, `16`, `24`, `32`, `40`, `64`, or `80` for Gen5 SKUs. | 
| **var.collation** | string | False | -  |  -  |  Specifies how the SQL Managed Instance will be collated. Default value is `SQL_Latin1_General_CP1_CI_AS`. Changing this forces a new resource to be created. | 
| **var.dns_zone_partner_id** | string | False | -  |  -  |  The ID of the SQL Managed Instance which will share the DNS zone. This is a prerequisite for creating an `azurerm_sql_managed_instance_failover_group`. Setting this after creation forces a new resource to be created. | 
| **var.identity** | block | False | -  |  -  |  An `identity` block. | 
| **var.maintenance_configuration_name** | string | False | `SQL_Default`  |  `SQL_Default`, `SQL_{Location}_MI_{Size}`, `SQL_EastUS_MI_1`  |  The name of the Public Maintenance Configuration window to apply to the SQL Managed Instance. Valid values include `SQL_Default` or an Azure Location in the format `SQL_{Location}_MI_{Size}`(for example `SQL_EastUS_MI_1`). Defaults to `SQL_Default`. | 
| **var.minimum_tls_version** | string | False | -  |  `1.0`, `1.1`, `1.2`  |  The Minimum TLS Version. Default value is `1.2` Valid values include `1.0`, `1.1`, `1.2`. | 
| **var.proxy_override** | string | False | -  |  `Default`, `Proxy`, `Redirect`  |  Specifies how the SQL Managed Instance will be accessed. Default value is `Default`. Valid values include `Default`, `Proxy`, and `Redirect`. | 
| **var.public_data_endpoint_enabled** | bool | False | -  |  -  |  Is the public data endpoint enabled? Default value is `false`. | 
| **var.storage_account_type** | string | False | `GRS`  |  `GRS`, `LRS`, `ZRS`  |  Specifies the storage account type used to store backups for this database. Changing this forces a new resource to be created. Possible values are `GRS`, `LRS` and `ZRS`. Defaults to `GRS`. | 
| **var.tags** | map | False | -  |  -  |  A mapping of tags to assign to the resource. | 
| **var.timezone_id** | string | False | -  |  -  |  The TimeZone ID that the SQL Managed Instance will be operating in. Default value is `UTC`. Changing this forces a new resource to be created. | 



## Outputs

| Name | Type | Description |
| ---- | ---- | --------- | 
| **administrator_login** | string  | - | 
| **administrator_login_password** | string  | - | 
| **license_type** | string  | - | 
| **location** | string  | - | 
| **name** | string  | - | 
| **resource_group_name** | string  | - | 
| **sku_name** | string  | - | 
| **storage_size_in_gb** | int  | - | 
| **subnet_id** | string  | - | 
| **vcores** | int  | - | 
| **collation** | string  | - | 
| **dns_zone_partner_id** | string  | - | 
| **identity** | block  | - | 
| **maintenance_configuration_name** | string  | - | 
| **minimum_tls_version** | string  | - | 
| **proxy_override** | string  | - | 
| **public_data_endpoint_enabled** | bool  | - | 
| **storage_account_type** | string  | - | 
| **tags** | map  | - | 
| **timezone_id** | string  | - | 
| **id** | string  | The SQL Managed Instance ID. | 
| **fqdn** | string  | The fully qualified domain name of the Azure Managed SQL Instance | 
| **principal_id** | string  | The Principal ID for the Service Principal associated with the Identity of this SQL Managed Instance. | 
| **tenant_id** | string  | The Tenant ID for the Service Principal associated with the Identity of this SQL Managed Instance. | 

## Example minimal hclt

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git" 
   path = "database/mssql_managed_instance" 
}

inputs = {
   administrator_login = "administrator_login of mssql_managed_instance" 
   administrator_login_password = "administrator_login_password of mssql_managed_instance" 
   license_type = "license_type of mssql_managed_instance" 
   location = "${location}" 
   name = "name of mssql_managed_instance" 
   resource_group_name = "${resource_group}" 
   sku_name = "sku_name of mssql_managed_instance" 
   storage_size_in_gb = "storage_size_in_gb of mssql_managed_instance" 
   subnet_id = "subnet_id of mssql_managed_instance" 
   vcores = "vcores of mssql_managed_instance" 
}

tfstate_store = {
   storage_account = "${storage_account}" 
   container = "${container}" 
   container_path = "${COMPONENT_PATH}" 
}


```