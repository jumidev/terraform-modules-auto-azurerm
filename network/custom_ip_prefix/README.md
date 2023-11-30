# azurerm_custom_ip_prefix

Manages a custom IPv4 prefix or custom IPv6 prefix.

## Variables

| Name | Type | Required? |  Default  |  Description |
| ---- | ---- | --------- |  ----------- | ----------- |
| **var.name** | string | True | -  |  The name of the Custom IP Prefix. Changing this forces a new resource to be created. | 
| **var.location** | string | True | -  |  The location where the Custom IP Prefix should exist. Changing this forces a new resource to be created. | 
| **var.resource_group_name** | string | True | -  |  The name of the Resource Group in which to create the Custom IP Prefix. Changing this forces a new resource to be created. | 
| **var.cidr** | string | True | -  |  The `cidr` of the Custom IP Prefix, either IPv4 or IPv6. Changing this forces a new resource to be created. | 
| **var.commissioning_enabled** | bool | False | `False`  |  Specifies that the custom IP prefix should be commissioned after provisioning in Azure. Defaults to `false`. | 
| **var.internet_advertising_disabled** | bool | False | `False`  |  Specifies that the custom IP prefix should not be publicly advertised on the Internet when commissioned (regional commissioning feature). Defaults to `false`. | 
| **var.parent_custom_ip_prefix_id** | string | False | -  |  Specifies the ID of the parent prefix. Only needed when creating a regional/child IPv6 prefix. Changing this forces a new resource to be created. | 
| **var.roa_validity_end_date** | datetime | False | -  |  The expiration date of the Route Origin Authorization (ROA) document which has been filed with the Routing Internet Registry (RIR) for this prefix. The expected format is `YYYY-MM-DD`. Required when provisioning an IPv4 prefix or IPv6 global prefix. Changing this forces a new resource to be created. | 
| **var.tags** | map | False | -  |  A mapping of tags to assign to the Custom IP Prefix. | 
| **var.wan_validation_signed_message** | string | False | -  |  The signed base64-encoded authorization message, which will be sent to Microsoft for WAN verification. Required when provisioning an IPv4 prefix or IPv6 global prefix. Refer to [Azure documentation](https://learn.microsoft.com/en-us/azure/virtual-network/ip-services/create-custom-ip-address-prefix-cli#certificate-readiness) for more details about the process for your RIR. Changing this forces a new resource to be created. | 
| **var.zones** | string | False | -  |  Specifies a list of Availability Zones in which this Custom IP Prefix should be located. Should not be specified when creating an IPv6 global prefix. Changing this forces a new resource to be created. | 



## Outputs

| Name | Type | Description |
| ---- | ---- | --------- | 
| **name** | string  | - | 
| **location** | string  | - | 
| **resource_group_name** | string  | - | 
| **cidr** | string  | - | 
| **commissioning_enabled** | bool  | - | 
| **internet_advertising_disabled** | bool  | - | 
| **parent_custom_ip_prefix_id** | string  | - | 
| **roa_validity_end_date** | datetime  | - | 
| **tags** | map  | - | 
| **wan_validation_signed_message** | string  | - | 
| **zones** | string  | - | 
| **id** | string  | The ID of the Custom IP Prefix. | 

## Example minimal hclt

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git" 
   path = "network/custom_ip_prefix" 
}

inputs = {
   name = "name of custom_ip_prefix" 
   location = "${location}" 
   resource_group_name = "${resource_group}" 
   cidr = "cidr of custom_ip_prefix" 
}

tfstate_store = {
   storage_account = "${storage_account}" 
   container = "${container}" 
   container_path = "${COMPONENT_PATH}" 
}


```