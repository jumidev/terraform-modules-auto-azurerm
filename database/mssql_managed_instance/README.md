# azurerm_mssql_managed_instance

Manages a Microsoft SQL Azure Managed Instance.~> **Note:** All arguments including the administrator login and password will be stored in the raw state as plain-text. [Read more about sensitive data in state](/docs/state/sensitive-data.html).

## Example `component.hclt`

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
   # subnet_id → set in tfstate_inputs
   vcores = "vcores of mssql_managed_instance"   
}

tfstate_inputs = {
   subnet_id = "path/to/subnet_component:id"   
}

tfstate_store = {
   storage_account = "${storage_account}"   
   container = "${container}"   
   container_path = "${COMPONENT_PATH}"   
}

```

## Required Variables

| Name | Type |  Default  |  possible values |  Description |
| ---- | --------- |  ----------- | ----------- | ----------- |
| **administrator_login** | string |  -  |  -  |  The administrator login name for the new SQL Managed Instance. Changing this forces a new resource to be created. | 
| **administrator_login_password** | string |  `Random string of 32 characters`  |  -  |  The password associated with the `administrator_login` user. Needs to comply with Azure's [Password Policy](https://msdn.microsoft.com/library/ms161959.aspx) | 
| **license_type** | string |  -  |  `LicenseIncluded`, `BasePrice`  |  What type of license the Managed Instance will use. Possible values are `LicenseIncluded` and `BasePrice`. | 
| **location** | string |  -  |  -  |  Specifies the supported Azure location where the resource exists. Changing this forces a new resource to be created. | 
| **name** | string |  -  |  -  |  The name of the SQL Managed Instance. This needs to be globally unique within Azure. Changing this forces a new resource to be created. | 
| **resource_group_name** | string |  -  |  -  |  The name of the resource group in which to create the SQL Managed Instance. Changing this forces a new resource to be created. | 
| **sku_name** | string |  -  |  `GP_Gen4`, `GP_Gen5`, `GP_Gen8IM`, `GP_Gen8IH`, `BC_Gen4`, `BC_Gen5`, `BC_Gen8IM`, `BC_Gen8IH`  |  Specifies the SKU Name for the SQL Managed Instance. Valid values include `GP_Gen4`, `GP_Gen5`, `GP_Gen8IM`, `GP_Gen8IH`, `BC_Gen4`, `BC_Gen5`, `BC_Gen8IM` or `BC_Gen8IH`. | 
| **storage_size_in_gb** | int |  -  |  -  |  Maximum storage space for the SQL Managed instance. This should be a multiple of 32 (GB). | 
| **subnet_id** | string |  -  |  -  |  The subnet resource id that the SQL Managed Instance will be associated with. Changing this forces a new resource to be created. | 
| **vcores** | int |  -  |  -  |  Number of cores that should be assigned to the SQL Managed Instance. Values can be `8`, `16`, or `24` for Gen4 SKUs, or `4`, `6`, `8`, `10`, `12`, `16`, `20`, `24`, `32`, `40`, `48`, `56`, `64`, `80`, `96` or `128` for Gen5 SKUs. | 

## Optional Variables

| Name | Type |  Default  |  possible values |  Description |
| ---- | --------- |  ----------- | ----------- | ----------- |
| **collation** | string |  -  |  -  |  Specifies how the SQL Managed Instance will be collated. Default value is `SQL_Latin1_General_CP1_CI_AS`. Changing this forces a new resource to be created. | 
| **dns_zone_partner_id** | string |  -  |  -  |  The ID of the SQL Managed Instance which will share the DNS zone. This is a prerequisite for creating an `azurerm_sql_managed_instance_failover_group`. Setting this after creation forces a new resource to be created. | 
| **identity** | [block](#identity-block-structure) |  -  |  -  |  An `identity` block. | 
| **maintenance_configuration_name** | string |  `SQL_Default`  |  `SQL_Default`, `SQL_{Location}_MI_{Size}`, `SQL_EastUS_MI_1`  |  The name of the Public Maintenance Configuration window to apply to the SQL Managed Instance. Valid values include `SQL_Default` or an Azure Location in the format `SQL_{Location}_MI_{Size}`(for example `SQL_EastUS_MI_1`). Defaults to `SQL_Default`. | 
| **minimum_tls_version** | string |  -  |  `1.0`, `1.1`, `1.2`  |  The Minimum TLS Version. Default value is `1.2` Valid values include `1.0`, `1.1`, `1.2`. | 
| **proxy_override** | string |  -  |  `Default`, `Proxy`, `Redirect`  |  Specifies how the SQL Managed Instance will be accessed. Default value is `Default`. Valid values include `Default`, `Proxy`, and `Redirect`. | 
| **public_data_endpoint_enabled** | bool |  -  |  -  |  Is the public data endpoint enabled? Default value is `false`. | 
| **storage_account_type** | string |  `GRS`  |  `GRS`, `LRS`, `ZRS`  |  Specifies the storage account type used to store backups for this database. Changing this forces a new resource to be created. Possible values are `GRS`, `LRS` and `ZRS`. Defaults to `GRS`. | 
| **tags** | map |  -  |  -  |  A mapping of tags to assign to the resource. | 
| **timezone_id** | string |  -  |  -  |  The TimeZone ID that the SQL Managed Instance will be operating in. Default value is `UTC`. Changing this forces a new resource to be created. | 

### `identity` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `type` | string | Yes | - | Specifies the type of Managed Service Identity that should be configured on this SQL Managed Instance. Possible values are 'SystemAssigned', 'UserAssigned'. |
| `identity_ids` | string | No | - | Specifies a list of User Assigned Managed Identity IDs to be assigned to this SQL Managed Instance. Required when 'type' is set to 'UserAssigned'. |



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **id** | string | No  | The SQL Managed Instance ID. | 
| **fqdn** | string | No  | The fully qualified domain name of the Azure Managed SQL Instance | 
| **principal_id** | string | No  | The Principal ID for the Service Principal associated with the Identity of this SQL Managed Instance. | 
| **tenant_id** | string | No  | The Tenant ID for the Service Principal associated with the Identity of this SQL Managed Instance. | 

Additionally, all variables are provided as outputs.
