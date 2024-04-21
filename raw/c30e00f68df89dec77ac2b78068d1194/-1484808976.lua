local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1, L6_1, L7_1, L8_1, L9_1, L10_1, L11_1
L0_1 = require
L1_1 = "Ui.Map.RegionalMap.RegionalMapPanelBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Map.MapVirtualCursorPanel"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "RegionalMapPanel"
L2_1 = G
L2_1 = L2_1.BasePanel
L0_1 = L0_1(L1_1, L2_1)
L1_1 = 15
L2_1 = "RegionalMapSpot_UnlockHint"
L3_1 = 0.1
L4_1 = 0.1
L5_1 = 30
L6_1 = 100
L7_1 = 50
L8_1 = 0.3
L9_1 = {}
L10_1 = CS
L10_1 = L10_1.RPG
L10_1 = L10_1.GameCore
L10_1 = L10_1.MapSpaceType
L10_1 = L10_1.Reality
L9_1[L10_1] = "Open"
L10_1 = CS
L10_1 = L10_1.RPG
L10_1 = L10_1.GameCore
L10_1 = L10_1.MapSpaceType
L10_1 = L10_1.Dream
L9_1[L10_1] = "Close"
L10_1 = {}
L11_1 = CS
L11_1 = L11_1.RPG
L11_1 = L11_1.GameCore
L11_1 = L11_1.MapSpaceType
L11_1 = L11_1.Reality
L10_1[L11_1] = "Switch_Open"
L11_1 = CS
L11_1 = L11_1.RPG
L11_1 = L11_1.GameCore
L11_1 = L11_1.MapSpaceType
L11_1 = L11_1.Dream
L10_1[L11_1] = "Switch_Close"
function L11_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2
  A0_2._cur_show_world_id = A3_2
  L4_2 = A0_2._cur_show_world_id
  A2_2._cur_show_world_id = L4_2
  A0_2._map_space_type = nil
  A0_2._node_content_last_position_x = nil
end
L0_1.ctor = L11_1
function L11_1(A0_2, A1_2, A2_2, A3_2, A4_2)
  A0_2._left_arrow = A1_2
  A0_2._right_arrow = A2_2
  A0_2._top_arrow = A3_2
  A0_2._bottom_arrow = A4_2
end
L0_1.register_arrow_node = L11_1
function L11_1(A0_2, A1_2, A2_2)
  A0_2._region_item_click_callback_func = A1_2
  A0_2._region_item_click_callback_obj = A2_2
end
L0_1.reg_region_item_click_call_back = L11_1
function L11_1(A0_2, A1_2, A2_2)
  A0_2._regional_detail_close_callback_func = A1_2
  A0_2._regional_detail_close_callback_obj = A2_2
end
L0_1.reg_regional_detail_close_call_back = L11_1
function L11_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  A0_2._map_space_type = A1_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.root_animator
  if L2_2 then
    L2_2 = A0_2._target_node
    if L2_2 then
      L3_2 = A0_2
      L2_2 = A0_2._make_cur_map_center
      L2_2(L3_2)
    else
      L2_2 = A0_2._binder
      L2_2 = L2_2.node_content
      L2_2 = L2_2.transform
      L3_2 = CS
      L3_2 = L3_2.UnityEngine
      L3_2 = L3_2.Vector3
      L3_2 = L3_2.zero
      L2_2.localPosition = L3_2
    end
    L2_2 = A0_2._binder
    L2_2 = L2_2.root_animator
    L3_2 = L2_2
    L2_2 = L2_2.SetTrigger
    L4_2 = L9_1[A1_2]
    L2_2(L3_2, L4_2)
  end
end
L0_1.setup_regional_map_space = L11_1
function L11_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.root_animator
  if L2_2 then
    A0_2._map_space_type = A1_2
    L3_2 = A0_2
    L2_2 = A0_2.setup_content_position_by_space_type
    L4_2 = A1_2
    L2_2(L3_2, L4_2)
  end
end
L0_1.regional_map_switch_space = L11_1
function L11_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L1_2 = pairs
  L2_2 = A0_2._binder
  L2_2 = L2_2.btn_region_item_list
  L1_2, L2_2, L3_2 = L1_2(L2_2)
  for L4_2, L5_2 in L1_2, L2_2, L3_2 do
    L7_2 = L5_2
    L6_2 = L5_2.SetChecked
    L8_2 = false
    L6_2(L7_2, L8_2)
  end
