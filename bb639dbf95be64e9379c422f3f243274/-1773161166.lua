local L0_1, L1_1, L2_1
L0_1 = require
L1_1 = "Utilities.ComplianceUtils"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "ComplianceMazePanel"
L2_1 = G
L2_1 = L2_1.BasePanel
L0_1 = L0_1(L1_1, L2_1)
function L1_1(A0_2)
  local L1_2
end
L0_1.ctor = L1_1
function L1_1(A0_2)
  local L1_2
end
L0_1._on_load = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2
  L2_2 = A0_2
  L1_2 = A0_2.set_show
  L3_2 = true
  L1_2(L2_2, L3_2)
end
L0_1.setup_view = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L3_2 = A0_2
  L2_2 = A0_2._set_vietnam_compliance_dialog_show
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
end
L0_1.set_show = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L3_2 = A0_2
  L2_2 = A0_2._set_vietnam_compliance_dialog_show
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
end
L0_1._on_owner_active_change = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = G
  L2_2 = L2_2.ComplianceUtils
  L2_2 = L2_2.check_is_vietnam_compliance
  L2_2 = L2_2()
  if L2_2 then
    L2_2 = CS
    L2_2 = L2_2.RPG
    L2_2 = L2_2.Client
    L2_2 = L2_2.GlobalVars
    L2_2 = L2_2.VietNam18DialogContext
    if L2_2 ~= nil then
      L2_2 = CS
      L2_2 = L2_2.RPG
      L2_2 = L2_2.Client
      L2_2 = L2_2.GlobalVars
      L2_2 = L2_2.VietNam18DialogContext
      L3_2 = L2_2
      L2_2 = L2_2.SetHide
      L4_2 = not A1_2
      L2_2(L3_2, L4_2)
      if A1_2 then
        L2_2 = CS
        L2_2 = L2_2.RPG
        L2_2 = L2_2.Client
        L2_2 = L2_2.GlobalVars
        L2_2 = L2_2.VietNam18DialogContext
        L3_2 = L2_2
        L2_2 = L2_2.Show18
        L4_2 = false
        L2_2(L3_2, L4_2)
      end
    end
  end
end
L0_1._set_vietnam_compliance_dialog_show = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2
  L2_2 = A0_2
  L1_2 = A0_2.set_show
  L3_2 = false
  L1_2(L2_2, L3_2)
end
L0_1._on_unload = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2
  L2_2 = A0_2
  L1_2 = A0_2.set_show
  L3_2 = false
  L1_2(L2_2, L3_2)
end
L0_1._on_dispose = L1_1
return L0_1
