# azurerm_healthcare_dicom

Manages a Healthcare DICOM Service

## Attributes

| Name | Type | Required? | Default  | possible values | Description |
| ---- | ---- | --------- | -------- | ----------- | ----------- |
| **name** | string | True | -  |  -  | Specifies the name of the Healthcare DICOM Service. Changing this forces a new Healthcare DICOM Service to be created. | 
| **workspace_id** | string | True | -  |  -  | Specifies the id of the Healthcare Workspace where the Healthcare DICOM Service should exist. Changing this forces a new Healthcare DICOM Service to be created. | 
| **location** | string | True | -  |  -  | Specifies the Azure Region where the Healthcare DICOM Service should be created. Changing this forces a new Healthcare DICOM Service to be created. | 
| **identity** | block | False | -  |  -  | An `identity` block. | 
| **public_network_access_enabled** | bool | False | `True`  |  -  | Whether to enabled public networks when data plane traffic coming from public networks while private endpoint is enabled. Defaults to `true`. | 
| **tags** | map | False | -  |  -  | A mapping of tags to assign to the Healthcare DICOM Service. | 

