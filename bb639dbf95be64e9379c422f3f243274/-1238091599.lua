local L0_1, L1_1, L2_1, L3_1
L0_1 = require
L1_1 = "Ui.FarmEnemy.FarmDifficultyTabPanelBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.FarmEnemy.FarmDifficultyPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.FarmEnemy.FarmDifficultyPanelBinder"
L0_1(L1_1)
L0_1 = CS
L0_1 = L0_1.RPG
L0_1 = L0_1.Client
L0_1 = L0_1.GlobalVars
L0_1 = L0_1.s_ModuleManager
L0_1 = L0_1.PlayerModule
L1_1 = G
L1_1 = L1_1.Class
L2_1 = "FarmDifficultyTabPanel"
L3_1 = G
L3_1 = L3_1.BasePanel
L1_1 = L1_1(L2_1, L3_1)
function L2_1(A0_2)
  local L1_2
  L1_2 = {}
  A0_2._all_levels = L1_2
  A0_2._unlocked_level = nil
  A0_2._unlocked_index = nil
  A0_2._unique_name = nil
end
L1_1.ctor = L2_1
function L2_1(A0_2)
  local L1_2
end
L1_1._on_dispose = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.GameCore
  L2_2 = L2_2.FarmStageUnlockConfigExcelTable
  L2_2 = L2_2.GetData
  L3_2 = A1_2
  L2_2 = L2_2(L3_2)
  if L2_2 == nil then
    return
  end
  L3_2 = L2_2.UnlockWorldLevelStart
  L4_2 = L2_2.UnlockWorldLevelEnd
  L5_2 = L3_2
  L6_2 = {}
  A0_2._all_levels = L6_2
  L6_2 = 1
  L7_2 = L4_2 - L3_2
  L7_2 = L7_2 + 1
  L8_2 = 1
  for L9_2 = L6_2, L7_2, L8_2 do
    L10_2 = A0_2._all_levels
    L10_2[L9_2] = L5_2
    L5_2 = L5_2 + 1
  end
  L6_2 = math
  L6_2 = L6_2.min
  L7_2 = A0_2._all_levels
  L8_2 = A0_2._all_levels
  L8_2 = #L8_2
  L7_2 = L7_2[L8_2]
  L8_2 = L0_1.PlayerData
  L8_2 = L8_2.WorldLevel
  L6_2 = L6_2(L7_2, L8_2)
  A0_2._unlocked_level = L6_2
  A0_2._unlocked_index = 0
  L6_2 = 1
  L7_2 = A0_2._all_levels
  L7_2 = #L7_2
  L8_2 = 1
  for L9_2 = L6_2, L7_2, L8_2 do
    L10_2 = A0_2._all_levels
    L10_2 = L10_2[L9_2]
    L11_2 = A0_2._unlocked_level
    if L10_2 <= L11_2 then
      L11_2 = A0_2._unlocked_index
      if L9_2 > L11_2 then
        A0_2._unlocked_index = L9_2
      end
    end
  end
