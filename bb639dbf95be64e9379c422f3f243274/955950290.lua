local L0_1, L1_1, L2_1, L3_1
L0_1 = require
L1_1 = "Utilities.MuseumUtils"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "MuseumAreaInfoPanel"
L2_1 = G
L2_1 = L2_1.BasePanel
L0_1 = L0_1(L1_1, L2_1)
L1_1 = "MuseumRenewPreviewHint"
L2_1 = "MuseumRenewPreview_Shine"
function L3_1(A0_2)
  local L1_2
  A0_2._is_show_preview = false
end
L0_1.ctor = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.MuseumPreviewDataRefresh
  L4_2 = A0_2._on_museum_preview_data_refresh
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.btn_prev
  if L1_2 ~= nil then
    L2_2 = A0_2
    L1_2 = A0_2._bind_btn_callback
    L3_2 = A0_2._binder
    L3_2 = L3_2.btn_prev
    L4_2 = A0_2._on_btn_prev_click
    L1_2(L2_2, L3_2, L4_2)
  end
  L1_2 = A0_2._binder
  L1_2 = L1_2.btn_next
  if L1_2 ~= nil then
    L2_2 = A0_2
    L1_2 = A0_2._bind_btn_callback
    L3_2 = A0_2._binder
    L3_2 = L3_2.btn_next
    L4_2 = A0_2._on_btn_next_click
    L1_2(L2_2, L3_2, L4_2)
  end
end
L0_1._on_load = L3_1
function L3_1(A0_2, A1_2)
  local L2_2, L3_2
  L2_2 = CS
  L2_2 = L2_2.InControl
  L2_2 = L2_2.InputControlType
  L2_2 = L2_2.LeftBumper
  L2_2 = #L2_2
  if A1_2 == L2_2 then
    L3_2 = A0_2
    L2_2 = A0_2._on_left_bumper_click
    L2_2(L3_2)
  else
    L2_2 = CS
    L2_2 = L2_2.InControl
    L2_2 = L2_2.InputControlType
    L2_2 = L2_2.RightBumper
    L2_2 = #L2_2
    if A1_2 == L2_2 then
      L3_2 = A0_2
      L2_2 = A0_2._on_right_bumper_click
      L2_2(L3_2)
    end
  end
end
L0_1._on_in_control_click = L3_1
function L3_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.btn_prev
  if L1_2 ~= nil then
    L2_2 = A0_2
    L1_2 = A0_2.is_out_most_zoom
    L1_2 = L1_2(L2_2)
    if L1_2 then
      L2_2 = A0_2
      L1_2 = A0_2.is_in_special_zoom
      L1_2 = L1_2(L2_2)
      if not L1_2 then
        L2_2 = A0_2
        L1_2 = A0_2._on_btn_prev_click
        L1_2(L2_2)
      end
    end
  end
end
L0_1._on_left_bumper_click = L3_1
function L3_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.btn_next
  if L1_2 ~= nil then
    L2_2 = A0_2
    L1_2 = A0_2.is_out_most_zoom
    L1_2 = L1_2(L2_2)
    if L1_2 then
      L2_2 = A0_2
      L1_2 = A0_2.is_in_special_zoom
      L1_2 = L1_2(L2_2)
      if not L1_2 then
        L2_2 = A0_2
        L1_2 = A0_2._on_btn_next_click
        L1_2(L2_2)
      end
    end
  end
end
L0_1._on_right_bumper_click = L3_1
function L3_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  A0_2._is_show_preview = A1_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.area_stats_panel
  L3_2 = L2_2
  L2_2 = L2_2.set_show_preview
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
end
L0_1.set_show_preview = L3_1
function L3_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.area_renew_point_panel
  L3_2 = L2_2
  L2_2 = L2_2.set_show_preview
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
end
L0_1.set_renew_point_preview = L3_1
function L3_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.area_stats_panel
  L3_2 = L2_2
  L2_2 = L2_2.set_show_color_preview
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
end
L0_1.set_show_color_preview = L3_1
function L3_1(A0_2, A1_2)
  A0_2._is_rank_preview = A1_2
end
L0_1.set_rank_preview = L3_1
function L3_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2, L5_2, L6_2, L7_2, L8_2
  L4_2 = A0_2._binder
  L4_2 = L4_2.area_stats_panel
  L5_2 = L4_2
  L4_2 = L4_2.set_ctrl_color
  L6_2 = A1_2
  L7_2 = A2_2
  L8_2 = A3_2
  L4_2(L5_2, L6_2, L7_2, L8_2)
end
L0_1.set_ctrl_color = L3_1
function L3_1(A0_2, A1_2, A2_2)
  A0_2._switch_area_callback = A1_2
  A0_2._switch_area_callback_self = A2_2
end
L0_1.set_switch_area_callback = L3_1
function L3_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.btn_prev
  if L2_2 ~= nil then
    L2_2 = A0_2._binder
    L2_2 = L2_2.btn_prev
    L3_2 = L2_2
    L2_2 = L2_2.SafeSetActive
    L4_2 = A1_2
    L2_2(L3_2, L4_2)
  end
  L2_2 = A0_2._binder
  L2_2 = L2_2.btn_next
  if L2_2 ~= nil then
    L2_2 = A0_2._binder
    L2_2 = L2_2.btn_next
    L3_2 = L2_2
    L2_2 = L2_2.SafeSetActive
    L4_2 = A1_2
    L2_2(L3_2, L4_2)
  end
