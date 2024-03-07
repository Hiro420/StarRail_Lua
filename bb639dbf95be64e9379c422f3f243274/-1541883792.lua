local L0_1, L1_1, L2_1
L0_1 = require
L1_1 = "Utilities.MuseumUtils"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "MuseumPropertyNumPanel"
L2_1 = G
L2_1 = L2_1.BasePanel
L0_1 = L0_1(L1_1, L2_1)
L1_1 = "+"
function L2_1(A0_2)
  local L1_2
  A0_2._is_show_preview = false
  A0_2._is_ctrl_color = false
end
L0_1.ctor = L2_1
function L2_1(A0_2)
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
L0_1._on_load = L2_1
function L2_1(A0_2, A1_2)
  A0_2._is_show_preview = A1_2
end
L0_1.set_show_preview = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2
  A0_2._museum_property_data = A1_2
  L3_2 = A0_2
  L2_2 = A0_2._refresh
  L2_2(L3_2)
end
L0_1.setup_view = L2_1
function L2_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2._setup_cur_value
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._setup_add_value
  L1_2(L2_2)
  L1_2 = A0_2._is_ctrl_color
  if L1_2 then
    L2_2 = A0_2
    L1_2 = A0_2._setup_color
    L1_2(L2_2)
  end
end
L0_1._refresh = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.txt_cur_num
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetText
  L3_2 = A0_2._museum_property_data
  L3_2 = L3_2.CurNum
  L1_2(L2_2, L3_2)
end
L0_1._setup_cur_value = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.txt_add_num
  if not L1_2 then
    return
  end
  L1_2 = A0_2._binder
  L1_2 = L1_2.txt_add_num
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = A0_2._is_show_preview
  if L3_2 then
    L3_2 = A0_2._museum_property_data
    L3_2 = L3_2.AddCurNum
    L3_2 = 0 < L3_2
  end
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.txt_add_num
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetText
  L3_2 = L1_1
  L4_2 = A0_2._museum_property_data
  L4_2 = L4_2.AddCurNum
  L3_2 = L3_2 .. L4_2
  L1_2(L2_2, L3_2)
end
L0_1._setup_add_value = L2_1
function L2_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2
  L3_2 = A2_2 or nil
  if not A2_2 then
    L3_2 = false
  end
  A0_2._is_ctrl_color = L3_2
  L3_2 = A0_2._is_ctrl_color
  if L3_2 then
    L3_2 = G
    L3_2 = L3_2.MuseumUtils
    L3_2 = L3_2.get_colors
    L4_2 = A1_2
    L3_2 = L3_2(L4_2)
    A0_2._colors = L3_2
    L4_2 = A0_2
    L3_2 = A0_2._setup_color
    L3_2(L4_2)
  end
end
L0_1.set_ctrl_color = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._museum_property_data
  if L1_2 == nil then
    return
  end
  L1_2 = A0_2._museum_property_data
  L2_2 = L1_2
  L1_2 = L1_2.IsMax
  L3_2 = A0_2._is_show_preview
  L1_2 = L1_2(L2_2, L3_2)
  if L1_2 then
    L2_2 = A0_2._colors
    L2_2 = L2_2.normal
    if L2_2 then
      goto lbl_17
    end
  end
  L2_2 = A0_2._colors
  L2_2 = L2_2.failed
  ::lbl_17::
  L3_2 = A0_2._binder
  L3_2 = L3_2.txt_cur_num
  L3_2.color = L2_2
end
L0_1._setup_color = L2_1
function L2_1(A0_2)
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
L0_1._on_museum_preview_data_refresh = L2_1
return L0_1
