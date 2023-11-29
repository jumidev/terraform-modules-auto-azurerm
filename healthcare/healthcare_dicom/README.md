# azurerm_healthcare_dicom

Manages a Healthcare DICOM Service

## Variables

| Name | Type | Required? |  Default  |  Description |
| ---- | ---- | --------- |  ----------- | ----------- |
| **var.name** | string | True | -  |  Specifies the name of the Healthcare DICOM Service. Changing this forces a new Healthcare DICOM Service to be created. | 
| **var.workspace_id** | string | True | -  |  Specifies the id of the Healthcare Workspace where the Healthcare DICOM Service should exist. Changing this forces a new Healthcare DICOM Service to be created. | 
| **var.location** | string | True | -  |  Specifies the Azure Region where the Healthcare DICOM Service should be created. Changing this forces a new Healthcare DICOM Service to be created. | 
| **var.identity** | block | False | -  |  An `identity` block. | 
| **var.public_network_access_enabled** | bool | False | `True`  |  Whether to enabled public networks when data plane traffic coming from public networks while private endpoint is enabled. Defaults to `true`. | 
| **var.tags** | map | False | -  |  A mapping of tags to assign to the Healthcare DICOM Service. | 



## Outputs

| Name | Type | Description |
| ---- | ---- | --------- | 
| **name** | string  | - | 
| **workspace_id** | string  | - | 
| **location** | string  | - | 
| **identity** | block  | - | 
| **public_network_access_enabled** | bool  | - | 
| **tags** | map  | - | 
| **id** | string  | The ID of the Healthcare DICOM Service. | 
| **authentication** | block  | The `authentication` block. | 
| **service_url** | string  | The url of the Healthcare DICOM Services. | 
| **authority** | string  | The Azure Active Directory (tenant) that serves as the authentication authority to access the service. The default authority is the Directory defined in the authentication scheme in use when running Terraform. Authority must be registered to Azure AD and in the following format: <https://{Azure-AD-endpoint}/{tenant-id>}. | 
| **audience** | string  | The intended audience to receive authentication tokens for the service. The default value is <https://dicom.azurehealthcareapis.azure.com> | 