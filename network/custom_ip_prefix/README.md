# azurerm_custom_ip_prefix

Manages a custom IPv4 prefix or custom IPv6 prefix.

## Example `component.hclt`

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git"   
   path = "network/custom_ip_prefix"   
}

inputs = {
   name = "The name of the Custom IP Prefix"   
   location = "${location}"   
   resource_group_name = "${resource_group}"   
   cidr = "The `cidr` of the Custom IP Prefix, either IPv4 or IPv6..."   
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
| **name** | string |  The name of the Custom IP Prefix. Changing this forces a new resource to be created. | 
| **location** | string |  The location where the Custom IP Prefix should exist. Changing this forces a new resource to be created. | 
| **resource_group_name** | string |  The name of the Resource Group in which to create the Custom IP Prefix. Changing this forces a new resource to be created. | 
| **cidr** | string |  The `cidr` of the Custom IP Prefix, either IPv4 or IPv6. Changing this forces a new resource to be created. | 

## Optional Variables

| Name | Type |  Default  |  Description |
| ---- | --------- |  ----------- | ----------- |
| **commissioning_enabled** | bool |  `False`  |  Specifies that the custom IP prefix should be commissioned after provisioning in Azure. Defaults to `false`. | 
| **internet_advertising_disabled** | bool |  `False`  |  Specifies that the custom IP prefix should not be publicly advertised on the Internet when commissioned (regional commissioning feature). Defaults to `false`. | 
| **parent_custom_ip_prefix_id** | string |  -  |  Specifies the ID of the parent prefix. Only needed when creating a regional/child IPv6 prefix. Changing this forces a new resource to be created. | 
| **roa_validity_end_date** | string |  -  |  The expiration date of the Route Origin Authorization (ROA) document which has been filed with the Routing Internet Registry (RIR) for this prefix. The expected format is `YYYY-MM-DD`. Required when provisioning an IPv4 prefix or IPv6 global prefix. Changing this forces a new resource to be created. | 
| **tags** | map |  -  |  A mapping of tags to assign to the Custom IP Prefix. | 
| **wan_validation_signed_message** | string |  -  |  The signed base64-encoded authorization message, which will be sent to Microsoft for WAN verification. Required when provisioning an IPv4 prefix or IPv6 global prefix. Refer to [Azure documentation](https://learn.microsoft.com/en-us/azure/virtual-network/ip-services/create-custom-ip-address-prefix-cli#certificate-readiness) for more details about the process for your RIR. Changing this forces a new resource to be created. | 
| **zones** | list |  -  |  Specifies a list of Availability Zones in which this Custom IP Prefix should be located. Should not be specified when creating an IPv6 global prefix. Changing this forces a new resource to be created. | 



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **id** | string | No  | The ID of the Custom IP Prefix. | 

Additionally, all variables are provided as outputs.
