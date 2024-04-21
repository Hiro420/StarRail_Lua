local L0_1, L1_1, L2_1
L0_1 = require
L1_1 = "Ui.Mission.MissionTabItemBinder"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "MissionTabItem"
L2_1 = G
L2_1 = L2_1.TabItem
L0_1 = L0_1(L1_1, L2_1)
function L1_1(A0_2, A1_2)
  A0_2._mission_type = A1_2
end
L0_1.set_mission_type = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = A0_2._mission_type
  if L1_2 ~= nil then
    L1_2 = CS
    L1_2 = L1_2.RPG
    L1_2 = L1_2.GameCore
    L1_2 = L1_2.MainMissionTypeConfigExcelTable
    L1_2 = L1_2.GetData
    L2_2 = A0_2._mission_type
    L1_2 = L1_2(L2_2)
    L3_2 = A0_2
    L2_2 = A0_2._async_load_sprite_to
    L4_2 = A0_2._binder
    L4_2 = L4_2.tab_btn_normal_img
    L5_2 = L1_2.TypeIcon
    L2_2(L3_2, L4_2, L5_2)
    L3_2 = A0_2
    L2_2 = A0_2._async_load_sprite_to
    L4_2 = A0_2._binder
    L4_2 = L4_2.tab_btn_select_img
    L5_2 = L1_2.TypeIcon
    L2_2(L3_2, L4_2, L5_2)
    L3_2 = A0_2
    L2_2 = A0_2._bind_red_dot
    L2_2(L3_2)
  end
end
L0_1._on_added = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2.mission_panel
  L2_2 = L1_2
  L1_2 = L1_2.setup_view
  L3_2 = A0_2._mission_type
  L1_2(L2_2, L3_2)
end
L0_1._on_select = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = A0_2._mission_type
  if L1_2 ~= nil then
    L1_2 = A0_2._mission_type
    L2_2 = CS
    L2_2 = L2_2.RPG
    L2_2 = L2_2.GameCore
    L2_2 = L2_2.MainMissionType
    L2_2 = L2_2.None
    if L1_2 == L2_2 then
      L1_2 = G
      L1_2 = L1_2.RedDotModule
      L1_2 = L1_2.Instance
      L2_2 = L1_2
      L1_2 = L1_2.bind_reddot
      L3_2 = "MissionTab_All"
      L4_2 = nil
      L5_2 = A0_2
      L6_2 = A0_2._binder
      L6_2 = L6_2.tab_red_dot
      L1_2(L2_2, L3_2, L4_2, L5_2, L6_2)
    else
      L1_2 = G
      L1_2 = L1_2.RedDotModule
      L1_2 = L1_2.Instance
      L2_2 = L1_2
      L1_2 = L1_2.bind_reddot
      L3_2 = CS
      L3_2 = L3_2.RPG
      L3_2 = L3_2.StrUtils
      L3_2 = L3_2.Format
      L4_2 = "MissionTab_{0}"
      L5_2 = A0_2._mission_type
      L5_2 = #L5_2
      L3_2 = L3_2(L4_2, L5_2)
      L4_2 = nil
      L5_2 = A0_2
      L6_2 = A0_2._binder
      L6_2 = L6_2.tab_red_dot
      L1_2(L2_2, L3_2, L4_2, L5_2, L6_2)
    end
  end
end
L0_1._bind_red_dot = L1_1
return L0_1
