# azurerm_key_vault_certificate

Manages a Key Vault Certificate.~> **Note:** The Azure Provider includes a Feature Toggle which will purge a Key Vault Certificate resource on destroy, rather than the default soft-delete. See [`purge_soft_deleted_certificates_on_destroy`](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/guides/features-block#purge_soft_deleted_certificates_on_destroy) for more information.

## Example `component.hclt`

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git"   
   path = "key_vault/key_vault_certificate"   
}

inputs = {
   name = "Specifies the name of the Key Vault Certificate"   
   # key_vault_id → set in component_inputs
}

component_inputs = {
   key_vault_id = "path/to/key_vault_component:id"   
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
| **name** | string |  Specifies the name of the Key Vault Certificate. Changing this forces a new resource to be created. | 
| **key_vault_id** | string |  The ID of the Key Vault where the Certificate should be created. Changing this forces a new resource to be created. | 

## Optional Variables

| Name | Type |  Description |
| ---- | --------- |  ----------- |
| **certificate** | [block](#certificate-block-structure) |  A `certificate` block, used to Import an existing certificate. Changing this will create a new version of the Key Vault Certificate. | 
| **certificate_policy** | [block](#certificate_policy-block-structure) |  A `certificate_policy` block. Changing this will create a new version of the Key Vault Certificate. | 
| **tags** | map |  A mapping of tags to assign to the resource. | 

### `secret_properties` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `content_type` | string | Yes | - | The Content-Type of the Certificate, such as 'application/x-pkcs12' for a PFX or 'application/x-pem-file' for a PEM. |

### `x509_certificate_properties` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `extended_key_usage` | list | No | - | A list of Extended/Enhanced Key Usages. |
| `key_usage` | string | Yes | - | A list of uses associated with this Key. Possible values include 'cRLSign', 'dataEncipherment', 'decipherOnly', 'digitalSignature', 'encipherOnly', 'keyAgreement', 'keyCertSign', 'keyEncipherment' and 'nonRepudiation' and are case-sensitive. |
| `subject` | string | Yes | - | The Certificate's Subject. |
| `subject_alternative_names` | [block](#subject_alternative_names-block-structure) | No | - | A 'subject_alternative_names' block. |
| `validity_in_months` | string | Yes | - | The Certificates Validity Period in Months. |

### `certificate` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `contents` | string | Yes | - | The base64-encoded certificate contents. |
| `password` | string | No | - | The password associated with the certificate. |

### `certificate_policy` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `issuer_parameters` | [block](#issuer_parameters-block-structure) | Yes | - | A 'issuer_parameters' block. |
| `key_properties` | [block](#key_properties-block-structure) | Yes | - | A 'key_properties' block. |
| `lifetime_action` | [block](#lifetime_action-block-structure) | No | - | A 'lifetime_action' block. |
| `secret_properties` | [block](#secret_properties-block-structure) | Yes | - | A 'secret_properties' block. |
| `x509_certificate_properties` | [block](#x509_certificate_properties-block-structure) | No | - | A 'x509_certificate_properties' block. Required when 'certificate' block is not specified. |

### `subject_alternative_names` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `dns_names` | list | No | - | A list of alternative DNS names (FQDNs) identified by the Certificate. |
| `emails` | list | No | - | A list of email addresses identified by this Certificate. |
| `upns` | list | No | - | A list of User Principal Names identified by the Certificate. |

### `action` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `action_type` | string | Yes | - | The Type of action to be performed when the lifetime trigger is triggerec. Possible values include 'AutoRenew' and 'EmailContacts'. |

### `lifetime_action` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `action` | [block](#action-block-structure) | Yes | - | A 'action' block. |
| `trigger` | [block](#trigger-block-structure) | Yes | - | A 'trigger' block. |

### `issuer_parameters` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `name` | string | Yes | - | The name of the Certificate Issuer. Possible values include 'Self' (for self-signed certificate), or 'Unknown' (for a certificate issuing authority like 'Let's Encrypt' and Azure direct supported ones). |

### `trigger` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `days_before_expiry` | number | No | - | The number of days before the Certificate expires that the action associated with this Trigger should run. Conflicts with 'lifetime_percentage'. |
| `lifetime_percentage` | string | No | - | The percentage at which during the Certificates Lifetime the action associated with this Trigger should run. Conflicts with 'days_before_expiry'. |

### `key_properties` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `curve` | string | No | - | Specifies the curve to use when creating an 'EC' key. Possible values are 'P-256', 'P-256K', 'P-384', and 'P-521'. This field will be required in a future release if 'key_type' is 'EC' or 'EC-HSM'. |
| `exportable` | bool | Yes | - | Is this certificate exportable? |
| `key_size` | string | No | - | The size of the key used in the certificate. Possible values include '2048', '3072', and '4096' for 'RSA' keys, or '256', '384', and '521' for 'EC' keys. This property is required when using RSA keys. |
| `key_type` | string | Yes | - | Specifies the type of key. Possible values are 'EC', 'EC-HSM', 'RSA', 'RSA-HSM' and 'oct'. |
| `reuse_key` | bool | Yes | - | Is the key reusable? |



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **id** | string | No  | The Key Vault Certificate ID. | 
| **secret_id** | string | No  | The ID of the associated Key Vault Secret. | 
| **version** | string | No  | The current version of the Key Vault Certificate. | 
| **versionless_id** | string | No  | The Base ID of the Key Vault Certificate. | 
| **versionless_secret_id** | string | No  | The Base ID of the Key Vault Secret. | 
| **certificate_data** | string | No  | The raw Key Vault Certificate data represented as a hexadecimal string. | 
| **certificate_data_base64** | string | No  | The Base64 encoded Key Vault Certificate data. | 
| **thumbprint** | string | No  | The X509 Thumbprint of the Key Vault Certificate represented as a hexadecimal string. | 
| **certificate_attribute** | block | No  | A `certificate_attribute` block. | 
| **resource_manager_id** | string | No  | The (Versioned) ID for this Key Vault Certificate. This property points to a specific version of a Key Vault Certificate, as such using this won't auto-rotate values if used in other Azure Services. | 
| **resource_manager_versionless_id** | string | No  | The Versionless ID of the Key Vault Certificate. This property allows other Azure Services (that support it) to auto-rotate their value when the Key Vault Certificate is updated. | 
| **created** | string | No  | The create time of the Key Vault Certificate. | 
| **enabled** | bool | No  | whether the Key Vault Certificate is enabled. | 
| **expires** | string | No  | The expires time of the Key Vault Certificate. | 
| **not_before** | string | No  | The not before valid time of the Key Vault Certificate. | 
| **recovery_level** | string | No  | The deletion recovery level of the Key Vault Certificate. | 
| **updated** | string | No  | The recent update time of the Key Vault Certificate. | 

Additionally, all variables are provided as outputs.
