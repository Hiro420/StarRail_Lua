local L0_1, L1_1, L2_1
L0_1 = require
L1_1 = "Ui.ActivityMonopoly.Friend.Components.ActivityMonopolyPlayerRankPanelBinder"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "ActivityMonopolyPlayerRankPanel"
L2_1 = G
L2_1 = L2_1.BasePanel
L0_1 = L0_1(L1_1, L2_1)
function L1_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2
  A0_2._display_data = A1_2
  L3_2 = A0_2._binder
  L3_2 = L3_2.rank_txt
  L4_2 = L3_2
  L3_2 = L3_2.SafeSetText
  L5_2 = A0_2._display_data
  L5_2 = L5_2.Rank
  L3_2(L4_2, L5_2)
  L3_2 = A0_2._binder
  L3_2 = L3_2.player_name
  L4_2 = L3_2
  L3_2 = L3_2.SetCustomizedText
  L5_2 = A0_2._display_data
  L5_2 = L5_2.FriendName
  L3_2(L4_2, L5_2)
  L4_2 = A0_2
  L3_2 = A0_2._async_load_sprite_to
  L5_2 = A0_2._binder
  L5_2 = L5_2.coin_icon
  L6_2 = CS
  L6_2 = L6_2.RPG
  L6_2 = L6_2.Client
  L6_2 = L6_2.MonopolyUtils
  L6_2 = L6_2.GetMonopolyCurrencyItemRow
  L6_2 = L6_2()
  L6_2 = L6_2.ItemCurrencyIconPath
  L3_2(L4_2, L5_2, L6_2)
  L3_2 = A0_2._binder
  L3_2 = L3_2.coin_num
  L4_2 = L3_2
  L3_2 = L3_2.SafeSetText
  if A2_2 then
    L5_2 = A0_2._display_data
    L5_2 = L5_2.TodayInCome
    if L5_2 then
      goto lbl_36
    end
  end
  L5_2 = A0_2._display_data
  L5_2 = L5_2.TotalInCome
  ::lbl_36::
  L3_2(L4_2, L5_2)
  L3_2 = A0_2._binder
  L3_2 = L3_2.like_num
  L4_2 = L3_2
  L3_2 = L3_2.SafeSetText
  L5_2 = A0_2._display_data
  L5_2 = L5_2.LikeNum
  L3_2(L4_2, L5_2)
  L3_2 = A0_2._binder
  L3_2 = L3_2.player_photo_panel
  L4_2 = L3_2
  L3_2 = L3_2.setup_view_by_id
  L5_2 = A0_2._display_data
  L5_2 = L5_2.IconID
  L3_2(L4_2, L5_2)
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_avatar
  L4_2 = L3_2
  L3_2 = L3_2.SafeSetInteractable
  L5_2 = false
  L3_2(L4_2, L5_2)
end
L0_1.setup_view = L1_1
return L0_1
