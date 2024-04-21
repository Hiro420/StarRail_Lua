local L0_1, L1_1, L2_1, L3_1, L4_1
L0_1 = "OptionalAvatarReward_AvatarTips1"
L1_1 = "UIText_OptionalAvatarReward_Tips3"
L2_1 = G
L2_1 = L2_1.Class
L3_1 = "OptionAvatarRewardOwnInfoPanel"
L4_1 = G
L4_1 = L4_1.BasePanel
L2_1 = L2_1(L3_1, L4_1)
function L3_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.GameCore
  L2_2 = L2_2.AvatarExcelTable
  L2_2 = L2_2.GetData
  L3_2 = A1_2
  L2_2 = L2_2(L3_2)
  A0_2._avatar_row = L2_2
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.Client
  L2_2 = L2_2.GlobalVars
  L2_2 = L2_2.s_ModuleManager
  L2_2 = L2_2.AvatarModule
  L3_2 = L2_2
  L2_2 = L2_2.GetAvatar
  L4_2 = A1_2
  L2_2 = L2_2(L3_2, L4_2)
  A0_2._avatar_data = L2_2
  L2_2 = A0_2._avatar_row
  if L2_2 == nil then
    return
  end
  L3_2 = A0_2
  L2_2 = A0_2._async_load_sprite_to
  L4_2 = A0_2._binder
  L4_2 = L4_2.img_avatar
  L5_2 = A0_2._avatar_row
  L5_2 = L5_2.AvatarMiniIconPath
  L2_2(L3_2, L4_2, L5_2)
  L3_2 = A0_2
  L2_2 = A0_2._is_avatar_owned
  L4_2 = A0_2._avatar_data
  L2_2 = L2_2(L3_2, L4_2)
  if L2_2 then
    L3_2 = A0_2
    L2_2 = A0_2._is_avatar_max_eidolon
    L4_2 = A0_2._avatar_data
    L2_2 = L2_2(L3_2, L4_2)
    if not L2_2 then
      L2_2 = A0_2._binder
      L2_2 = L2_2.txt_left
      L3_2 = L2_2
      L2_2 = L2_2.SafeSetActive
      L4_2 = false
      L2_2(L3_2, L4_2)
      L2_2 = A0_2._binder
      L2_2 = L2_2.node_cur_eidolon
      L3_2 = L2_2
      L2_2 = L2_2.SafeSetActive
      L4_2 = true
      L2_2(L3_2, L4_2)
      L2_2 = A0_2._binder
      L2_2 = L2_2.txt_cur_eidolon
      L3_2 = L2_2
      L2_2 = L2_2.SafeSetText
      L4_2 = A0_2._avatar_data
      L4_2 = L4_2.Rank
      L2_2(L3_2, L4_2)
      L3_2 = A0_2
      L2_2 = A0_2._get_inventory_eidolon_item_count
      L4_2 = A0_2._avatar_data
      L2_2 = L2_2(L3_2, L4_2)
      L3_2 = A0_2._binder
      L3_2 = L3_2.node_inventory_eidolon
      L4_2 = L3_2
      L3_2 = L3_2.SafeSetActive
      L5_2 = 0 < L2_2
      L3_2(L4_2, L5_2)
      L3_2 = A0_2._binder
      L3_2 = L3_2.txt_inventory_eidolon
      L4_2 = L3_2
      L3_2 = L3_2.SafeSetText
      L5_2 = L2_2
      L3_2(L4_2, L5_2)
  end
  else
    L2_2 = A0_2._binder
    L2_2 = L2_2.txt_left
    L3_2 = L2_2
    L2_2 = L2_2.SafeSetActive
    L4_2 = true
    L2_2(L3_2, L4_2)
    L2_2 = A0_2._binder
    L2_2 = L2_2.node_cur_eidolon
    L3_2 = L2_2
    L2_2 = L2_2.SafeSetActive
    L4_2 = false
    L2_2(L3_2, L4_2)
    L2_2 = A0_2._binder
    L2_2 = L2_2.node_inventory_eidolon
    L3_2 = L2_2
    L2_2 = L2_2.SafeSetActive
    L4_2 = false
    L2_2(L3_2, L4_2)
    L3_2 = A0_2
    L2_2 = A0_2._is_avatar_owned
    L4_2 = A0_2._avatar_data
    L2_2 = L2_2(L3_2, L4_2)
    if not L2_2 then
      L2_2 = A0_2._binder
      L2_2 = L2_2.txt_left
      L3_2 = L2_2
      L2_2 = L2_2.SafeSetTextID
      L4_2 = L0_1
      L2_2(L3_2, L4_2)
    else
      L3_2 = A0_2
      L2_2 = A0_2._is_avatar_max_eidolon
      L4_2 = A0_2._avatar_data
      L2_2 = L2_2(L3_2, L4_2)
      if L2_2 then
        L2_2 = A0_2._binder
        L2_2 = L2_2.txt_left
        L3_2 = L2_2
        L2_2 = L2_2.SafeSetTextID
        L4_2 = L1_1
        L2_2(L3_2, L4_2)
      end
    end
  end
end
L2_1.setup_view = L3_1
function L3_1(A0_2, A1_2)
  local L2_2
  L2_2 = A1_2 ~= nil
  return L2_2
end
L2_1._is_avatar_owned = L3_1
function L3_1(A0_2, A1_2)
  local L2_2, L3_2
  L2_2 = A1_2.Rank
  L3_2 = A1_2.Row
  L3_2 = L3_2.MaxRank
  L2_2 = L2_2 >= L3_2
  return L2_2
end
L2_1._is_avatar_max_eidolon = L3_1
function L3_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2
  L2_2 = A1_2.Row
  L2_2 = L2_2.RankIDList
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.GameCore
  L3_2 = L3_2.AvatarRankConfigExcelTable
  L3_2 = L3_2.GetData
  L4_2 = L2_2[0]
  L3_2 = L3_2(L4_2)
  L3_2 = L3_2.UnlockCost
  L3_2 = L3_2[0]
  L3_2 = L3_2.ItemID
  L4_2 = CS
  L4_2 = L4_2.RPG
  L4_2 = L4_2.Client
  L4_2 = L4_2.GlobalVars
  L4_2 = L4_2.s_ModuleManager
  L4_2 = L4_2.InventoryModule
  L5_2 = L4_2
  L4_2 = L4_2.GetItemCountByConfigID
  L6_2 = L3_2
  L4_2 = L4_2(L5_2, L6_2)
  return L4_2
end
L2_1._get_inventory_eidolon_item_count = L3_1
return L2_1
