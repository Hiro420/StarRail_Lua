local L0_1, L1_1, L2_1
L0_1 = require
L1_1 = "Ui.Monster.CommonBossIconPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Monster.CommonBossIconPanelBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Utilities.RaidUtils"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "FarmRelicPanel"
L2_1 = G
L2_1 = L2_1.BasePanel
L0_1 = L0_1(L1_1, L2_1)
function L1_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.panel_monster
  L2_2 = L1_2
  L1_2 = L1_2.get_first_selected_object
  L1_2 = L1_2(L2_2)
  if not L1_2 then
    L1_2 = A0_2._binder
    L1_2 = L1_2.panel_reward
    L2_2 = L1_2
    L1_2 = L1_2.get_first_selected_object
    L1_2 = L1_2(L2_2)
  end
  return L1_2
end
L0_1.get_first_selected_object = L1_1
function L1_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.panel_reward
  L2_2 = L1_2
  L1_2 = L1_2.get_first_selected_item
  return L1_2(L2_2)
end
L0_1.get_first_reward_item = L1_1
function L1_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.panel_monster
  L2_2 = L1_2
  L1_2 = L1_2.get_first_selected_item
  return L1_2(L2_2)
end
L0_1.get_first_monster_item = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  if A1_2 == nil then
    return
  end
  A0_2._row = A1_2
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.GameCore
  L2_2 = L2_2.MappingInfoExcelTable
  L2_2 = L2_2.GetData
  L3_2 = A0_2._row
  L3_2 = L3_2.MappingInfoID
  L4_2 = A0_2._row
  L4_2 = L4_2.WorldLevel
  L2_2 = L2_2(L3_2, L4_2)
  A0_2._mapping_info_row = L2_2
  L3_2 = A0_2
  L2_2 = A0_2._refresh
  L2_2(L3_2)
end
L0_1.setup_view = L1_1
function L1_1(A0_2)
  local L1_2
  L1_2 = A0_2._mapping_info_row
  L1_2 = L1_2.Name
  return L1_2
end
L0_1.get_name = L1_1
function L1_1(A0_2)
  local L1_2, L2_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.GameCore
  L1_2 = L1_2.StageExcelTable
  L1_2 = L1_2.GetData
  L2_2 = A0_2._row
  L2_2 = L2_2.StageIDList
  L2_2 = L2_2[0]
  L1_2 = L1_2(L2_2)
  if L1_2 ~= nil then
    L2_2 = L1_2.Level
    if L2_2 then
      goto lbl_16
    end
  end
  L2_2 = nil
  ::lbl_16::
  return L2_2
end
L0_1._get_show_monster_level = L1_1
function L1_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2._setup_monster
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._setup_reward
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._setup_environment
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._setup_navigation_between_monster_and_reward
  L1_2(L2_2)
  L1_2 = CS
  L1_2 = L1_2.UnityEngine
  L1_2 = L1_2.UI
  L1_2 = L1_2.LayoutRebuilder
  L1_2 = L1_2.ForceRebuildLayoutImmediate
  L2_2 = A0_2._binder
  L2_2 = L2_2.root
  L1_2(L2_2)
end
L0_1._refresh = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.panel_monster
  L2_2 = L1_2
  L1_2 = L1_2.setup_view
  L3_2 = A0_2._mapping_info_row
  L3_2 = L3_2.ShowMonsterList
  L4_2 = A0_2._row
  L4_2 = L4_2.StageIDList
  L4_2 = L4_2[0]
  L1_2(L2_2, L3_2, L4_2)
end
L0_1._setup_monster = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.panel_reward
  L2_2 = L1_2
  L1_2 = L1_2.setup_view
  L3_2 = A0_2._mapping_info_row
  L3_2 = L3_2.DisplayItemList
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.panel_reward
  L2_2 = L1_2
  L1_2 = L1_2.setup_double_view
  L3_2 = A0_2._row
  L3_2 = L3_2.ID
  L1_2(L2_2, L3_2)
end
L0_1._setup_reward = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = A0_2._row
  L1_2 = L1_2.BuffDesc
  L1_2 = A0_2._row
  L1_2 = L1_2.BuffDesc
  L2_2 = L1_2
  L1_2 = L1_2.IsEmpty
  L1_2 = L1_2(L2_2)
  L1_2 = L1_2 ~= nil and L1_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.env_buff_panel
  L3_2 = L2_2
  L2_2 = L2_2.safe_set_active
  L4_2 = L1_2
  L2_2(L3_2, L4_2)
  if L1_2 then
    L2_2 = A0_2._binder
    L2_2 = L2_2.env_buff_panel
    L3_2 = L2_2
    L2_2 = L2_2.setup_view
    L4_2 = A0_2._row
    L4_2 = L4_2.BuffDesc
    L5_2 = G
    L5_2 = L5_2.UITextUtils
    L5_2 = L5_2.GetSkillParams
    L6_2 = A0_2._row
    L6_2 = L6_2.ParamList
    L5_2, L6_2 = L5_2(L6_2)
    L2_2(L3_2, L4_2, L5_2, L6_2)
  end
end
L0_1._setup_environment = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.panel_monster
  L2_2 = L1_2
  L1_2 = L1_2.get_all_monster_btns
  L1_2 = L1_2(L2_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.panel_reward
  L3_2 = L2_2
  L2_2 = L2_2.get_all_reward_btns
  L2_2 = L2_2(L3_2)
  L3_2 = {}
  L3_2[1] = L1_2
  L3_2[2] = L2_2
  L4_2 = G
  L4_2 = L4_2.UIUtils
  L4_2 = L4_2.setup_multi_line_navigation
  L5_2 = L3_2
  L4_2(L5_2)
end
L0_1._setup_navigation_between_monster_and_reward = L1_1
return L0_1
