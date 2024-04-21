local L0_1, L1_1
L0_1 = G
L0_1 = L0_1.StaticClass
L1_1 = "ComplianceUtils"
L0_1 = L0_1(L1_1)
function L1_1()
  local L0_2, L1_2
  L0_2 = L0_1.check_is_vietnam_compliance
  return L0_2()
end
L0_1.check_is_need_compliance = L1_1
function L1_1()
  local L0_2, L1_2
  L0_2 = CS
  L0_2 = L0_2.RPG
  L0_2 = L0_2.Client
  L0_2 = L0_2.PackageStyleCheck
  L1_2 = L0_2
  L0_2 = L0_2.CheckIsVietnamPackage
  return L0_2(L1_2)
end
L0_1.check_is_vietnam_compliance = L1_1
return L0_1
