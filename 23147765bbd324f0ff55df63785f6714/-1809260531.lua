local L0_1, L1_1, L2_1, L3_1
L0_1 = require
L1_1 = "Ui.UI3DSystem.TreasureDungeon.TreasureDungeonGridFloor3DPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.UI3DSystem.TreasureDungeon.TreasureDungeonGridContent3DPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.UI3DSystem.TreasureDungeon.TreasureDungeonGridInfo3DPanel"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "TreasureDungeonGrid3DPanel"
L2_1 = G
L2_1 = L2_1.BaseUI3DPanel
L0_1 = L0_1(L1_1, L2_1)
L1_1 = CS
L1_1 = L1_1.RPG
L1_1 = L1_1.GameCore
L1_1 = L1_1.TreasureDungeonGridType
L1_1 = L1_1.KeyDoor
L2_1 = CS
L2_1 = L2_1.RPG
L2_1 = L2_1.GameCore
L2_1 = L2_1.TreasureDungeonGridType
L2_1 = L2_1.FinalDoor
function L3_1(A0_2, A1_2)
end
L0_1.ctor = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2.create_panel
  L3_2 = G
  L3_2 = L3_2.TreasureDungeonGridFloor3DPanel
  L4_2 = ""
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2._panel_floor = L1_2
  L2_2 = A0_2
  L1_2 = A0_2.create_panel
  L3_2 = G
  L3_2 = L3_2.TreasureDungeonGridContent3DPanel
  L4_2 = "IconContainer"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2._panel_content = L1_2
  L2_2 = A0_2
  L1_2 = A0_2.create_panel
  L3_2 = G
  L3_2 = L3_2.TreasureDungeonGridInfo3DPanel
  L4_2 = "Content/TreasureDungeonGridItem2D"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2._panel_info = L1_2
end
L0_1._on_load = L3_1
function L3_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2._panel_floor
  L3_2 = L2_2
  L2_2 = L2_2.setup_type
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
end
L0_1.setup_type = L3_1
function L3_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2._panel_content
  L3_2 = L2_2
  L2_2 = L2_2.set_mask
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._panel_info
  L3_2 = L2_2
  L2_2 = L2_2.set_mask
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
end
L0_1.set_mask = L3_1
function L3_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2._is_in_ultra
  if L2_2 == A1_2 then
    return
  end
  A0_2._is_in_ultra = A1_2
  L2_2 = A0_2._panel_info
  L3_2 = L2_2
  L2_2 = L2_2.set_in_ultra
  L4_2 = A0_2._is_in_ultra
  L2_2(L3_2, L4_2)
end
L0_1.refresh_ultra_view = L3_1
function L3_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2, L5_2
  A0_2._level_data = A1_2
  A0_2._data = A2_2
  A0_2._is_in_ultra = A3_2
  L5_2 = A0_2
  L4_2 = A0_2._refresh_view
  L4_2(L5_2)
end
L0_1.setup_view = L3_1
function L3_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2._setup_floor_view
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._setup_content_view
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._setup_info_view
  L1_2(L2_2)
end
L0_1._refresh_view = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._panel_floor
  L2_2 = L1_2
  L1_2 = L1_2.setup_view
  L3_2 = A0_2._data
  L1_2(L2_2, L3_2)
end
L0_1._setup_floor_view = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._panel_content
  L2_2 = L1_2
  L1_2 = L1_2.setup_view
  L3_2 = A0_2._data
  L4_2 = A0_2._level_data
  L1_2(L2_2, L3_2, L4_2)
end
L0_1._setup_content_view = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._panel_info
  L2_2 = L1_2
  L1_2 = L1_2.setup_view
  L3_2 = A0_2._level_data
  L4_2 = A0_2._data
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2._panel_info
  L2_2 = L1_2
  L1_2 = L1_2.set_in_ultra
  L3_2 = A0_2._is_in_ultra
  L1_2(L2_2, L3_2)
