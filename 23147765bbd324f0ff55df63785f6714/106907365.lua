local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1
L0_1 = require
L1_1 = "Utilities.MuseumUtils"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "MuseumPropertyBarPanel"
L2_1 = G
L2_1 = L2_1.BasePanel
L0_1 = L0_1(L1_1, L2_1)
L1_1 = "UIText_Activity_Museum_PhaseRenewPoint"
L2_1 = "MuseumProgressInfoRow_Reach"
L3_1 = "MuseumProgressInfoRow_Shine"
L4_1 = "UIText_ActivityMuseum_MaxFund"
function L5_1(A0_2)
  local L1_2
  A0_2._is_show_preview = false
  A0_2._is_show_level = false
  A0_2._is_ctrl_bar_color = false
  A0_2._is_ctrl_num_color = false
  A0_2._is_show_max_bar = true
  A0_2._is_added_data = false
end
L0_1.ctor = L5_1
function L5_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.MuseumPreviewDataRefresh
  L4_2 = A0_2._on_museum_preview_data_refresh
  L1_2(L2_2, L3_2, L4_2)
end
L0_1._on_load = L5_1
function L5_1(A0_2, A1_2)
  A0_2._is_show_preview = A1_2
end
L0_1.set_show_preview = L5_1
function L5_1(A0_2, A1_2)
  A0_2._is_show_color_preview = A1_2
end
L0_1.set_show_color_preview = L5_1
function L5_1(A0_2, A1_2)
  A0_2._is_show_level = A1_2
end
L0_1.set_show_level = L5_1
function L5_1(A0_2, A1_2)
  A0_2._is_show_max_bar = A1_2
end
L0_1.set_show_max_bar = L5_1
function L5_1(A0_2, A1_2)
  A0_2._added_data = A1_2
end
L0_1.set_added_data = L5_1
function L5_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2
  A0_2._museum_property_data = A1_2
  A0_2._stat_type = A2_2
  L3_2 = G
  L3_2 = L3_2.MuseumUtils
  L3_2 = L3_2.get_stats_max_value
  L3_2 = L3_2()
  A0_2._max_value = L3_2
  L4_2 = A0_2
  L3_2 = A0_2._setup_property_info
  L3_2(L4_2)
  L4_2 = A0_2
  L3_2 = A0_2._refresh
  L3_2(L4_2)
end
L0_1.setup_view = L5_1
function L5_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_property
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = true
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_slash
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = false
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_max_num
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = false
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.txt_add_num
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetTextID
  L3_2 = L4_1
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.txt_cur_num
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetTextID
  L3_2 = L4_1
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.slider_cur_progress
  L1_2.value = 1
  L1_2 = A0_2._binder
  L1_2 = L1_2.img_add_progress
  L1_2.value = 1
end
L0_1.setup_all_finish_view = L5_1
function L5_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.UIAnimationUtils
  L1_2 = L1_2.PlayFromBegin
  L2_2 = A0_2._binder
  L2_2 = L2_2.anim_root
  L3_2 = L2_1
  L1_2(L2_2, L3_2)
end
L0_1.play_reach_anim = L5_1
function L5_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.UIAnimationUtils
  L1_2 = L1_2.PlayFromBegin
  L2_2 = A0_2._binder
  L2_2 = L2_2.anim_cur
  L3_2 = L3_1
  L1_2(L2_2, L3_2)
end
L0_1.play_add_anim = L5_1
function L5_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._stat_type
  if L1_2 == nil then
    L1_2 = A0_2._museum_property_data
    L1_2 = L1_2.MaxNum
    L2_2 = A0_2._museum_property_data
    L2_2 = L2_2.AddMaxNum
    L1_2 = L1_2 + L2_2
    A0_2._max_value = L1_2
  end
  L2_2 = A0_2
  L1_2 = A0_2._setup_cur_value
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._setup_cur_preview_value
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._setup_max_value
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._setup_max_preview_value
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._setup_max_tip
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._setup_color
  L1_2(L2_2)
  L1_2 = A0_2._is_show_level
  if L1_2 then
    L2_2 = A0_2
    L1_2 = A0_2._setup_level
    L1_2(L2_2)
  end
