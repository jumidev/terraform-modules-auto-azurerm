# azurerm_healthcare_service

Manages a Healthcare Service.

## Attributes

| Name | Type | Required? | Default  | possible values | Description |
| ---- | ---- | --------- | -------- | ----------- | ----------- |
| **name** | string | True | -  |  -  | The name of the service instance. Used for service endpoint, must be unique within the audience. Changing this forces a new resource to be created. | 
| **resource_group_name** | string | True | -  |  -  | The name of the Resource Group in which to create the Service. Changing this forces a new resource to be created. | 
| **location** | string | True | -  |  -  | Specifies the supported Azure Region where the Service should be created. Changing this forces a new resource to be created. | 
| **access_policy_object_ids** | string | False | -  |  -  | A set of Azure object IDs that are allowed to access the Service. If not configured, the default value is the object id of the service principal or user that is running Terraform. | 
| **authentication_configuration** | block | False | -  |  -  | An `authentication_configuration` block. | 
| **cosmosdb_throughput** | string | False | `1000`  |  -  | The provisioned throughput for the backing database. Range of `400`-`100000`. Defaults to `1000`. | 
| **cosmosdb_key_vault_key_versionless_id** | string | False | -  |  -  | A versionless Key Vault Key ID for CMK encryption of the backing database. Changing this forces a new resource to be created. | 
| **cors_configuration** | block | False | -  |  -  | A `cors_configuration` block. | 
| **public_network_access_enabled** | bool | False | `True`  |  -  | Whether public network access is enabled or disabled for this service instance. Defaults to `true`. | 
| **kind** | string | False | -  |  -  | The type of the service. Values at time of publication are: `fhir`, `fhir-Stu3` and `fhir-R4`. Default value is `fhir`. | 
| **tags** | map | False | -  |  -  | A mapping of tags to assign to the resource. | 

