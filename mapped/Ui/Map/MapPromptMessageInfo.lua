local L0_1, L1_1, L2_1
L0_1 = require
L1_1 = "Ui.Map.MapPromptMessageInfoBinder"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "MapPromptMessageInfo"
L2_1 = G
L2_1 = L2_1.BasePanel
L0_1 = L0_1(L1_1, L2_1)
function L1_1(A0_2, A1_2, A2_2)
  A0_2._callback_ext_obj = A1_2
  A0_2._callback_ext_func = A2_2
end
L0_1.reg_map_function_btn_click_call_back_ext = L1_1
function L1_1(A0_2, A1_2, A2_2)
  A0_2._callback_obj = A1_2
  A0_2._callback_func = A2_2
end
L0_1.reg_map_function_btn_click_call_back = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.btn_root
  L3_2 = L2_2
  L2_2 = L2_2.ClearAnimationState
  L2_2(L3_2)
  A0_2._map_short_cut_config_row = A1_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.text_title
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetTextID
  L4_2 = A1_2.Name
  L2_2(L3_2, L4_2)
  L3_2 = A0_2
  L2_2 = A0_2._async_load_sprite_to
  L4_2 = A0_2._binder
  L4_2 = L4_2.image_icon
  L5_2 = A1_2.IconPath
  L2_2(L3_2, L4_2, L5_2)
end
L0_1.setup_view = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_root
  L4_2 = A0_2._on_btn_root_click
  L1_2(L2_2, L3_2, L4_2)
end
L0_1._on_load = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = A0_2._callback_func
  if L1_2 then
    L1_2 = A0_2._callback_func
    L2_2 = A0_2._callback_obj
    L3_2 = A0_2._map_short_cut_config_row
    L1_2(L2_2, L3_2)
    L2_2 = A0_2
    L1_2 = A0_2._on_leave_special_zoom
    L1_2(L2_2)
  end
  L1_2 = A0_2._callback_ext_func
  if L1_2 then
    L1_2 = A0_2._callback_ext_func
    L2_2 = A0_2._callback_ext_obj
    L3_2 = A0_2._map_short_cut_config_row
    L1_2(L2_2, L3_2)
  end
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.SDKLuaReportAdapter
  L1_2 = L1_2.ReportUIButtonClick
  L2_2 = A0_2._owner
  L2_2 = L2_2.__name
  L3_2 = "MapPromptMessageInfo"
  L4_2 = A0_2._map_short_cut_config_row
  L4_2 = L4_2.ID
  L5_2 = A0_2._owner
  L5_2 = L5_2.guid
  L1_2(L2_2, L3_2, L4_2, L5_2)
end
L0_1._on_btn_root_click = L1_1
return L0_1
