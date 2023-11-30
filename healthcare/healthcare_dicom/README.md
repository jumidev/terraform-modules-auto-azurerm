# azurerm_healthcare_dicom

Manages a Healthcare DICOM Service

## Example minimal component.hclt

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git" 
   path = "healthcare/healthcare_dicom" 
}

inputs = {
   name = "name of healthcare_dicom" 
   workspace_id = "workspace_id of healthcare_dicom" 
   location = "${location}" 
}

tfstate_store = {
   storage_account = "${storage_account}" 
   container = "${container}" 
   container_path = "${COMPONENT_PATH}" 
}

```

## Variables

| Name | Type | Required? |  Default  |  Description |
| ---- | ---- | --------- |  ----------- | ----------- |
| **var.name** | string | True | -  |  Specifies the name of the Healthcare DICOM Service. Changing this forces a new Healthcare DICOM Service to be created. | 
| **var.workspace_id** | string | True | -  |  Specifies the id of the Healthcare Workspace where the Healthcare DICOM Service should exist. Changing this forces a new Healthcare DICOM Service to be created. | 
| **var.location** | string | True | -  |  Specifies the Azure Region where the Healthcare DICOM Service should be created. Changing this forces a new Healthcare DICOM Service to be created. | 
| **var.identity** | block | False | -  |  An `identity` block. | 
| `identity` block structure: || 
|   type (string): (REQUIRED) The type of identity used for the Healthcare DICOM service. Possible values are 'UserAssigned', 'SystemAssigned' and 'SystemAssigned, UserAssigned'. If 'UserAssigned' is set, an 'identity_ids' must be set as well. ||
|   identity_ids (list): A list of User Assigned Identity IDs which should be assigned to this Healthcare DICOM service. ||
| **var.public_network_access_enabled** | bool | False | `True`  |  Whether to enabled public networks when data plane traffic coming from public networks while private endpoint is enabled. Defaults to `true`. | 
| **var.tags** | map | False | -  |  A mapping of tags to assign to the Healthcare DICOM Service. | 



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **id** | string | No  | The ID of the Healthcare DICOM Service. | 
| **authentication** | block | No  | The `authentication` block. | 
| **service_url** | string | No  | The url of the Healthcare DICOM Services. | 
| **authority** | string | No  | The Azure Active Directory (tenant) that serves as the authentication authority to access the service. The default authority is the Directory defined in the authentication scheme in use when running Terraform. Authority must be registered to Azure AD and in the following format: <https://{Azure-AD-endpoint}/{tenant-id>}. | 
| **audience** | string | No  | The intended audience to receive authentication tokens for the service. The default value is <https://dicom.azurehealthcareapis.azure.com> | 

Additionally, all variables are provided as outputs.
