module "sandbox_account_01" {
  source = "./modules/aft-account-request"

  control_tower_parameters = {
    AccountEmail              = "hariaws+01+009@gmail.com"
    AccountName               = "sandbox-01"
    ManagedOrganizationalUnit = "Sandbox"
    SSOUserEmail              = "hariaws+01+009@gmail.com"
    SSOUserFirstName          = "hari"
    SSOUserLastName           = "jinka"
  }

  account_tags = {
    "Owner"          = "Hari"
    "Env"            = "Dev"
  }

  change_management_parameters = {
    change_requested_by = "Hariprasad"
    change_reason       = "testing the account vending process"
  }

  custom_fields = {
    custom1 = "a"
    custom2 = "b"
  }

  account_customizations_name = "sandbox"
}
