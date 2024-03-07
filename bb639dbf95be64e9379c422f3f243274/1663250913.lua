local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1, L6_1, L7_1
L0_1 = require
L1_1 = "Ui.Monster.MonsterDialogBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Common.ItemIconPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Common.ItemIconPanelBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Monster.MonsterIconRowPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Monster.MonsterIconRowPanelBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Monster.MonsterOutBuffListPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Monster.MonsterOutBuffListPanelBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Monster.MonsterSkillListPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Monster.MonsterSkillListPanelBinder"
L0_1(L1_1)
L0_1 = CS
L0_1 = L0_1.RPG
L0_1 = L0_1.GameCore
L0_1 = L0_1.StageExcelTable
L1_1 = CS
L1_1 = L1_1.RPG
L1_1 = L1_1.GameCore
L1_1 = L1_1.MonsterExcelTable
L2_1 = CS
L2_1 = L2_1.RPG
L2_1 = L2_1.GameCore
L2_1 = L2_1.MonsterTemplateExcelTable
L3_1 = "List01"
L4_1 = "List02"
L5_1 = G
L5_1 = L5_1.Class
L6_1 = "MonsterDialog"
L7_1 = G
L7_1 = L7_1.UIController
L5_1 = L5_1(L6_1, L7_1)
function L6_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = G
  L1_2 = L1_2.ImportCsToLua
  L1_2 = L1_2.CS_RPG_Client_UILayer_Page
  A0_2._ui_layer = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._create_binder
  L3_2 = G
  L3_2 = L3_2.MonsterDialogBinder
  L1_2 = L1_2(L2_2, L3_2)
  A0_2._binder = L1_2
  A0_2._pause_game = true
  A0_2._show_monster_detail = false
  A0_2._need_change_mouse = true
end
L5_1.ctor = L6_1
function L6_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  A0_2._cur_monster_ID = nil
  A0_2._game_entity = A1_2
  L3_2 = A0_2
  L2_2 = A0_2._gen_modifier_table
  L4_2 = A1_2
  L2_2 = L2_2(L3_2, L4_2)
  A0_2._modifier_list = L2_2
  L3_2 = A0_2
  L2_2 = A0_2._get_stage_row
  L4_2 = A1_2
  L2_2 = L2_2(L3_2, L4_2)
  A0_2._stage_row = L2_2
  L4_2 = A0_2
  L3_2 = A0_2._refresh_monster_table
  L5_2 = L2_2
  L3_2(L4_2, L5_2)
  L4_2 = A0_2
  L3_2 = A0_2._refresh_reward_table
  L5_2 = L2_2
  L3_2(L4_2, L5_2)
end
L5_1.init = L6_1
function L6_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2
  L3_2 = A1_2
  L2_2 = A1_2.GetComponent
  L4_2 = typeof
  L5_2 = CS
  L5_2 = L5_2.RPG
  L5_2 = L5_2.GameCore
  L5_2 = L5_2.AdventureAbilityComponent
  L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2 = L4_2(L5_2)
  L2_2 = L2_2(L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2)
  if L2_2 == nil then
    L3_2 = nil
    return L3_2
  end
  L3_2 = {}
  L4_2 = L2_2.ModifierCount
  L5_2 = 0
  L6_2 = L4_2 - 1
  L7_2 = 1
  for L8_2 = L5_2, L6_2, L7_2 do
    L10_2 = L2_2
    L9_2 = L2_2.GetModifierByIndex
    L11_2 = L8_2
    L9_2 = L9_2(L10_2, L11_2)
    L10_2 = L9_2.State
    L11_2 = CS
    L11_2 = L11_2.RPG
    L11_2 = L11_2.GameCore
    L11_2 = L11_2.ModifierState
    L11_2 = L11_2.Alive
    if L10_2 == L11_2 then
      L10_2 = L9_2.BuffID
      if L10_2 ~= 0 then
        L10_2 = table
        L10_2 = L10_2.insert
        L11_2 = L3_2
        L12_2 = L9_2
        L10_2(L11_2, L12_2)
      end
    end
  end
  return L3_2
