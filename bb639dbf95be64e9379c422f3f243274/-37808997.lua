local L0_1, L1_1, L2_1, L3_1, L4_1
L0_1 = require
L1_1 = "Utilities.FriendUtils"
L0_1(L1_1)
L0_1 = CS
L0_1 = L0_1.RPG
L0_1 = L0_1.Client
L0_1 = L0_1.GlobalVars
L0_1 = L0_1.s_ModuleManager
L0_1 = L0_1.FriendModule
L1_1 = CS
L1_1 = L1_1.RPG
L1_1 = L1_1.Client
L1_1 = L1_1.GlobalVars
L1_1 = L1_1.s_ModuleManager
L1_1 = L1_1.MonopolyModule
L2_1 = G
L2_1 = L2_1.Class
L3_1 = "MonopolyEventOptionItemPanel"
L4_1 = G
L4_1 = L4_1.BasePanel
L2_1 = L2_1(L3_1, L4_1)
function L3_1(A0_2, A1_2, A2_2)
  A0_2._callback = nil
  A0_2._callback_handler = nil
  A0_2._is_option_can_click = true
end
L2_1.ctor = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_root
  L4_2 = A0_2._on_btn_root_click
  L1_2(L2_2, L3_2, L4_2)
end
L2_1._on_load = L3_1
function L3_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  A0_2._option_data = A1_2
  L3_2 = A0_2
  L2_2 = A0_2._setup_text
  L2_2(L3_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_img
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = true
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_result
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = false
  L2_2(L3_2, L4_2)
  L3_2 = A0_2
  L2_2 = A0_2._check_option_is_need_friend
  L2_2(L3_2)
  L3_2 = A0_2
  L2_2 = A0_2.reset_btn_state
  L2_2(L3_2)
end
L2_1.setup_view = L3_1
function L3_1(A0_2)
  local L1_2
  A0_2._callback = nil
  A0_2._callback_handler = nil
end
L2_1._on_dispose = L3_1
function L3_1(A0_2)
  local L1_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.btn_root
  L1_2 = L1_2.gameObject
  return L1_2
end
L2_1.get_first_selected_object = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._is_option_can_click
  if not L1_2 then
    return
  end
  L1_2 = A0_2._option_data
  L2_2 = L1_2
  L1_2 = L1_2.IsOptionNeedSelectFriend
  L1_2 = L1_2(L2_2)
  if L1_2 then
    L1_2 = A0_2._is_haven_friend
    if not L1_2 then
      L1_2 = G
      L1_2 = L1_2.NotifyManager
      L1_2 = L1_2.notify
      L2_2 = G
      L2_2 = L2_2.CS
      L2_2 = L2_2.NotifyType
      L2_2 = L2_2.UIPileToastMessageTextID
      L3_2 = "UIText_ActivityMonopoly_Event_Friends_NoFriendsTips"
      L1_2(L2_2, L3_2)
      return
    end
  end
  L1_2 = G
  L1_2 = L1_2.Utils
  L1_2 = L1_2.invoke_callback
  L2_2 = A0_2._callback
  L3_2 = A0_2._callback_handler
  L4_2 = A0_2._option_data
  L1_2(L2_2, L3_2, L4_2)
end
L2_1._on_btn_root_click = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2._remove_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.FriendListRefreshed
  L4_2 = A0_2._on_friend_list_refreshed
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2._option_data
  L2_2 = L1_2
  L1_2 = L1_2.IsOptionNeedSelectFriend
  L1_2 = L1_2(L2_2)
  if L1_2 then
    L2_2 = A0_2
    L1_2 = A0_2._set_btn_root_state
    L1_2(L2_2)
  end
end
L2_1._on_friend_list_refreshed = L3_1
function L3_1(A0_2)
  local L1_2, L2_2
  L1_2 = L0_1
  L2_2 = L1_2
  L1_2 = L1_2.GetFriendList
  L1_2 = L1_2(L2_2)
  L1_2 = L1_2.Count
  L1_2 = 0 < L1_2
  A0_2._is_haven_friend = L1_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.btn_root
  L2_2 = A0_2._is_haven_friend
  L2_2 = not L2_2
  L1_2.IsInFakeDisableState = L2_2
end
L2_1._set_btn_root_state = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._option_data
  L2_2 = L1_2
  L1_2 = L1_2.IsOptionNeedSelectFriend
  L1_2 = L1_2(L2_2)
  if L1_2 then
    L1_2 = L0_1.IsBriefFriendInfoGot
    if L1_2 then
      L2_2 = A0_2
      L1_2 = A0_2._set_btn_root_state
      L1_2(L2_2)
    else
      L2_2 = A0_2
      L1_2 = A0_2.show_full_screen_block_for_packet
      L3_2 = CS
      L3_2 = L3_2.NIJNBICAPPA
      L3_2 = L3_2.HIDCHKGDJAP
      L1_2(L2_2, L3_2)
      L1_2 = G
      L1_2 = L1_2.FriendUtils
      L1_2 = L1_2.refresh_friend_data
      L1_2()
      L2_2 = A0_2
      L1_2 = A0_2._add_notify_handler
      L3_2 = G
      L3_2 = L3_2.CS
      L3_2 = L3_2.NotifyType
      L3_2 = L3_2.FriendListRefreshed
      L4_2 = A0_2._on_friend_list_refreshed
      L1_2(L2_2, L3_2, L4_2)
    end
  end
end
L2_1._check_option_is_need_friend = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.text_title
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetTextID
  L3_2 = A0_2._option_data
  L3_2 = L3_2.OptionContent
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._option_data
  L1_2 = L1_2.IsHideEffect
  if L1_2 then
    L1_2 = L1_1.EventInfo
    L2_2 = L1_2
    L1_2 = L1_2.IsOptionTriggered
    L3_2 = A0_2._option_data
    L3_2 = L3_2.ID
    L1_2 = L1_2(L2_2, L3_2)
    if not L1_2 then
      L1_2 = A0_2._binder
      L1_2 = L1_2.text_desc
      L2_2 = L1_2
      L1_2 = L1_2.SafeSetTextID
      L3_2 = "UIText_ActivityMonopoly_Event_HideEffect"
      L1_2(L2_2, L3_2)
  end
  else
    L2_2 = A0_2
    L1_2 = A0_2._set_select_option_effect
    L1_2(L2_2)
  end
  L2_2 = A0_2
  L1_2 = A0_2._setup_bubble_text
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._setup_bubble_state
  L3_2 = false
  L1_2(L2_2, L3_2)
end
L2_1._setup_text = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L1_2 = G
  L1_2 = L1_2.StrExt
  L1_2 = L1_2.IsNullOrEmpty
  L2_2 = A0_2._option_data
  L2_2 = L2_2.EffectContentText
  L1_2 = L1_2(L2_2)
  if not L1_2 then
    L1_2 = A0_2._option_data
    L2_2 = L1_2
    L1_2 = L1_2.IsOptionGainAssetTax
    L1_2 = L1_2(L2_2)
    if L1_2 then
      L1_2 = A0_2._binder
      L1_2 = L1_2.text_desc
      L2_2 = L1_2
      L1_2 = L1_2.SafeSetTextID
      L3_2 = A0_2._option_data
      L3_2 = L3_2.EffectContentText
      L4_2 = A0_2._option_data
      L4_2 = L4_2.TextDisplayParam1
      L5_2 = A0_2._option_data
      L5_2 = L5_2.TextDisplayParam2
      L6_2 = A0_2._option_data
      L6_2 = L6_2.TextDisplayParam1
      L7_2 = L1_1.AssetInfo
      L8_2 = L7_2
      L7_2 = L7_2.GetCurActionProfit
      L7_2 = L7_2(L8_2)
      L6_2 = L6_2 * L7_2
      L1_2(L2_2, L3_2, L4_2, L5_2, L6_2)
    else
      L1_2 = A0_2._binder
      L1_2 = L1_2.text_desc
      L2_2 = L1_2
      L1_2 = L1_2.SafeSetTextID
      L3_2 = A0_2._option_data
      L3_2 = L3_2.EffectContentText
      L4_2 = A0_2._option_data
      L4_2 = L4_2.TextDisplayParam1
      L5_2 = A0_2._option_data
      L5_2 = L5_2.TextDisplayParam2
      L1_2(L2_2, L3_2, L4_2, L5_2)
    end
  else
    L1_2 = A0_2._binder
    L1_2 = L1_2.text_desc
    L2_2 = L1_2
    L1_2 = L1_2.SafeSetActive
    L3_2 = false
    L1_2(L2_2, L3_2)
  end
end
L2_1._set_select_option_effect = L3_1
function L3_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_result
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = true
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.text_result_num
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetTextID
  L4_2 = "UIText_ActivityMonopoly_Common_PercentValue"
  L5_2 = string
  L5_2 = L5_2.format
  L6_2 = "%.1f"
  L7_2 = A1_2 / 10
  L5_2, L6_2, L7_2 = L5_2(L6_2, L7_2)
  L2_2(L3_2, L4_2, L5_2, L6_2, L7_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.slider_result
  L3_2 = A1_2 / 1000
  L2_2.normalizedValue = L3_2
end
L2_1._show_option_ratio = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._option_data
  L1_2 = L1_2.OptionBubbleTalk
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.Client
  L2_2 = L2_2.TextID
  L2_2 = L2_2.empty
  if L1_2 ~= L2_2 then
    L1_2 = A0_2._binder
    L1_2 = L1_2.text_bubble
    L2_2 = L1_2
    L1_2 = L1_2.SafeSetTextID
    L3_2 = A0_2._option_data
    L3_2 = L3_2.OptionBubbleTalk
    L1_2(L2_2, L3_2)
  end
end
L2_1._setup_bubble_text = L3_1
function L3_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_bubble
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
end
L2_1._setup_bubble_state = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2
  A0_2._is_option_can_click = true
  L1_2 = A0_2._binder
  L1_2 = L1_2.btn_root
  L2_2 = L1_2
  L1_2 = L1_2.SetChecked
  L3_2 = false
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.btn_root
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetInteractable
  L3_2 = true
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2._setup_bubble_state
  L3_2 = false
  L1_2(L2_2, L3_2)
end
L2_1.reset_btn_state = L3_1
function L3_1(A0_2, A1_2, A2_2, A3_2, A4_2, A5_2)
  local L6_2, L7_2, L8_2
  A0_2._is_option_can_click = false
  L6_2 = A0_2._binder
  L6_2 = L6_2.btn_root
  L7_2 = L6_2
  L6_2 = L6_2.SafeSetInteractable
  L8_2 = A1_2
  L6_2(L7_2, L8_2)
  L6_2 = A0_2._binder
  L6_2 = L6_2.btn_root
  L7_2 = L6_2
  L6_2 = L6_2.SetChecked
  L8_2 = A1_2
  L6_2(L7_2, L8_2)
  L6_2 = A0_2._binder
  L6_2 = L6_2.node_img
  L7_2 = L6_2
  L6_2 = L6_2.SafeSetActive
  L8_2 = false
  L6_2(L7_2, L8_2)
  if A1_2 then
    L7_2 = A0_2
    L6_2 = A0_2._set_select_option_effect
    L6_2(L7_2)
  end
  if A3_2 and A4_2 ~= true then
    L7_2 = A0_2
    L6_2 = A0_2._show_option_ratio
    L8_2 = A2_2
    L6_2(L7_2, L8_2)
  end
  L7_2 = A0_2
  L6_2 = A0_2._setup_bubble_state
  L8_2 = A1_2 or L8_2
  if A1_2 then
    L8_2 = A5_2
  end
  L6_2(L7_2, L8_2)
end
L2_1.after_option_select = L3_1
function L3_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.btn_root
  L3_2 = L2_2
  L2_2 = L2_2.SetChecked
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
end
L2_1.set_option_select = L3_1
function L3_1(A0_2, A1_2, A2_2)
  A0_2._callback = A1_2
  A0_2._callback_handler = A2_2
end
L2_1.register_click_callback = L3_1
return L2_1