end
L1_1.init_data = L2_1
function L2_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2
  L5_2 = A0_2
  L4_2 = A0_2.create_panel_without_binder
  L6_2 = G
  L6_2 = L6_2.TabControl
  L4_2 = L4_2(L5_2, L6_2)
  A0_2._tab_control = L4_2
  L4_2 = A0_2._tab_control
  L5_2 = L4_2
  L4_2 = L4_2.set_tab_btns_root
  L6_2 = A0_2._binder
  L6_2 = L6_2.node_tab_control
  L4_2(L5_2, L6_2)
  A0_2._unique_name = A1_2
  A0_2._select_callback = A2_2
  A0_2._select_handler = A3_2
  L4_2 = G
  L4_2 = L4_2.Utils
  L4_2 = L4_2.get_tab_index
  L5_2 = A0_2._unique_name
  L7_2 = A0_2
  L6_2 = A0_2._get_unlocked_max_level
  L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2 = L6_2(L7_2)
  L4_2 = L4_2(L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2)
  L5_2 = nil
  L6_2 = 1
  L7_2 = A0_2._all_levels
  L7_2 = #L7_2
  L8_2 = 1
  for L9_2 = L6_2, L7_2, L8_2 do
    L10_2 = A0_2._all_levels
    L10_2 = L10_2[L9_2]
    L11_2 = A0_2._unlocked_level
    L11_2 = L10_2 > L11_2
    L13_2 = A0_2
    L12_2 = A0_2.create_panel
    L14_2 = G
    L14_2 = L14_2.FarmDifficultyPanel
    L15_2 = G
    L15_2 = L15_2.FarmDifficultyPanelBinder
    L12_2 = L12_2(L13_2, L14_2, L15_2)
    L14_2 = L12_2
    L13_2 = L12_2.setup_view
    L15_2 = L10_2
    L16_2 = L11_2
    L18_2 = A0_2
    L17_2 = A0_2._get_item_textid
    L19_2 = L9_2
    L17_2, L18_2, L19_2 = L17_2(L18_2, L19_2)
    L13_2(L14_2, L15_2, L16_2, L17_2, L18_2, L19_2)
    L14_2 = L12_2
    L13_2 = L12_2.register_on_select_callback
    L15_2 = A0_2._on_level_select
    L16_2 = A0_2
    L13_2(L14_2, L15_2, L16_2)
    L12_2.button_prefab_index = 0
    L14_2 = L12_2
    L13_2 = L12_2.bind
    L15_2 = A0_2._binder
    L15_2 = L15_2.node_tab_control
    L13_2(L14_2, L15_2)
    L13_2 = A0_2._tab_control
    L14_2 = L13_2
    L13_2 = L13_2.add_item
    L15_2 = L12_2
    L13_2(L14_2, L15_2)
    if L10_2 == L4_2 then
      L5_2 = L9_2
    end
  end
  L6_2 = math
  L6_2 = L6_2.min
  L7_2 = L5_2 or L7_2
  if not L5_2 then
    L7_2 = A0_2._unlocked_index
  end
  L8_2 = A0_2._unlocked_index
  L6_2 = L6_2(L7_2, L8_2)
  L5_2 = L6_2
  if L5_2 == 0 then
    L5_2 = 1
  end
  L6_2 = A0_2._tab_control
  L7_2 = L6_2
  L6_2 = L6_2.update_layout
  L6_2(L7_2)
  L6_2 = A0_2._tab_control
  L7_2 = L6_2
  L6_2 = L6_2.setup_navigation
  L8_2 = NavigationType
  L8_2 = L8_2.Vertical
  L6_2(L7_2, L8_2)
  L6_2 = A0_2._tab_control
  L7_2 = L6_2
  L6_2 = L6_2.click_item_by_uid
  L8_2 = L5_2
  L6_2(L7_2, L8_2)
end
L1_1.init_tab = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = "UIText_Cocoon_WorldLevel_Text_"
  L3_2 = tostring
  L4_2 = A1_2
  L3_2 = L3_2(L4_2)
  L2_2 = L2_2 .. L3_2
  return L2_2
end
L1_1._get_item_textid = L2_1
function L2_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L3_2 = G
  L3_2 = L3_2.Utils
  L3_2 = L3_2.index_of_item
  L4_2 = A0_2._all_levels
  L5_2 = A1_2
  L3_2 = L3_2(L4_2, L5_2)
  A0_2._level_index = L3_2
  L4_2 = A0_2
  L3_2 = A0_2.refresh_position
  L3_2(L4_2)
  L3_2 = G
  L3_2 = L3_2.Utils
  L3_2 = L3_2.invoke_callback
  L4_2 = A0_2._select_callback
  L5_2 = A0_2._select_handler
  L6_2 = A1_2
  L7_2 = A0_2._level_index
  L8_2 = A2_2
  L3_2(L4_2, L5_2, L6_2, L7_2, L8_2)
