local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1, L6_1, L7_1
L0_1 = require
L1_1 = "Ui.PhotoGraph.PhotoGraphUtils"
L0_1(L1_1)
L0_1 = CS
L0_1 = L0_1.RPG
L0_1 = L0_1.Client
L0_1 = L0_1.GlobalVars
L0_1 = L0_1.s_ModuleManager
L0_1 = L0_1.SilverWolfModule
L1_1 = CS
L1_1 = L1_1.RPG
L1_1 = L1_1.GameCore
L1_1 = L1_1.DecalConfigExcelTable
L2_1 = CS
L2_1 = L2_1.RPG
L2_1 = L2_1.Client
L2_1 = L2_1.SilverWolfUtils
L3_1 = 108
L4_1 = 32
L5_1 = G
L5_1 = L5_1.Class
L6_1 = "PhotoGraphDecalSelectPanel"
L7_1 = G
L7_1 = L7_1.BasePanel
L5_1 = L5_1(L6_1, L7_1)
function L6_1(A0_2)
  local L1_2
  L1_2 = {}
  A0_2._decal_table = L1_2
  A0_2._cur_selected_decal_id = nil
end
L5_1.ctor = L6_1
function L6_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2._bind_gesture
  L3_2 = GestureType
  L3_2 = L3_2.SimpleTap
  L4_2 = A0_2._simple_tap_callback
  L1_2(L2_2, L3_2, L4_2)
end
L5_1._on_load = L6_1
function L6_1(A0_2)
  local L1_2, L2_2
  L1_2 = G
  L1_2 = L1_2.PhotoGraphUtils
  L1_2 = L1_2.set_camera_zoom_enable
  L2_2 = true
  L1_2(L2_2)
end
L5_1._on_dispose = L6_1
function L6_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2._init_decal_table
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._init_default_decal
  L1_2(L2_2)
end
L5_1.init = L6_1
function L6_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L1_2 = {}
  A0_2._decal_table = L1_2
  L1_2 = L0_1
  L2_2 = L1_2
  L1_2 = L1_2.GetDecalCollectionRows
  L1_2 = L1_2(L2_2)
  L2_2 = 0
  L3_2 = L1_2.Count
  L3_2 = L3_2 - 1
  L4_2 = 1
  for L5_2 = L2_2, L3_2, L4_2 do
    L6_2 = L1_1.GetData
    L7_2 = L1_2[L5_2]
    L7_2 = L7_2.TypeParam
    L6_2 = L6_2(L7_2)
    if L6_2 ~= nil then
      L7_2 = table
      L7_2 = L7_2.insert
      L8_2 = A0_2._decal_table
      L9_2 = L6_2
      L7_2(L8_2, L9_2)
    end
  end
end
L5_1._init_decal_table = L6_1
function L6_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L1_2 = pairs
  L2_2 = A0_2._decal_table
  L1_2, L2_2, L3_2 = L1_2(L2_2)
  for L4_2, L5_2 in L1_2, L2_2, L3_2 do
    L6_2 = L2_1.IsDecalQuestFinish
    L7_2 = L5_2.DecalID
    L6_2 = L6_2(L7_2)
    if L6_2 then
      L6_2 = L5_2.DecalID
      A0_2._cur_selected_decal_id = L6_2
      break
    end
  end
  L1_2 = A0_2._binder
  L1_2 = L1_2.cur_decal_panel
  L2_2 = L1_2
  L1_2 = L1_2.register_click_handler
  L3_2 = A0_2._on_btn_select
  L4_2 = A0_2
  L1_2(L2_2, L3_2, L4_2)
end
L5_1._init_default_decal = L6_1
function L6_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2._setup_decal_items
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._set_panel_decal_list_active
  L3_2 = false
  L4_2 = false
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._setup_cur_selected_decal
  L1_2(L2_2)
end
L5_1.setup_view = L6_1
function L6_1(A0_2, A1_2, A2_2)
  A0_2._decal_change_callback_handler = A1_2
  A0_2._decal_change_callback_listener = A2_2
end
L5_1.register_decal_change_callback = L6_1
function L6_1(A0_2)
  local L1_2
  L1_2 = A0_2._cur_selected_decal_id
  return L1_2
end
L5_1.get_cur_selected_decal_id = L6_1
function L6_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._cur_selected_decal_id
  if L1_2 ~= nil then
    L1_2 = L1_1.GetData
    L2_2 = A0_2._cur_selected_decal_id
    L1_2 = L1_2(L2_2)
    if L1_2 ~= nil then
      L2_2 = A0_2._binder
      L2_2 = L2_2.cur_decal_panel
      L3_2 = L2_2
      L2_2 = L2_2.setup_view
      L4_2 = L1_2
      L2_2(L3_2, L4_2)
      L2_2 = A0_2._binder
      L2_2 = L2_2.cur_decal_panel
      L3_2 = L2_2
      L2_2 = L2_2.set_is_locked
      L4_2 = false
      L2_2(L3_2, L4_2)
      return
    end
  end
  L1_2 = A0_2._binder
  L1_2 = L1_2.cur_decal_panel
  L2_2 = L1_2
  L1_2 = L1_2.set_is_locked
  L3_2 = true
  L1_2(L2_2, L3_2)