end
L5_1._gen_modifier_table = L6_1
function L6_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L3_2 = A1_2
  L2_2 = A1_2.GetComponent
  L4_2 = typeof
  L5_2 = CS
  L5_2 = L5_2.RPG
  L5_2 = L5_2.GameCore
  L5_2 = L5_2.NPCComponent
  L4_2, L5_2 = L4_2(L5_2)
  L2_2 = L2_2(L3_2, L4_2, L5_2)
  if L2_2 == nil then
    L3_2 = nil
    return L3_2
  end
  L4_2 = L2_2
  L3_2 = L2_2.GetStageID
  L3_2 = L3_2(L4_2)
  L4_2 = L0_1.GetData
  L5_2 = L3_2
  return L4_2(L5_2)
end
L5_1._get_stage_row = L6_1
function L6_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2
  L2_2 = {}
  A0_2._monster_table = L2_2
  if A1_2 == nil then
    return
  end
  L2_2 = A1_2.MonsterList
  if L2_2 == nil then
    return
  end
  L3_2 = 0
  L4_2 = L2_2.Length
  L4_2 = L4_2 - 1
  L5_2 = 1
  for L6_2 = L3_2, L4_2, L5_2 do
    L7_2 = L2_2[L6_2]
    L9_2 = L7_2
    L8_2 = L7_2.ToList
    L8_2 = L8_2(L9_2)
    L9_2 = 0
    L10_2 = L8_2.Count
    L10_2 = L10_2 - 1
    L11_2 = 1
    for L12_2 = L9_2, L10_2, L11_2 do
      L13_2 = table
      L13_2 = L13_2.insert
      L14_2 = A0_2._monster_table
      L15_2 = L8_2[L12_2]
      L13_2(L14_2, L15_2)
    end
  end
  L3_2 = A0_2._monster_table
  L3_2 = #L3_2
  if 0 < L3_2 then
    L3_2 = A0_2._monster_table
    L3_2 = L3_2[1]
    A0_2._cur_monster_ID = L3_2
    A0_2._cur_monster_index = 1
  end
end
L5_1._refresh_monster_table = L6_1
function L6_1(A0_2, A1_2)
  local L2_2
  L2_2 = {}
  A0_2._reward_table = L2_2
