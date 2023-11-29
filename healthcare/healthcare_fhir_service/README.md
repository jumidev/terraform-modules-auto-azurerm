# azurerm_healthcare_fhir_service

Manages a Healthcare FHIR (Fast Healthcare Interoperability Resources) Service

## Variables

| Name | Type | Required? | Default  | possible values | Description |
| ---- | ---- | --------- | -------- | ----------- | ----------- |
| **var.name** | string | True | -  |  -  | Specifies the name of the Healthcare FHIR Service. Changing this forces a new Healthcare FHIR Service to be created. | 
| **var.resource_group_name** | string | True | -  |  -  | Specifies the name of the Resource Group in which to create the Healthcare FHIR Service. Changing this forces a new resource to be created. | 
| **var.workspace_id** | string | True | -  |  -  | Specifies the id of the Healthcare Workspace where the Healthcare FHIR Service should exist. Changing this forces a new Healthcare FHIR Service to be created. | 
| **var.location** | string | True | -  |  -  | Specifies the Azure Region where the Healthcare FHIR Service should be created. Changing this forces a new Healthcare FHIR Service to be created. | 
| **var.kind** | string | False | `fhir-R4`  |  `fhir-Stu3`, `fhir-R4`  | Specifies the kind of the Healthcare FHIR Service. Possible values are: `fhir-Stu3` and `fhir-R4`. Defaults to `fhir-R4`. Changing this forces a new Healthcare FHIR Service to be created. | 
| **var.identity** | block | False | -  |  -  | An `identity` block. | 
| **var.access_policy_object_ids** | list | False | -  |  -  | A list of the access policies of the service instance. | 
| **var.cors** | block | False | -  |  -  | A `cors` block. | 
| **var.container_registry_login_server_url** | list | False | -  |  -  | A list of azure container registry settings used for convert data operation of the service instance. | 
| **var.oci_artifact** | block | False | -  |  -  | [A list](/docs/configuration/attr-as-blocks.html) of `oci_artifact` objects as defined below to describe [OCI artifacts for export](https://learn.microsoft.com/en-gb/azure/healthcare-apis/fhir/de-identified-export). | 
| **var.authentication** | block | True | -  |  -  | An `authentication` block. | 
| **var.configuration_export_storage_account_name** | string | False | -  |  -  | Specifies the name of the storage account which the operation configuration information is exported to. | 
| **var.tags** | map | False | -  |  -  | A mapping of tags to assign to the Healthcare FHIR Service. | 



## Outputs

| Name | Type | Description |
| ---- | ---- | --------- | 
| **name** | string  | - | 
| **resource_group_name** | string  | - | 
| **workspace_id** | string  | - | 
| **location** | string  | - | 
| **kind** | string  | - | 
| **identity** | block  | - | 
| **access_policy_object_ids** | list  | - | 
| **cors** | block  | - | 
| **container_registry_login_server_url** | list  | - | 
| **oci_artifact** | block  | - | 
| **authentication** | block  | - | 
| **configuration_export_storage_account_name** | string  | - | 
| **tags** | map  | - | 
| **id** | string  | The ID of the Healthcare FHIR Service. | 
| **public_network_access_enabled** | bool  | Whether public networks access is enabled. | 