end
L0_1.clear_btn_region_item_state = L11_1
function L11_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2
  A0_2._node_content_last_position_x = nil
  L3_2 = tonumber
  L4_2 = string
  L4_2 = L4_2.format
  L5_2 = "%.2f"
  L6_2 = CS
  L6_2 = L6_2.RPG
  L6_2 = L6_2.Client
  L6_2 = L6_2.UIUtils
  L6_2 = L6_2.UIScaleFactor
  L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2 = L4_2(L5_2, L6_2)
  L3_2 = L3_2(L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2)
  L4_2 = CS
  L4_2 = L4_2.UnityEngine
  L4_2 = L4_2.Screen
  L4_2 = L4_2.width
  L4_2 = L4_2 / L3_2
  L5_2 = A0_2._binder
  L5_2 = L5_2.node_map_entrance_list
  L5_2 = L5_2[A1_2]
  L6_2 = A0_2._binder
  L6_2 = L6_2.node_map_spot_list
  L6_2 = L6_2[A1_2]
  L7_2 = A0_2._binder
  L7_2 = L7_2.node_content
  L7_2 = L7_2.transform
  L7_2 = L7_2.localPosition
  L7_2 = L7_2.x
  L8_2 = L5_2.transform
  L8_2 = L8_2.localPosition
  L8_2 = L8_2.x
  L7_2 = L7_2 + L8_2
  L8_2 = L6_2.transform
  L8_2 = L8_2.pivot
  L8_2 = L8_2.x
  if L8_2 == 1 then
    L8_2 = A0_2._binder
    L8_2 = L8_2.node_content
    L8_2 = L8_2.transform
    L8_2 = L8_2.localPosition
    L8_2 = L8_2.x
    L9_2 = L5_2.transform
    L9_2 = L9_2.localPosition
    L9_2 = L9_2.x
    L8_2 = L8_2 + L9_2
    L9_2 = L5_2.transform
    L9_2 = L9_2.sizeDelta
    L9_2 = L9_2.x
    L9_2 = L9_2 / 2
    L7_2 = L8_2 + L9_2
  end
  L8_2 = L4_2 / 2
  L9_2 = A2_2.transform
  L9_2 = L9_2.sizeDelta
  L9_2 = L9_2.x
  L8_2 = L8_2 - L9_2
  L8_2 = L7_2 - L8_2
  if 0 < L8_2 then
    L9_2 = A0_2._binder
    L9_2 = L9_2.scroll_rect
    L9_2.enabled = false
    L9_2 = A0_2._binder
    L9_2 = L9_2.node_content
    L9_2 = L9_2.transform
    L9_2 = L9_2.localPosition
    L9_2 = L9_2.x
    A0_2._node_content_last_position_x = L9_2
    L9_2 = CS
    L9_2 = L9_2.UnityEngine
    L9_2 = L9_2.Vector3
    L10_2 = L8_2 + 20
    L10_2 = -L10_2
    L11_2 = A0_2._binder
    L11_2 = L11_2.node_content
    L11_2 = L11_2.transform
    L11_2 = L11_2.localPosition
    L11_2 = L11_2.y
    L12_2 = 0
    L9_2 = L9_2(L10_2, L11_2, L12_2)
    L10_2 = A0_2._binder
    L10_2 = L10_2.node_content
    L10_2 = L10_2.transform
    L10_2.localPosition = L9_2
    L10_2 = A0_2._virtual_cursor
    if L10_2 then
      L10_2 = A0_2._cur_select_target
      if L10_2 then
        L11_2 = A0_2
        L10_2 = A0_2._get_target_position
        L12_2 = A0_2._cur_select_target
        L10_2 = L10_2(L11_2, L12_2)
        L11_2 = A0_2._binder
        L11_2 = L11_2.node_content
        L11_2 = L11_2.transform
        L11_2 = L11_2.localPosition
        L11_2 = L10_2 + L11_2
        L12_2 = A0_2._virtual_cursor
        L12_2 = L12_2.transform
        L12_2.localPosition = L11_2
      end
    end
  end
end
L0_1.adjust_content_position = L11_1
function L11_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.scroll_rect
  L1_2.enabled = true
  L1_2 = A0_2._node_content_last_position_x
  if L1_2 then
    L1_2 = CS
    L1_2 = L1_2.UnityEngine
    L1_2 = L1_2.Vector3
    L2_2 = A0_2._node_content_last_position_x
    L3_2 = A0_2._binder
    L3_2 = L3_2.node_content
    L3_2 = L3_2.transform
    L3_2 = L3_2.localPosition
    L3_2 = L3_2.y
    L4_2 = 0
    L1_2 = L1_2(L2_2, L3_2, L4_2)
    L2_2 = A0_2._binder
    L2_2 = L2_2.node_content
    L2_2 = L2_2.transform
    L2_2.localPosition = L1_2
  end
end
L0_1.reset_content_position = L11_1
function L11_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L2_2 = math
  L2_2 = L2_2.abs
  L3_2 = A0_2._binder
  L3_2 = L3_2.node_content
  L3_2 = L3_2.transform
  L3_2 = L3_2.localPosition
  L3_2 = L3_2.y
  L2_2 = L2_2(L3_2)
  L3_2 = L2_2 * 4
  L4_2 = A0_2._binder
  L4_2 = L4_2.node_content
  L4_2 = L4_2.transform
  L4_2 = L4_2.sizeDelta
  L4_2 = L4_2.y
  L3_2 = L3_2 / L4_2
  L4_2 = L8_1
  L3_2 = L3_2 * L4_2
  L4_2 = A0_2._effect_motion
  L5_2 = L4_2
  L4_2 = L4_2.InitEffectMotion
  L6_2 = A0_2._binder
  L6_2 = L6_2.node_content
  L6_2 = L6_2.transform
  L7_2 = L3_2
  L8_2 = 0
  L9_2 = 0
  L4_2(L5_2, L6_2, L7_2, L8_2, L9_2)
  L4_2 = A0_2._effect_motion
  function L5_2()
    local L0_3, L1_3, L2_3
    L0_3 = A0_2._binder
    L0_3 = L0_3.root_animator
    L1_3 = L0_3
    L0_3 = L0_3.SetTrigger
    L2_3 = A1_2
    L2_3 = L10_1[L2_3]
    L0_3(L1_3, L2_3)
  end
  L4_2.onMotionEnd = L5_2
