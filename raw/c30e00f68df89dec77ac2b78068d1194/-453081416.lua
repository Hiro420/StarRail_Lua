local L0_1, L1_1, L2_1, L3_1, L4_1
L0_1 = require
L1_1 = "Ui.AetherDivide.AetherSpiritAtlas.AetherSpiritAtlasListItem"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.AetherDivide.AetherSpiritAtlas.AetherSpiritAtlasListItemBinder"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "AetherSpiritAtlasListPanel"
L2_1 = G
L2_1 = L2_1.BasePanel
L0_1 = L0_1(L1_1, L2_1)
L1_1 = 0.4
L2_1 = 0.2
L3_1 = CS
L3_1 = L3_1.RPG
L3_1 = L3_1.Client
L3_1 = L3_1.GlobalVars
L3_1 = L3_1.s_ModuleManager
L3_1 = L3_1.AetherDivideModule
L3_1 = L3_1.AetherOutfitData
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L1_2 = {}
  L2_2 = {}
  L3_2 = 6020
  L4_2 = 6001
  L5_2 = 6005
  L6_2 = 6006
  L7_2 = 6012
  L2_2[1] = L3_2
  L2_2[2] = L4_2
  L2_2[3] = L5_2
  L2_2[4] = L6_2
  L2_2[5] = L7_2
  L3_2 = {}
  L4_2 = 6007
  L5_2 = 6011
  L6_2 = 6013
  L7_2 = 6008
  L3_2[1] = L4_2
  L3_2[2] = L5_2
  L3_2[3] = L6_2
  L3_2[4] = L7_2
  L4_2 = {}
  L5_2 = 6017
  L6_2 = 6015
  L7_2 = 6018
  L4_2[1] = L5_2
  L4_2[2] = L6_2
  L4_2[3] = L7_2
  L5_2 = {}
  L6_2 = 6016
  L7_2 = 6019
  L8_2 = 6014
  L9_2 = 6003
  L5_2[1] = L6_2
  L5_2[2] = L7_2
  L5_2[3] = L8_2
  L5_2[4] = L9_2
  L6_2 = {}
  L7_2 = 6021
  L8_2 = 6010
  L9_2 = 6009
  L6_2[1] = L7_2
  L6_2[2] = L8_2
  L6_2[3] = L9_2
  L1_2[1] = L2_2
  L1_2[2] = L3_2
  L1_2[3] = L4_2
  L1_2[4] = L5_2
  L1_2[5] = L6_2
  A0_2._gym_id_table = L1_2
end
L0_1.ctor = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.AetherSpiritOnAtlasUnlockAnimEnd
  L4_2 = A0_2._on_anim_end_callback
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = {}
  A0_2._cur_type_spirit_table = L1_2
  A0_2._cur_selected_spirit_data = nil
  A0_2._last_click_item_panel = nil
  L1_2 = {}
  A0_2._gym_spirit_panel_table = L1_2
  L1_2 = 1
  L2_2 = A0_2._gym_id_table
  L2_2 = #L2_2
  L3_2 = 1
  for L4_2 = L1_2, L2_2, L3_2 do
    L5_2 = {}
    L6_2 = 1
    L7_2 = A0_2._gym_id_table
    L7_2 = L7_2[L4_2]
    L7_2 = #L7_2
    L8_2 = 1
    for L9_2 = L6_2, L7_2, L8_2 do
      L11_2 = A0_2
      L10_2 = A0_2.create_panel
      L12_2 = G
      L12_2 = L12_2.AetherSpiritAtlasListItem
      L13_2 = G
      L13_2 = L13_2.AetherSpiritAtlasListItemBinder
      L10_2 = L10_2(L11_2, L12_2, L13_2)
      L12_2 = L10_2
      L11_2 = L10_2.register_callback
      L13_2 = A0_2._on_click_item
      L14_2 = A0_2
      L11_2(L12_2, L13_2, L14_2)
      L12_2 = L10_2
      L11_2 = L10_2.bind
      L13_2 = A0_2._binder
      L14_2 = "node_spirit_"
      L15_2 = L4_2
      L16_2 = "_"
      L17_2 = A0_2._gym_id_table
      L17_2 = L17_2[L4_2]
      L17_2 = L17_2[L9_2]
      L14_2 = L14_2 .. L15_2 .. L16_2 .. L17_2
      L13_2 = L13_2[L14_2]
      L11_2(L12_2, L13_2)
      L11_2 = table
      L11_2 = L11_2.insert
      L12_2 = L5_2
      L13_2 = L10_2
      L11_2(L12_2, L13_2)
    end
    L6_2 = table
    L6_2 = L6_2.insert
    L7_2 = A0_2._gym_spirit_panel_table
    L8_2 = L5_2
    L6_2(L7_2, L8_2)
  end
  L2_2 = A0_2
  L1_2 = A0_2._setup_btn_list_navigation_static
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_count_down_timer
  L3_2 = A0_2._on_anim_played
  L4_2 = L1_1
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2._first_anim_play_timer = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._add_count_down_timer
  L3_2 = A0_2._on_anim_played
  L4_2 = L2_1
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2._anim_play_timer = L1_2
end
L0_1._on_load = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2._get_locate_spirit_index
  L3_2 = A0_2._locate_spirit_id
  L1_2 = L1_2(L2_2, L3_2)
  L2_2 = A0_2._gym_spirit_panel_table
  L3_2 = A0_2._type_row
  L3_2 = L3_2.ID
  L2_2 = L2_2[L3_2]
  L2_2 = L2_2[L1_2]
  L4_2 = L2_2
  L3_2 = L2_2.get_btn
  L3_2 = L3_2(L4_2)
  L3_2 = L3_2.gameObject
  return L3_2
