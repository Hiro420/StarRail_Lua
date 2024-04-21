local L0_1, L1_1, L2_1, L3_1
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "StatusDetailInfoPanel"
L2_1 = G
L2_1 = L2_1.BasePanel
L0_1 = L0_1(L1_1, L2_1)
L1_1 = "#0893ce"
L2_1 = "#EB4D3D"
function L3_1(A0_2)
  local L1_2
end
L0_1.ctor = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.btn_info
  if L1_2 ~= nil then
    L2_2 = A0_2
    L1_2 = A0_2._bind_btn_callback
    L3_2 = A0_2._binder
    L3_2 = L3_2.btn_info
    L4_2 = A0_2._on_click_info_btn
    L1_2(L2_2, L3_2, L4_2)
  end
  L1_2 = A0_2._binder
  L1_2 = L1_2.btn_root
  if L1_2 ~= nil then
    L2_2 = A0_2
    L1_2 = A0_2.setup_trigger
    L1_2(L2_2)
  end
end
L0_1._on_load = L3_1
function L3_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.text_num
  L2_2 = L2_2.gameObject
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = true
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_empty
  if L2_2 ~= nil then
    L2_2 = A0_2._binder
    L2_2 = L2_2.node_empty
    L2_2 = L2_2.gameObject
    L3_2 = L2_2
    L2_2 = L2_2.SafeSetActive
    L4_2 = false
    L2_2(L3_2, L4_2)
  end
  L2_2 = G
  L2_2 = L2_2.TextExtensions
  L2_2 = L2_2.SafeSetText
  L3_2 = A0_2._binder
  L3_2 = L3_2.text_num
  L4_2 = A1_2.Num
  L2_2(L3_2, L4_2)
  L2_2 = A1_2.Title
  if L2_2 ~= nil then
    L2_2 = G
    L2_2 = L2_2.TextExtensions
    L2_2 = L2_2.SafeSetTextID
    L3_2 = A0_2._binder
    L3_2 = L3_2.text_title
    L4_2 = A1_2.Title
    L2_2(L3_2, L4_2)
  end
  L2_2 = A1_2.IconPath
  if L2_2 ~= nil then
    L3_2 = A0_2
    L2_2 = A0_2._async_load_sprite_to
    L4_2 = A0_2._binder
    L4_2 = L4_2.img_icon
    L5_2 = A1_2.IconPath
    L2_2(L3_2, L4_2, L5_2)
  end
  L2_2 = A1_2.AddNum
  if L2_2 ~= nil then
    L2_2 = A1_2.AddNum
    if L2_2 ~= "" then
      goto lbl_57
    end
  end
  L2_2 = G
  L2_2 = L2_2.ComponentExtensions
  L2_2 = L2_2.SafeSetActive
  L3_2 = A0_2._binder
  L3_2 = L3_2.text_add_num
  L4_2 = false
  L5_2 = false
  L2_2(L3_2, L4_2, L5_2)
  goto lbl_71
  ::lbl_57::
  L2_2 = G
  L2_2 = L2_2.TextExtensions
  L2_2 = L2_2.SafeSetText
  L3_2 = A0_2._binder
  L3_2 = L3_2.text_add_num
  L4_2 = A1_2.AddNum
  L2_2(L3_2, L4_2)
  L2_2 = G
  L2_2 = L2_2.ComponentExtensions
  L2_2 = L2_2.SafeSetActive
  L3_2 = A0_2._binder
  L3_2 = L3_2.text_add_num
  L4_2 = true
  L2_2(L3_2, L4_2)
  ::lbl_71::
