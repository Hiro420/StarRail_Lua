local L0_1, L1_1, L2_1
L0_1 = require
L1_1 = "Ui.Rogue.Talent.RogueTalentItemPanelBinder"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "RogueTalentItemPanel"
L2_1 = G
L2_1 = L2_1.BasePanel
L0_1 = L0_1(L1_1, L2_1)
L1_1 = "RogueTalentBtn_ActivedHint"
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.button
  L4_2 = A0_2._on_item_click
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.button
  function L2_2()
    local L0_3, L1_3
    L0_3 = A0_2
    L1_3 = L0_3
    L0_3 = L0_3._on_item_click
    L0_3(L1_3)
  end
  L1_2.onSelectTrigger = L2_2
end
L0_1._on_load = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2
  A0_2._talent_data_item = A1_2
  L3_2 = A0_2
  L2_2 = A0_2._setup_icon
  L2_2(L3_2)
  L3_2 = A0_2
  L2_2 = A0_2._setup_status_view
  L2_2(L3_2)
end
L0_1.setup_view = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.button
  L3_2 = L2_2
  L2_2 = L2_2.SetChecked
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
end
L0_1.set_selected = L2_1
function L2_1(A0_2, A1_2, A2_2, A3_2, A4_2)
  A0_2._click_callback = A1_2
  A0_2._click_callback_listener = A2_2
  A0_2.row_index = A3_2
  A0_2.col_index = A4_2
end
L0_1.set_click_callback = L2_1
function L2_1(A0_2)
  local L1_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.button
  L1_2 = L1_2.gameObject
  return L1_2
end
L0_1.get_selected_object = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.anim_active
  L2_2 = L1_2
  L1_2 = L1_2.Play
  L3_2 = L1_1
  L1_2(L2_2, L3_2)