end
L0_1.get_first_selected_object = L4_1
function L4_1(A0_2, A1_2, A2_2)
  A0_2._callback = A1_2
  A0_2._callback_self = A2_2
end
L0_1.register_callback = L4_1
function L4_1(A0_2, A1_2, A2_2)
  A0_2._locate_end_callback = A1_2
  A0_2._locate_end_callback_self = A2_2
end
L0_1.register_locate_end_callback = L4_1
function L4_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  A0_2._type_row = A1_2
  A0_2._locate_spirit_id = A3_2
  L4_2 = 1
  L5_2 = A0_2._gym_id_table
  L5_2 = #L5_2
  L6_2 = 1
  for L7_2 = L4_2, L5_2, L6_2 do
    L8_2 = A0_2._binder
    L9_2 = "node_group_"
    L10_2 = L7_2
    L9_2 = L9_2 .. L10_2
    L8_2 = L8_2[L9_2]
    L9_2 = L8_2
    L8_2 = L8_2.SafeSetActive
    L10_2 = A0_2._type_row
    L10_2 = L10_2.ID
    L10_2 = L7_2 == L10_2
    L8_2(L9_2, L10_2)
  end
  L4_2 = {}
  A0_2._cur_type_spirit_table = L4_2
  L5_2 = A0_2
  L4_2 = A0_2._filter_spirit_table
  L6_2 = A2_2
  L4_2(L5_2, L6_2)
  L5_2 = A0_2
  L4_2 = A0_2._setup_collect_progress
  L4_2(L5_2)
  L5_2 = A0_2
  L4_2 = A0_2._setup_spirit_item_list
  L4_2(L5_2)
  L5_2 = A0_2
  L4_2 = A0_2._play_unlock_anim
  L4_2(L5_2)
end
L0_1.setup_view = L4_1
function L4_1(A0_2)
  local L1_2
  L1_2 = A0_2._cur_type_spirit_table
  L1_2 = #L1_2
  L1_2 = L1_2 == 0
  return L1_2
end
L0_1.is_empty = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = 1
  L2_2 = A0_2._cur_type_spirit_table
  L2_2 = #L2_2
  L3_2 = 1
  for L4_2 = L1_2, L2_2, L3_2 do
    L5_2 = A0_2._cur_type_spirit_table
    L5_2 = L5_2[L4_2]
    L5_2 = L5_2.Status
    L6_2 = CS
    L6_2 = L6_2.RPG
    L6_2 = L6_2.Client
    L6_2 = L6_2.AetherMonsterAvatarDisplayDataStatus
    L6_2 = L6_2.Forbidden
    if L5_2 ~= L6_2 then
      L5_2 = false
      return L5_2
    end
  end
  L1_2 = true
  return L1_2
end
L0_1.is_all_forbidden = L4_1
function L4_1(A0_2)
  local L1_2
  L1_2 = A0_2._cur_type_spirit_table
  return L1_2
end
L0_1.get_filtered_spirit_table = L4_1
function L4_1(A0_2, A1_2)
  local L2_2, L3_2
  A0_2._locate_spirit_id = A1_2
  L3_2 = A0_2
  L2_2 = A0_2._setup_spirit_item_list
  L2_2(L3_2)
end
L0_1.setup_spirit_item_list = L4_1
function L4_1(A0_2)
  local L1_2
