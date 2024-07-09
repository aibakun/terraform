resource "onelogin_users" "imported_user" {
    activated_at           = "2024-07-09T06:11:53.751Z"
    comment                = null
    company                = "ペンティオ株式会社"
    department             = null
    email                  = "terraform@onelogin.jp"
    firstname              = "test_updated"
    invalid_login_attempts = 0
    lastname               = "terraform"
    phone                  = "08012345678"
    role_ids               = []
    state                  = 0
    status                 = 1
    title                  = null
    updated_at             = "2024-07-09T06:11:53.752Z"
    username               = "test.terraform"
}

resource "onelogin_users" "exported_user1" {
    activated_at           = "2024-07-09T06:11:53.751Z"
    comment                = null
    company                = "ペンティオ株式会社"
    department             = null
    email                  = "exported_user1@onelogin.jp"
    firstname              = "exported_user1"
    invalid_login_attempts = 0
    lastname               = "terraform"
    phone                  = "08012345678"
    role_ids               = []
    state                  = 0
    status                 = 1
    title                  = null
    updated_at             = "2024-07-09T06:11:53.752Z"
    username               = "test.terraform1"
}

resource "onelogin_users" "exported_user2" {
    activated_at           = "2024-07-09T06:11:53.751Z"
    comment                = null
    company                = "ペンティオ株式会社"
    department             = null
    email                  = "exported_user2@onelogin.jp"
    firstname              = "exported_user2"
    invalid_login_attempts = 0
    lastname               = "terraform"
    phone                  = "08012345678"
    role_ids               = [747943]
    state                  = 0
    status                 = 1
    title                  = null
    updated_at             = "2024-07-09T06:11:53.752Z"
    username               = "test.terraform2"
}