end
L5_1._setup_cur_selected_decal = L6_1
function L6_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L1_2 = A0_2._is_show_decal_list
  if L1_2 then
    L2_2 = A0_2
    L1_2 = A0_2._show_decal_lists
    L3_2 = false
    L1_2(L2_2, L3_2)
    return
  end
  L2_2 = A0_2
  L1_2 = A0_2._show_decal_lists
  L3_2 = true
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2._refresh_decal_item_select_state
  L1_2(L2_2)
  L1_2 = G
  L1_2 = L1_2.Utils
  L1_2 = L1_2.is_gamepad_input
  L1_2 = L1_2()
  if L1_2 then
    L1_2 = 1
    L2_2 = pairs
    L3_2 = A0_2._decal_table
    L2_2, L3_2, L4_2 = L2_2(L3_2)
    for L5_2, L6_2 in L2_2, L3_2, L4_2 do
      L7_2 = A0_2._cur_selected_decal_id
      L8_2 = L6_2.DecalID
      if L7_2 == L8_2 then
        L1_2 = L5_2
      end
    end
    L3_2 = A0_2
    L2_2 = A0_2.set_special_zoom_navigation_target
    L4_2 = A0_2._binder
    L4_2 = L4_2.panel_decal_lists
    L4_2 = L4_2[L1_2]
    L4_2 = L4_2._binder
    L4_2 = L4_2.btn_root
    L4_2 = L4_2.gameObject
    L2_2(L3_2, L4_2)
    L2_2 = A0_2._binder
    L2_2 = L2_2.in_control_tip_switch
    L2_2.IsShowTip = true
  end
end
L5_1._on_btn_select = L6_1
function L6_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._decal_select_block_close_once
  if L1_2 then
    A0_2._decal_select_block_close_once = false
    return
  end
  L2_2 = A0_2
  L1_2 = A0_2.is_active
  L1_2 = L1_2(L2_2)
  if not L1_2 then
    return
  end
  L2_2 = A0_2
  L1_2 = A0_2._show_decal_lists
  L3_2 = false
  L1_2(L2_2, L3_2)
end
L5_1._simple_tap_callback = L6_1
function L6_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  A0_2._is_show_decal_list = A1_2
  L3_2 = A0_2
  L2_2 = A0_2._set_panel_decal_list_active
  L4_2 = A1_2
  L5_2 = true
  L2_2(L3_2, L4_2, L5_2)
  L2_2 = G
  L2_2 = L2_2.PhotoGraphUtils
  L2_2 = L2_2.set_camera_zoom_enable
  L3_2 = not A1_2
  L2_2(L3_2)
  L2_2 = A0_2._owner
  if L2_2 then
    L2_2 = G
    L2_2 = L2_2.IsInstanceOf
    L3_2 = A0_2._owner
    L4_2 = G
    L4_2 = L4_2.PhotoGraphMainPage
    L2_2 = L2_2(L3_2, L4_2)
    if L2_2 then
      L2_2 = A0_2._owner
      L3_2 = L2_2
      L2_2 = L2_2.enable_joy_stick
      L4_2 = not A1_2
      L2_2(L3_2, L4_2)
    end
  end
  if not A1_2 then
    L2_2 = G
    L2_2 = L2_2.Utils
    L2_2 = L2_2.is_gamepad_input
    L2_2 = L2_2()
    if L2_2 then
      L2_2 = A0_2._owner
      L3_2 = L2_2
      L2_2 = L2_2.leave_special_zoom
      L2_2(L3_2)
    end
  end
  L2_2 = G
  L2_2 = L2_2.Utils
  L2_2 = L2_2.is_gamepad_input
  L2_2 = L2_2()
  if L2_2 then
    if A1_2 then
      L3_2 = A0_2
      L2_2 = A0_2.setup_short_cut_hint_panel
      L4_2 = L4_1
      L2_2(L3_2, L4_2)
    else
      L3_2 = A0_2
      L2_2 = A0_2.setup_short_cut_hint_panel
      L4_2 = L3_1
      L2_2(L3_2, L4_2)
    end
  end
end
L5_1._show_decal_lists = L6_1
function L6_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = L2_1.IsDecalQuestFinish
  L3_2 = A1_2.DecalID
  L2_2 = L2_2(L3_2)
  if not L2_2 then
    L2_2 = G
    L2_2 = L2_2.NotifyManager
    L2_2 = L2_2.notify
    L3_2 = G
    L3_2 = L3_2.CS
    L3_2 = L3_2.NotifyType
    L3_2 = L3_2.UIPileToastMessageTextID
    L4_2 = "UIText_SilverWolf_Collection_Tips_Decal_Lock"
    L2_2(L3_2, L4_2)
    A0_2._decal_select_block_close_once = true
    return
  end
  L2_2 = A1_2.DecalID
  A0_2._cur_selected_decal_id = L2_2
  L3_2 = A0_2
  L2_2 = A0_2._show_decal_lists
  L4_2 = false
  L2_2(L3_2, L4_2)
  L3_2 = A0_2
  L2_2 = A0_2._setup_cur_selected_decal
  L2_2(L3_2)
  L2_2 = G
  L2_2 = L2_2.Utils
  L2_2 = L2_2.invoke_callback
  L3_2 = A0_2._decal_change_callback_handler
  L4_2 = A0_2._decal_change_callback_listener
  L5_2 = A0_2._cur_selected_decal_id
  L2_2(L3_2, L4_2, L5_2)