end
L0_1.setup_content_position_by_space_type = L11_1
function L11_1(A0_2)
  local L1_2, L2_2, L3_2
  L2_2 = A0_2
  L1_2 = A0_2._adjust_arrow_show
  L1_2(L2_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.scroll_rect
  L1_2 = L1_2.onValueChanged
  L2_2 = L1_2
  L1_2 = L1_2.AddListener
  function L3_2()
    local L0_3, L1_3
    L0_3 = A0_2
    L1_3 = L0_3
    L0_3 = L0_3._adjust_arrow_show
    L0_3(L1_3)
  end
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._map_space_type
  if L1_2 then
    L2_2 = A0_2
    L1_2 = A0_2.setup_regional_map_space
    L3_2 = A0_2._map_space_type
    L1_2(L2_2, L3_2)
  else
    L2_2 = A0_2
    L1_2 = A0_2._make_cur_map_center
    L1_2(L2_2)
  end
  L2_2 = A0_2
  L1_2 = A0_2._play_new_unlock_animation
  L1_2(L2_2)
end
L0_1._setup_view = L11_1
function L11_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.Prefs
  L1_2 = L1_2.User
  L2_2 = L1_2.NewUnlockMapEntranceID
  L3_2 = L2_2
  L2_2 = L2_2.ContainsKey
  L4_2 = A0_2._cur_show_world_id
  L2_2 = L2_2(L3_2, L4_2)
  if L2_2 then
    L2_2 = L1_2.NewUnlockMapEntranceID
    L3_2 = A0_2._cur_show_world_id
    L2_2 = L2_2[L3_2]
    L4_2 = L2_2
    L3_2 = L2_2.GetEnumerator
    L3_2 = L3_2(L4_2)
    while L3_2 do
      L5_2 = L3_2
      L4_2 = L3_2.MoveNext
      L4_2 = L4_2(L5_2)
      if not L4_2 then
        break
      end
      L4_2 = A0_2._binder
      L4_2 = L4_2.anim_map_entrance
      L5_2 = L3_2.Current
      L4_2 = L4_2[L5_2]
      if L4_2 then
        L4_2 = A0_2._map_space_type
        if L4_2 == nil then
          L4_2 = A0_2._binder
          L4_2 = L4_2.anim_map_entrance
          L5_2 = L3_2.Current
          L4_2 = L4_2[L5_2]
          L5_2 = L4_2
          L4_2 = L4_2.Play
          L6_2 = L2_1
          L4_2(L5_2, L6_2)
        end
      end
    end
    L4_2 = L1_2.NewUnlockMapEntranceID
    L5_2 = A0_2._cur_show_world_id
    L4_2 = L4_2[L5_2]
    L5_2 = L4_2
    L4_2 = L4_2.Clear
    L4_2(L5_2)
    L4_2 = L1_2.NewUnlockMapEntranceID
    L5_2 = L4_2
    L4_2 = L4_2.SetDirty
    L4_2(L5_2)
    L4_2 = G
    L4_2 = L4_2.NotifyManager
    L4_2 = L4_2.notify
    L5_2 = G
    L5_2 = L5_2.CS
    L5_2 = L5_2.NotifyType
    L5_2 = L5_2.UnlockMapEntranceIDChanged
    L4_2(L5_2)
    L4_2 = CS
    L4_2 = L4_2.RPG
    L4_2 = L4_2.Client
    L4_2 = L4_2.Prefs
    L4_2 = L4_2.User
    L4_2.LatestUnlockMapEntranceID = 0
    L4_2 = CS
    L4_2 = L4_2.RPG
    L4_2 = L4_2.Client
    L4_2 = L4_2.Prefs
    L4_2 = L4_2.ForceSave
    L4_2()
  end
end
L0_1._play_new_unlock_animation = L11_1
function L11_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2
  L2_2 = A0_2
  L1_2 = A0_2.create_panel
  L3_2 = G
  L3_2 = L3_2.MapVirtualCursorPanel
  L4_2 = G
  L4_2 = L4_2.MapVirtualCursorPanelBinder
  L5_2 = L5_1
  L6_2 = nil
  L7_2 = L6_1
  L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2, L6_2, L7_2)
  A0_2._map_virtual_cursor_panel = L1_2
  L1_2 = A0_2._map_virtual_cursor_panel
  L2_2 = L1_2
  L1_2 = L1_2.async_bind
  L3_2 = A0_2._binder
  L3_2 = L3_2.root
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._map_virtual_cursor_panel
  L2_2 = L1_2
  L1_2 = L1_2.setup_callback
  L3_2 = A0_2
  L4_2 = A0_2.setup_virtual_cursor
  L5_2 = A0_2._on_in_control_press_call_back
  L6_2 = A0_2._on_in_control_release_call_back
  L1_2(L2_2, L3_2, L4_2, L5_2, L6_2)
  L1_2 = ipairs
  L2_2 = A0_2._binder
  L2_2 = L2_2.btn_close_regional_detail_list
  L1_2, L2_2, L3_2 = L1_2(L2_2)
  for L4_2, L5_2 in L1_2, L2_2, L3_2 do
    L7_2 = A0_2
    L6_2 = A0_2._bind_btn_callback
    L8_2 = L5_2
    L9_2 = A0_2._on_btn_close_regional_detail_click
    L6_2(L7_2, L8_2, L9_2)
  end
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.Motions
  L1_2 = L1_2.MonoEffectMotion
  L1_2 = L1_2.Get
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_content
  L2_2 = L2_2.gameObject
  L1_2 = L1_2(L2_2)
  A0_2._effect_motion = L1_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.GlobalVars
  L1_2 = L1_2.s_ModuleManager
  L1_2 = L1_2.AdventureModule
  L1_2 = L1_2.MapDef
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.Client
  L2_2 = L2_2.BigMapUtils
  L2_2 = L2_2.GetMapEntryRow
  L3_2 = L1_2.PlaneID
  L4_2 = L1_2.FloorID
  L2_2 = L2_2(L3_2, L4_2)
  L3_2 = pairs
  L4_2 = A0_2._binder
  L4_2 = L4_2.text_entrance_name_list
  L3_2, L4_2, L5_2 = L3_2(L4_2)
  for L6_2, L7_2 in L3_2, L4_2, L5_2 do
    L8_2 = CS
    L8_2 = L8_2.RPG
    L8_2 = L8_2.GameCore
    L8_2 = L8_2.AreaMapConfigExcelTable
    L8_2 = L8_2.GetData
    L9_2 = L6_2
    L8_2 = L8_2(L9_2)
    L10_2 = L7_2
    L9_2 = L7_2.SafeSetTextID
    L11_2 = L8_2.Name
    L9_2(L10_2, L11_2)
    L9_2 = A0_2._binder
    L9_2 = L9_2.node_current_spot_eff_list
    L9_2 = L9_2[L6_2]
    L10_2 = L9_2
    L9_2 = L9_2.SafeSetActive
    L11_2 = L2_2.ID
    L11_2 = L11_2 == L6_2
    L9_2(L10_2, L11_2)
    L9_2 = A0_2._binder
    L9_2 = L9_2.node_current_player_mark_list
    L9_2 = L9_2[L6_2]
    L10_2 = L9_2
    L9_2 = L9_2.SafeSetActive
    L11_2 = L2_2.ID
    L11_2 = L11_2 == L6_2
    L9_2(L10_2, L11_2)
  end
  L3_2 = A0_2._binder
  L3_2 = L3_2.scroll_rect
  L3_2 = L3_2.vertical
  if not L3_2 then
    L3_2 = A0_2._binder
    L3_2 = L3_2.scroll_rect
    L3_2 = L3_2.horizontal
    if not L3_2 then
      goto lbl_114
    end
  end
  L4_2 = A0_2
  L3_2 = A0_2.setup_short_cut_hint_panel
  L5_2 = {}
  L6_2 = "ActionGroup_MapSelect"
  L7_2 = "ActionGroup_Return"
  L5_2[1] = L6_2
  L5_2[2] = L7_2
  L3_2(L4_2, L5_2)
  goto lbl_119
  ::lbl_114::
  L4_2 = A0_2
  L3_2 = A0_2.setup_short_cut_hint_panel
  L5_2 = {}
  L6_2 = "ActionGroup_Return"
  L5_2[1] = L6_2
  L3_2(L4_2, L5_2)
  ::lbl_119::
  L3_2 = pairs
  L4_2 = A0_2._binder
  L4_2 = L4_2.btn_region_item_list
  L3_2, L4_2, L5_2 = L3_2(L4_2)
  for L6_2, L7_2 in L3_2, L4_2, L5_2 do
    L8_2 = {}
    L8_2.entrance_id = L6_2
    L8_2.btn_region_item = L7_2
    L10_2 = A0_2
    L9_2 = A0_2._bind_btn_callback
    L11_2 = L7_2
    L12_2 = A0_2._on_btn_region_item_click
    L13_2 = L8_2
    L9_2(L10_2, L11_2, L12_2, L13_2)
  end
  A0_2._target_node = nil
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.Client
  L3_2 = L3_2.Prefs
  L3_2 = L3_2.User
  L3_2 = L3_2.LatestUnlockMapEntranceID
  if 0 < L3_2 then
    L3_2 = A0_2._binder
    L3_2 = L3_2.node_map_entrance_list
    L4_2 = CS
    L4_2 = L4_2.RPG
    L4_2 = L4_2.Client
    L4_2 = L4_2.Prefs
    L4_2 = L4_2.User
    L4_2 = L4_2.LatestUnlockMapEntranceID
    L3_2 = L3_2[L4_2]
    A0_2._target_node = L3_2
  else
    L3_2 = pairs
    L4_2 = A0_2._binder
    L4_2 = L4_2.node_map_entrance_list
    L3_2, L4_2, L5_2 = L3_2(L4_2)
    for L6_2, L7_2 in L3_2, L4_2, L5_2 do
      L8_2 = L2_2.ID
      if L6_2 == L8_2 then
        A0_2._target_node = L7_2
        break
      end
    end
  end
