locals {
  // 組織の部門を定義
  org_departments = {
    100 = { name = "sales" }
    101 = { name = "product" }
    102 = { name = "market" }
  }

  // 契約タイプを定義
  org_contract_types = {
    full_timer = { name = "full" }   // 正社員
    permatemp  = { name = "tmp" }    // 派遣社員
  }

  // 部門リストの生成（中間処理）
  department_list = [
    for key, value in local.org_departments : {
      code = key
      name = value.name
    }
  ]

  // 契約タイプリストの生成（中間処理）
  contract_type_list = [
    for key, value in local.org_contract_types : {
      code = key
      name = value.name
    }
  ]

  // 部門と契約タイプの組み合わせリストを生成
  department_contract_combinations = [
    for pair in setproduct(local.department_list, local.contract_type_list) : {
      department_name   = pair[0].name
      contract_type_name = pair[1].name
      combination_name  = "${pair[0].name}_${pair[1].name}"
    }
  ]
}

# OneLoginロールを定義
resource "onelogin_roles" "department_contract_roles" {
  for_each = {
    for combination in local.department_contract_combinations : combination.combination_name => combination
  }

  name = "${each.value.combination_name}_role"
  users = [
    // ユーザ割り当ては mapping で指定
  ]
  apps   = []
  admins = []
}