end
L0_1.setup_view = L3_1
function L3_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.text_num
  L2_2 = L2_2.gameObject
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = true
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_empty
  if L2_2 ~= nil then
    L2_2 = A0_2._binder
    L2_2 = L2_2.node_empty
    L2_2 = L2_2.gameObject
    L3_2 = L2_2
    L2_2 = L2_2.SafeSetActive
    L4_2 = false
    L2_2(L3_2, L4_2)
  end
  L2_2 = A0_2._binder
  L2_2 = L2_2.text_num
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetText
  L4_2 = A1_2.BaseNum
  L2_2(L3_2, L4_2)
  L2_2 = A1_2.NameID
  if L2_2 ~= nil then
    L2_2 = A0_2._binder
    L2_2 = L2_2.text_title
    L3_2 = L2_2
    L2_2 = L2_2.SafeSetTextID
    L4_2 = A1_2.NameID
    L2_2(L3_2, L4_2)
  end
  L2_2 = A1_2.IconPath
  if L2_2 ~= nil then
    L3_2 = A0_2
    L2_2 = A0_2._async_load_sprite_to
    L4_2 = A0_2._binder
    L4_2 = L4_2.img_icon
    L5_2 = A1_2.IconPath
    L2_2(L3_2, L4_2, L5_2)
  end
  L2_2 = G
  L2_2 = L2_2.UIColorUtils
  L2_2 = L2_2.GetColor
  L3_2 = L1_1
  L2_2 = L2_2(L3_2)
  L3_2 = G
  L3_2 = L3_2.UIColorUtils
  L3_2 = L3_2.GetColor
  L4_2 = L2_1
  L3_2 = L3_2(L4_2)
  L4_2 = A1_2.ChangeNum
  if L4_2 == nil then
    L4_2 = G
    L4_2 = L4_2.ComponentExtensions
    L4_2 = L4_2.SafeSetActive
    L5_2 = A0_2._binder
    L5_2 = L5_2.text_add_num
    L6_2 = false
    L4_2(L5_2, L6_2)
  else
    L4_2 = G
    L4_2 = L4_2.ComponentExtensions
    L4_2 = L4_2.SafeSetActive
    L5_2 = A0_2._binder
    L5_2 = L5_2.text_add_num
    L6_2 = true
    L4_2(L5_2, L6_2)
    L4_2 = A1_2.ChangeNumValue
    if 0 < L4_2 then
      L5_2 = A0_2._binder
      L5_2 = L5_2.text_add_num
      L5_2.color = L2_2
      L5_2 = G
      L5_2 = L5_2.TextExtensions
      L5_2 = L5_2.SafeSetText
      L6_2 = A0_2._binder
      L6_2 = L6_2.text_add_num
      L7_2 = "+"
      L8_2 = A1_2.ChangeNum
      L7_2 = L7_2 .. L8_2
      L5_2(L6_2, L7_2)
    elseif L4_2 < 0 then
      L5_2 = A0_2._binder
      L5_2 = L5_2.text_add_num
      L5_2.color = L3_2
      L5_2 = G
      L5_2 = L5_2.TextExtensions
      L5_2 = L5_2.SafeSetText
      L6_2 = A0_2._binder
      L6_2 = L6_2.text_add_num
      L7_2 = A1_2.ChangeNum
      L5_2(L6_2, L7_2)
    else
      L5_2 = G
      L5_2 = L5_2.ComponentExtensions
      L5_2 = L5_2.SafeSetActive
      L6_2 = A0_2._binder
      L6_2 = L6_2.text_add_num
      L7_2 = false
      L5_2(L6_2, L7_2)
    end
  end
end
L0_1.setup_battle_view = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = G
  L1_2 = L1_2.TextExtensions
  L1_2 = L1_2.SafeSetTextID
  L2_2 = A0_2._binder
  L2_2 = L2_2.text_title
  L3_2 = "UIText_SubAffix_Name"
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2._async_load_sprite_to
  L3_2 = A0_2._binder
  L3_2 = L3_2.img_icon
  L4_2 = "SpriteOutput/UI/Avatar/Icon/IconEmpty.png"
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.text_num
  L1_2 = L1_2.gameObject
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = false
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_empty
  if L1_2 ~= nil then
    L1_2 = A0_2._binder
    L1_2 = L1_2.node_empty
    L1_2 = L1_2.gameObject
    L2_2 = L1_2
    L1_2 = L1_2.SafeSetActive
    L3_2 = true
    L1_2(L2_2, L3_2)
  end
  L2_2 = A0_2
  L1_2 = A0_2.show_level_up_mark
  L3_2 = false
  L1_2(L2_2, L3_2)
end
L0_1.setup_unequipped_view = L3_1
function L3_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_reverse_bg
  if L2_2 ~= nil then
    L2_2 = A0_2._binder
    L2_2 = L2_2.node_reverse_bg
    L3_2 = L2_2
    L2_2 = L2_2.SafeSetActive
    L4_2 = A1_2
    L2_2(L3_2, L4_2)
  end
end
L0_1.show_reverse_bg = L3_1
function L3_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_arrow_up
  if L2_2 ~= nil then
    L2_2 = A0_2._binder
    L2_2 = L2_2.node_arrow_up
    L3_2 = L2_2
    L2_2 = L2_2.SafeSetActive
    L4_2 = A1_2
    L2_2(L3_2, L4_2)
  end
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_arrow_down
  if L2_2 ~= nil then
    L2_2 = A0_2._binder
    L2_2 = L2_2.node_arrow_down
    L3_2 = L2_2
    L2_2 = L2_2.SafeSetActive
    L4_2 = A1_2
    L2_2(L3_2, L4_2)
  end