end
L0_1._setup_info_view = L3_1
function L3_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2
  A0_2._level_data = A1_2
  A0_2._data = A2_2
  L3_2 = A1_2.RefreshParam
  if L3_2 == nil then
    L5_2 = A0_2
    L4_2 = A0_2._refresh_view
    L4_2(L5_2)
    return
  end
  L4_2 = A0_2._panel_floor
  L5_2 = L4_2
  L4_2 = L4_2.setup_view
  L6_2 = A0_2._data
  L4_2(L5_2, L6_2)
  L4_2 = A0_2._panel_info
  L5_2 = L4_2
  L4_2 = L4_2.setup_view
  L6_2 = A0_2._level_data
  L7_2 = A0_2._data
  L4_2(L5_2, L6_2, L7_2)
  L4_2 = A0_2._data
  L4_2 = L4_2.GridIndex
  L5_2 = L3_2.EmptyChangedGrids
  L6_2 = L5_2
  L5_2 = L5_2.Contains
  L7_2 = L4_2
  L5_2 = L5_2(L6_2, L7_2)
  L6_2 = L3_2.NewFlippedGridList
  L7_2 = L6_2
  L6_2 = L6_2.Contains
  L8_2 = L4_2
  L6_2 = L6_2(L7_2, L8_2)
  L7_2 = L3_2.TypeChangedGrids
  L8_2 = L7_2
  L7_2 = L7_2.ContainsKey
  L9_2 = L4_2
  L7_2 = L7_2(L8_2, L9_2)
  if L5_2 then
    L8_2 = A0_2._data
    L8_2 = L8_2.IsEmpty
    if L8_2 then
      L8_2 = A0_2._panel_content
      L9_2 = L8_2
      L8_2 = L8_2.play_fade_out
      function L10_2()
        local L0_3, L1_3, L2_3, L3_3
        L0_3 = A0_2._panel_content
        L1_3 = L0_3
        L0_3 = L0_3.setup_view
        L2_3 = A0_2._data
        L3_3 = A0_2._level_data
        L0_3(L1_3, L2_3, L3_3)
      end
      L8_2(L9_2, L10_2)
    else
      L8_2 = A0_2._panel_content
      L9_2 = L8_2
      L8_2 = L8_2.setup_view
      L10_2 = A0_2._data
      L11_2 = A0_2._level_data
      L8_2(L9_2, L10_2, L11_2)
      L8_2 = A0_2._panel_content
      L9_2 = L8_2
      L8_2 = L8_2.play_fade_in
      L8_2(L9_2)
    end
  elseif L7_2 then
    L8_2 = A0_2._panel_content
    L9_2 = L8_2
    L8_2 = L8_2.setup_view
    L10_2 = L3_2.TypeChangedGrids
    L10_2 = L10_2[L4_2]
    L11_2 = A0_2._level_data
    L8_2(L9_2, L10_2, L11_2)
    L8_2 = A0_2._panel_content
    L9_2 = L8_2
    L8_2 = L8_2.play_switch_out
    function L10_2()
      local L0_3, L1_3, L2_3, L3_3
      L0_3 = A0_2._panel_content
      L1_3 = L0_3
      L0_3 = L0_3.setup_view
      L2_3 = A0_2._data
      L3_3 = A0_2._level_data
      L0_3(L1_3, L2_3, L3_3)
      L0_3 = A0_2._panel_content
      L1_3 = L0_3
      L0_3 = L0_3.play_fade_in
      L0_3(L1_3)
    end
    L8_2(L9_2, L10_2)
  elseif L6_2 then
    L8_2 = A0_2._panel_content
    L9_2 = L8_2
    L8_2 = L8_2.setup_view
    L10_2 = A0_2._data
    L11_2 = A0_2._level_data
    L8_2(L9_2, L10_2, L11_2)
    L8_2 = A0_2._panel_content
    L9_2 = L8_2
    L8_2 = L8_2.play_fade_in
    L8_2(L9_2)
  else
    L8_2 = A0_2._panel_content
    L9_2 = L8_2
    L8_2 = L8_2.setup_view
    L10_2 = A0_2._data
    L11_2 = A0_2._level_data
    L8_2(L9_2, L10_2, L11_2)
  end
end
L0_1.setup_view_on_change = L3_1
function L3_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2._panel_info
  L3_2 = L2_2
  L2_2 = L2_2.set_selected
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._panel_floor
  L3_2 = L2_2
  L2_2 = L2_2.set_selected
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
end
L0_1.set_selected = L3_1
function L3_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2._panel_info
  L3_2 = L2_2
  L2_2 = L2_2.block_interact
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._panel_floor
  L3_2 = L2_2
  L2_2 = L2_2.block_interact
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
end
L0_1.block_interact = L3_1
function L3_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._panel_info
  L2_2 = L1_2
  L1_2 = L1_2.is_ultra_interactable
  return L1_2(L2_2)
end
L0_1.is_ultra_interactable = L3_1
function L3_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2
  L3_2 = A0_2._panel_info
  L4_2 = L3_2
  L3_2 = L3_2.register_select_callback
  L5_2 = A1_2
  L6_2 = A2_2
  L3_2(L4_2, L5_2, L6_2)