end
L0_1._on_return_to_top = L4_1
function L4_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L2_2 = A0_2._type_row
  if L2_2 == nil then
    A0_2._cur_type_spirit_table = A1_2
    return
  end
  L2_2 = 1
  L3_2 = #A1_2
  L4_2 = 1
  for L5_2 = L2_2, L3_2, L4_2 do
    L6_2 = A1_2[L5_2]
    L7_2 = A0_2._type_row
    L7_2 = L7_2.ID
    L8_2 = L6_2.GymLocation
    if L7_2 == L8_2 then
      L7_2 = table
      L7_2 = L7_2.insert
      L8_2 = A0_2._cur_type_spirit_table
      L9_2 = L6_2
      L7_2(L8_2, L9_2)
    end
  end
end
L0_1._filter_spirit_table = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L1_2 = 0
  L2_2 = 1
  L3_2 = A0_2._cur_type_spirit_table
  L3_2 = #L3_2
  L4_2 = 1
  for L5_2 = L2_2, L3_2, L4_2 do
    L6_2 = A0_2._cur_type_spirit_table
    L6_2 = L6_2[L5_2]
    L6_2 = L6_2.Status
    L7_2 = CS
    L7_2 = L7_2.RPG
    L7_2 = L7_2.Client
    L7_2 = L7_2.AetherMonsterAvatarDisplayDataStatus
    L7_2 = L7_2.Unlocked
    if L6_2 == L7_2 then
      L1_2 = L1_2 + 1
    end
  end
  L2_2 = A0_2._binder
  L2_2 = L2_2.txt_collect_num
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetText
  L4_2 = L1_2
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.txt_gym_num
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetText
  L4_2 = A0_2._cur_type_spirit_table
  L4_2 = #L4_2
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.txt_gym_name
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetTextID
  L4_2 = A0_2._type_row
  L4_2 = L4_2.Name
  L2_2(L3_2, L4_2)
end
L0_1._setup_collect_progress = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L1_2 = nil
  L2_2 = 1
  L3_2 = A0_2._gym_spirit_panel_table
  L3_2 = #L3_2
  L4_2 = 1
  for L5_2 = L2_2, L3_2, L4_2 do
    L6_2 = A0_2._type_row
    L6_2 = L6_2.ID
    if L5_2 == L6_2 then
      L6_2 = A0_2._gym_spirit_panel_table
      L1_2 = L6_2[L5_2]
    end
  end
  L2_2 = 1
  L3_2 = #L1_2
  L4_2 = 1
  for L5_2 = L2_2, L3_2, L4_2 do
    L6_2 = A0_2._gym_id_table
    L7_2 = A0_2._type_row
    L7_2 = L7_2.ID
    L6_2 = L6_2[L7_2]
    L6_2 = L6_2[L5_2]
    L7_2 = L3_1.AllAetherMonsterDisplayAvatars
    L7_2 = L7_2[L6_2]
    L8_2 = L1_2[L5_2]
    L9_2 = L8_2
    L8_2 = L8_2.setup_view
    L10_2 = L7_2
    L8_2(L9_2, L10_2)
    L8_2 = L1_2[L5_2]
    L9_2 = L8_2
    L8_2 = L8_2.set_selected
    L10_2 = false
    L8_2(L9_2, L10_2)
  end
  L3_2 = A0_2
  L2_2 = A0_2.set_navigation_target
  L5_2 = A0_2
  L4_2 = A0_2.get_first_selected_object
  L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2 = L4_2(L5_2)
  L2_2(L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2)
  L2_2 = A0_2._owner
  L2_2 = L2_2.is_play_anim
  if L2_2 == true then
    L2_2 = G
    L2_2 = L2_2.UIManager
    L2_2 = L2_2.load_and_async_show
    L3_2 = "Ui.AetherDivide.AetherSpiritAtlas.AetherSpiritAtlasUnlockAnim.AetherSpiritAtlasUnlockAnimDialog"
    L4_2 = A0_2._locate_spirit_id
    L2_2(L3_2, L4_2)
  else
    L3_2 = A0_2
    L2_2 = A0_2._on_anim_end_callback
    L2_2(L3_2)
  end