end
L1_1._on_level_select = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._tab_control
  L1_2 = L1_2.current_select_item
  if L1_2 ~= nil then
    L3_2 = L1_2
    L2_2 = L1_2.force_scrollrect_move
    L2_2(L3_2)
  end
end
L1_1.refresh_position = L2_1
function L2_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._all_levels
  L2_2 = A0_2._unlocked_index
  L1_2 = L1_2[L2_2]
  return L1_2
end
L1_1._get_unlocked_max_level = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L3_2 = A0_2
  L2_2 = A0_2._get_unlocked_max_level
  L2_2 = L2_2(L3_2)
  if A1_2 == L2_2 then
    L2_2 = G
    L2_2 = L2_2.Utils
    L2_2 = L2_2.remove_tab_index_storage
    L3_2 = A0_2._unique_name
    L2_2(L3_2)
  else
    L2_2 = G
    L2_2 = L2_2.Utils
    L2_2 = L2_2.save_tab_index
    L3_2 = A0_2._unique_name
    L4_2 = A1_2
    L2_2(L3_2, L4_2)
  end
end
L1_1.update_index_storage = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.Client
  L2_2 = L2_2.Prefs
  L2_2 = L2_2.User
  L2_2 = L2_2.FarmUnlockHintedMaxLevel
  L4_2 = A0_2
  L3_2 = A0_2._get_unlocked_max_level
  L3_2 = L3_2(L4_2)
  if L3_2 == nil then
    return
  end
  L5_2 = L2_2
  L4_2 = L2_2.ContainsKey
  L6_2 = A1_2
  L4_2 = L4_2(L5_2, L6_2)
  if L4_2 then
    L5_2 = L2_2
    L4_2 = L2_2.get_Item
    L6_2 = A1_2
    L4_2 = L4_2(L5_2, L6_2)
    L4_2 = L4_2 == L3_2
  end
  L5_2 = L0_1
  L6_2 = L5_2
  L5_2 = L5_2.IsWorldLevelUnlockedLocal
  L7_2 = L3_2
  L5_2 = L5_2(L6_2, L7_2)
  if L5_2 then
    L5_2 = not L4_2
  end
  if L5_2 then
    L6_2 = G
    L6_2 = L6_2.UIManager
    L6_2 = L6_2.load_and_show
    L7_2 = "Ui.FarmEnemy.FarmLevelUnlockDialog"
    L8_2 = A0_2._unlocked_index
    L6_2(L7_2, L8_2)
    L6_2 = A0_2._tab_control
    L7_2 = L6_2
    L6_2 = L6_2.find_item
    L8_2 = A0_2._unlocked_index
    L6_2 = L6_2(L7_2, L8_2)
    L7_2 = L6_2
    L6_2 = L6_2.play_unlock
    L6_2(L7_2)
  end
  L7_2 = L2_2
  L6_2 = L2_2.set_Item
  L8_2 = A1_2
  L9_2 = L3_2
  L6_2(L7_2, L8_2, L9_2)
end
L1_1.try_show_unlock_hint = L2_1
function L2_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._tab_control
  L2_2 = L1_2
  L1_2 = L1_2.get_cur_tab_btn_object
  return L1_2(L2_2)
end
L1_1.get_cur_tab_btn_object = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L2_2 = A0_2._all_levels
  if L2_2 == nil or A1_2 == nil then
    L2_2 = 1
    return L2_2
  end
  L2_2 = ipairs
  L3_2 = A0_2._all_levels
  L2_2, L3_2, L4_2 = L2_2(L3_2)
  for L5_2, L6_2 in L2_2, L3_2, L4_2 do
    if A1_2 == L6_2 then
      return L5_2
    end
  end
  L2_2 = 1
  return L2_2
end
L1_1.get_index_by_world_level = L2_1
return L1_1
