local L0_1, L1_1, L2_1
L0_1 = require
L1_1 = "Ui.Map.RaidMap.RaidSwitchAreaPage"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "AetherDivideSwitchAreaPage"
L2_1 = G
L2_1 = L2_1.RaidSwitchAreaPage
L0_1 = L0_1(L1_1, L2_1)
function L1_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  if A1_2 == nil then
    L4_2 = CS
    L4_2 = L4_2.RPG
    L4_2 = L4_2.Client
    L4_2 = L4_2.GlobalVars
    L4_2 = L4_2.s_ModuleManager
    L4_2 = L4_2.AetherDivideModule
    L4_2 = L4_2.GymData
    L5_2 = L4_2.CurGymDataItem
    if L5_2 ~= nil then
      L6_2 = L0_1.super
      L6_2 = L6_2.init
      L7_2 = A0_2
      L8_2 = L5_2.EntranceID
      L9_2 = A2_2
      L10_2 = A3_2
      L6_2(L7_2, L8_2, L9_2, L10_2)
      return
    end
  end
  L4_2 = L0_1.super
  L4_2 = L4_2.init
  L5_2 = A0_2
  L6_2 = A1_2
  L7_2 = A2_2
  L8_2 = A3_2
  L4_2(L5_2, L6_2, L7_2, L8_2)
end
L0_1.init = L1_1
function L1_1(A0_2)
  local L1_2, L2_2
  L1_2 = L0_1.super
  L1_2 = L1_2._setup_view
  L2_2 = A0_2
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._setup_aether_divide_view
  L1_2(L2_2)
end
L0_1._setup_view = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_box_count
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = true
  L1_2(L2_2, L3_2)
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.GlobalVars
  L1_2 = L1_2.s_ModuleManager
  L1_2 = L1_2.AetherDivideModule
  L1_2 = L1_2.GymData
  L3_2 = L1_2
  L2_2 = L1_2.GetGymDataItem
  L4_2 = L1_2.CurGymID
  L2_2 = L2_2(L3_2, L4_2)
  if L2_2 ~= nil then
    L3_2 = A0_2._binder
    L3_2 = L3_2.text_page_title
    L4_2 = L3_2
    L3_2 = L3_2.SafeSetTextID
    L5_2 = "UIText_AetherDivide_Activity_Title"
    L3_2(L4_2, L5_2)
    L3_2 = A0_2._binder
    L3_2 = L3_2.text_world_title
    L4_2 = L3_2
    L3_2 = L3_2.SafeSetTextID
    L5_2 = L2_2.Name
    L3_2(L4_2, L5_2)
  end
end
L0_1._setup_aether_divide_view = L1_1
return L0_1