end
L0_1._on_load = L11_1
function L11_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._regional_detail_close_callback_func
  if L1_2 then
    L1_2 = A0_2._regional_detail_close_callback_func
    L2_2 = A0_2._regional_detail_close_callback_obj
    L1_2(L2_2)
  end
end
L0_1._on_btn_close_regional_detail_click = L11_1
function L11_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2._region_item_click_callback_func
  if L2_2 then
    L3_2 = A0_2
    L2_2 = A0_2.clear_btn_region_item_state
    L2_2(L3_2)
    L2_2 = A1_2.btn_region_item
    L3_2 = L2_2
    L2_2 = L2_2.SetChecked
    L4_2 = true
    L2_2(L3_2, L4_2)
    L2_2 = A0_2._region_item_click_callback_func
    L3_2 = A0_2._region_item_click_callback_obj
    L4_2 = A1_2.entrance_id
    L2_2(L3_2, L4_2)
  end
end
L0_1._on_btn_region_item_click = L11_1
function L11_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  A0_2._virtual_cursor = A1_2
  L2_2 = A0_2._map_virtual_cursor_panel
  L3_2 = L2_2
  L2_2 = L2_2.setup_image_active
  L4_2 = true
  L2_2(L3_2, L4_2)
end
L0_1.setup_virtual_cursor = L11_1
function L11_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2
  L3_2 = CS
  L3_2 = L3_2.InControl
  L3_2 = L3_2.InputControlType
  L3_2 = L3_2.LeftStickUp
  L3_2 = #L3_2
  if A1_2 == L3_2 then
    L4_2 = A0_2
    L3_2 = A0_2._on_process_move_up
    L5_2 = A2_2
    L3_2(L4_2, L5_2)
  else
    L3_2 = CS
    L3_2 = L3_2.InControl
    L3_2 = L3_2.InputControlType
    L3_2 = L3_2.LeftStickDown
    L3_2 = #L3_2
    if A1_2 == L3_2 then
      L4_2 = A0_2
      L3_2 = A0_2._on_process_move_down
      L5_2 = A2_2
      L3_2(L4_2, L5_2)
    else
      L3_2 = CS
      L3_2 = L3_2.InControl
      L3_2 = L3_2.InputControlType
      L3_2 = L3_2.LeftStickLeft
      L3_2 = #L3_2
      if A1_2 == L3_2 then
        L4_2 = A0_2
        L3_2 = A0_2._on_process_move_left
        L5_2 = A2_2
        L3_2(L4_2, L5_2)
      else
        L3_2 = CS
        L3_2 = L3_2.InControl
        L3_2 = L3_2.InputControlType
        L3_2 = L3_2.LeftStickRight
        L3_2 = #L3_2
        if A1_2 == L3_2 then
          L4_2 = A0_2
          L3_2 = A0_2._on_process_move_right
          L5_2 = A2_2
          L3_2(L4_2, L5_2)
        end
      end
    end
  end
