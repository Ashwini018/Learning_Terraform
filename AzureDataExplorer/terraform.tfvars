resource_group_name = "terraform_plan"

clusters = {
  adxtesting01 = {
    location    = "East US"
    databases   = ["testDb01", "testDB02"]
    sku         = "Dev(No SLA)_Standard_E2a_v4"
    Environment = "Test"
    capacity    = 1
  }
  adxtesting02 = {
    location    = "East US"
    databases   = ["testDb01", "testDB02", "testDB03"]
    sku         = "Dev(No SLA)_Standard_E2a_v4"
    Environment = "Test"
    capacity    = 1
  }
  adxtesting03 = {
    location    = "East US"
    databases   = ["testDb01", "testDB02", "testDB03", "testDB04"]
    sku         = "Dev(No SLA)_Standard_E2a_v4"
    Environment = "Test"
    capacity    = 1
  }
}

