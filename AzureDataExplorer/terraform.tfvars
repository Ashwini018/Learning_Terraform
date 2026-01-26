resource_group_name = "terraform_Test"

clusters = {
  adxtest01 = {
    location    = "East US"
    databases   = ["testDb01", "testDB02"]
    sku         = "Dev(No SLA)_Standard_E2a_v4"
    Environment = "Test"
    capacity    = 2
  }
  adxtest02 = {
    location    = "East US"
    databases   = ["testDb01", "testDB02"]
    sku         = "Dev(No SLA)_Standard_E2a_v4"
    Environment = "Test"
    capacity    = 2
  }
}

