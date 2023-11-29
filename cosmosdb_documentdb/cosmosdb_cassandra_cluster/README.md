# azurerm_cosmosdb_cassandra_cluster

Manages a Cassandra Cluster.~> **NOTE:** In order for the `Azure Managed Instances for Apache Cassandra` to work properly the product requires the `Azure Cosmos DB` Application ID to be present and working in your tenant. If the `Azure Cosmos DB` Application ID is missing in your environment you will need to have an administrator of your tenant run the following command to add the `Azure Cosmos DB` Application ID to your tenant:```powershellNew-AzADServicePrincipal -ApplicationId a232010e-820c-4083-83bb-3ace5fc29d0b```

## Variables

| Name | Type | Required? |  Default  |  possible values |  Description |
| ---- | ---- | --------- |  ----------- | ----------- | ----------- |
| **var.name** | string | True | -  |  -  |  The name which should be used for this Cassandra Cluster. Changing this forces a new Cassandra Cluster to be created. | 
| **var.resource_group_name** | string | True | -  |  -  |  The name of the Resource Group where the Cassandra Cluster should exist. Changing this forces a new Cassandra Cluster to be created. | 
| **var.location** | string | True | -  |  -  |  The Azure Region where the Cassandra Cluster should exist. Changing this forces a new Cassandra Cluster to be created. | 
| **var.delegated_management_subnet_id** | string | True | -  |  -  |  The ID of the delegated management subnet for this Cassandra Cluster. Changing this forces a new Cassandra Cluster to be created. | 
| **var.default_admin_password** | string | True | -  |  -  |  The initial admin password for this Cassandra Cluster. Changing this forces a new resource to be created. | 
| **var.authentication_method** | string | False | `Cassandra`  |  `None`, `Cassandra`  |  The authentication method that is used to authenticate clients. Possible values are `None` and `Cassandra`. Defaults to `Cassandra`. | 
| **var.client_certificate_pems** | list | False | -  |  -  |  A list of TLS certificates that is used to authorize client connecting to the Cassandra Cluster. | 
| **var.external_gossip_certificate_pems** | list | False | -  |  -  |  A list of TLS certificates that is used to authorize gossip from unmanaged Cassandra Data Center. | 
| **var.external_seed_node_ip_addresses** | list | False | -  |  -  |  A list of IP Addresses of the seed nodes in unmanaged the Cassandra Data Center which will be added to the seed node lists of all managed nodes. | 
| **var.hours_between_backups** | int | False | `24`  |  -  |  The number of hours to wait between taking a backup of the Cassandra Cluster. Defaults to `24`. | 
| **var.identity** | block | False | -  |  -  |  An `identity` block. | 
| **var.repair_enabled** | bool | False | `True`  |  -  |  Is the automatic repair enabled on the Cassandra Cluster? Defaults to `true`. | 
| **var.version** | string | False | `3.11`  |  `3.11`, `4.0`  |  The version of Cassandra what the Cluster converges to run. Possible values are `3.11` and `4.0`. Defaults to `3.11`. Changing this forces a new Cassandra Cluster to be created. | 
| **var.tags** | map | False | -  |  -  |  A mapping of tags assigned to the resource. | 



## Outputs

| Name | Type | Description |
| ---- | ---- | --------- | 
| **name** | string  | - | 
| **resource_group_name** | string  | - | 
| **location** | string  | - | 
| **delegated_management_subnet_id** | string  | - | 
| **default_admin_password** | string  | - | 
| **authentication_method** | string  | - | 
| **client_certificate_pems** | list  | - | 
| **external_gossip_certificate_pems** | list  | - | 
| **external_seed_node_ip_addresses** | list  | - | 
| **hours_between_backups** | int  | - | 
| **identity** | block  | - | 
| **repair_enabled** | bool  | - | 
| **version** | string  | - | 
| **tags** | map  | - | 
| **id** | string  | The ID of the Cassandra Cluster. | 