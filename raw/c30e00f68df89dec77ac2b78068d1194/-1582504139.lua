local L0_1, L1_1, L2_1
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "PlayerReturnInviteBubblePanel"
L2_1 = G
L2_1 = L2_1.BasePanel
L0_1 = L0_1(L1_1, L2_1)
function L1_1(A0_2)
  local L1_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.GlobalVars
  L1_2 = L1_2.s_ModuleManager
  L1_2 = L1_2.ActivityPlayerReturnModule
  A0_2._player_return_module = L1_2
  L1_2 = A0_2._player_return_module
  L1_2 = L1_2.InviteData
  A0_2._invite_data = L1_2
end
L0_1._on_load = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L1_2 = A0_2._invite_data
  L1_2 = L1_2.IsInvitationCodeBound
  L2_2 = A0_2._player_return_module
  L2_2 = L2_2.IsInviteAvailable
  if not L2_2 or L1_2 then
    L3_2 = A0_2
    L2_2 = A0_2.safe_set_active
    L4_2 = false
    L2_2(L3_2, L4_2)
    return
  end
  L3_2 = A0_2
  L2_2 = A0_2.safe_set_active
  L4_2 = true
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._player_return_module
  L2_2 = L2_2.CurInviteDisplayRewardItems
  if L2_2 ~= nil then
    L3_2 = L2_2.Count
    if L3_2 ~= 0 then
      goto lbl_24
    end
  end
  do return end
  ::lbl_24::
  L4_2 = L2_2
  L3_2 = L2_2.GetEnumerator
  L3_2 = L3_2(L4_2)
  L5_2 = L3_2
  L4_2 = L3_2.MoveNext
  L4_2(L5_2)
  L4_2 = CS
  L4_2 = L4_2.RPG
  L4_2 = L4_2.GameCore
  L4_2 = L4_2.ItemExcelTable
  L4_2 = L4_2.GetData
  L5_2 = L3_2.Current
  L5_2 = L5_2.Key
  L4_2 = L4_2(L5_2)
  if L4_2 == nil then
    return
  end
  L5_2 = L3_2.Current
  L5_2 = L5_2.Value
  L7_2 = A0_2
  L6_2 = A0_2._async_load_sprite_to
  L8_2 = A0_2._binder
  L8_2 = L8_2.img_reward_item
  L9_2 = L4_2.ItemCurrencyIconPath
  L6_2(L7_2, L8_2, L9_2)
  L6_2 = A0_2._binder
  L6_2 = L6_2.txt_reward_num
  L7_2 = L6_2
  L6_2 = L6_2.SafeSetText
  L8_2 = L5_2
  L6_2(L7_2, L8_2)
end
L0_1.refresh_view = L1_1
return L0_1
