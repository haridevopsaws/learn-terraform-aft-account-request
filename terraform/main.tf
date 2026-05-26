module "sandbox" {
  source = "./modules/aft-account-request"

  control_tower_parameters = {
    AccountEmail              = "hariawscorp008@gmail.com"
    AccountName               = "US-Eisai-sandbox-aft-account1"
    ManagedOrganizationalUnit = "Sandbox"
    SSOUserEmail              = "hariawscorp008@gmail.com"
    SSOUserFirstName          = "hari"
    SSOUserLastName           = "awscorp008"
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
    create_vpc = "true"
  }

  account_customizations_name = "sandbox"
}
