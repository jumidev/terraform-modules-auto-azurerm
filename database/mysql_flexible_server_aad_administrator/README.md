# azurerm_mysql_flexible_server_aad_administrator

Manages an Active Directory administrator on a MySQL Flexible Server

## Attributes

| Name | Type | Required? | Default  | possible values | Description |
| ---- | ---- | --------- | -------- | ----------- | ----------- |
| **server_id** | string | True | -  |  -  | The resource ID of the MySQL Flexible Server. Changing this forces a new resource to be created. | 
| **identity_id** | string | True | -  |  -  | The resource ID of the identity used for AAD Authentication. | 
| **login** | string | True | -  |  -  | The login name of the principal to set as the server administrator | 
| **object_id** | string | True | -  |  -  | The ID of the principal to set as the server administrator. For a managed identity this should be the Client ID of the identity. | 
| **tenant_id** | string | True | -  |  -  | The Azure Tenant ID. | 