end
L0_1._setup_spirit_item_list = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = A0_2._locate_spirit_id
  if L1_2 == nil then
    L1_2 = 1
    return L1_2
  end
  L1_2 = 1
  L2_2 = A0_2._gym_id_table
  L3_2 = A0_2._type_row
  L3_2 = L3_2.ID
  L2_2 = L2_2[L3_2]
  L2_2 = #L2_2
  L3_2 = 1
  for L4_2 = L1_2, L2_2, L3_2 do
    L5_2 = A0_2._gym_id_table
    L6_2 = A0_2._type_row
    L6_2 = L6_2.ID
    L5_2 = L5_2[L6_2]
    L5_2 = L5_2[L4_2]
    L6_2 = A0_2._locate_spirit_id
    if L5_2 == L6_2 then
      return L4_2
    end
  end
  L1_2 = 1
  return L1_2
end
L0_1._get_locate_spirit_index = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L1_2 = A0_2._anim_play_timer
  L2_2 = L1_2
  L1_2 = L1_2.stop
  L1_2(L2_2)
  L1_2 = {}
  A0_2._anim_panel_table = L1_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.Prefs
  L1_2 = L1_2.User
  L1_2 = L1_2.UnSeenUnlockAnimAtlasSpiritIDs
  L2_2 = L1_2
  L1_2 = L1_2.GetEnumerator
  L1_2 = L1_2(L2_2)
  while true do
    L3_2 = L1_2
    L2_2 = L1_2.MoveNext
    L2_2 = L2_2(L3_2)
    if not L2_2 then
      break
    end
    L2_2 = L1_2.Current
    L3_2 = G
    L3_2 = L3_2.Utils
    L3_2 = L3_2.index_of_item
    L4_2 = A0_2._gym_id_table
    L5_2 = A0_2._type_row
    L5_2 = L5_2.ID
    L4_2 = L4_2[L5_2]
    L5_2 = L2_2
    L3_2 = L3_2(L4_2, L5_2)
    if L3_2 ~= nil then
      L4_2 = A0_2._gym_spirit_panel_table
      L5_2 = A0_2._type_row
      L5_2 = L5_2.ID
      L4_2 = L4_2[L5_2]
      L4_2 = L4_2[L3_2]
      L6_2 = L4_2
      L5_2 = L4_2.set_unlock
      L7_2 = false
      L5_2(L6_2, L7_2)
      L5_2 = table
      L5_2 = L5_2.insert
      L6_2 = A0_2._anim_panel_table
      L7_2 = L4_2
      L5_2(L6_2, L7_2)
    end
  end
  L2_2 = A0_2._anim_panel_table
  L2_2 = #L2_2
  if L2_2 <= 0 then
    return
  end
  A0_2._anim_idx = 1
  L2_2 = A0_2._first_anim_play_timer
  L3_2 = L2_2
  L2_2 = L2_2.reset
  L2_2(L3_2)
  L2_2 = A0_2._first_anim_play_timer
  L3_2 = L2_2
  L2_2 = L2_2.start
  L2_2(L3_2)
end
L0_1._play_unlock_anim = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._anim_idx
  L2_2 = A0_2._anim_panel_table
  L2_2 = #L2_2
  if L1_2 > L2_2 then
    return
  end
  L1_2 = A0_2._anim_panel_table
  L2_2 = A0_2._anim_idx
  L1_2 = L1_2[L2_2]
  L2_2 = L1_2
  L1_2 = L1_2.set_unlock
  L3_2 = true
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._anim_panel_table
  L2_2 = A0_2._anim_idx
  L1_2 = L1_2[L2_2]
  L2_2 = L1_2
  L1_2 = L1_2.play_anim
  L1_2(L2_2)
  L1_2 = A0_2._anim_idx
  L1_2 = L1_2 + 1
  A0_2._anim_idx = L1_2
  L1_2 = A0_2._anim_play_timer
  L2_2 = L1_2
  L1_2 = L1_2.reset
  L1_2(L2_2)
  L1_2 = A0_2._anim_play_timer
  L2_2 = L1_2
  L1_2 = L1_2.start
  L1_2(L2_2)
end
L0_1._play_anim_panel = L4_1
function L4_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._anim_play_timer
  L2_2 = L1_2
  L1_2 = L1_2.stop
  L1_2(L2_2)
  L1_2 = A0_2._first_anim_play_timer
  L2_2 = L1_2
  L1_2 = L1_2.stop
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._play_anim_panel
  L1_2(L2_2)
end
L0_1._on_anim_played = L4_1
function L4_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2
  A0_2._cur_selected_spirit_data = A1_2
  A0_2._last_click_item_panel = A2_2
  L3_2 = A0_2._callback
  if L3_2 ~= nil then
    L3_2 = A0_2._callback_self
    if L3_2 ~= nil then
      L3_2 = A0_2._callback
      L4_2 = A0_2._callback_self
      L5_2 = A1_2
      L3_2(L4_2, L5_2)
    end
  end