end
L0_1.set_arrow_show = L3_1
function L3_1(A0_2, A1_2, A2_2, A3_2, A4_2)
  local L5_2, L6_2, L7_2
  L5_2 = A0_2._binder
  L5_2 = L5_2.btn_info
  L5_2 = L5_2.gameObject
  L6_2 = L5_2
  L5_2 = L5_2.SafeSetActive
  L7_2 = A1_2
  L5_2(L6_2, L7_2)
  if not A1_2 then
    return
  end
  A0_2._call_back = A2_2
  A0_2._event_listener = A3_2
  A0_2._param = A4_2
end
L0_1.setup_info_button = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._call_back
  if L1_2 ~= nil then
    L1_2 = A0_2._call_back
    L2_2 = A0_2._event_listener
    L3_2 = A0_2._param
    L1_2(L2_2, L3_2)
  end
end
L0_1._on_click_info_btn = L3_1
function L3_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2.btn_info
  if L2_2 == nil then
    return
  end
  L2_2 = A0_2.btn_info
  L3_2 = L2_2
  L2_2 = L2_2.SetChecked
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
end
L0_1.set_checked = L3_1
function L3_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.btn_root
  function L2_2()
    local L0_3, L1_3
    L0_3 = A0_2
    L1_3 = L0_3
    L0_3 = L0_3._on_select_trigger
    L0_3(L1_3)
  end
  L1_2.onSelectTrigger = L2_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.btn_root
  function L2_2()
    local L0_3, L1_3
    L0_3 = A0_2
    L1_3 = L0_3
    L0_3 = L0_3._on_deselect_trigger
    L0_3(L1_3)
  end
  L1_2.onDeselectTrigger = L2_2
end
L0_1.setup_trigger = L3_1
function L3_1(A0_2, A1_2, A2_2)
  A0_2._select_trigger = A1_2
  A0_2._select_trigger_listener = A2_2
end
L0_1.register_select_trigger = L3_1
function L3_1(A0_2, A1_2, A2_2)
  A0_2._deselect_trigger = A1_2
  A0_2._deselect_trigger_listener = A2_2
end
L0_1.register_deselect_trigger = L3_1
function L3_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._select_trigger
  if L1_2 ~= nil then
    L1_2 = A0_2._select_trigger
    L2_2 = A0_2._select_trigger_listener
    L1_2(L2_2)
  end
end
L0_1._on_select_trigger = L3_1
function L3_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._deselect_trigger
  if L1_2 ~= nil then
    L1_2 = A0_2._deselect_trigger
    L2_2 = A0_2._deselect_trigger_listener
    L1_2(L2_2)
  end
end
L0_1._on_deselect_trigger = L3_1
function L3_1(A0_2, A1_2)
  local L2_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.in_control_btn
  L2_2.ActionEnabled = A1_2
end
L0_1.set_in_control_enabled = L3_1
function L3_1(A0_2)
  local L1_2
  A0_2._on_select_trigger = nil
  A0_2._on_deselect_trigger = nil
end
L0_1._on_dispose = L3_1
function L3_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2
  L3_2 = A0_2._binder
  L3_2 = L3_2.node_type
  L4_2 = L3_2
  L3_2 = L3_2.SafeSetActive
  L5_2 = A1_2
  L3_2(L4_2, L5_2)
  if A1_2 and A2_2 ~= nil then
    L3_2 = A0_2._binder
    L3_2 = L3_2.text_type
    L4_2 = L3_2
    L3_2 = L3_2.SafeSetTextID
    L5_2 = A2_2
    L3_2(L4_2, L5_2)
  end
end
L0_1.setup_type_title = L3_1
function L3_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2
  L3_2 = A0_2._binder
  L3_2 = L3_2.node_level_up
  if L3_2 == nil then
    return
  end
  L3_2 = A0_2._binder
  L3_2 = L3_2.node_level_up
  L4_2 = L3_2
  L3_2 = L3_2.SafeSetActive
  L5_2 = A1_2
  L3_2(L4_2, L5_2)
  L3_2 = A0_2._binder
  L3_2 = L3_2.node_level_up_num
  L4_2 = L3_2
  L3_2 = L3_2.SafeSetActive
  L5_2 = A1_2 or L5_2
  L5_2 = A1_2 and 0 < A2_2
  L3_2(L4_2, L5_2)
  L3_2 = A0_2._binder
  L3_2 = L3_2.text_level_up_value
  L4_2 = L3_2
  L3_2 = L3_2.SetCustomizedText
  L5_2 = A2_2
  L3_2(L4_2, L5_2)
end
L0_1.show_level_up_mark = L3_1
return L0_1