end
L5_1._refresh_reward_table = L6_1
function L6_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L1_2 = G
  L1_2 = L1_2.ComponentExtensions
  L1_2 = L1_2.SafeSetActive
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_switch_btn
  L3_2 = false
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_exit
  L4_2 = A0_2._on_btn_exit
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_switch
  L4_2 = A0_2._on_btn_swicth
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.scroll_monster_list
  L2_2 = L1_2
  L1_2 = L1_2.SafeInitListView
  L3_2 = 0
  L4_2 = A0_2._on_monster_item_change
  L5_2 = nil
  L6_2 = A0_2
  L1_2(L2_2, L3_2, L4_2, L5_2, L6_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.scroll_reward_list
  L2_2 = L1_2
  L1_2 = L1_2.SafeInitGridView
  L3_2 = 0
  L4_2 = A0_2._on_reawrd_item_change
  L5_2 = nil
  L6_2 = nil
  L7_2 = A0_2
  L1_2(L2_2, L3_2, L4_2, L5_2, L6_2, L7_2)
  L2_2 = A0_2
  L1_2 = A0_2.create_panel
  L3_2 = G
  L3_2 = L3_2.MonsterOutBuffListPanel
  L4_2 = G
  L4_2 = L4_2.MonsterOutBuffListPanelBinder
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2._buff_list_panel = L1_2
  L1_2 = A0_2._buff_list_panel
  L2_2 = L1_2
  L1_2 = L1_2.bind
  L3_2 = A0_2._binder
  L3_2 = L3_2.node_monster_buff_list
  L1_2(L2_2, L3_2)
end
L5_1._on_load = L6_1
function L6_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2._refresh
  L1_2(L2_2)
end
L5_1._setup_view = L6_1
function L6_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L4_2 = A1_2
  L3_2 = A1_2.NewListViewItem
  L5_2 = 0
  L3_2 = L3_2(L4_2, L5_2)
  L4_2 = L3_2.UserObjectData
  if L4_2 == nil then
    L6_2 = A0_2
    L5_2 = A0_2.create_panel
    L7_2 = G
    L7_2 = L7_2.MonsterIconRowPanel
    L8_2 = G
    L8_2 = L8_2.MonsterIconRowPanelBinder
    L5_2 = L5_2(L6_2, L7_2, L8_2)
    L4_2 = L5_2
    L6_2 = L4_2
    L5_2 = L4_2.bind
    L7_2 = L3_2.transform
    L5_2(L6_2, L7_2)
    L3_2.UserObjectData = L4_2
  end
  L5_2 = A0_2._monster_table
  L6_2 = A2_2 + 1
  L5_2 = L5_2[L6_2]
  L7_2 = L4_2
  L6_2 = L4_2.setup_view
  L8_2 = L5_2
  L6_2(L7_2, L8_2)
  L7_2 = L4_2
  L6_2 = L4_2.set_selected
  L8_2 = A0_2._cur_monster_index
  L9_2 = A2_2 + 1
  L8_2 = L8_2 == L9_2
  L6_2(L7_2, L8_2)
  L7_2 = L4_2
  L6_2 = L4_2.bind_click
  L8_2 = A0_2
  L9_2 = A0_2._click_monster_icon
  L10_2 = A2_2 + 1
  L6_2(L7_2, L8_2, L9_2, L10_2)
  return L3_2
end
L5_1._on_monster_item_change = L6_1
function L6_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L4_2 = A1_2
  L3_2 = A1_2.NewListViewItem
  L5_2 = 0
  L3_2 = L3_2(L4_2, L5_2)
  L4_2 = L3_2.UserObjectData
  if L4_2 == nil then
    L6_2 = A0_2
    L5_2 = A0_2.create_panel
    L7_2 = G
    L7_2 = L7_2.ItemIconPanel
    L8_2 = G
    L8_2 = L8_2.ItemIconPanelBinder
    L5_2 = L5_2(L6_2, L7_2, L8_2)
    L4_2 = L5_2
    L6_2 = L4_2
    L5_2 = L4_2.bind
    L7_2 = L3_2.transform
    L5_2(L6_2, L7_2)
    L3_2.UserObjectData = L4_2
  end
  L5_2 = A0_2._reward_table
  L6_2 = A2_2 + 1
  L5_2 = L5_2[L6_2]
  L7_2 = L4_2
  L6_2 = L4_2.setup_view
  L8_2 = L5_2
  L6_2(L7_2, L8_2)
  return L3_2
end
L5_1._on_reawrd_item_change = L6_1
function L6_1(A0_2)
  local L1_2, L2_2
  L1_2 = G
  L1_2 = L1_2.SuperScrollViewUtils
  L1_2 = L1_2.DisposeGrid
  L2_2 = A0_2._binder
  L2_2 = L2_2.scroll_reward_list
  L1_2(L2_2)
  A0_2._cur_monster_ID = nil
  A0_2._cur_monster_index = nil
  A0_2._game_entity = nil
  A0_2._modifier_list = nil
  A0_2._stage_row = false
end
L5_1._on_dispose = L6_1
function L6_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2
  A0_2._cur_monster_ID = A1_2
  A0_2._cur_monster_index = A2_2
  L4_2 = A0_2
  L3_2 = A0_2._refresh_cur_monster_info
  L3_2(L4_2)
  L4_2 = A0_2
  L3_2 = A0_2._refresh_monster_list
  L3_2(L4_2)
end
L5_1._click_monster_icon = L6_1
function L6_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2._refresh_monster_list
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._refresh_cur_monster_info
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._refresh_buff_list
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._refresh_reward_list
  L1_2(L2_2)
end
L5_1._refresh = L6_1
function L6_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L1_2 = L1_1.GetData
  L2_2 = A0_2._cur_monster_ID
  L1_2 = L1_2(L2_2)
  L2_2 = L2_1.GetData
  L3_2 = L1_2.MonsterTemplateID
  L2_2 = L2_2(L3_2)
  L3_2 = G
  L3_2 = L3_2.TextExtensions
  L3_2 = L3_2.SafeSetTextID
  L4_2 = A0_2._binder
  L4_2 = L4_2.text_name
  L5_2 = L2_2.MonsterName
  L3_2(L4_2, L5_2)
  L3_2 = L1_2.Level
  if nil == L3_2 or L3_2 == 0 then
    L4_2 = A0_2._stage_row
    L3_2 = L4_2.Level
  end
  L4_2 = "UIText_Monster_LevelHint"
  L5_2 = A0_2._binder
  L5_2 = L5_2.text_level
  L6_2 = L5_2
  L5_2 = L5_2.SafeSetTextID
  L7_2 = L4_2
  L8_2 = "Lv."
  L9_2 = L3_2
  L5_2(L6_2, L7_2, L8_2, L9_2)
end
L5_1._refresh_cur_monster_info = L6_1
function L6_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.scroll_monster_list
  L2_2 = L1_2
  L1_2 = L1_2.SetListItemCount
  L3_2 = A0_2._monster_table
  L3_2 = #L3_2
  L4_2 = true
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.scroll_monster_list
  L2_2 = L1_2
  L1_2 = L1_2.RefreshAllShownItem
  L1_2(L2_2)
end
L5_1._refresh_monster_list = L6_1
function L6_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._modifier_list
  if nil ~= L1_2 then
    L1_2 = A0_2._buff_list_panel
    L2_2 = L1_2
    L1_2 = L1_2.setup_view
    L3_2 = A0_2._modifier_list
    L1_2(L2_2, L3_2)
  end
end
L5_1._refresh_buff_list = L6_1
function L6_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.scroll_reward_list
  L2_2 = L1_2
  L1_2 = L1_2.SetListItemCount
  L3_2 = A0_2._reward_table
  L3_2 = #L3_2
  L4_2 = true
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.scroll_reward_list
  L2_2 = L1_2
  L1_2 = L1_2.RefreshAllShownItem
  L1_2(L2_2)
end
L5_1._refresh_reward_list = L6_1
function L6_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2.exit
  L1_2(L2_2)
end
L5_1._on_btn_exit = L6_1
function L6_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._show_monster_detail
  L1_2 = not L1_2
  A0_2._show_monster_detail = L1_2
  L1_2 = G
  L1_2 = L1_2.ComponentExtensions
  L1_2 = L1_2.SafeSetActive
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_list01
  L3_2 = A0_2._show_monster_detail
  L3_2 = not L3_2
  L1_2(L2_2, L3_2)
  L1_2 = G
  L1_2 = L1_2.ComponentExtensions
  L1_2 = L1_2.SafeSetActive
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_list02
  L3_2 = A0_2._show_monster_detail
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._show_monster_detail
  if L1_2 then
    L1_2 = A0_2._binder
    L1_2 = L1_2.node_animation
    L2_2 = L1_2
    L1_2 = L1_2.Play
    L3_2 = L3_1
    L1_2(L2_2, L3_2)
    L1_2 = A0_2._skill_list_panel
    L2_2 = L1_2
    L1_2 = L1_2.setup_view
    L3_2 = A0_2._cur_monster_ID
    L1_2(L2_2, L3_2)
  else
    L1_2 = A0_2._binder
    L1_2 = L1_2.node_animation
    L2_2 = L1_2
    L1_2 = L1_2.Play
    L3_2 = L4_1
    L1_2(L2_2, L3_2)
  end
end
L5_1._on_btn_swicth = L6_1
return L5_1