end
L0_1._refresh = L5_1
function L5_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._stat_type
  if L1_2 ~= nil then
    return
  end
  L1_2 = A0_2._museum_property_data
  L2_2 = L1_2
  L1_2 = L1_2.IsMax
  L1_2 = L1_2(L2_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_cur_num
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = not L1_2
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_slash
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = not L1_2
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_max_num
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = not L1_2
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_max_tip
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = L1_2
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_property_name
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = not L1_2
  L2_2(L3_2, L4_2)
end
L0_1._setup_max_tip = L5_1
function L5_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.txt_cur_num
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetText
  L3_2 = A0_2._museum_property_data
  L3_2 = L3_2.Level
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.txt_add_num
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = false
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.txt_max_num
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetText
  L3_2 = A0_2._museum_property_data
  L3_2 = L3_2.MaxLevel
  L1_2(L2_2, L3_2)
end
L0_1._setup_level = L5_1
function L5_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = A0_2._stat_type
  if L1_2 == nil then
    L1_2 = A0_2._binder
    L1_2 = L1_2.txt_name
    L2_2 = L1_2
    L1_2 = L1_2.SafeSetTextID
    L3_2 = L1_1
    L1_2(L2_2, L3_2)
    return
  end
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.GameCore
  L1_2 = L1_2.StuffStatsConfigExcelTable
  L1_2 = L1_2.GetData
  L2_2 = A0_2._stat_type
  L1_2 = L1_2(L2_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.txt_name
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetTextID
  L4_2 = L1_2.MuseumStatsName
  L2_2(L3_2, L4_2)
  L3_2 = A0_2
  L2_2 = A0_2._async_load_sprite_to
  L4_2 = A0_2._binder
  L4_2 = L4_2.img_property
  L5_2 = L1_2.StatsIconPath
  L2_2(L3_2, L4_2, L5_2)
end
L0_1._setup_property_info = L5_1
function L5_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.txt_cur_num
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetText
  L3_2 = A0_2._museum_property_data
  L3_2 = L3_2.CurNum
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._added_data
  if L1_2 then
    L1_2 = A0_2._binder
    L1_2 = L1_2.slider_cur_progress
    L2_2 = A0_2._museum_property_data
    L2_2 = L2_2.CurNum
    L3_2 = A0_2._added_data
    L2_2 = L2_2 - L3_2
    L3_2 = A0_2._max_value
    L2_2 = L2_2 / L3_2
    L1_2.value = L2_2
  else
    L1_2 = A0_2._binder
    L1_2 = L1_2.slider_cur_progress
    L2_2 = A0_2._museum_property_data
    L2_2 = L2_2.CurNum
    L3_2 = A0_2._max_value
    L2_2 = L2_2 / L3_2
    L1_2.value = L2_2
  end
end
L0_1._setup_cur_value = L5_1
function L5_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = A0_2._is_show_preview
  if not L1_2 then
    L1_2 = A0_2._binder
    L1_2 = L1_2.txt_add_num
    L2_2 = L1_2
    L1_2 = L1_2.SafeSetActive
    L3_2 = false
    L1_2(L2_2, L3_2)
    L1_2 = A0_2._binder
    L1_2 = L1_2.img_add_progress
    L2_2 = L1_2
    L1_2 = L1_2.SafeSetActive
    L3_2 = false
    L1_2(L2_2, L3_2)
    return
  end
  L1_2 = A0_2._binder
  L1_2 = L1_2.img_add_progress
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = true
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._added_data
  if L1_2 then
    L2_2 = A0_2
    L1_2 = A0_2._setup_added_data_preview_value
    L1_2(L2_2)
    return
  end
  L1_2 = A0_2._museum_property_data
  L1_2 = L1_2.PreviewCurNum
  L2_2 = A0_2._binder
  L2_2 = L2_2.txt_add_num
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = A0_2._museum_property_data
  L4_2 = L4_2.AddCurNum
  L4_2 = L4_2 ~= 0
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._museum_property_data
  L2_2 = L2_2.IsAddCurNumMinus
  if L2_2 then
    L2_2 = A0_2._binder
    L2_2 = L2_2.txt_add_num
    L3_2 = L2_2
    L2_2 = L2_2.SafeSetText
    L4_2 = "-"
    L5_2 = A0_2._museum_property_data
    L5_2 = L5_2.AddCurNum
    L4_2 = L4_2 .. L5_2
    L2_2(L3_2, L4_2)
  else
    L2_2 = A0_2._binder
    L2_2 = L2_2.txt_add_num
    L3_2 = L2_2
    L2_2 = L2_2.SafeSetText
    L4_2 = "+"
    L5_2 = A0_2._museum_property_data
    L5_2 = L5_2.AddCurNum
    L4_2 = L4_2 .. L5_2
    L2_2(L3_2, L4_2)
  end
  L2_2 = A0_2._binder
  L2_2 = L2_2.img_add_progress
  L3_2 = A0_2._max_value
  L3_2 = L1_2 / L3_2
  L2_2.value = L3_2
end
L0_1._setup_cur_preview_value = L5_1
function L5_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.txt_add_num
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = A0_2._added_data
  L3_2 = 0 < L3_2
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.txt_add_num
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetText
  L3_2 = "+"
  L4_2 = A0_2._added_data
  L3_2 = L3_2 .. L4_2
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.img_add_progress
  L2_2 = A0_2._museum_property_data
  L2_2 = L2_2.CurNum
  L3_2 = A0_2._added_data
  L2_2 = L2_2 - L3_2
  L3_2 = A0_2._max_value
  L2_2 = L2_2 / L3_2
  L1_2.value = L2_2
end
L0_1._setup_added_data_preview_value = L5_1
function L5_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.txt_max_num
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetText
  L3_2 = A0_2._museum_property_data
  L3_2 = L3_2.MaxNum
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.slider_max_progress
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = A0_2._is_show_max_bar
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.slider_max_progress
  L2_2 = A0_2._museum_property_data
  L2_2 = L2_2.MaxNum
  L3_2 = A0_2._max_value
  L2_2 = L2_2 / L3_2
  L1_2.value = L2_2
end
L0_1._setup_max_value = L5_1
function L5_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._is_show_preview
  if not L1_2 then
    L1_2 = A0_2._binder
    L1_2 = L1_2.slider_add_max_progress
    L2_2 = L1_2
    L1_2 = L1_2.SafeSetActive
    L3_2 = false
    L1_2(L2_2, L3_2)
    return
  end
  L1_2 = A0_2._museum_property_data
  L1_2 = L1_2.MaxNum
  L2_2 = A0_2._museum_property_data
  L2_2 = L2_2.AddMaxNum
  L1_2 = L1_2 + L2_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.txt_max_num
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetText
  L4_2 = L1_2
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.slider_add_max_progress
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = A0_2._is_show_max_bar
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.slider_add_max_progress
  L3_2 = A0_2._max_value
  L3_2 = L1_2 / L3_2
  L2_2.value = L3_2
end
L0_1._setup_max_preview_value = L5_1
function L5_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2, L5_2
  L4_2 = A2_2 or nil
  if not A2_2 then
    L4_2 = false
  end
  A0_2._is_ctrl_bar_color = L4_2
  L4_2 = A3_2 or L4_2
  if not A3_2 then
    L4_2 = false
  end
  A0_2._is_ctrl_num_color = L4_2
  L4_2 = A0_2._is_ctrl_bar_color
  if not L4_2 then
    L4_2 = A0_2._is_ctrl_num_color
    if not L4_2 then
      goto lbl_23
    end
  end
  L4_2 = G
  L4_2 = L4_2.MuseumUtils
  L4_2 = L4_2.get_colors
  L5_2 = A1_2
  L4_2 = L4_2(L5_2)
  A0_2._colors = L4_2
  L5_2 = A0_2
  L4_2 = A0_2._setup_color
  L4_2(L5_2)
  ::lbl_23::
end
L0_1.set_ctrl_color = L5_1
function L5_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._museum_property_data
  if L1_2 == nil then
    return
  end
  L1_2 = A0_2._is_ctrl_bar_color
  if L1_2 then
    L2_2 = A0_2
    L1_2 = A0_2._setup_bar_color
    L1_2(L2_2)
  end
  L1_2 = A0_2._is_ctrl_num_color
  if L1_2 then
    L2_2 = A0_2
    L1_2 = A0_2._setup_txt_color
    L1_2(L2_2)
  end
end
L0_1._setup_color = L5_1
function L5_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._museum_property_data
  L2_2 = L1_2
  L1_2 = L1_2.IsMax
  L4_2 = A0_2
  L3_2 = A0_2.get_is_color_preview
  L3_2, L4_2 = L3_2(L4_2)
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  if L1_2 then
    L2_2 = A0_2._colors
    L2_2 = L2_2.success
    if L2_2 then
      goto lbl_14
    end
  end
  L2_2 = A0_2._colors
  L2_2 = L2_2.failed
  ::lbl_14::
  L3_2 = A0_2._binder
  L3_2 = L3_2.img_cur_progress
  L3_2.color = L2_2
end
L0_1._setup_bar_color = L5_1
function L5_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._is_show_level
  if L1_2 then
    return
  end
  L1_2 = A0_2._museum_property_data
  L2_2 = L1_2
  L1_2 = L1_2.IsMax
  L4_2 = A0_2
  L3_2 = A0_2.get_is_color_preview
  L3_2, L4_2 = L3_2(L4_2)
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  if L1_2 then
    L2_2 = A0_2._colors
    L2_2 = L2_2.success
    if L2_2 then
      goto lbl_18
    end
  end
  L2_2 = A0_2._colors
  L2_2 = L2_2.failed
  ::lbl_18::
  L3_2 = A0_2._binder
  L3_2 = L3_2.txt_cur_num
  L3_2.color = L2_2
end
L0_1._setup_txt_color = L5_1
function L5_1(A0_2)
  local L1_2
  L1_2 = A0_2._is_show_color_preview
  if L1_2 == nil then
    L1_2 = A0_2._is_show_preview
    return L1_2
  end
  L1_2 = A0_2._is_show_color_preview
  return L1_2
end
L0_1.get_is_color_preview = L5_1
function L5_1(A0_2)
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
L0_1._on_museum_preview_data_refresh = L5_1
return L0_1
