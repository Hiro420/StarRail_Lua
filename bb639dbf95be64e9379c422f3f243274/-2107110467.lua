local L0_1, L1_1, L2_1
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "RogueAvatarIconPanel"
L2_1 = G
L2_1 = L2_1.BasePanel
L0_1 = L0_1(L1_1, L2_1)
function L1_1(A0_2, A1_2, A2_2)
  A0_2._btn_click_listener = nil
  A0_2._btn_click_callback = nil
  A0_2._avatar_data = nil
  A0_2._empty_icon_interactable = false
end
L0_1.ctor = L1_1
function L1_1(A0_2)
  local L1_2
  A0_2._btn_click_listener = nil
  A0_2._btn_click_callback = nil
  A0_2._avatar_data = nil
  A0_2._empty_icon_interactable = false
end
L0_1._on_dispose = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2
  L2_2 = A0_2
  L1_2 = A0_2.get_navi_btn
  L1_2 = L1_2(L2_2)
  if L1_2 then
    L2_2 = L1_2.navigation
    L3_2 = CS
    L3_2 = L3_2.UnityEngine
    L3_2 = L3_2.UI
    L3_2 = L3_2.Navigation
    L3_2 = L3_2.Mode
    L3_2 = L3_2.None
    L2_2.mode = L3_2
    L1_2.navigation = L2_2
  end
end
L0_1.clear_btn_navi = L1_1
function L1_1(A0_2)
  local L1_2
  L1_2 = A0_2._binder
  if L1_2 then
    L1_2 = A0_2._binder
    L1_2 = L1_2.btn
    return L1_2
  end
end
L0_1.get_navi_btn = L1_1
function L1_1(A0_2)
  local L1_2
  A0_2._need_navigation_to_next = true
end
L0_1.set_need_navigation_to_next = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = G
  L1_2 = L1_2.CS
  L1_2 = L1_2.EventSystem
  L1_2 = L1_2.current
  L1_2 = L1_2.currentSelectedGameObject
  L3_2 = A0_2
  L2_2 = A0_2.get_first_selected_object
  L2_2 = L2_2(L3_2)
  if L1_2 ~= L2_2 then
    return
  end
  L2_2 = A0_2
  L1_2 = A0_2.get_navi_btn
  L1_2 = L1_2(L2_2)
  if L1_2 == nil then
    return
  end
  L2_2 = L1_2.navigation
  L3_2 = L2_2.selectOnRight
  if L3_2 ~= nil then
    L4_2 = A0_2
    L3_2 = A0_2.set_navigation_target
    L5_2 = L2_2.selectOnRight
    L5_2 = L5_2.gameObject
    L3_2(L4_2, L5_2)
  else
    L3_2 = L2_2.selectOnLeft
    if L3_2 ~= nil then
      L4_2 = A0_2
      L3_2 = A0_2.set_navigation_target
      L5_2 = L2_2.selectOnLeft
      L5_2 = L5_2.gameObject
      L3_2(L4_2, L5_2)
    end
  end
end
L0_1.try_navigation_to_next_select = L1_1
function L1_1(A0_2)
  local L1_2
  L1_2 = A0_2._binder
  if L1_2 then
    L1_2 = A0_2._binder
    L1_2 = L1_2.btn
    if L1_2 then
      L1_2 = A0_2._binder
      L1_2 = L1_2.btn
      L1_2 = L1_2.gameObject
      return L1_2
    end
  end
end
L0_1.get_first_selected_object = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn
  L4_2 = A0_2._on_click
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.btn
  function L2_2()
    local L0_3, L1_3, L2_3
    L0_3 = A0_2
    L1_3 = L0_3
    L0_3 = L0_3.save_navigation_target
    L2_3 = A0_2._binder
    L2_3 = L2_3.btn
    L2_3 = L2_3.gameObject
    L0_3(L1_3, L2_3)
  end
  L1_2.onSelectTrigger = L2_2
end
L0_1._on_load = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2
  L2_2 = A0_2
  L1_2 = A0_2.is_active_in_hierarchy
  L1_2 = L1_2(L2_2)
  if L1_2 then
    L2_2 = A0_2
    L1_2 = A0_2.set_icon
    L3_2 = A0_2._avatar_data
    L1_2(L2_2, L3_2)
  end
end
L0_1._on_return_to_top = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._btn_click_callback
  if L1_2 ~= nil then
    L1_2 = A0_2._btn_click_listener
    if L1_2 ~= nil then
      L1_2 = A0_2._need_navigation_to_next
      if L1_2 == true then
        L2_2 = A0_2
        L1_2 = A0_2.try_navigation_to_next_select
        L1_2(L2_2)
      end
      L1_2 = A0_2._btn_click_callback
      L2_2 = A0_2._btn_click_listener
      L3_2 = A0_2._avatar_data
      L1_2(L2_2, L3_2)
    end
  end
