resource "onelogin_apps_rules" "check" {
  apps_id  = 795681
  position = 1
  enabled  = true
  match    = "all"
  name     = "[Demo]terraform rule"

  conditions {
    operator = "ri"
    source   = "has_role"
    value    = "747943"
  }

  actions {
    action     = "set_username"
    value      = ["member_of"]
  }
}
