local L0_1, L1_1, L2_1, L3_1
L0_1 = require
L1_1 = "Ui.RogueDLC.RogueEndless.Monster.RogueEndlessMonsterPreviewDialogBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.RogueDLC.RogueEndless.Monster.RogueEndlessWaveItemPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.RogueDLC.RogueEndless.Monster.RogueEndlessWaveItemPanelBinder"
L0_1(L1_1)
L0_1 = "UIText_ActivityRogueEndless_Monster_Level_Name"
L1_1 = G
L1_1 = L1_1.Class
L2_1 = "RogueEndlessMonsterPreviewDialog"
L3_1 = G
L3_1 = L3_1.UIController
L1_1 = L1_1(L2_1, L3_1)
function L2_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = G
  L1_2 = L1_2.ImportCsToLua
  L1_2 = L1_2.CS_RPG_Client_UILayer_Dialog
  A0_2._ui_layer = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._create_binder
  L3_2 = G
  L3_2 = L3_2.RogueEndlessMonsterPreviewDialogBinder
  L1_2 = L1_2(L2_2, L3_2)
  A0_2._binder = L1_2
  L1_2 = {}
  L2_2 = NavigationZoneType
  L2_2 = L2_2.Zone1
  L1_2[1] = L2_2
  A0_2.listen_zooms = L1_2
end
L1_1.ctor = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  A0_2._data = A1_2
  L2_2 = G
  L2_2 = L2_2.RogueEndlessUtils
  L2_2 = L2_2.get_endless_common_area_monsters
  L3_2 = A1_2
  L2_2, L3_2 = L2_2(L3_2)
  A0_2._normal_monsters = L3_2
  A0_2._elite_monsters = L2_2
  A0_2._offset_count = 0
  L2_2 = A0_2._elite_monsters
  if L2_2 ~= nil then
    L2_2 = A0_2._elite_monsters
    L2_2 = #L2_2
    if 0 < L2_2 then
      L2_2 = A0_2._offset_count
      L2_2 = L2_2 + 1
      A0_2._offset_count = L2_2
    end
  end
  L2_2 = A0_2._normal_monsters
  if L2_2 ~= nil then
    L2_2 = A0_2._normal_monsters
    L2_2 = #L2_2
    if 0 < L2_2 then
      L2_2 = A0_2._offset_count
      L2_2 = L2_2 + 1
      A0_2._offset_count = L2_2
    end
  end
  L2_2 = {}
  A0_2._wave_monsters_dict = L2_2
  L3_2 = A1_2
  L2_2 = A1_2.GetEndlessWaveIDs
  L2_2 = L2_2(L3_2)
  L3_2 = 0
  L4_2 = L2_2.Length
  L4_2 = L4_2 - 1
  L5_2 = 1
  for L6_2 = L3_2, L4_2, L5_2 do
    L7_2 = G
    L7_2 = L7_2.Utils
    L7_2 = L7_2.create_lua_table_from_cs_list
    L8_2 = A0_2._data
    L9_2 = L8_2
    L8_2 = L8_2.GetEndlessWaveMonsterDatas
    L10_2 = L2_2[L6_2]
    L8_2, L9_2, L10_2 = L8_2(L9_2, L10_2)
    L7_2 = L7_2(L8_2, L9_2, L10_2)
    L8_2 = table
    L8_2 = L8_2.insert
    L9_2 = A0_2._wave_monsters_dict
    L10_2 = L7_2
    L8_2(L9_2, L10_2)
  end
end
L1_1.init = L2_1
function L2_1(A0_2)
  local L1_2
  A0_2._elite_monsters = nil
  A0_2._normal_monsters = nil
  A0_2._wave_monsters_dict = nil
end
L1_1._on_dispose = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_close
  L4_2 = A0_2.exit
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_bg
  L4_2 = A0_2.exit
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.list_wave
  L2_2 = L1_2
  L1_2 = L1_2.SafeInitListView
  L3_2 = 0
  L4_2 = A0_2._on_get_wave_item
  L5_2 = nil
  L6_2 = A0_2
  L1_2(L2_2, L3_2, L4_2, L5_2, L6_2)
end
L1_1._on_load = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.list_wave
  L2_2 = L1_2
  L1_2 = L1_2.SetListItemCount
  L3_2 = A0_2._offset_count
  L4_2 = A0_2._wave_monsters_dict
  L4_2 = #L4_2
  L3_2 = L3_2 + L4_2
  L4_2 = false
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.list_wave
  L2_2 = L1_2
  L1_2 = L1_2.RefreshAllShownItem
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._init_navigation
  L1_2(L2_2)
