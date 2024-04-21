local L0_1, L1_1, L2_1
L0_1 = require
L1_1 = "Ui.SpaceAnchor.AvatarHPSettingItemPanelBinder"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "AvatarHPSettingItemPanel"
L2_1 = G
L2_1 = L2_1.BasePanel
L0_1 = L0_1(L1_1, L2_1)
L1_1 = 1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_left
  L4_2 = A0_2._on_btn_left_click
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_right
  L4_2 = A0_2._on_btn_right_click
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_long_press_repeated
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_left
  L4_2 = A0_2._on_btn_left_click
  L5_2 = nil
  L6_2 = 0.3
  L7_2 = 0.02
  L1_2(L2_2, L3_2, L4_2, L5_2, L6_2, L7_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_long_press_repeated
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_right
  L4_2 = A0_2._on_btn_right_click
  L5_2 = nil
  L6_2 = 0.3
  L7_2 = 0.02
  L1_2(L2_2, L3_2, L4_2, L5_2, L6_2, L7_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.slider
  L2_2 = L1_1
  L2_2 = 100 / L2_2
  L1_2.maxValue = L2_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.slider
  L1_2 = L1_2.onValueChanged
  L2_2 = L1_2
  L1_2 = L1_2.SafeAddListener
  function L3_2(A0_3)
    local L1_3, L2_3, L3_3, L4_3
    L1_3 = A0_2._cur_amount
    A0_2.previous_value = L1_3
    A0_2._cur_amount = A0_3
    L1_3 = A0_2.previous_value
    if L1_3 then
      L1_3 = A0_2.previous_value
      L2_3 = A0_2._cur_amount
      if L1_3 ~= L2_3 then
        L1_3 = A0_2
        L2_3 = L1_3
        L1_3 = L1_3._on_slider_changes
        L3_3 = A0_3
        L4_3 = A0_2.data
        L1_3(L2_3, L3_3, L4_3)
        L1_3 = A0_2
        L2_3 = L1_3
        L1_3 = L1_3._refresh
        L1_3(L2_3)
      end
    end
  end
  L1_2(L2_2, L3_2)
end
L0_1._on_load = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_trial_mark
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = false
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_story_trial_mark
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = false
  L1_2(L2_2, L3_2)
end
L0_1._on_unload = L2_1
function L2_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.slider
  L1_2 = L1_2.onValueChanged
  L2_2 = L1_2
  L1_2 = L1_2.RemoveAllListeners
  L1_2(L2_2)
end
L0_1._on_dispose = L2_1
function L2_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.slider
  L1_2 = L1_2.value
  if 0 < L1_2 then
    L1_2 = A0_2._binder
    L1_2 = L1_2.slider
    L2_2 = A0_2._binder
    L2_2 = L2_2.slider
    L2_2 = L2_2.value
    L2_2 = L2_2 - 1
    L1_2.value = L2_2
  end
end
L0_1._on_btn_left_click = L2_1
function L2_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.slider
  L1_2 = L1_2.value
  if L1_2 < 100 then
    L1_2 = A0_2._binder
    L1_2 = L1_2.slider
    L2_2 = A0_2._binder
    L2_2 = L2_2.slider
    L2_2 = L2_2.value
    L2_2 = L2_2 + 1
    L1_2.value = L2_2
  end
end
L0_1._on_btn_right_click = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_left_in_control_tip
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_right_in_control_tip
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.btn_left
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.btn_right
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
end
L0_1.setup_in_control_tip = L2_1
function L2_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2
  A0_2.data = A1_2
  L3_2 = A1_2.percentage
  A0_2.real_percentage = L3_2
  L3_2 = A0_2.real_percentage
  A0_2._cur_amount = L3_2
  A0_2.overall_value = A2_2
  L3_2 = A0_2._cur_amount
  A0_2.previous_value = L3_2
  L4_2 = A0_2
  L3_2 = A0_2._async_load_sprite_to
  L5_2 = A0_2._binder
  L5_2 = L5_2.icon
  L6_2 = A0_2.data
  L6_2 = L6_2.avatar_data
  L6_2 = L6_2.AvatarSideIconPath
  L3_2(L4_2, L5_2, L6_2)
  L3_2 = A0_2._binder
  L3_2 = L3_2.slider
  L4_2 = A0_2.real_percentage
  L3_2.value = L4_2
  L4_2 = A0_2
  L3_2 = A0_2._refresh
  L3_2(L4_2)
  L4_2 = A0_2
  L3_2 = A0_2._try_add_trial_mark
  L3_2(L4_2)
end
L0_1.setup_view = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.num_text
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetText
  L3_2 = math
  L3_2 = L3_2.floor
  L4_2 = A0_2._cur_amount
  L3_2 = L3_2(L4_2)
  L4_2 = CS
  L4_2 = L4_2.RPG
  L4_2 = L4_2.Client
  L4_2 = L4_2.TextmapStatic
  L4_2 = L4_2.GetPercentSymbolStr
  L4_2 = L4_2()
  L3_2 = L3_2 .. L4_2
  L1_2(L2_2, L3_2)
end
L0_1._refresh = L2_1
function L2_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2
  L3_2 = A0_2._slider_cbk
  if L3_2 ~= nil then
    L3_2 = A0_2._slider_cbk_owner
    if L3_2 ~= nil then
      L3_2 = A0_2._slider_cbk
      L4_2 = A0_2._slider_cbk_owner
      L5_2 = A1_2
      L6_2 = A2_2
      L3_2(L4_2, L5_2, L6_2)
    end
  end
end
L0_1._on_slider_changes = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  A0_2.overall_value = A1_2
  L2_2 = A0_2.data
  L2_2 = L2_2.is_locked
  if L2_2 then
    return
  end
  A0_2._cur_amount = A1_2
  L2_2 = A0_2._cur_amount
  A0_2.previous_value = L2_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.slider
  L3_2 = L2_2
  L2_2 = L2_2.SetValueWithoutNotify
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
  L3_2 = A0_2
  L2_2 = A0_2._refresh
  L2_2(L3_2)
end
L0_1.set_overall_value = L2_1
function L2_1(A0_2, A1_2, A2_2)
  A0_2._slider_cbk = A1_2
  A0_2._slider_cbk_owner = A2_2
end
L0_1.register_slider_change_cbk = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_trial_mark
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = A0_2.data
  L3_2 = L3_2.isTrial
  L1_2(L2_2, L3_2)
  L1_2 = A0_2.data
  L1_2 = L1_2.isTrial
  if L1_2 then
    L1_2 = A0_2._binder
    L1_2 = L1_2.text_trial_mark
    L2_2 = L1_2
    L1_2 = L1_2.SafeSetTextID
    L3_2 = G
    L3_2 = L3_2.AvatarUtils
    L3_2 = L3_2.get_special_avatar_hint
    L4_2 = A0_2.data
    L4_2 = L4_2.avatar_data
    L3_2, L4_2 = L3_2(L4_2)
    L1_2(L2_2, L3_2, L4_2)
  end
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_story_trial_mark
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = A0_2.data
  L3_2 = L3_2.isStory
  L1_2(L2_2, L3_2)
end
L0_1._try_add_trial_mark = L2_1
return L0_1