end
L0_1._on_click = L1_1
function L1_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2
  L3_2 = A0_2._binder
  L3_2 = L3_2.node_trial_txt
  L4_2 = L3_2
  L3_2 = L3_2.SafeSetTextID
  L5_2 = A2_2
  L3_2(L4_2, L5_2)
  L3_2 = A0_2._binder
  L3_2 = L3_2.node_trial_mark
  L4_2 = L3_2
  L3_2 = L3_2.SafeSetActive
  L5_2 = A1_2
  L3_2(L4_2, L5_2)
end
L0_1.setup_trial_node = L1_1
function L1_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L4_2 = A1_2 == nil
  L5_2 = A0_2._binder
  L5_2 = L5_2.node_empty
  L6_2 = L5_2
  L5_2 = L5_2.SafeSetActive
  L7_2 = L4_2
  L5_2(L6_2, L7_2)
  L5_2 = A0_2._binder
  L5_2 = L5_2.node_avatar
  L6_2 = L5_2
  L5_2 = L5_2.SafeSetActive
  L7_2 = not L4_2
  L5_2(L6_2, L7_2)
  L6_2 = A0_2
  L5_2 = A0_2.register_callback
  L7_2 = A2_2
  L8_2 = A3_2
  L9_2 = A1_2
  L5_2(L6_2, L7_2, L8_2, L9_2)
  L5_2 = A0_2._empty_icon_interactable
  if not L5_2 then
    L6_2 = A0_2
    L5_2 = A0_2.set_btn_interactable
    L7_2 = not L4_2
    L5_2(L6_2, L7_2)
  end
  if not L4_2 then
    L6_2 = A0_2
    L5_2 = A0_2.set_icon
    L7_2 = A1_2
    L5_2(L6_2, L7_2)
  else
    L6_2 = A0_2
    L5_2 = A0_2.set_icon
    L7_2 = nil
    L5_2(L6_2, L7_2)
  end
  L6_2 = A0_2
  L5_2 = A0_2.set_trial_mark
  L7_2 = L4_2
  L8_2 = A1_2
  L5_2(L6_2, L7_2, L8_2)
end
L0_1.setup_view_avatar_data = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  A0_2._avatar_data = A1_2
  L2_2 = A0_2._avatar_data
  if L2_2 ~= nil then
    L3_2 = A0_2
    L2_2 = A0_2._async_load_sprite_to
    L4_2 = A0_2._binder
    L4_2 = L4_2.img_icon
    L5_2 = A0_2._avatar_data
    L5_2 = L5_2.AvatarSideIconPath
    L2_2(L3_2, L4_2, L5_2)
  end
end
L0_1.set_icon = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.btn
  L3_2 = L2_2
  L2_2 = L2_2.SetChecked
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
end
L0_1.set_selected = L1_1
function L1_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2
  L3_2 = A0_2._binder
  L3_2 = L3_2.node_number_mark
  L4_2 = L3_2
  L3_2 = L3_2.SafeSetActive
  L5_2 = A1_2
  L3_2(L4_2, L5_2)
  if A1_2 then
    L3_2 = A0_2._binder
    L3_2 = L3_2.text_number
    L4_2 = L3_2
    L3_2 = L3_2.SetCustomizedText
    L5_2 = A2_2
    L3_2(L4_2, L5_2)
  end
end
L0_1.set_number_mark = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  A0_2._empty_icon_interactable = A1_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_empty_select
  if L2_2 then
    L2_2 = A0_2._binder
    L2_2 = L2_2.node_empty_select
    L3_2 = L2_2
    L2_2 = L2_2.SafeSetActive
    L4_2 = A1_2
    L2_2(L3_2, L4_2)
  end
  L2_2 = A0_2._binder
  L2_2 = L2_2.img_empty_select
  if L2_2 then
    L2_2 = A0_2._binder
    L2_2 = L2_2.img_empty_select
    L2_2.raycastTarget = A1_2
  end
end
L0_1.set_empty_interactable = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.btn
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetInteractable
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
end
L0_1.set_btn_interactable = L1_1
function L1_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2
  if not A1_2 then
    L3_2 = A2_2.IsTrialPlayer
    if L3_2 then
      L4_2 = A0_2
      L3_2 = A0_2.setup_trial_node
      L5_2 = true
      L6_2 = "UIText_RogueChallengeActivity_TagType_Special"
      L3_2(L4_2, L5_2, L6_2)
  end
  else
    if not A1_2 then
      L3_2 = A2_2.IsAssistAvatar
      if L3_2 then
        L4_2 = A0_2
        L3_2 = A0_2.setup_trial_node
        L5_2 = true
        L6_2 = "UIText_RogueChallengeActivity_TagType_Support"
        L3_2(L4_2, L5_2, L6_2)
    end
    else
      L4_2 = A0_2
      L3_2 = A0_2.setup_trial_node
      L5_2 = false
      L6_2 = "UIText_RogueChallengeActivity_TagType_Special"
      L3_2(L4_2, L5_2, L6_2)
    end
  end
end
L0_1.set_trial_mark = L1_1
function L1_1(A0_2, A1_2, A2_2, A3_2)
  A0_2._btn_click_callback = A1_2
  A0_2._btn_click_listener = A2_2
  A0_2._avatar_data = A3_2
end
L0_1.register_callback = L1_1
return L0_1