end
L0_1.play_active_anim = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = A0_2._talent_data_item
  L2_2 = L1_2
  L1_2 = L1_2.GetIconPath
  L1_2 = L1_2(L2_2)
  L3_2 = A0_2
  L2_2 = A0_2._async_load_sprite_to
  L4_2 = A0_2._binder
  L4_2 = L4_2.icon
  L5_2 = L1_2
  L2_2(L3_2, L4_2, L5_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.icon_can_active
  if L2_2 then
    L3_2 = A0_2
    L2_2 = A0_2._async_load_sprite_to
    L4_2 = A0_2._binder
    L4_2 = L4_2.icon_can_active
    L5_2 = L1_2
    L2_2(L3_2, L4_2, L5_2)
  end
  L2_2 = A0_2._binder
  L2_2 = L2_2.icon_active_hint
  if L2_2 then
    L3_2 = A0_2
    L2_2 = A0_2._async_load_sprite_to
    L4_2 = A0_2._binder
    L4_2 = L4_2.icon_active_hint
    L5_2 = L1_2
    L2_2(L3_2, L4_2, L5_2)
  end
end
L0_1._setup_icon = L2_1
function L2_1(A0_2)
  local L1_2
  L1_2 = A0_2._talent_data_item
  return L1_2
end
L0_1.get_item_data = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = A0_2._talent_data_item
  L2_2 = L1_2
  L1_2 = L1_2.IsActivated
  L1_2 = L1_2(L2_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.lockedMark
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = A0_2._talent_data_item
  L5_2 = L4_2
  L4_2 = L4_2.IsLocked
  L4_2, L5_2, L6_2 = L4_2(L5_2)
  L2_2(L3_2, L4_2, L5_2, L6_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.activatedMark
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = L1_2
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.canActiveMark
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = A0_2._talent_data_item
  L5_2 = L4_2
  L4_2 = L4_2.CanActive
  L4_2, L5_2, L6_2 = L4_2(L5_2)
  L2_2(L3_2, L4_2, L5_2, L6_2)
  if L1_2 then
    L2_2 = A0_2._binder
    L2_2 = L2_2.img_inner_circle
    L3_2 = L2_2
    L2_2 = L2_2.SafeSetColor
    L5_2 = A0_2
    L4_2 = A0_2.get_blackboard
    L4_2 = L4_2(L5_2)
    L5_2 = L4_2
    L4_2 = L4_2.query
    L6_2 = "InnerCircleActiveColor"
    L4_2, L5_2, L6_2 = L4_2(L5_2, L6_2)
    L2_2(L3_2, L4_2, L5_2, L6_2)
    L2_2 = A0_2._binder
    L2_2 = L2_2.img_outer_circle
    L3_2 = L2_2
    L2_2 = L2_2.SafeSetColor
    L5_2 = A0_2
    L4_2 = A0_2.get_blackboard
    L4_2 = L4_2(L5_2)
    L5_2 = L4_2
    L4_2 = L4_2.query
    L6_2 = "OuterCircleActiveColor"
    L4_2, L5_2, L6_2 = L4_2(L5_2, L6_2)
    L2_2(L3_2, L4_2, L5_2, L6_2)
    L2_2 = A0_2._binder
    L2_2 = L2_2.icon
    L3_2 = L2_2
    L2_2 = L2_2.SafeSetColor
    L5_2 = A0_2
    L4_2 = A0_2.get_blackboard
    L4_2 = L4_2(L5_2)
    L5_2 = L4_2
    L4_2 = L4_2.query
    L6_2 = "IconActiveColor"
    L4_2, L5_2, L6_2 = L4_2(L5_2, L6_2)
    L2_2(L3_2, L4_2, L5_2, L6_2)
  else
    L2_2 = A0_2._binder
    L2_2 = L2_2.img_inner_circle
    L3_2 = L2_2
    L2_2 = L2_2.SafeSetColor
    L5_2 = A0_2
    L4_2 = A0_2.get_blackboard
    L4_2 = L4_2(L5_2)
    L5_2 = L4_2
    L4_2 = L4_2.query
    L6_2 = "InnerCircleUnActiveColor"
    L4_2, L5_2, L6_2 = L4_2(L5_2, L6_2)
    L2_2(L3_2, L4_2, L5_2, L6_2)
    L2_2 = A0_2._binder
    L2_2 = L2_2.img_outer_circle
    L3_2 = L2_2
    L2_2 = L2_2.SafeSetColor
    L5_2 = A0_2
    L4_2 = A0_2.get_blackboard
    L4_2 = L4_2(L5_2)
    L5_2 = L4_2
    L4_2 = L4_2.query
    L6_2 = "OuterCircleUnActiveColor"
    L4_2, L5_2, L6_2 = L4_2(L5_2, L6_2)
    L2_2(L3_2, L4_2, L5_2, L6_2)
    L2_2 = A0_2._binder
    L2_2 = L2_2.icon
    L3_2 = L2_2
    L2_2 = L2_2.SafeSetColor
    L5_2 = A0_2
    L4_2 = A0_2.get_blackboard
    L4_2 = L4_2(L5_2)
    L5_2 = L4_2
    L4_2 = L4_2.query
    L6_2 = "IconUnActiveColor"
    L4_2, L5_2, L6_2 = L4_2(L5_2, L6_2)
    L2_2(L3_2, L4_2, L5_2, L6_2)
  end
end
L0_1._setup_status_view = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L2_2 = A0_2
  L1_2 = A0_2.save_navigation_target
  L3_2 = A0_2._binder
  L3_2 = L3_2.button
  L3_2 = L3_2.gameObject
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._click_callback
  L2_2 = A0_2._click_callback_listener
  L3_2 = A0_2._talent_data_item
  L4_2 = A0_2._binder
  L4_2 = L4_2.button
  L5_2 = A0_2
  L1_2(L2_2, L3_2, L4_2, L5_2)
end
L0_1._on_item_click = L2_1
return L0_1