end
L1_1._setup_view = L2_1
function L2_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L4_2 = A1_2
  L3_2 = A1_2.NewListViewItem
  L5_2 = 0
  L3_2 = L3_2(L4_2, L5_2)
  L4_2 = L3_2.UserObjectData
  if L4_2 ~= nil then
    L5_2 = L4_2.is_destroyed
    if not L5_2 then
      goto lbl_21
    end
  end
  L6_2 = A0_2
  L5_2 = A0_2.create_panel
  L7_2 = G
  L7_2 = L7_2.RogueEndlessWaveItemPanel
  L8_2 = G
  L8_2 = L8_2.RogueEndlessWaveItemPanelBinder
  L5_2 = L5_2(L6_2, L7_2, L8_2)
  L4_2 = L5_2
  L6_2 = L4_2
  L5_2 = L4_2.bind
  L7_2 = L3_2.transform
  L5_2(L6_2, L7_2)
  L3_2.UserObjectData = L4_2
  ::lbl_21::
  L6_2 = A0_2
  L5_2 = A0_2._setup_monster_panel
  L7_2 = L4_2
  L8_2 = A2_2
  L5_2(L6_2, L7_2, L8_2)
  L5_2 = CS
  L5_2 = L5_2.RPG
  L5_2 = L5_2.Client
  L5_2 = L5_2.CoroutineUtils
  L5_2 = L5_2.InvokeAfterFrames
  L6_2 = 2
  function L7_2()
    local L0_3, L1_3, L2_3, L3_3, L4_3
    L0_3 = A0_2._binder
    if L0_3 == nil then
      return
    end
    L0_3 = A0_2
    L1_3 = L0_3
    L0_3 = L0_3._set_item_border_navi
    L2_3 = A1_2
    L3_3 = L4_2
    L4_3 = A2_2
    L0_3(L1_3, L2_3, L3_3, L4_3)
  end
  L5_2(L6_2, L7_2)
  return L3_2
end
L1_1._on_get_wave_item = L2_1
function L2_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L4_2 = A0_2
  L3_2 = A0_2._is_elite_monsters_index
  L5_2 = A2_2
  L3_2 = L3_2(L4_2, L5_2)
  if L3_2 then
    L4_2 = A1_2
    L3_2 = A1_2.setup_view
    L5_2 = A0_2._elite_monsters
    L6_2 = "UIText_ActivityRogueEndless_Normal_Boss_Tips"
    L3_2(L4_2, L5_2, L6_2)
    return
  end
  L4_2 = A0_2
  L3_2 = A0_2._is_normal_monsters_index
  L5_2 = A2_2
  L3_2 = L3_2(L4_2, L5_2)
  if L3_2 then
    L4_2 = A1_2
    L3_2 = A1_2.setup_view
    L5_2 = A0_2._normal_monsters
    L6_2 = "UIText_ActivityRogueEndless_Normal_Monster_Tips"
    L3_2(L4_2, L5_2, L6_2)
    return
  end
  L3_2 = A0_2._wave_monsters_dict
  L4_2 = A2_2 + 1
  L5_2 = A0_2._offset_count
  L4_2 = L4_2 - L5_2
  L3_2 = L3_2[L4_2]
  L5_2 = A1_2
  L4_2 = A1_2.setup_view
  L6_2 = L3_2
  L7_2 = L0_1
  L8_2 = A2_2 + 1
  L9_2 = A0_2._offset_count
  L8_2 = L8_2 - L9_2
  L4_2(L5_2, L6_2, L7_2, L8_2)
end
L1_1._setup_monster_panel = L2_1
function L2_1(A0_2, A1_2)
  local L2_2
  L2_2 = A0_2._elite_monsters
  L2_2 = L2_2 ~= nil
  return L2_2
end
L1_1._is_elite_monsters_index = L2_1
function L2_1(A0_2, A1_2)
  local L2_2
  L2_2 = A0_2._normal_monsters
  if L2_2 ~= nil then
    L2_2 = A0_2._normal_monsters
    L2_2 = #L2_2
    if L2_2 ~= 0 then
      goto lbl_10
    end
  end
  L2_2 = false
  do return L2_2 end
  ::lbl_10::
  L2_2 = A0_2._elite_monsters
  if L2_2 ~= nil then
    L2_2 = A0_2._elite_monsters
    L2_2 = #L2_2
    if 0 < L2_2 then
      L2_2 = A1_2 == 1
      return L2_2
  end
  else
    L2_2 = A1_2 == 0
    return L2_2
  end
