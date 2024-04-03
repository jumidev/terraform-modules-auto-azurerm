# azurerm_cosmosdb_cassandra_cluster



## Example `component.hclt`

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git"   
   path = "cosmosdb_documentdb/cosmosdb_cassandra_cluster"   
}
inputs = {
   name = "The name which should be used for this Cassandra Cluster..."   
   resource_group_name = "${resource_group}"   
   location = "${location}"   
   # delegated_management_subnet_id → set in component_inputs
   default_admin_password = "The initial admin password for this Cassandra Cluster..."   
}
component_inputs = {
   delegated_management_subnet_id = "path/to/subnet_component:id"   
}
tfstate_store = {
   storage_account = "${storage_account}"   
   container = "${container}"   
   container_path = "${COMPONENT_PATH}"   
}
```

## Required Variables

| Name | Type |  Default  |  Description |
| ---- | --------- |  ----------- | ----------- |
| **name** | string |  -  |  The name which should be used for this Cassandra Cluster. Changing this forces a new Cassandra Cluster to be created. | 
| **resource_group_name** | string |  -  |  The name of the Resource Group where the Cassandra Cluster should exist. Changing this forces a new Cassandra Cluster to be created. | 
| **location** | string |  -  |  The Azure Region where the Cassandra Cluster should exist. Changing this forces a new Cassandra Cluster to be created. | 
| **delegated_management_subnet_id** | string |  -  |  The ID of the delegated management subnet for this Cassandra Cluster. Changing this forces a new Cassandra Cluster to be created. | 
| **default_admin_password** | string |  `Random string of 32 characters`  |  The initial admin password for this Cassandra Cluster. Changing this forces a new resource to be created. | 

## Optional Variables

| Name | Type |  Default  |  possible values |  Description |
| ---- | --------- |  ----------- | ----------- | ----------- |
| **authentication_method** | string |  `Cassandra`  |  `None`, `Cassandra`  |  The authentication method that is used to authenticate clients. Possible values are `None` and `Cassandra`. Defaults to `Cassandra`. | 
| **client_certificate_pems** | list |  -  |  -  |  A list of TLS certificates that is used to authorize client connecting to the Cassandra Cluster. | 
| **external_gossip_certificate_pems** | list |  -  |  -  |  A list of TLS certificates that is used to authorize gossip from unmanaged Cassandra Data Center. | 
| **external_seed_node_ip_addresses** | list |  -  |  -  |  A list of IP Addresses of the seed nodes in unmanaged the Cassandra Data Center which will be added to the seed node lists of all managed nodes. | 
| **hours_between_backups** | number |  `24`  |  -  |  The number of hours to wait between taking a backup of the Cassandra Cluster. Defaults to `24`. ~> **Note:** To disable this feature, set this property to `0`. | 
| **identity** | [block](#identity-block-structure) |  -  |  -  |  An `identity` block. | 
| **repair_enabled** | bool |  `True`  |  -  |  Is the automatic repair enabled on the Cassandra Cluster? Defaults to `true`. | 
| **version** | string |  `3.11`  |  `3.11`, `4.0`  |  The version of Cassandra what the Cluster converges to run. Possible values are `3.11` and `4.0`. Defaults to `3.11`. Changing this forces a new Cassandra Cluster to be created. | 
| **tags** | map |  -  |  -  |  A mapping of tags assigned to the resource. | 

### `identity` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `type` | string | Yes | - | Specifies the type of Managed Service Identity that should be configured on this Cassandra Cluster. The only possible value is 'SystemAssigned'. |



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **type** | string | No  | Specifies the type of Managed Service Identity that should be configured on this Cassandra Cluster. The only possible value is `SystemAssigned`. In addition to the Arguments listed above - the following Attributes are exported: | 
| **id** | string | No  | The ID of the Cassandra Cluster. | 

Additionally, all variables are provided as outputs.
