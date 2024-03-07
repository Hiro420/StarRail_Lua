local L0_1, L1_1, L2_1
L0_1 = require
L1_1 = "Ui.ActivityMonopoly.Friend.Components.ActivityMonopolyFriendRankPanelBinder"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "ActivityMonopolyFriendRankPanel"
L2_1 = G
L2_1 = L2_1.BasePanel
L0_1 = L0_1(L1_1, L2_1)
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.like_btn
  L4_2 = A0_2._on_like_btn_clicked
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._setup_in_control_button_enable
  L3_2 = false
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.btn_root
  function L2_2()
    local L0_3, L1_3, L2_3, L3_3
    L0_3 = A0_2
    L1_3 = L0_3
    L0_3 = L0_3.save_navigation_target
    L2_3 = A0_2
    L3_3 = L2_3
    L2_3 = L2_3.get_first_selected_object
    L2_3, L3_3 = L2_3(L3_3)
    L0_3(L1_3, L2_3, L3_3)
    L0_3 = A0_2
    L1_3 = L0_3
    L0_3 = L0_3._setup_in_control_button_enable
    L2_3 = true
    L0_3(L1_3, L2_3)
  end
  L1_2.onSelectTrigger = L2_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.btn_root
  function L2_2()
    local L0_3, L1_3, L2_3
    L0_3 = A0_2._binder
    if L0_3 == nil then
      return
    end
    L0_3 = A0_2
    L1_3 = L0_3
    L0_3 = L0_3._setup_in_control_button_enable
    L2_3 = false
    L0_3(L1_3, L2_3)
  end
  L1_2.onDeselectTrigger = L2_2
end
L0_1._on_load = L1_1
function L1_1(A0_2, A1_2, A2_2, A3_2, A4_2)
  local L5_2, L6_2, L7_2, L8_2
  A0_2._display_data = A1_2
  A0_2._rank = A3_2
  L5_2 = A0_2._binder
  L5_2 = L5_2.rank_txt
  L6_2 = L5_2
  L5_2 = L5_2.SafeSetText
  L7_2 = A0_2._rank
  L5_2(L6_2, L7_2)
  L6_2 = A0_2
  L5_2 = A0_2._check_player_rank
  L5_2(L6_2)
  L5_2 = A0_2._binder
  L5_2 = L5_2.player_name
  L6_2 = L5_2
  L5_2 = L5_2.SetCustomizedText
  L7_2 = A0_2._display_data
  L7_2 = L7_2.FriendName
  L5_2(L6_2, L7_2)
  L6_2 = A0_2
  L5_2 = A0_2._async_load_sprite_to
  L7_2 = A0_2._binder
  L7_2 = L7_2.coin_icon
  L8_2 = CS
  L8_2 = L8_2.RPG
  L8_2 = L8_2.Client
  L8_2 = L8_2.MonopolyUtils
  L8_2 = L8_2.GetMonopolyCurrencyItemRow
  L8_2 = L8_2()
  L8_2 = L8_2.ItemCurrencyIconPath
  L5_2(L6_2, L7_2, L8_2)
  L5_2 = A0_2._binder
  L5_2 = L5_2.coin_num
  L6_2 = L5_2
  L5_2 = L5_2.SafeSetText
  if A2_2 then
    L7_2 = A0_2._display_data
    L7_2 = L7_2.TodayInCome
    if L7_2 then
      goto lbl_38
    end
  end
  L7_2 = A0_2._display_data
  L7_2 = L7_2.TotalInCome
  ::lbl_38::
  L5_2(L6_2, L7_2)
  L5_2 = A0_2._binder
  L5_2 = L5_2.like_num
  L6_2 = L5_2
  L5_2 = L5_2.SafeSetText
  L7_2 = A0_2._display_data
  L7_2 = L7_2.LikeNum
  L5_2(L6_2, L7_2)
  if A4_2 then
    L5_2 = A0_2._binder
    L5_2 = L5_2.animator_like
    L6_2 = L5_2
    L5_2 = L5_2.SetTrigger
    L7_2 = "ToCheck"
    L5_2(L6_2, L7_2)
  else
    L5_2 = A0_2._binder
    L5_2 = L5_2.like_btn
    L6_2 = L5_2
    L5_2 = L5_2.SetChecked
    L7_2 = A0_2._display_data
    L7_2 = L7_2.IsLiked
    L5_2(L6_2, L7_2)
    L5_2 = A0_2._display_data
    L5_2 = L5_2.IsLiked
    if L5_2 then
      L5_2 = A0_2._binder
      L5_2 = L5_2.animator_like
      L6_2 = L5_2
      L5_2 = L5_2.Play
      L7_2 = "BtnLike_Check"
      L5_2(L6_2, L7_2)
    else
      L5_2 = A0_2._binder
      L5_2 = L5_2.animator_like
      L6_2 = L5_2
      L5_2 = L5_2.Play
      L7_2 = "BtnLike_UnCheck"
      L5_2(L6_2, L7_2)
    end
  end
  L5_2 = A0_2._binder
  L5_2 = L5_2.platform_info_panel
  L6_2 = L5_2
  L5_2 = L5_2.setup_view
  L7_2 = A0_2._display_data
  L7_2 = L7_2.PlatformInfo
  L5_2(L6_2, L7_2)
  L5_2 = A0_2._binder
  L5_2 = L5_2.player_photo_panel
  L6_2 = L5_2
  L5_2 = L5_2.setup_view_by_id
  L7_2 = A0_2._display_data
  L7_2 = L7_2.IconID
  L5_2(L6_2, L7_2)
  L5_2 = A0_2._binder
  L5_2 = L5_2.btn_avatar
  L6_2 = L5_2
  L5_2 = L5_2.SafeSetInteractable
  L7_2 = false
  L5_2(L6_2, L7_2)
end
L0_1.setup_view = L1_1
function L1_1(A0_2, A1_2, A2_2)
  A0_2._like_btn_clicked_cbk = A1_2
  A0_2._like_btn_clicked_listener = A2_2
end
L0_1.register_click_callback = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = G
  L1_2 = L1_2.Utils
  L1_2 = L1_2.invoke_callback
  L2_2 = A0_2._like_btn_clicked_cbk
  L3_2 = A0_2._like_btn_clicked_listener
  L4_2 = A0_2._display_data
  L1_2(L2_2, L3_2, L4_2)
end
L0_1._on_like_btn_clicked = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_rank1
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = A0_2._rank
  L3_2 = L3_2 == 1
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_rank2
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = A0_2._rank
  L3_2 = L3_2 == 2
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_rank3
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = A0_2._rank
  L3_2 = L3_2 == 3
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_player_rank
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = A0_2._rank
  L3_2 = 3 < L3_2
  L1_2(L2_2, L3_2)
end
L0_1._check_player_rank = L1_1
function L1_1(A0_2)
  local L1_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.btn_root
  L1_2 = L1_2.gameObject
  return L1_2
end
L0_1.get_first_selected_object = L1_1
function L1_1(A0_2, A1_2)
  local L2_2
  A0_2._is_select = A1_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.in_control_btn_like
  L2_2.ActionEnabled = A1_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.in_control_tip_like
  L2_2.IsShowTip = A1_2
end
L0_1._setup_in_control_button_enable = L1_1
function L1_1(A0_2)
  local L1_2
  L1_2 = A0_2._is_select
  return L1_2
end
L0_1.is_btn_select = L1_1
return L0_1
