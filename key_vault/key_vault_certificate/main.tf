

resource "azurerm_key_vault_certificate" "this" {

  ########################################
  # required vars
  ########################################
  name         = var.name
  key_vault_id = var.key_vault_id

  ########################################
  # optional vars
  ########################################

  dynamic "certificate" { # var.certificate
    for_each = var.certificate != null ? var.certificate : []
    content {
      contents = lookup(certificate.value, "contents") # (Required) 
      password = lookup(certificate.value, "password", null)
    }
  }


  dynamic "certificate_policy" { # var.certificate_policy
    for_each = var.certificate_policy != null ? var.certificate_policy : []
    content {

      dynamic "issuer_parameters" { # certificate_policy.value.issuer_parameters
        for_each = certificate_policy.value.issuer_parameters != null ? certificate_policy.value.issuer_parameters : []
        content {
          name = issuer_parameters.key
        }
      }


      dynamic "key_properties" { # certificate_policy.value.key_properties
        for_each = certificate_policy.value.key_properties != null ? certificate_policy.value.key_properties : []
        content {
          curve      = lookup(key_properties.value, "curve", null)
          exportable = lookup(key_properties.value, "exportable") # (Required) 
          key_size   = lookup(key_properties.value, "key_size", null)
          key_type   = lookup(key_properties.value, "key_type")  # (Required) possible values: EC | EC-HSM | RSA | RSA-HSM | oct
          reuse_key  = lookup(key_properties.value, "reuse_key") # (Required) 
        }
      }


      dynamic "lifetime_action" { # certificate_policy.value.lifetime_action
        for_each = certificate_policy.value.lifetime_action != null ? certificate_policy.value.lifetime_action : []
        content {

          dynamic "action" { # lifetime_action.value.action
            for_each = lifetime_action.value.action != null ? lifetime_action.value.action : []
            content {
              action_type = lookup(action.value, "action_type") # (Required) possible values: AutoRenew | EmailContacts
            }
          }


          dynamic "trigger" { # lifetime_action.value.trigger
            for_each = lifetime_action.value.trigger != null ? lifetime_action.value.trigger : []
            content {
              days_before_expiry  = lookup(trigger.value, "days_before_expiry", null)
              lifetime_percentage = lookup(trigger.value, "lifetime_percentage", null)
            }
          }

        }
      }


      dynamic "secret_properties" { # certificate_policy.value.secret_properties
        for_each = certificate_policy.value.secret_properties != null ? certificate_policy.value.secret_properties : []
        content {
          content_type = lookup(secret_properties.value, "content_type") # (Required) 
        }
      }


      dynamic "x509_certificate_properties" { # certificate_policy.value.x509_certificate_properties
        for_each = certificate_policy.value.x509_certificate_properties != null ? certificate_policy.value.x509_certificate_properties : []
        content {
          extended_key_usage = lookup(x509_certificate_properties.value, "extended_key_usage", null)
          key_usage          = lookup(x509_certificate_properties.value, "key_usage") # (Required) possible values: cRLSign | dataEncipherment | decipherOnly | digitalSignature | encipherOnly | keyAgreement | keyCertSign | keyEncipherment | nonRepudiation
          subject            = lookup(x509_certificate_properties.value, "subject")   # (Required) 

          dynamic "subject_alternative_names" { # x509_certificate_properties.value.subject_alternative_names
            for_each = x509_certificate_properties.value.subject_alternative_names != null ? x509_certificate_properties.value.subject_alternative_names : []
            content {
              dns_names = lookup(subject_alternative_names.value, "dns_names", null)
              emails    = lookup(subject_alternative_names.value, "emails", null)
              upns      = lookup(subject_alternative_names.value, "upns", null)
            }
          }

          validity_in_months = lookup(x509_certificate_properties.value, "validity_in_months") # (Required) 
        }
      }

    }
  }

  tags = var.tags
}