end
L0_1._on_in_control_press_call_back = L11_1
function L11_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L3_2 = A0_2
  L2_2 = A0_2._get_nearest_item_entrance_id_by_cursor
  L4_2 = A1_2
  L2_2 = L2_2(L3_2, L4_2)
  if L2_2 then
    L4_2 = A0_2
    L3_2 = A0_2._trigger_btn_region_item
    L5_2 = L2_2
    L3_2(L4_2, L5_2)
    L3_2 = A0_2._map_virtual_cursor_panel
    L4_2 = L3_2
    L3_2 = L3_2.setup_image_active
    L5_2 = false
    L3_2(L4_2, L5_2)
  else
    L3_2 = A0_2._owner
    L4_2 = L3_2
    L3_2 = L3_2._try_close_regional_detail_panel
    L3_2(L4_2)
  end
end
L0_1._on_in_control_release_call_back = L11_1
function L11_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L2_2 = pairs
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_region_item_list
  L2_2, L3_2, L4_2 = L2_2(L3_2)
  for L5_2, L6_2 in L2_2, L3_2, L4_2 do
    if L5_2 == A1_2 then
      L7_2 = {}
      L7_2.entrance_id = L5_2
      L7_2.btn_region_item = L6_2
      L9_2 = A0_2
      L8_2 = A0_2._on_btn_region_item_click
      L10_2 = L7_2
      L8_2(L9_2, L10_2)
      return
    end
  end
