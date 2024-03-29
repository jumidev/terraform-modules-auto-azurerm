# azurerm_synapse_role_assignment

Manages a Synapse Role Assignment.

## Example `component.hclt`

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git"   
   path = "synapse/synapse_role_assignment"   
}

inputs = {
   role_name = "The Role Name of the Synapse Built-In Role"   
   principal_id = "The ID of the Principal (User, Group or Service Principal) to assign the Synapse..."   
}

tfstate_store = {
   storage_account = "${storage_account}"   
   container = "${container}"   
   container_path = "${COMPONENT_PATH}"   
}

```

## Required Variables

| Name | Type |  possible values |  Description |
| ---- | --------- |  ----------- | ----------- |
| **role_name** | string |  `Apache Spark Administrator`, `Synapse Administrator`, `Synapse Artifact Publisher`, `Synapse Artifact User`, `Synapse Compute Operator`, `Synapse Contributor`, `Synapse Credential User`, `Synapse Linked Data Manager`, `Synapse Monitoring Operator`, `Synapse SQL Administrator`, `Synapse User`  |  The Role Name of the Synapse Built-In Role. Possible values are `Apache Spark Administrator`, `Synapse Administrator`, `Synapse Artifact Publisher`, `Synapse Artifact User`, `Synapse Compute Operator`, `Synapse Contributor`, `Synapse Credential User`, `Synapse Linked Data Manager`, `Synapse Monitoring Operator`, `Synapse SQL Administrator` and `Synapse User`. Changing this forces a new resource to be created. -> **NOTE:** Currently, the Synapse built-in roles are `Apache Spark Administrator`, `Synapse Administrator`, `Synapse Artifact Publisher`, `Synapse Artifact User`, `Synapse Compute Operator`, `Synapse Contributor`, `Synapse Credential User`, `Synapse Linked Data Manager`, `Synapse Monitoring Operator`, `Synapse SQL Administrator` and `Synapse User`. -> **NOTE:** Old roles are still supported: `Workspace Admin`, `Apache Spark Admin`, `Sql Admin`. These values will be removed in the next Major Version 3.0. | 
| **principal_id** | string |  -  |  The ID of the Principal (User, Group or Service Principal) to assign the Synapse Role Definition to. Changing this forces a new resource to be created. | 

## Optional Variables

| Name | Type |  Description |
| ---- | --------- |  ----------- |
| **synapse_workspace_id** | string |  The Synapse Workspace which the Synapse Role Assignment applies to. Changing this forces a new resource to be created. | 
| **synapse_spark_pool_id** | string |  The Synapse Spark Pool which the Synapse Role Assignment applies to. Changing this forces a new resource to be created. -> **NOTE:** A Synapse firewall rule including local IP is needed to allow access. Only one of `synapse_workspace_id`, `synapse_spark_pool_id` must be set. | 
| **principal_type** | string |  The Type of the Principal. One of `User`, `Group` or `ServicePrincipal`. Changing this forces a new resource to be created. -> **NOTE:** While `principal_type` is optional, it's still recommended to set this value, as some Synapse use-cases may not work correctly if this is not specified. Service Principals for example can't run SQL statements using `Entra ID` authentication if `principal_type` is not set to `ServicePrincipal`. | 



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **principal_type** | string | No  | The Type of the Principal. One of `User`, `Group` or `ServicePrincipal`. Changing this forces a new resource to be created. -> **NOTE:** While `principal_type` is optional, it's still recommended to set this value, as some Synapse use-cases may not work correctly if this is not specified. Service Principals for example can't run SQL statements using `Entra ID` authentication if `principal_type` is not set to `ServicePrincipal`. In addition to the Arguments listed above - the following Attributes are exported: | 
| **id** | string | No  | The Synapse Role Assignment ID. | 

Additionally, all variables are provided as outputs.
