# azurerm_healthcare_service

Manages a Healthcare Service.

## Variables

| Name | Type | Required? |  Default  |  Description |
| ---- | ---- | --------- |  ----------- | ----------- |
| **var.name** | string | True | -  |  The name of the service instance. Used for service endpoint, must be unique within the audience. Changing this forces a new resource to be created. | 
| **var.resource_group_name** | string | True | -  |  The name of the Resource Group in which to create the Service. Changing this forces a new resource to be created. | 
| **var.location** | string | True | -  |  Specifies the supported Azure Region where the Service should be created. Changing this forces a new resource to be created. | 
| **var.access_policy_object_ids** | string | False | -  |  A set of Azure object IDs that are allowed to access the Service. If not configured, the default value is the object id of the service principal or user that is running Terraform. | 
| **var.authentication_configuration** | block | False | -  |  An `authentication_configuration` block. | 
| **var.cosmosdb_throughput** | string | False | `1000`  |  The provisioned throughput for the backing database. Range of `400`-`100000`. Defaults to `1000`. | 
| **var.cosmosdb_key_vault_key_versionless_id** | string | False | -  |  A versionless Key Vault Key ID for CMK encryption of the backing database. Changing this forces a new resource to be created. | 
| **var.cors_configuration** | block | False | -  |  A `cors_configuration` block. | 
| **var.public_network_access_enabled** | bool | False | `True`  |  Whether public network access is enabled or disabled for this service instance. Defaults to `true`. | 
| **var.kind** | string | False | -  |  The type of the service. Values at time of publication are: `fhir`, `fhir-Stu3` and `fhir-R4`. Default value is `fhir`. | 
| **var.tags** | map | False | -  |  A mapping of tags to assign to the resource. | 



## Outputs

| Name | Type | Description |
| ---- | ---- | --------- | 
| **name** | string  | - | 
| **resource_group_name** | string  | - | 
| **location** | string  | - | 
| **access_policy_object_ids** | string  | - | 
| **authentication_configuration** | block  | - | 
| **cosmosdb_throughput** | string  | - | 
| **cosmosdb_key_vault_key_versionless_id** | string  | - | 
| **cors_configuration** | block  | - | 
| **public_network_access_enabled** | bool  | - | 
| **kind** | string  | - | 
| **tags** | map  | - | 
| **id** | string  | The ID of the Healthcare Service. | 

## Example minimal hclt

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git" 
   path = "healthcare/healthcare_service" 
}

inputs = {
   name = "name of healthcare_service" 
   resource_group_name = "${resource_group}" 
   location = "${location}" 
}

tfstate_store = {
   storage_account = "${storage_account}" 
   container = "${container}" 
   container_path = "${COMPONENT_PATH}" 
}


```