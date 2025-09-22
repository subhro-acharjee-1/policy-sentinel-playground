# sentinel {
#   features = {
#     apply-all = true
#     terraform = true
#   }
# }

import "plugin" "tfplan/v2" {
  config = {
    "plan_path": "./plan.json"
  }
}

import "module" "report" {
  source = "./modules/report/report.sentinel"
}

import "module" "tfresources" {
  source = "./modules/tfresources/tfresources.sentinel"
}

import "module" "tfplan-functions" {
  source = "./modules/tfplan-functions/tfplan-functions.sentinel"
}

import "module" "tfconfig-functions" {
  source = "./modules/tfconfig-functions/tfconfig-functions.sentinel"
}

policy "s3-name-policy" {
    source="./policies/s3.sentinel"
    enforcement_level = "advisory"
}