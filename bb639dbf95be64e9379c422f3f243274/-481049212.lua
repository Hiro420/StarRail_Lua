local L0_1, L1_1, L2_1
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "RogueSelectMiracleRowPanel"
L2_1 = G
L2_1 = L2_1.BasePanel
L0_1 = L0_1(L1_1, L2_1)
function L1_1(A0_2)
  local L1_2
  A0_2._rogue_miracle_row = nil
  A0_2._callback_func = nil
  A0_2._index = nil
end
L0_1.ctor = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.btn_click
  L1_2.IsClearSelectedByInputSwitched = false
  L1_2 = A0_2._binder
  L1_2 = L1_2.btn_click
  function L2_2()
    local L0_3, L1_3
    L0_3 = A0_2
    L1_3 = L0_3
    L0_3 = L0_3._on_trigger_btn_click
    L0_3(L1_3)
  end
  L1_2.onSelectTrigger = L2_2
  L2_2 = A0_2
  L1_2 = A0_2.setup_handbook_hint
  L3_2 = false
  L1_2(L2_2, L3_2)
end
L0_1._on_load = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2
  L2_2 = A0_2
  L1_2 = A0_2.on_click
  L3_2 = A0_2._index
  L1_2(L2_2, L3_2)
end
L0_1._on_trigger_btn_click = L1_1
function L1_1(A0_2)
  local L1_2
  A0_2._rogue_miracle_row = nil
  A0_2._callback_func = nil
end
L0_1._on_dispose = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.btn_click
  L3_2 = L2_2
  L2_2 = L2_2.SetChecked
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.mono_in_control_move
  L2_2.ActionEnabled = A1_2
end
L0_1.set_selected = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.panel_mark
  L3_2 = L2_2
  L2_2 = L2_2.setup_handbook
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
end
L0_1.setup_handbook_hint = L1_1
function L1_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2, L5_2, L6_2, L7_2, L8_2
  A0_2._rogue_miracle_row = nil
  if A1_2 ~= nil then
    L4_2 = CS
    L4_2 = L4_2.RPG
    L4_2 = L4_2.GameCore
    L4_2 = L4_2.RogueMiracleExcelTable
    L4_2 = L4_2.GetData
    L5_2 = A1_2
    L4_2 = L4_2(L5_2)
    A0_2._rogue_miracle_row = L4_2
  end
  A0_2._index = A3_2
  L4_2 = A0_2._rogue_miracle_row
  if L4_2 == nil then
    L4_2 = A0_2._binder
    L5_2 = L4_2
    L4_2 = L4_2.set_active
    L6_2 = false
    L4_2(L5_2, L6_2)
    return
  end
  L4_2 = A0_2._binder
  L5_2 = L4_2
  L4_2 = L4_2.set_active
  L6_2 = true
  L4_2(L5_2, L6_2)
  L5_2 = A0_2
  L4_2 = A0_2._setup_miracle
  L4_2(L5_2)
  A0_2._callback_func = A2_2
  L5_2 = A0_2
  L4_2 = A0_2._bind_btn_callback
  L6_2 = A0_2._binder
  L6_2 = L6_2.btn_click
  L7_2 = L0_1.on_click
  L8_2 = A3_2
  L4_2(L5_2, L6_2, L7_2, L8_2)
end
L0_1.setup_view = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2._callback_func
  if nil ~= L2_2 then
    L2_2 = A0_2._callback_func
    L3_2 = A1_2
    L2_2(L3_2)
  end
  L3_2 = A0_2
  L2_2 = A0_2.save_navigation_target
  L4_2 = A0_2._binder
  L4_2 = L4_2.btn_click
  L4_2 = L4_2.gameObject
  L2_2(L3_2, L4_2)
end
L0_1.on_click = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L1_2 = A0_2._rogue_miracle_row
  if L1_2 == nil then
    return
  end
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.RogueStatic
  L1_2 = L1_2.GetRogueMiracleDisplayByMiracleRow
  L2_2 = A0_2._rogue_miracle_row
  L1_2 = L1_2(L2_2)
  if L1_2 == nil then
    return
  end
  L3_2 = A0_2
  L2_2 = A0_2._async_load_sprite_to
  L4_2 = A0_2._binder
  L4_2 = L4_2.miracle_img
  L5_2 = L1_2.MiracleFigureIconPath
  L2_2(L3_2, L4_2, L5_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.miracle_name_title
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetTextID
  L4_2 = L1_2.MiracleName
  L2_2(L3_2, L4_2)
  L2_2 = L1_2.MiracleTag
  L2_2 = L1_2.MiracleTag
  L3_2 = L2_2
  L2_2 = L2_2.IsEmpty
  L2_2 = L2_2(L3_2)
  L2_2 = L2_2 ~= nil and L2_2
  L3_2 = A0_2._binder
  L3_2 = L3_2.node_miracle_tag
  L4_2 = L3_2
  L3_2 = L3_2.SafeSetActive
  L5_2 = L2_2
  L3_2(L4_2, L5_2)
  if L2_2 then
    L3_2 = A0_2._binder
    L3_2 = L3_2.miracle_tag_title
    L4_2 = L3_2
    L3_2 = L3_2.SafeSetTextID
    L5_2 = L1_2.MiracleTag
    L3_2(L4_2, L5_2)
  end
  L3_2 = A0_2._binder
  L3_2 = L3_2.miracle_desc
  L4_2 = L3_2
  L3_2 = L3_2.SafeSetTextID
  L5_2 = L1_2.MiracleDesc
  L6_2 = G
  L6_2 = L6_2.UITextUtils
  L6_2 = L6_2.GetSkillParams
  L7_2 = L1_2.DescParamList
  L6_2, L7_2 = L6_2(L7_2)
  L3_2(L4_2, L5_2, L6_2, L7_2)
  L3_2 = A0_2._binder
  L3_2 = L3_2.panel_mark
  L4_2 = L3_2
  L3_2 = L3_2.setup_miracle_view
  L5_2 = L1_2.MiracleDisplayID
  L3_2(L4_2, L5_2)
end
L0_1._setup_miracle = L1_1
function L1_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2
  L3_2 = A0_2._binder
  L3_2 = L3_2.effective_time_root
  L4_2 = L3_2
  L3_2 = L3_2.SafeSetActive
  L5_2 = A1_2
  L3_2(L4_2, L5_2)
  L3_2 = A0_2._binder
  L3_2 = L3_2.effective_time_txt
  L4_2 = L3_2
  L3_2 = L3_2.SafeSetText
  L5_2 = A2_2 or L5_2
  if not A2_2 then
    L5_2 = 0
  end
  L3_2(L4_2, L5_2)
end
L0_1.show_miracle_effective_time = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  if A1_2 then
    L2_2 = A0_2._binder
    L2_2 = L2_2.miracle_img
    L3_2 = G
    L3_2 = L3_2.UIColorUtils
    L3_2 = L3_2.GetColor
    L4_2 = "#6F6F6F79"
    L3_2 = L3_2(L4_2)
    L2_2.color = L3_2
  else
    L2_2 = A0_2._binder
    L2_2 = L2_2.miracle_img
    L3_2 = G
    L3_2 = L3_2.UIColorUtils
    L3_2 = L3_2.GetColor
    L4_2 = "#FFFFFFFF"
    L3_2 = L3_2(L4_2)
    L2_2.color = L3_2
  end
end
L0_1.setup_img_color = L1_1
return L0_1