end
L0_1._on_click_item = L4_1
function L4_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._locate_end_callback
  if L1_2 ~= nil then
    L1_2 = A0_2._locate_end_callback_self
    if L1_2 ~= nil then
      L1_2 = A0_2._locate_end_callback
      L2_2 = A0_2._locate_end_callback_self
      L1_2(L2_2)
    end
  end
end
L0_1._on_anim_end_callback = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2
  L1_2 = 1
  L2_2 = A0_2._gym_spirit_panel_table
  L2_2 = #L2_2
  L3_2 = 1
  for L4_2 = L1_2, L2_2, L3_2 do
    L5_2 = A0_2._gym_spirit_panel_table
    L5_2 = L5_2[L4_2]
    L6_2 = 1
    L7_2 = #L5_2
    L8_2 = 1
    for L9_2 = L6_2, L7_2, L8_2 do
      L10_2 = L5_2[L9_2]
      L11_2 = L10_2
      L10_2 = L10_2.get_btn
      L10_2 = L10_2(L11_2)
      L11_2 = L9_2 - 1
      L11_2 = L5_2[L11_2]
      if L11_2 ~= nil then
        L11_2 = L9_2 - 1
        L11_2 = L5_2[L11_2]
        L12_2 = L11_2
        L11_2 = L11_2.get_btn
        L11_2 = L11_2(L12_2)
        if L11_2 then
          goto lbl_26
        end
      end
      L11_2 = nil
      ::lbl_26::
      L12_2 = L9_2 + 1
      L12_2 = L5_2[L12_2]
      if L12_2 ~= nil then
        L12_2 = L9_2 + 1
        L12_2 = L5_2[L12_2]
        L13_2 = L12_2
        L12_2 = L12_2.get_btn
        L12_2 = L12_2(L13_2)
        if L12_2 then
          goto lbl_37
        end
      end
      L12_2 = nil
      ::lbl_37::
      L14_2 = A0_2
      L13_2 = A0_2._set_single_btn_navigation
      L15_2 = L10_2
      L16_2 = nil
      L17_2 = nil
      L18_2 = L11_2
      L19_2 = L12_2
      L13_2(L14_2, L15_2, L16_2, L17_2, L18_2, L19_2)
    end
  end
end
L0_1._setup_btn_list_navigation_static = L4_1
function L4_1(A0_2, A1_2, A2_2, A3_2, A4_2, A5_2)
  local L6_2, L7_2, L8_2
  L6_2 = A1_2.navigation
  L7_2 = CS
  L7_2 = L7_2.UnityEngine
  L7_2 = L7_2.UI
  L7_2 = L7_2.Navigation
  L7_2 = L7_2.Mode
  L7_2 = L7_2.Explicit
  L6_2.mode = L7_2
  if A2_2 ~= nil then
    L7_2 = A2_2.navigation
    L8_2 = CS
    L8_2 = L8_2.UnityEngine
    L8_2 = L8_2.UI
    L8_2 = L8_2.Navigation
    L8_2 = L8_2.Mode
    L8_2 = L8_2.Explicit
    L7_2.mode = L8_2
    L6_2.selectOnUp = A2_2
  end
  if A3_2 ~= nil then
    L7_2 = A3_2.navigation
    L8_2 = CS
    L8_2 = L8_2.UnityEngine
    L8_2 = L8_2.UI
    L8_2 = L8_2.Navigation
    L8_2 = L8_2.Mode
    L8_2 = L8_2.Explicit
    L7_2.mode = L8_2
    L6_2.selectOnDown = A3_2
  end
  if A4_2 ~= nil then
    L7_2 = A4_2.navigation
    L8_2 = CS
    L8_2 = L8_2.UnityEngine
    L8_2 = L8_2.UI
    L8_2 = L8_2.Navigation
    L8_2 = L8_2.Mode
    L8_2 = L8_2.Explicit
    L7_2.mode = L8_2
    L6_2.selectOnLeft = A4_2
  end
  if A5_2 ~= nil then
    L7_2 = A5_2.navigation
    L8_2 = CS
    L8_2 = L8_2.UnityEngine
    L8_2 = L8_2.UI
    L8_2 = L8_2.Navigation
    L8_2 = L8_2.Mode
    L8_2 = L8_2.Explicit
    L7_2.mode = L8_2
    L6_2.selectOnRight = A5_2
  end
  A1_2.navigation = L6_2
end
L0_1._set_single_btn_navigation = L4_1
return L0_1