end
L0_1._trigger_btn_region_item = L11_1
function L11_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.scroll_rect
  L2_2 = L2_2.vertical
  if L2_2 then
    L2_2 = A0_2._binder
    L2_2 = L2_2.node_content
    L2_2 = L2_2.transform
    L2_2 = L2_2.localPosition
    L2_2 = L2_2.x
    L3_2 = A0_2._binder
    L3_2 = L3_2.node_content
    L3_2 = L3_2.transform
    L3_2 = L3_2.localPosition
    L3_2 = L3_2.y
    L4_2 = L1_1
    L4_2 = A1_2 * L4_2
    L3_2 = L3_2 - L4_2
    L4_2 = CS
    L4_2 = L4_2.UnityEngine
    L4_2 = L4_2.Vector3
    L5_2 = L2_2
    L6_2 = L3_2
    L7_2 = 0
    L4_2 = L4_2(L5_2, L6_2, L7_2)
    L5_2 = A0_2._binder
    L5_2 = L5_2.node_content
    L5_2 = L5_2.transform
    L5_2.localPosition = L4_2
  end
end
L0_1._on_process_move_up = L11_1
function L11_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.scroll_rect
  L2_2 = L2_2.vertical
  if L2_2 then
    L2_2 = A0_2._binder
    L2_2 = L2_2.node_content
    L2_2 = L2_2.transform
    L2_2 = L2_2.localPosition
    L2_2 = L2_2.x
    L3_2 = A0_2._binder
    L3_2 = L3_2.node_content
    L3_2 = L3_2.transform
    L3_2 = L3_2.localPosition
    L3_2 = L3_2.y
    L4_2 = L1_1
    L4_2 = A1_2 * L4_2
    L3_2 = L3_2 + L4_2
    L4_2 = CS
    L4_2 = L4_2.UnityEngine
    L4_2 = L4_2.Vector3
    L5_2 = L2_2
    L6_2 = L3_2
    L7_2 = 0
    L4_2 = L4_2(L5_2, L6_2, L7_2)
    L5_2 = A0_2._binder
    L5_2 = L5_2.node_content
    L5_2 = L5_2.transform
    L5_2.localPosition = L4_2
  end
end
L0_1._on_process_move_down = L11_1
function L11_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.scroll_rect
  L2_2 = L2_2.horizontal
  if L2_2 then
    L2_2 = A0_2._binder
    L2_2 = L2_2.node_content
    L2_2 = L2_2.transform
    L2_2 = L2_2.localPosition
    L2_2 = L2_2.x
    L3_2 = L1_1
    L3_2 = A1_2 * L3_2
    L2_2 = L2_2 + L3_2
    L3_2 = A0_2._binder
    L3_2 = L3_2.node_content
    L3_2 = L3_2.transform
    L3_2 = L3_2.localPosition
    L3_2 = L3_2.y
    L4_2 = CS
    L4_2 = L4_2.UnityEngine
    L4_2 = L4_2.Vector3
    L5_2 = L2_2
    L6_2 = L3_2
    L7_2 = 0
    L4_2 = L4_2(L5_2, L6_2, L7_2)
    L5_2 = A0_2._binder
    L5_2 = L5_2.node_content
    L5_2 = L5_2.transform
    L5_2.localPosition = L4_2
  end
end
L0_1._on_process_move_left = L11_1
function L11_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.scroll_rect
  L2_2 = L2_2.horizontal
  if L2_2 then
    L2_2 = A0_2._binder
    L2_2 = L2_2.node_content
    L2_2 = L2_2.transform
    L2_2 = L2_2.localPosition
    L2_2 = L2_2.x
    L3_2 = L1_1
    L3_2 = A1_2 * L3_2
    L2_2 = L2_2 - L3_2
    L3_2 = A0_2._binder
    L3_2 = L3_2.node_content
    L3_2 = L3_2.transform
    L3_2 = L3_2.localPosition
    L3_2 = L3_2.y
    L4_2 = CS
    L4_2 = L4_2.UnityEngine
    L4_2 = L4_2.Vector3
    L5_2 = L2_2
    L6_2 = L3_2
    L7_2 = 0
    L4_2 = L4_2(L5_2, L6_2, L7_2)
    L5_2 = A0_2._binder
    L5_2 = L5_2.node_content
    L5_2 = L5_2.transform
    L5_2.localPosition = L4_2
  end
