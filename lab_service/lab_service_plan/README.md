# azurerm_lab_service_plan

Manages a Lab Service Plan.-> **Note:** Before using this resource, it's required to submit the request of registering the provider with Azure CLI `az provider register --namespace Microsoft.LabServices`.

## Example `component.hclt`

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git"   
   path = "lab_service/lab_service_plan"   
}

inputs = {
   name = "The name of the Lab Service Plan"   
   resource_group_name = "${resource_group}"   
   location = "${location}"   
   allowed_regions = "The allowed regions for the lab creator to use when creating labs using this Lab..."   
}

tfstate_store = {
   storage_account = "${storage_account}"   
   container = "${container}"   
   container_path = "${COMPONENT_PATH}"   
}

```

## Required Variables

| Name | Type |  Description |
| ---- | --------- |  ----------- |
| **name** | string |  The name of the Lab Service Plan. Changing this forces a new resource to be created. | 
| **resource_group_name** | string |  The name of the Resource Group where the Lab Service Plan should exist. Changing this forces a new resource to be created. | 
| **location** | string |  The Azure Region where the Lab Service Plan should exist. Changing this forces a new resource to be created. | 
| **allowed_regions** | string |  The allowed regions for the lab creator to use when creating labs using this Lab Service Plan. The allowed region's count must be between `1` and `28`. | 

## Optional Variables

| Name | Type |  Description |
| ---- | --------- |  ----------- |
| **default_auto_shutdown** | [block](#default_auto_shutdown-block-structure) |  A `default_auto_shutdown` block. | 
| **default_connection** | [block](#default_connection-block-structure) |  A `default_connection` block. | 
| **default_network_subnet_id** | string |  The resource ID of the Subnet for the Lab Service Plan network profile. | 
| **shared_gallery_id** | string |  The resource ID of the Shared Image Gallery attached to this Lab Service Plan. When saving a lab template virtual machine image it will be persisted in this gallery. The shared images from the gallery can be made available to use when creating new labs. | 
| **support** | [block](#support-block-structure) |  A `support` block. | 
| **tags** | map |  A mapping of tags which should be assigned to the Lab Service Plan. | 

### `default_auto_shutdown` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `disconnect_delay` | string | No | - | The amount of time a VM will stay running after a user disconnects if this behavior is enabled. This value must be formatted as an ISO 8601 string. |
| `idle_delay` | string | No | - | The amount of time a VM will idle before it is shutdown if this behavior is enabled. This value must be formatted as an ISO 8601 string. |
| `no_connect_delay` | string | No | - | The amount of time a VM will stay running before it is shutdown if no connection is made and this behavior is enabled. This value must be formatted as an ISO 8601 string. |
| `shutdown_on_idle` | string | No | - | Will a VM get shutdown when it has idled for a period of time? Possible values are 'LowUsage' and 'UserAbsence'. |

### `default_connection` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `client_rdp_access` | string | No | - | The enabled access level for Client Access over RDP. Possible values are 'Private' and 'Public'. |
| `client_ssh_access` | string | No | - | The enabled access level for Client Access over SSH. Possible values are 'Private' and 'Public'. |
| `web_rdp_access` | string | No | - | The enabled access level for Web Access over RDP. Possible values are 'Private' and 'Public'. |
| `web_ssh_access` | string | No | - | The enabled access level for Web Access over SSH. Possible values are 'Private' and 'Public'. |

### `support` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `email` | string | No | - | The email address for the support contact. |
| `instructions` | string | No | - | The instructions for users of the Lab Service Plan. |
| `phone` | string | No | - | The phone number for the support contact. |
| `url` | string | No | - | The web address for users of the Lab Service Plan. |



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **id** | string | No  | The ID of the Lab Service Plan. | 

Additionally, all variables are provided as outputs.
