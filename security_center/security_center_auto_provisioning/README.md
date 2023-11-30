# azurerm_security_center_auto_provisioning

Enables or disables the Security Center Auto Provisioning feature for the subscription~> **NOTE:** There is no resource name required, it will always be "default"

## Example minimal component.hclt

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git" 
   path = "security_center/security_center_auto_provisioning" 
}

inputs = {
   auto_provision = "auto_provision of security_center_auto_provisioning" 
}

tfstate_store = {
   storage_account = "${storage_account}" 
   container = "${container}" 
   container_path = "${COMPONENT_PATH}" 
}

```

## Required Variables

| Name | Type |  possible values |  Description |
| ---- | --------- |  ----------- | ----------- |
| **var.auto_provision** | string  `On`, `Off`  |  Should the security agent be automatically provisioned on Virtual Machines in this subscription? Possible values are `On` (to install the security agent automatically, if it's missing) or `Off` (to not install the security agent automatically). | 



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **id** | string | No  | The ID of the Security Center Auto Provisioning. | 

Additionally, all variables are provided as outputs.
