# azurerm_hdinsight_hbase_cluster

Manages a HDInsight HBase Cluster.

## Variables

| Name | Type | Required? |  possible values |  Description |
| ---- | ---- | --------- |  ----------- | ----------- |
| **var.name** | string | True | -  |  Specifies the name for this HDInsight HBase Cluster. Changing this forces a new resource to be created. | 
| **var.resource_group_name** | string | True | -  |  Specifies the name of the Resource Group in which this HDInsight HBase Cluster should exist. Changing this forces a new resource to be created. | 
| **var.location** | string | True | -  |  Specifies the Azure Region which this HDInsight HBase Cluster should exist. Changing this forces a new resource to be created. | 
| **var.cluster_version** | string | True | -  |  Specifies the Version of HDInsights which should be used for this Cluster. Changing this forces a new resource to be created. | 
| **var.disk_encryption** | block | False | -  |  One or more `disk_encryption` block. | 
| **var.component_version** | block | True | -  |  A `component_version` block. | 
| **var.gateway** | block | True | -  |  A `gateway` block. | 
| **var.roles** | block | True | -  |  A `roles` block. | 
| **var.network** | block | False | -  |  A `network` block. | 
| **var.compute_isolation** | block | False | -  |  A `compute_isolation` block. | 
| **var.storage_account** | block | False | -  |  One or more `storage_account` block. | 
| **var.storage_account_gen2** | block | False | -  |  A `storage_account_gen2` block. | 
| **var.tier** | string | True | `Standard`, `Premium`  |  Specifies the Tier which should be used for this HDInsight HBase Cluster. Possible values are `Standard` or `Premium`. Changing this forces a new resource to be created. | 
| **var.tls_min_version** | string | False | -  |  The minimal supported TLS version. Possible values are 1.0, 1.1 or 1.2. Changing this forces a new resource to be created. | 
| **var.tags** | map | False | -  |  A map of Tags which should be assigned to this HDInsight HBase Cluster. | 
| **var.metastores** | block | False | -  |  A `metastores` block. | 
| **var.monitor** | block | False | -  |  A `monitor` block. | 
| **var.extension** | block | False | -  |  An `extension` block. | 
| **var.security_profile** | block | False | -  |  A `security_profile` block. Changing this forces a new resource to be created. | 



## Outputs

| Name | Type | Description |
| ---- | ---- | --------- | 
| **name** | string  | - | 
| **resource_group_name** | string  | - | 
| **location** | string  | - | 
| **cluster_version** | string  | - | 
| **disk_encryption** | block  | - | 
| **component_version** | block  | - | 
| **gateway** | block  | - | 
| **roles** | block  | - | 
| **network** | block  | - | 
| **compute_isolation** | block  | - | 
| **storage_account** | block  | - | 
| **storage_account_gen2** | block  | - | 
| **tier** | string  | - | 
| **tls_min_version** | string  | - | 
| **tags** | map  | - | 
| **metastores** | block  | - | 
| **monitor** | block  | - | 
| **extension** | block  | - | 
| **security_profile** | block  | - | 
| **id** | string  | The ID of the HDInsight HBase Cluster. | 
| **https_endpoint** | string  | The HTTPS Connectivity Endpoint for this HDInsight HBase Cluster. | 
| **ssh_endpoint** | string  | The SSH Connectivity Endpoint for this HDInsight HBase Cluster. | 

## Example minimal hclt

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git" 
   path = "hdinsight/hdinsight_hbase_cluster" 
}

inputs = {
   name = "name of hdinsight_hbase_cluster" 
   resource_group_name = "${resource_group}" 
   location = "${location}" 
   cluster_version = "cluster_version of hdinsight_hbase_cluster" 
   component_version = "component_version of hdinsight_hbase_cluster" 
   gateway = "gateway of hdinsight_hbase_cluster" 
   roles = "roles of hdinsight_hbase_cluster" 
   tier = "tier of hdinsight_hbase_cluster" 
}

tfstate_store = {
   storage_account = "${storage_account}" 
   container = "${container}" 
   container_path = "${COMPONENT_PATH}" 
}


```