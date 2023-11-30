# azurerm_cosmosdb_cassandra_cluster

Manages a Cassandra Cluster.~> **NOTE:** In order for the `Azure Managed Instances for Apache Cassandra` to work properly the product requires the `Azure Cosmos DB` Application ID to be present and working in your tenant. If the `Azure Cosmos DB` Application ID is missing in your environment you will need to have an administrator of your tenant run the following command to add the `Azure Cosmos DB` Application ID to your tenant:```powershellNew-AzADServicePrincipal -ApplicationId a232010e-820c-4083-83bb-3ace5fc29d0b```

## Example minimal component.hclt

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git" 
   path = "cosmosdb_documentdb/cosmosdb_cassandra_cluster" 
}

inputs = {
   name = "name of cosmosdb_cassandra_cluster" 
   resource_group_name = "${resource_group}" 
   location = "${location}" 
   delegated_management_subnet_id = "delegated_management_subnet_id of cosmosdb_cassandra_cluster" 
   default_admin_password = "default_admin_password of cosmosdb_cassandra_cluster" 
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
| **var.name** | string |  The name which should be used for this Cassandra Cluster. Changing this forces a new Cassandra Cluster to be created. | 
| **var.resource_group_name** | string |  The name of the Resource Group where the Cassandra Cluster should exist. Changing this forces a new Cassandra Cluster to be created. | 
| **var.location** | string |  The Azure Region where the Cassandra Cluster should exist. Changing this forces a new Cassandra Cluster to be created. | 
| **var.delegated_management_subnet_id** | string |  The ID of the delegated management subnet for this Cassandra Cluster. Changing this forces a new Cassandra Cluster to be created. | 
| **var.default_admin_password** | string |  The initial admin password for this Cassandra Cluster. Changing this forces a new resource to be created. | 

## Optional Variables

| Name | Type |  Default  |  possible values |  Description |
| ---- | --------- |  ----------- | ----------- | ----------- |
| **var.authentication_method** | string |  `Cassandra`  |  `None`, `Cassandra`  |  The authentication method that is used to authenticate clients. Possible values are `None` and `Cassandra`. Defaults to `Cassandra`. | 
| **var.client_certificate_pems** | list |  -  |  -  |  A list of TLS certificates that is used to authorize client connecting to the Cassandra Cluster. | 
| **var.external_gossip_certificate_pems** | list |  -  |  -  |  A list of TLS certificates that is used to authorize gossip from unmanaged Cassandra Data Center. | 
| **var.external_seed_node_ip_addresses** | list |  -  |  -  |  A list of IP Addresses of the seed nodes in unmanaged the Cassandra Data Center which will be added to the seed node lists of all managed nodes. | 
| **var.hours_between_backups** | int |  `24`  |  -  |  The number of hours to wait between taking a backup of the Cassandra Cluster. Defaults to `24`. | 
| **var.identity** | block |  -  |  -  |  An `identity` block. | 
| **var.repair_enabled** | bool |  `True`  |  -  |  Is the automatic repair enabled on the Cassandra Cluster? Defaults to `true`. | 
| **var.version** | string |  `3.11`  |  `3.11`, `4.0`  |  The version of Cassandra what the Cluster converges to run. Possible values are `3.11` and `4.0`. Defaults to `3.11`. Changing this forces a new Cassandra Cluster to be created. | 
| **var.tags** | map |  -  |  -  |  A mapping of tags assigned to the resource. | 

### `identity` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `type` | string | Yes | - | Specifies the type of Managed Service Identity that should be configured on this Cassandra Cluster. The only possible value is 'SystemAssigned'. |



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **id** | string | No  | The ID of the Cassandra Cluster. | 

Additionally, all variables are provided as outputs.