end
L1_1._is_normal_monsters_index = L2_1
function L2_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L5_2 = A2_2
  L4_2 = A2_2.get_static_list
  L4_2 = L4_2(L5_2)
  L5_2 = A1_2.ScrollRect
  L4_2.mScrollRect = L5_2
  L5_2 = A1_2
  L4_2 = A1_2.GetShownItemByItemIndex
  L6_2 = A3_2 - 1
  L4_2 = L4_2(L5_2, L6_2)
  if L4_2 ~= nil then
    L5_2 = L4_2.UserObjectData
    if L5_2 ~= nil then
      L5_2 = L4_2.UserObjectData
      L7_2 = A2_2
      L6_2 = A2_2.get_static_list
      L6_2 = L6_2(L7_2)
      L7_2 = L6_2
      L6_2 = L6_2.SetDirectionRefListview
      L9_2 = L5_2
      L8_2 = L5_2.get_static_list
      L8_2 = L8_2(L9_2)
      L9_2 = CS
      L9_2 = L9_2.UnityEngine
      L9_2 = L9_2.EventSystems
      L9_2 = L9_2.MoveDirection
      L9_2 = L9_2.Up
      L6_2(L7_2, L8_2, L9_2)
      L7_2 = L5_2
      L6_2 = L5_2.get_static_list
      L6_2 = L6_2(L7_2)
      L7_2 = L6_2
      L6_2 = L6_2.SetDirectionRefListview
      L9_2 = A2_2
      L8_2 = A2_2.get_static_list
      L8_2 = L8_2(L9_2)
      L9_2 = CS
      L9_2 = L9_2.UnityEngine
      L9_2 = L9_2.EventSystems
      L9_2 = L9_2.MoveDirection
      L9_2 = L9_2.Down
      L6_2(L7_2, L8_2, L9_2)
    end
  end
  L6_2 = A1_2
  L5_2 = A1_2.GetShownItemByItemIndex
  L7_2 = A3_2 + 1
  L5_2 = L5_2(L6_2, L7_2)
  if L5_2 ~= nil then
    L6_2 = L5_2.UserObjectData
    if L6_2 ~= nil then
      L6_2 = L5_2.UserObjectData
      L8_2 = A2_2
      L7_2 = A2_2.get_static_list
      L7_2 = L7_2(L8_2)
      L8_2 = L7_2
      L7_2 = L7_2.SetDirectionRefListview
      L10_2 = L6_2
      L9_2 = L6_2.get_static_list
      L9_2 = L9_2(L10_2)
      L10_2 = CS
      L10_2 = L10_2.UnityEngine
      L10_2 = L10_2.EventSystems
      L10_2 = L10_2.MoveDirection
      L10_2 = L10_2.Down
      L7_2(L8_2, L9_2, L10_2)
      L8_2 = L6_2
      L7_2 = L6_2.get_static_list
      L7_2 = L7_2(L8_2)
      L8_2 = L7_2
      L7_2 = L7_2.SetDirectionRefListview
      L10_2 = A2_2
      L9_2 = A2_2.get_static_list
      L9_2 = L9_2(L10_2)
      L10_2 = CS
      L10_2 = L10_2.UnityEngine
      L10_2 = L10_2.EventSystems
      L10_2 = L10_2.MoveDirection
      L10_2 = L10_2.Up
      L7_2(L8_2, L9_2, L10_2)
    end
  end
end
L1_1._set_item_border_navi = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.CoroutineUtils
  L1_2 = L1_2.InvokeAfterFrames
  L2_2 = 2
  function L3_2()
    local L0_3, L1_3, L2_3
    L0_3 = A0_2
    L1_3 = L0_3
    L0_3 = L0_3._on_enter_zoom
    L2_3 = NavigationZoneType
    L2_3 = L2_3.Zone1
    L0_3(L1_3, L2_3)
  end
  L1_2(L2_2, L3_2)
end
L1_1._init_navigation = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.list_wave
  L2_2 = L1_2
  L1_2 = L1_2.GetShownItemByItemIndex
  L3_2 = 0
  L1_2 = L1_2(L2_2, L3_2)
  if L1_2 ~= nil then
    L2_2 = L1_2.UserObjectData
    if L2_2 ~= nil then
      goto lbl_13
    end
  end
  L2_2 = nil
  do return L2_2 end
  ::lbl_13::
  L2_2 = L1_2.UserObjectData
  L3_2 = L2_2
  L2_2 = L2_2.get_first_selected_object
  return L2_2(L3_2)
end
L1_1.get_first_selected_object = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L3_2 = A0_2
  L2_2 = A0_2.get_zoom_navigation_target
  L4_2 = A1_2
  L2_2 = L2_2(L3_2, L4_2)
  if L2_2 == nil then
    L4_2 = A0_2
    L3_2 = A0_2.get_first_selected_object
    L3_2 = L3_2(L4_2)
    L2_2 = L3_2
  end
  L4_2 = A0_2
  L3_2 = A0_2.set_navigation_target
  L5_2 = L2_2
  L3_2(L4_2, L5_2)
end
L1_1._on_enter_zoom = L2_1
return L1_1
