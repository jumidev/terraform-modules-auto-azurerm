# azurerm_mssql_virtual_network_rule

Allows you to manage rules for allowing traffic between an Azure SQL server and a subnet of a virtual network.

## Attributes

| Name | Type | Required? | Default  | possible values | Description |
| ---- | ---- | --------- | -------- | ----------- | ----------- |
| **name** | string | True | -  |  -  | The name of the SQL virtual network rule. Changing this forces a new resource to be created. | 
| **server_id** | string | True | -  |  -  | The resource ID of the SQL Server to which this SQL virtual network rule will be applied. Changing this forces a new resource to be created. | 
| **subnet_id** | string | True | -  |  -  | The ID of the subnet from which the SQL server will accept communications. | 
| **ignore_missing_vnet_service_endpoint** | bool | False | `False`  |  -  | Create the virtual network rule before the subnet has the virtual network service endpoint enabled. Defaults to `false`. | 