end
L5_1._on_decal_select = L6_1
function L6_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2
  if not A2_2 then
    L4_2 = A0_2
    L3_2 = A0_2._set_decals_active
    L5_2 = A1_2
    L3_2(L4_2, L5_2)
    return
  end
  if A1_2 then
    L4_2 = A0_2
    L3_2 = A0_2._set_decals_active
    L5_2 = true
    L3_2(L4_2, L5_2)
    L3_2 = A0_2._binder
    L3_2 = L3_2.animation_list
    L4_2 = L3_2
    L3_2 = L3_2.Play
    L5_2 = "GraffitiBtnList_FadeIn"
    L3_2(L4_2, L5_2)
  else
    L3_2 = A0_2._binder
    L3_2 = L3_2.animation_list
    L4_2 = L3_2
    L3_2 = L3_2.Play
    L5_2 = "GraffitiBtnList_FadeOut"
    L3_2(L4_2, L5_2)
    L3_2 = A0_2._binder
    L3_2 = L3_2.animation_list
    L4_2 = L3_2
    L3_2 = L3_2.WaitAnimationEnd
    function L5_2()
      local L0_3, L1_3, L2_3
      L0_3 = A0_2._binder
      if L0_3 == nil then
        return
      end
      L0_3 = A0_2
      L1_3 = L0_3
      L0_3 = L0_3._set_decals_active
      L2_3 = false
      L0_3(L1_3, L2_3)
    end
    L6_2 = A0_2
    L3_2(L4_2, L5_2, L6_2)
  end
end
L5_1._set_panel_decal_list_active = L6_1
function L6_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L2_2 = pairs
  L3_2 = A0_2._binder
  L3_2 = L3_2.panel_decal_lists
  L2_2, L3_2, L4_2 = L2_2(L3_2)
  for L5_2, L6_2 in L2_2, L3_2, L4_2 do
    L8_2 = L6_2
    L7_2 = L6_2.set_view_active_by_scale
    L9_2 = A1_2
    L7_2(L8_2, L9_2)
  end
end
L5_1._set_decals_active = L6_1
function L6_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2
  L1_2 = pairs
  L2_2 = A0_2._decal_table
  L1_2, L2_2, L3_2 = L1_2(L2_2)
  for L4_2, L5_2 in L1_2, L2_2, L3_2 do
    L6_2 = A0_2._binder
    L6_2 = L6_2.panel_decal_lists
    L6_2 = L6_2[L4_2]
    if L6_2 ~= nil then
      L7_2 = L2_1.IsDecalQuestFinish
      L8_2 = L5_2.DecalID
      L7_2 = L7_2(L8_2)
      L9_2 = L6_2
      L8_2 = L6_2.setup_view
      L10_2 = L5_2
      L8_2(L9_2, L10_2)
      L9_2 = L6_2
      L8_2 = L6_2.set_second_btn_visible
      L10_2 = false
      L8_2(L9_2, L10_2)
      L9_2 = L6_2
      L8_2 = L6_2.set_is_locked
      L10_2 = not L7_2
      L8_2(L9_2, L10_2)
      L9_2 = L6_2
      L8_2 = L6_2.register_click_handler
      L10_2 = A0_2._on_decal_select
      L11_2 = A0_2
      L8_2(L9_2, L10_2, L11_2)
    end
  end
end
L5_1._setup_decal_items = L6_1
function L6_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L1_2 = pairs
  L2_2 = A0_2._decal_table
  L1_2, L2_2, L3_2 = L1_2(L2_2)
  for L4_2, L5_2 in L1_2, L2_2, L3_2 do
    L6_2 = A0_2._binder
    L6_2 = L6_2.panel_decal_lists
    L6_2 = L6_2[L4_2]
    if L6_2 ~= nil then
      L8_2 = L6_2
      L7_2 = L6_2.setup_selected
      L9_2 = L5_2.DecalID
      L10_2 = A0_2._cur_selected_decal_id
      L9_2 = L9_2 == L10_2
      L7_2(L8_2, L9_2)
    end
  end
end
L5_1._refresh_decal_item_select_state = L6_1
function L6_1(A0_2)
  local L1_2, L2_2, L3_2
  L2_2 = A0_2
  L1_2 = A0_2._show_decal_lists
  L3_2 = false
  L1_2(L2_2, L3_2)
end
L5_1._on_leave_special_zoom = L6_1
return L5_1
