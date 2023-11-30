# azurerm_hdinsight_spark_cluster

Manages a HDInsight Spark Cluster.

## Variables

| Name | Type | Required? |  possible values |  Description |
| ---- | ---- | --------- |  ----------- | ----------- |
| **var.name** | string | True | -  |  Specifies the name for this HDInsight Spark Cluster. Changing this forces a new resource to be created. | 
| **var.resource_group_name** | string | True | -  |  Specifies the name of the Resource Group in which this HDInsight Spark Cluster should exist. Changing this forces a new resource to be created. | 
| **var.location** | string | True | -  |  Specifies the Azure Region which this HDInsight Spark Cluster should exist. Changing this forces a new resource to be created. | 
| **var.cluster_version** | string | True | -  |  Specifies the Version of HDInsights which should be used for this Cluster. Changing this forces a new resource to be created. | 
| **var.component_version** | block | True | -  |  A `component_version` block. | 
| **var.encryption_in_transit_enabled** | bool | False | -  |  Whether encryption in transit is enabled for this Cluster. Changing this forces a new resource to be created. | 
| **var.disk_encryption** | block | False | -  |  One or more `disk_encryption` block. | 
| **var.gateway** | block | True | -  |  A `gateway` block. | 
| **var.roles** | block | True | -  |  A `roles` block. | 
| **var.network** | block | False | -  |  A `network` block. | 
| **var.compute_isolation** | block | False | -  |  A `compute_isolation` block. | 
| **var.storage_account** | block | False | -  |  One or more `storage_account` block. | 
| **var.storage_account_gen2** | block | False | -  |  A `storage_account_gen2` block. | 
| **var.tier** | string | True | `Standard`, `Premium`  |  Specifies the Tier which should be used for this HDInsight Spark Cluster. Possible values are `Standard` or `Premium`. Changing this forces a new resource to be created. | 
| **var.tls_min_version** | string | False | -  |  The minimal supported TLS version. Possible values are 1.0, 1.1 or 1.2. Changing this forces a new resource to be created. | 
| **var.tags** | map | False | -  |  A map of Tags which should be assigned to this HDInsight Spark Cluster. | 
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
| **component_version** | block  | - | 
| **encryption_in_transit_enabled** | bool  | - | 
| **disk_encryption** | block  | - | 
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
| **id** | string  | The ID of the HDInsight Spark Cluster. | 
| **https_endpoint** | string  | The HTTPS Connectivity Endpoint for this HDInsight Spark Cluster. | 
| **ssh_endpoint** | string  | The SSH Connectivity Endpoint for this HDInsight Spark Cluster. | 

## Example minimal hclt

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git" 
   path = "hdinsight/hdinsight_spark_cluster" 
}

inputs = {
   name = "name of hdinsight_spark_cluster" 
   resource_group_name = "${resource_group}" 
   location = "${location}" 
   cluster_version = "cluster_version of hdinsight_spark_cluster" 
   component_version = "component_version of hdinsight_spark_cluster" 
   gateway = "gateway of hdinsight_spark_cluster" 
   roles = "roles of hdinsight_spark_cluster" 
   tier = "tier of hdinsight_spark_cluster" 
}

tfstate_store = {
   storage_account = "${storage_account}" 
   container = "${container}" 
   container_path = "${COMPONENT_PATH}" 
}


```