end
L0_1.register_select_callback = L3_1
function L3_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2
  L3_2 = A0_2._panel_info
  L4_2 = L3_2
  L3_2 = L3_2.register_click_callback
  L5_2 = A1_2
  L6_2 = A2_2
  L3_2(L4_2, L5_2, L6_2)
end
L0_1.register_click_callback = L3_1
function L3_1(A0_2)
  local L1_2
  L1_2 = A0_2._root
  L1_2 = L1_2.transform
  return L1_2
end
L0_1.get_transform = L3_1
function L3_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2._data
  if L2_2 == nil or A1_2 == nil then
    return
  end
  L2_2 = A0_2._data
  L2_2 = L2_2.IsFlipped
  if not L2_2 then
    L2_2 = A1_2.IsFlipped
    if L2_2 then
      L2_2 = A1_2.IsEmpty
      if not L2_2 then
        L2_2 = CS
        L2_2 = L2_2.RPG
        L2_2 = L2_2.Client
        L2_2 = L2_2.GlobalVars
        L2_2 = L2_2.s_AudioManager
        L3_2 = L2_2
        L2_2 = L2_2.PostEvent
        L4_2 = "Ev_sfx_ui_feedback_activity_treasuredungeon_item_drop"
        L2_2(L3_2, L4_2)
      end
    end
  end
end
L0_1.try_play_changed = L3_1
function L3_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._panel_content
  L2_2 = L1_2
  L1_2 = L1_2.play_door_opened
  L1_2(L2_2)
end
L0_1.play_door_opened = L3_1
function L3_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._panel_floor
  L2_2 = L1_2
  L1_2 = L1_2.play_fade_in
  L1_2(L2_2)
  L1_2 = A0_2._panel_content
  L2_2 = L1_2
  L1_2 = L1_2.play_fade_in
  L1_2(L2_2)
end
L0_1.play_fade_in = L3_1
function L3_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._panel_floor
  L2_2 = L1_2
  L1_2 = L1_2.play_fade_out
  L1_2(L2_2)
  L1_2 = A0_2._panel_content
  L2_2 = L1_2
  L1_2 = L1_2.play_fade_out
  L1_2(L2_2)
end
L0_1.play_fade_out = L3_1
function L3_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._panel_content
  L2_2 = L1_2
  L1_2 = L1_2.play_weaken
  L1_2(L2_2)
end
L0_1.play_weaken = L3_1
function L3_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._panel_content
  L2_2 = L1_2
  L1_2 = L1_2.play_enhance
  L1_2(L2_2)
end
L0_1.play_enhance = L3_1
function L3_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._panel_content
  L2_2 = L1_2
  L1_2 = L1_2.play_summon
  L1_2(L2_2)
end
L0_1.play_summon = L3_1
function L3_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._panel_content
  L2_2 = L1_2
  L1_2 = L1_2.play_bomb
  L1_2(L2_2)
end
L0_1.play_bomb = L3_1
function L3_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._data
  L1_2 = L1_2.IsFlipped
  if L1_2 then
    L1_2 = A0_2._data
    L1_2 = L1_2.IsEmpty
    if not L1_2 then
      goto lbl_10
    end
  end
  do return end
  ::lbl_10::
  L1_2 = A0_2._data
  L1_2 = L1_2.Row
  L1_2 = L1_2.EffectType
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.GameCore
  L2_2 = L2_2.TreasureDungeonGridEffectType
  L2_2 = L2_2.LockAround
  if L1_2 == L2_2 then
    L1_2 = A0_2._panel_floor
    L2_2 = L1_2
    L1_2 = L1_2.play_monster_locking
    L1_2(L2_2)
  end
end
L0_1.try_play_monster_locking = L3_1
function L3_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._data
  L1_2 = L1_2 ~= nil
  return L1_2
end
L0_1.is_key_door = L3_1
function L3_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._data
  L1_2 = L1_2 ~= nil
  return L1_2
end
L0_1.is_final_door = L3_1
function L3_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._panel_info
  L2_2 = L1_2
  L1_2 = L1_2.get_first_selected_object
  return L1_2(L2_2)
end
L0_1.get_first_selected_object = L3_1
function L3_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._panel_info
  L2_2 = L1_2
  L1_2 = L1_2.get_first_selected_btn
  return L1_2(L2_2)
end
L0_1.get_first_selected_btn = L3_1
return L0_1
