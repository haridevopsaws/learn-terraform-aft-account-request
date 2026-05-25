module "sandbox" {
  source = "./modules/aft-account-request"

  control_tower_parameters = {
    AccountEmail              = "hariawscorp3579@gmail.com"
    AccountName               = "Eisai-sandbox-aft"
    ManagedOrganizationalUnit = "Sandbox"
    SSOUserEmail              = "hariawscorp3579@gmail.com"
    SSOUserFirstName          = "hari"
    SSOUserLastName           = "eisai"
  }

  account_tags = {
    "Owner"          = "Hariprasad"
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