end
L0_1.set_switch_area_btn_active = L3_1
function L3_1(A0_2, A1_2)
  local L2_2, L3_2
  A0_2._museum_area_data = A1_2
  L3_2 = A0_2
  L2_2 = A0_2._refresh
  L2_2(L3_2)
end
L0_1.setup_view = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.UIAnimationUtils
  L1_2 = L1_2.PlayFromBegin
  L2_2 = A0_2._binder
  L2_2 = L2_2.renew_point_anim
  L3_2 = L1_1
  L1_2(L2_2, L3_2)
end
L0_1.play_renew_point_anim = L3_1
function L3_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.rank_panel
  L2_2 = L1_2
  L1_2 = L1_2.try_play_rank_anim
  L1_2(L2_2)
end
L0_1.try_play_rank_anim = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.anim_num
  L2_2 = L1_2
  L1_2 = L1_2.Play
  L3_2 = L2_1
  L1_2(L2_2, L3_2)
end
L0_1.play_area_upgrade_anim = L3_1
function L3_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.area_stats_panel
  L3_2 = L2_2
  L2_2 = L2_2.try_play_property_bar_anim
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
end
L0_1.try_play_property_bar_anim = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.txt_name
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetTextID
  L3_2 = A0_2._museum_area_data
  L3_2 = L3_2.Row
  L3_2 = L3_2.MuseumAreaName
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.txt_first_world
  L2_2 = L1_2
  L1_2 = L1_2.SetCustomizedText
  L3_2 = A0_2._museum_area_data
  L3_2 = L3_2.Row
  L3_2 = L3_2.FirstWorldText
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.txt_index
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetText
  L3_2 = "0"
  L4_2 = A0_2._museum_area_data
  L4_2 = L4_2.ID
  L3_2 = L3_2 .. L4_2
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.txt_level
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetText
  L3_2 = A0_2._museum_area_data
  L3_2 = L3_2.Level
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.rank_panel
  L2_2 = L1_2
  L1_2 = L1_2.setup_view
  L3_2 = A0_2._museum_area_data
  L5_2 = A0_2
  L4_2 = A0_2.get_is_rank_preview
  L4_2, L5_2 = L4_2(L5_2)
  L1_2(L2_2, L3_2, L4_2, L5_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.area_renew_point_panel
  L2_2 = L1_2
  L1_2 = L1_2.setup_view
  L3_2 = A0_2._museum_area_data
  L3_2 = L3_2.AreaRenewPoint
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.area_stats_panel
  L2_2 = L1_2
  L1_2 = L1_2.setup_view
  L3_2 = A0_2._museum_area_data
  L1_2(L2_2, L3_2)
end
L0_1._refresh = L3_1
function L3_1(A0_2)
  local L1_2
  L1_2 = A0_2._is_rank_preview
  if L1_2 == nil then
    L1_2 = A0_2._is_show_preview
    return L1_2
  end
  L1_2 = A0_2._is_rank_preview
  return L1_2
end
L0_1.get_is_rank_preview = L3_1
function L3_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2.is_top_page_or_dialog
  L1_2 = L1_2(L2_2)
  if L1_2 then
    L1_2 = A0_2._is_show_preview
    if L1_2 then
      goto lbl_9
    end
  end
  do return end
  ::lbl_9::
  L2_2 = A0_2
  L1_2 = A0_2._refresh
  L1_2(L2_2)
end
L0_1._on_museum_preview_data_refresh = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2
  L2_2 = A0_2
  L1_2 = A0_2._can_switch_area
  L1_2 = L1_2(L2_2)
  if not L1_2 then
    return
  end
  L1_2 = A0_2._switch_area_callback
  if L1_2 ~= nil then
    L1_2 = A0_2._switch_area_callback
    L2_2 = A0_2._switch_area_callback_self
    L3_2 = -1
    L1_2(L2_2, L3_2)
  end
end
L0_1._on_btn_prev_click = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2
  L2_2 = A0_2
  L1_2 = A0_2._can_switch_area
  L1_2 = L1_2(L2_2)
  if not L1_2 then
    return
  end
  L1_2 = A0_2._switch_area_callback
  if L1_2 ~= nil then
    L1_2 = A0_2._switch_area_callback
    L2_2 = A0_2._switch_area_callback_self
    L3_2 = 1
    L1_2(L2_2, L3_2)
  end
end
L0_1._on_btn_next_click = L3_1
function L3_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._museum_area_data
  if not L1_2 then
    L1_2 = false
    return L1_2
  end
  L1_2 = A0_2._museum_area_data
  L1_2 = L1_2.OwnerMuseum
  L2_2 = L1_2
  L1_2 = L1_2.GetUnlockAreaNum
  L1_2 = L1_2(L2_2)
  L2_2 = 1 < L1_2
  return L2_2
end
L0_1._can_switch_area = L3_1
return L0_1