end
L0_1._on_process_move_right = L11_1
function L11_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.scroll_rect
  L1_2 = L1_2.horizontal
  if L1_2 then
    L1_2 = A0_2._left_arrow
    L2_2 = L1_2
    L1_2 = L1_2.SafeSetActive
    L3_2 = A0_2._binder
    L3_2 = L3_2.scroll_rect
    L3_2 = L3_2.horizontalNormalizedPosition
    L4_2 = L3_1
    L3_2 = L3_2 > L4_2
    L1_2(L2_2, L3_2)
    L1_2 = A0_2._right_arrow
    L2_2 = L1_2
    L1_2 = L1_2.SafeSetActive
    L3_2 = A0_2._binder
    L3_2 = L3_2.scroll_rect
    L3_2 = L3_2.horizontalNormalizedPosition
    L4_2 = L3_1
    L4_2 = 1 - L4_2
    L3_2 = L3_2 < L4_2
    L1_2(L2_2, L3_2)
  end
  L1_2 = A0_2._binder
  L1_2 = L1_2.scroll_rect
  L1_2 = L1_2.vertical
  if L1_2 then
    L1_2 = A0_2._bottom_arrow
    L2_2 = L1_2
    L1_2 = L1_2.SafeSetActive
    L3_2 = A0_2._binder
    L3_2 = L3_2.scroll_rect
    L3_2 = L3_2.verticalNormalizedPosition
    L4_2 = L4_1
    L3_2 = L3_2 > L4_2
    L1_2(L2_2, L3_2)
    L1_2 = A0_2._top_arrow
    L2_2 = L1_2
    L1_2 = L1_2.SafeSetActive
    L3_2 = A0_2._binder
    L3_2 = L3_2.scroll_rect
    L3_2 = L3_2.verticalNormalizedPosition
    L4_2 = L4_1
    L4_2 = 1 - L4_2
    L3_2 = L3_2 < L4_2
    L1_2(L2_2, L3_2)
  end
end
L0_1._adjust_arrow_show = L11_1
function L11_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2
  L1_2 = A0_2._target_node
  if L1_2 == nil then
    return
  end
  L2_2 = A0_2
  L1_2 = A0_2._get_spot_panel_rect_transform
  L3_2 = A0_2._target_node
  L1_2 = L1_2(L2_2, L3_2)
  L2_2 = A0_2._target_node
  L2_2 = L2_2.transform
  L3_2 = L2_2
  L2_2 = L2_2.GetComponent
  L4_2 = typeof
  L5_2 = CS
  L5_2 = L5_2.UnityEngine
  L5_2 = L5_2.RectTransform
  L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2 = L4_2(L5_2)
  L2_2 = L2_2(L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2)
  L3_2 = A0_2._binder
  L3_2 = L3_2.node_content
  L4_2 = L3_2
  L3_2 = L3_2.GetComponent
  L5_2 = typeof
  L6_2 = CS
  L6_2 = L6_2.UnityEngine
  L6_2 = L6_2.RectTransform
  L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2 = L5_2(L6_2)
  L3_2 = L3_2(L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2)
  L4_2 = L3_2.rect
  L4_2 = L4_2.width
  L4_2 = L4_2 / 2
  L5_2 = L3_2.pivot
  L5_2 = L5_2.x
  L5_2 = L5_2 - 0.5
  L4_2 = L4_2 * L5_2
  L5_2 = L3_2.rect
  L5_2 = L5_2.height
  L5_2 = L5_2 / 2
  L6_2 = L3_2.pivot
  L6_2 = L6_2.y
  L6_2 = L6_2 - 0.5
  L5_2 = L5_2 * L6_2
  L6_2 = A0_2._target_node
  L6_2 = L6_2.transform
  L6_2 = L6_2.anchoredPosition3D
  L6_2 = L6_2.x
  L7_2 = L1_2.pivot
  L7_2 = L7_2.x
  L7_2 = L7_2 - 0.5
  L8_2 = L2_2.rect
  L8_2 = L8_2.width
  L7_2 = L7_2 * L8_2
  L7_2 = L7_2 / 2
  L6_2 = L6_2 + L7_2
  L7_2 = A0_2._target_node
  L7_2 = L7_2.transform
  L7_2 = L7_2.anchoredPosition3D
  L7_2 = L7_2.y
  L8_2 = L1_2.pivot
  L8_2 = L8_2.y
  L8_2 = L8_2 - 0.5
  L9_2 = L2_2.rect
  L9_2 = L9_2.height
  L8_2 = L8_2 * L9_2
  L8_2 = L8_2 / 2
  L7_2 = L7_2 + L8_2
  L8_2 = A0_2._binder
  L8_2 = L8_2.node_content
  L8_2 = L8_2.anchoredPosition3D
  L8_2 = L8_2.x
  L9_2 = A0_2._binder
  L9_2 = L9_2.node_content
  L9_2 = L9_2.anchoredPosition3D
  L9_2 = L9_2.y
  L10_2 = A0_2._binder
  L10_2 = L10_2.scroll_rect
  L10_2 = L10_2.vertical
  if L10_2 then
    L9_2 = L5_2 - L7_2
  end
  L10_2 = A0_2._binder
  L10_2 = L10_2.scroll_rect
  L10_2 = L10_2.horizontal
  if L10_2 then
    L8_2 = L4_2 - L6_2
  end
  L10_2 = CS
  L10_2 = L10_2.UnityEngine
  L10_2 = L10_2.Vector3
  L11_2 = L8_2
  L12_2 = L9_2
  L13_2 = 0
  L10_2 = L10_2(L11_2, L12_2, L13_2)
  L11_2 = A0_2._binder
  L11_2 = L11_2.node_content
  L11_2.anchoredPosition3D = L10_2
