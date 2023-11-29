# azurerm_lab_service_plan

Manages a Lab Service Plan.-> **Note:** Before using this resource, it's required to submit the request of registering the provider with Azure CLI `az provider register --namespace Microsoft.LabServices`.

## Attributes

| Name | Type | Required? | Default  | possible values | Description |
| ---- | ---- | --------- | -------- | ----------- | ----------- |
| **name** | string | True | -  |  -  | The name of the Lab Service Plan. Changing this forces a new resource to be created. | 
| **resource_group_name** | string | True | -  |  -  | The name of the Resource Group where the Lab Service Plan should exist. Changing this forces a new resource to be created. | 
| **location** | string | True | -  |  -  | The Azure Region where the Lab Service Plan should exist. Changing this forces a new resource to be created. | 
| **allowed_regions** | string | True | -  |  -  | The allowed regions for the lab creator to use when creating labs using this Lab Service Plan. The allowed region's count must be between `1` and `28`. | 
| **default_auto_shutdown** | block | False | -  |  -  | A `default_auto_shutdown` block. | 
| **default_connection** | block | False | -  |  -  | A `default_connection` block. | 
| **default_network_subnet_id** | string | False | -  |  -  | The resource ID of the Subnet for the Lab Service Plan network profile. | 
| **shared_gallery_id** | string | False | -  |  -  | The resource ID of the Shared Image Gallery attached to this Lab Service Plan. When saving a lab template virtual machine image it will be persisted in this gallery. The shared images from the gallery can be made available to use when creating new labs. | 
| **support** | block | False | -  |  -  | A `support` block. | 
| **tags** | map | False | -  |  -  | A mapping of tags which should be assigned to the Lab Service Plan. | 