end
L0_1._make_cur_map_center = L11_1
function L11_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = A1_2.transform
  L3_2 = L2_2
  L2_2 = L2_2.Find
  L4_2 = "MapSpot"
  L2_2 = L2_2(L3_2, L4_2)
  L3_2 = L2_2
  L2_2 = L2_2.Find
  L4_2 = "Root"
  L2_2 = L2_2(L3_2, L4_2)
  L3_2 = L2_2
  L2_2 = L2_2.Find
  L4_2 = "SpotPanel"
  L2_2 = L2_2(L3_2, L4_2)
  L3_2 = L2_2
  L2_2 = L2_2.GetComponent
  L4_2 = typeof
  L5_2 = CS
  L5_2 = L5_2.UnityEngine
  L5_2 = L5_2.RectTransform
  L4_2, L5_2 = L4_2(L5_2)
  return L2_2(L3_2, L4_2, L5_2)
end
L0_1._get_spot_panel_rect_transform = L11_1
function L11_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2
  L2_2 = nil
  L3_2 = A1_2.transform
  L3_2 = L3_2.localPosition
  L3_2 = L3_2.x
  L4_2 = A0_2._binder
  L4_2 = L4_2.node_content
  L4_2 = L4_2.localPosition
  L4_2 = L4_2.x
  L3_2 = L3_2 - L4_2
  L4_2 = A1_2.transform
  L4_2 = L4_2.localPosition
  L4_2 = L4_2.y
  L5_2 = A0_2._binder
  L5_2 = L5_2.node_content
  L5_2 = L5_2.localPosition
  L5_2 = L5_2.y
  L4_2 = L4_2 - L5_2
  L5_2 = CS
  L5_2 = L5_2.UnityEngine
  L5_2 = L5_2.Vector3
  L6_2 = L3_2
  L7_2 = L4_2
  L8_2 = 0
  L5_2 = L5_2(L6_2, L7_2, L8_2)
  L6_2 = pairs
  L7_2 = A0_2._binder
  L7_2 = L7_2.node_map_entrance_list
  L6_2, L7_2, L8_2 = L6_2(L7_2)
  for L9_2, L10_2 in L6_2, L7_2, L8_2 do
    L11_2 = G
    L11_2 = L11_2.MapUtil
    L11_2 = L11_2.get_map_space_type
    L12_2 = A0_2._cur_show_world_id
    L13_2 = L9_2
    L11_2 = L11_2(L12_2, L13_2)
    L12_2 = A0_2._map_space_type
    if L12_2 ~= nil then
      L12_2 = A0_2._map_space_type
      if not L12_2 then
        goto lbl_56
      end
      L12_2 = A0_2._map_space_type
      if L11_2 ~= L12_2 then
        goto lbl_56
      end
    end
    L13_2 = A0_2
    L12_2 = A0_2._get_target_position
    L14_2 = L10_2
    L12_2 = L12_2(L13_2, L14_2)
    L13_2 = L12_2 - L5_2
    L13_2 = L13_2.magnitude
    L14_2 = L7_1
    if L13_2 < L14_2 then
      A0_2._cur_select_target = L10_2
      L2_2 = L9_2
      break
    end
    ::lbl_56::
  end
  return L2_2
end
L0_1._get_nearest_item_entrance_id_by_cursor = L11_1
function L11_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L3_2 = A0_2
  L2_2 = A0_2._get_spot_panel_rect_transform
  L4_2 = A1_2.transform
  L2_2 = L2_2(L3_2, L4_2)
  L3_2 = A1_2.transform
  L4_2 = L3_2
  L3_2 = L3_2.GetComponent
  L5_2 = typeof
  L6_2 = CS
  L6_2 = L6_2.UnityEngine
  L6_2 = L6_2.RectTransform
  L5_2, L6_2, L7_2, L8_2, L9_2 = L5_2(L6_2)
  L3_2 = L3_2(L4_2, L5_2, L6_2, L7_2, L8_2, L9_2)
  L4_2 = A1_2.transform
  L4_2 = L4_2.anchoredPosition3D
  L4_2 = L4_2.x
  L5_2 = L2_2.pivot
  L5_2 = L5_2.x
  L5_2 = L5_2 - 0.5
  L6_2 = L3_2.rect
  L6_2 = L6_2.width
  L5_2 = L5_2 * L6_2
  L4_2 = L4_2 + L5_2
  L5_2 = A1_2.transform
  L5_2 = L5_2.anchoredPosition3D
  L5_2 = L5_2.y
  L6_2 = L2_2.pivot
  L6_2 = L6_2.y
  L6_2 = L6_2 - 0.5
  L7_2 = L3_2.rect
  L7_2 = L7_2.height
  L6_2 = L6_2 * L7_2
  L6_2 = L6_2 / 2
  L5_2 = L5_2 + L6_2
  L6_2 = CS
  L6_2 = L6_2.UnityEngine
  L6_2 = L6_2.Vector3
  L7_2 = L4_2
  L8_2 = L5_2
  L9_2 = 0
  L6_2 = L6_2(L7_2, L8_2, L9_2)
  return L6_2
end
L0_1._get_target_position = L11_1
return L0_1
