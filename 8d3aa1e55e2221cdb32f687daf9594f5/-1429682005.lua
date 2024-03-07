local L0_1, L1_1, L2_1, L3_1, L4_1
L0_1 = require
L1_1 = "Utilities.TravelBrochureUtils"
L0_1(L1_1)
L0_1 = CS
L0_1 = L0_1.RPG
L0_1 = L0_1.Client
L0_1 = L0_1.GlobalVars
L0_1 = L0_1.s_ModuleManager
L0_1 = L0_1.InventoryModule
L1_1 = CS
L1_1 = L1_1.RPG
L1_1 = L1_1.Client
L1_1 = L1_1.GlobalVars
L1_1 = L1_1.s_ModuleManager
L1_1 = L1_1.SystemOpenModule
L2_1 = 10006
L3_1 = G
L3_1 = L3_1.StaticClass
L4_1 = "InventoryUtils"
L3_1 = L3_1(L4_1)
function L4_1(A0_2, A1_2, A2_2, A3_2, A4_2, A5_2)
  local L6_2, L7_2, L8_2, L9_2, L10_2
  L6_2 = L3_1._is_need_check_base_type_owner
  L7_2 = A0_2
  L8_2 = A1_2
  L9_2 = A4_2
  L6_2 = L6_2(L7_2, L8_2, L9_2)
  if L6_2 then
    L6_2 = L3_1._compare_sort_by_match_avatar_type
    L7_2 = A0_2
    L8_2 = A1_2
    L9_2 = A4_2
    return L6_2(L7_2, L8_2, L9_2)
  end
  L6_2 = CS
  L6_2 = L6_2.RPG
  L6_2 = L6_2.GameCore
  L6_2 = L6_2.InventorySortType
  L6_2 = L6_2.Rarity
  if A2_2 == L6_2 then
    L6_2 = A0_2.Rarity
    L7_2 = A1_2.Rarity
    if L6_2 ~= L7_2 then
      L6_2 = L3_1._compare_item_by_rarity
      L7_2 = A0_2
      L8_2 = A1_2
      L9_2 = A3_2
      return L6_2(L7_2, L8_2, L9_2)
  end
  else
    L6_2 = CS
    L6_2 = L6_2.RPG
    L6_2 = L6_2.GameCore
    L6_2 = L6_2.InventorySortType
    L6_2 = L6_2.Level
    if A2_2 == L6_2 then
      L6_2 = A0_2.Level
      L7_2 = A1_2.Level
      if L6_2 ~= L7_2 then
        L6_2 = L3_1._compare_item_by_level
        L7_2 = A0_2
        L8_2 = A1_2
        L9_2 = A3_2
        return L6_2(L7_2, L8_2, L9_2)
    end
    else
      L6_2 = CS
      L6_2 = L6_2.RPG
      L6_2 = L6_2.GameCore
      L6_2 = L6_2.InventorySortType
      L6_2 = L6_2.AvatarBaseType
      if A2_2 == L6_2 then
        L6_2 = A0_2.AvatarBaseType
        L7_2 = A1_2.AvatarBaseType
        if L6_2 ~= L7_2 then
          L6_2 = L3_1._compare_item_by_avatar_base_type
          L7_2 = A0_2
          L8_2 = A1_2
          L9_2 = A3_2
          L10_2 = A4_2
          return L6_2(L7_2, L8_2, L9_2, L10_2)
      end
      else
        L6_2 = CS
        L6_2 = L6_2.RPG
        L6_2 = L6_2.GameCore
        L6_2 = L6_2.InventorySortType
        L6_2 = L6_2.Attack
        if A2_2 == L6_2 then
          L7_2 = A0_2
          L6_2 = A0_2.GetAttack
          L6_2 = L6_2(L7_2)
          L8_2 = A1_2
          L7_2 = A1_2.GetAttack
          L7_2 = L7_2(L8_2)
          if L6_2 ~= L7_2 then
            L6_2 = L3_1._compare_item_by_attack
            L7_2 = A0_2
            L8_2 = A1_2
            L9_2 = A3_2
            return L6_2(L7_2, L8_2, L9_2)
        end
        else
          L6_2 = CS
          L6_2 = L6_2.RPG
          L6_2 = L6_2.GameCore
          L6_2 = L6_2.InventorySortType
          L6_2 = L6_2.Defence
          if A2_2 == L6_2 then
            L7_2 = A0_2
            L6_2 = A0_2.GetDefence
            L6_2 = L6_2(L7_2)
            L8_2 = A1_2
            L7_2 = A1_2.GetDefence
            L7_2 = L7_2(L8_2)
            if L6_2 ~= L7_2 then
              L6_2 = L3_1._compare_item_by_defence
              L7_2 = A0_2
              L8_2 = A1_2
              L9_2 = A3_2
              return L6_2(L7_2, L8_2, L9_2)
          end
          else
            L6_2 = CS
            L6_2 = L6_2.RPG
            L6_2 = L6_2.GameCore
            L6_2 = L6_2.InventorySortType
            L6_2 = L6_2.HP
            if A2_2 == L6_2 then
              L7_2 = A0_2
              L6_2 = A0_2.GetHP
              L6_2 = L6_2(L7_2)
              L8_2 = A1_2
              L7_2 = A1_2.GetHP
              L7_2 = L7_2(L8_2)
              if L6_2 ~= L7_2 then
                L6_2 = L3_1._compare_item_by_hp
                L7_2 = A0_2
                L8_2 = A1_2
                L9_2 = A3_2
                return L6_2(L7_2, L8_2, L9_2)
            end
            else
              L6_2 = CS
              L6_2 = L6_2.RPG
              L6_2 = L6_2.GameCore
              L6_2 = L6_2.InventorySortType
              L6_2 = L6_2.ObtainTime
              if A2_2 == L6_2 then
                L6_2 = L3_1._compare_item_by_obtain_time
                L7_2 = A0_2
                L8_2 = A1_2
                L9_2 = A3_2
                return L6_2(L7_2, L8_2, L9_2)
              else
                L6_2 = CS
                L6_2 = L6_2.RPG
                L6_2 = L6_2.GameCore
                L6_2 = L6_2.InventorySortType
                L6_2 = L6_2.Name
                if A2_2 == L6_2 then
                  L6_2 = L3_1._compare_item_by_Name
                  L7_2 = A0_2
                  L8_2 = A1_2
                  L9_2 = A3_2
                  return L6_2(L7_2, L8_2, L9_2)
                end
              end
            end
          end
        end
      end
    end
  end
  if A5_2 ~= nil then
    L6_2 = A5_2
    L7_2 = A0_2
    L8_2 = A1_2
    L9_2 = A3_2
    return L6_2(L7_2, L8_2, L9_2)
  end
  L6_2 = L3_1._compare_sort_item_secondary
  L7_2 = A0_2
  L8_2 = A1_2
  L9_2 = A3_2
  L10_2 = A4_2
  return L6_2(L7_2, L8_2, L9_2, L10_2)
end
L3_1.compare_sort_equip = L4_1
function L4_1(A0_2, A1_2, A2_2)
  local L3_2
  if A2_2 == nil then
    L3_2 = false
    return L3_2
  end
  L3_2 = A0_2.AvatarBaseType
  if L3_2 == A2_2 then
    L3_2 = A1_2.AvatarBaseType
    if L3_2 ~= A2_2 then
      goto lbl_17
    end
  end
  L3_2 = A0_2.AvatarBaseType
  if L3_2 ~= A2_2 then
    L3_2 = A1_2.AvatarBaseType
    ::lbl_17::
    if L3_2 == A2_2 then
      L3_2 = true
      return L3_2
    end
  end
  L3_2 = false
  return L3_2
end
L3_1._is_need_check_base_type_owner = L4_1
function L4_1(A0_2, A1_2, A2_2)
  local L3_2
  L3_2 = A0_2.AvatarBaseType
  if A2_2 == L3_2 then
    L3_2 = true
    return L3_2
  else
    L3_2 = false
    return L3_2
  end
end
L3_1._compare_sort_by_match_avatar_type = L4_1
function L4_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2
  L3_2 = A0_2.Row
  L3_2 = L3_2.ItemGroup
  L4_2 = A1_2.Row
  L4_2 = L4_2.ItemGroup
  if L3_2 ~= L4_2 then
    L3_2 = L3_1._compare_item_by_item_group
    L4_2 = A0_2
    L5_2 = A1_2
    L6_2 = A2_2
    return L3_2(L4_2, L5_2, L6_2)
  else
    L3_2 = A0_2.Rarity
    L4_2 = A1_2.Rarity
    if L3_2 ~= L4_2 then
      L3_2 = L3_1._compare_item_by_rarity
      L4_2 = A0_2
      L5_2 = A1_2
      L6_2 = not A2_2
      return L3_2(L4_2, L5_2, L6_2)
    end
  end
  if A2_2 then
    L3_2 = A0_2.ConfigID
    L4_2 = A1_2.ConfigID
    L3_2 = L3_2 < L4_2
    return L3_2
  end
  L3_2 = A0_2.ConfigID
  L4_2 = A1_2.ConfigID
  L3_2 = L3_2 > L4_2
  return L3_2
end
L3_1.compare_sort_default = L4_1
function L4_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L3_2 = A0_2.IsFavorite
  L4_2 = A1_2.IsFavorite
  if L3_2 ~= L4_2 then
    return L3_2
  elseif L3_2 then
    L5_2 = CS
    L5_2 = L5_2.RPG
    L5_2 = L5_2.Client
    L5_2 = L5_2.GlobalVars
    L5_2 = L5_2.s_ModuleManager
    L5_2 = L5_2.InventoryModule
    L6_2 = L5_2
    L5_2 = L5_2.IsFavoriteNew
    L7_2 = A0_2.ConfigID
    L8_2 = A1_2.ConfigID
    return L5_2(L6_2, L7_2, L8_2)
  else
    L5_2 = L3_1.compare_sort_default
    L6_2 = A0_2
    L7_2 = A1_2
    L8_2 = A2_2
    return L5_2(L6_2, L7_2, L8_2)
  end
end
L3_1.compare_sort_default_with_favorite = L4_1
function L4_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2
  L3_2 = A0_2.Rarity
  L4_2 = A1_2.Rarity
  if L3_2 ~= L4_2 then
    if A2_2 then
      L5_2 = L3_2 > L4_2
      return L5_2
    end
    L5_2 = L3_2 < L4_2
    return L5_2
  end
  L5_2 = A0_2.ConfigID
  L6_2 = A1_2.ConfigID
  L5_2 = L5_2 < L6_2
  return L5_2
end
L3_1.compare_sort_material_rarity = L4_1
function L4_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L3_2 = A0_2.IsFavorite
  L4_2 = A1_2.IsFavorite
  if L3_2 ~= L4_2 then
    return L3_2
  elseif L3_2 then
    L5_2 = CS
    L5_2 = L5_2.RPG
    L5_2 = L5_2.Client
    L5_2 = L5_2.GlobalVars
    L5_2 = L5_2.s_ModuleManager
    L5_2 = L5_2.InventoryModule
    L6_2 = L5_2
    L5_2 = L5_2.IsFavoriteNew
    L7_2 = A0_2.ConfigID
    L8_2 = A1_2.ConfigID
    return L5_2(L6_2, L7_2, L8_2)
  else
    L5_2 = L3_1.compare_sort_material_rarity
    L6_2 = A0_2
    L7_2 = A1_2
    L8_2 = A2_2
    return L5_2(L6_2, L7_2, L8_2)
  end
end
L3_1.compare_sort_material_rarity_with_favorite = L4_1
function L4_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2
  if A2_2 then
    L3_2 = A0_2.ItemSubType
    L3_2 = #L3_2
    L4_2 = A1_2.ItemSubType
    L4_2 = #L4_2
    L3_2 = L3_2 > L4_2
    return L3_2
  else
    L3_2 = A0_2.ItemSubType
    L3_2 = #L3_2
    L4_2 = A1_2.ItemSubType
    L4_2 = #L4_2
    L3_2 = L3_2 < L4_2
    return L3_2
  end
end
L3_1._compare_item_by_sub_type = L4_1
function L4_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2
  if A2_2 then
    L3_2 = A0_2.Row
    L3_2 = L3_2.ItemGroup
    L4_2 = A1_2.Row
    L4_2 = L4_2.ItemGroup
    L3_2 = L3_2 > L4_2
    return L3_2
  else
    L3_2 = A0_2.Row
    L3_2 = L3_2.ItemGroup
    L4_2 = A1_2.Row
    L4_2 = L4_2.ItemGroup
    L3_2 = L3_2 < L4_2
    return L3_2
  end
end
L3_1._compare_item_by_item_group = L4_1
function L4_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2
  if A2_2 then
    L3_2 = A0_2.Level
    L4_2 = A1_2.Level
    L3_2 = L3_2 > L4_2
    return L3_2
  else
    L3_2 = A0_2.Level
    L4_2 = A1_2.Level
    L3_2 = L3_2 < L4_2
    return L3_2
  end
end
L3_1._compare_item_by_level = L4_1
function L4_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2
  if A2_2 then
    L3_2 = A0_2.Rarity
    L4_2 = A1_2.Rarity
    L3_2 = L3_2 > L4_2
    return L3_2
  else
    L3_2 = A0_2.Rarity
    L4_2 = A1_2.Rarity
    L3_2 = L3_2 < L4_2
    return L3_2
  end
end
L3_1._compare_item_by_rarity = L4_1
function L4_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2, L5_2
  if A3_2 ~= nil then
    L4_2 = A0_2.AvatarBaseType
    if A3_2 == L4_2 then
      L4_2 = true
      return L4_2
    else
      L4_2 = A1_2.AvatarBaseType
      if A3_2 == L4_2 then
        L4_2 = false
        return L4_2
      end
    end
  end
  if A2_2 then
    L4_2 = A0_2.AvatarBaseType
    L4_2 = #L4_2
    L5_2 = A1_2.AvatarBaseType
    L5_2 = #L5_2
    L4_2 = L4_2 > L5_2
    return L4_2
  else
    L4_2 = A0_2.AvatarBaseType
    L4_2 = #L4_2
    L5_2 = A1_2.AvatarBaseType
    L5_2 = #L5_2
    L4_2 = L4_2 < L5_2
    return L4_2
  end
end
L3_1._compare_item_by_avatar_base_type = L4_1
function L4_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2
  if A2_2 then
    L4_2 = A0_2
    L3_2 = A0_2.GetAttack
    L3_2 = L3_2(L4_2)
    L5_2 = A1_2
    L4_2 = A1_2.GetAttack
    L4_2 = L4_2(L5_2)
    L3_2 = L3_2 > L4_2
    return L3_2
  else
    L4_2 = A0_2
    L3_2 = A0_2.GetAttack
    L3_2 = L3_2(L4_2)
    L5_2 = A1_2
    L4_2 = A1_2.GetAttack
    L4_2 = L4_2(L5_2)
    L3_2 = L3_2 < L4_2
    return L3_2
  end
end
L3_1._compare_item_by_attack = L4_1
function L4_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2
  if A2_2 then
    L4_2 = A0_2
    L3_2 = A0_2.GetDefence
    L3_2 = L3_2(L4_2)
    L5_2 = A1_2
    L4_2 = A1_2.GetDefence
    L4_2 = L4_2(L5_2)
    L3_2 = L3_2 > L4_2
    return L3_2
  else
    L4_2 = A0_2
    L3_2 = A0_2.GetDefence
    L3_2 = L3_2(L4_2)
    L5_2 = A1_2
    L4_2 = A1_2.GetDefence
    L4_2 = L4_2(L5_2)
    L3_2 = L3_2 < L4_2
    return L3_2
  end
end
L3_1._compare_item_by_defence = L4_1
function L4_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2
  if A2_2 then
    L4_2 = A0_2
    L3_2 = A0_2.GetHP
    L3_2 = L3_2(L4_2)
    L5_2 = A1_2
    L4_2 = A1_2.GetHP
    L4_2 = L4_2(L5_2)
    L3_2 = L3_2 > L4_2
    return L3_2
  else
    L4_2 = A0_2
    L3_2 = A0_2.GetHP
    L3_2 = L3_2(L4_2)
    L5_2 = A1_2
    L4_2 = A1_2.GetHP
    L4_2 = L4_2(L5_2)
    L3_2 = L3_2 < L4_2
    return L3_2
  end
end
L3_1._compare_item_by_hp = L4_1
function L4_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2
  if A2_2 then
    L3_2 = A0_2.UID
    L4_2 = A1_2.UID
    L3_2 = L3_2 > L4_2
    return L3_2
  else
    L3_2 = A0_2.UID
    L4_2 = A1_2.UID
    L3_2 = L3_2 < L4_2
    return L3_2
  end
end
L3_1._compare_item_by_obtain_time = L4_1
function L4_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2
  L3_2 = A0_2.Rarity
  L4_2 = A1_2.Rarity
  if L3_2 ~= L4_2 then
    if A2_2 then
      L3_2 = A0_2.Rarity
      L4_2 = A1_2.Rarity
      L3_2 = L3_2 > L4_2
      return L3_2
    else
      L3_2 = A0_2.Rarity
      L4_2 = A1_2.Rarity
      L3_2 = L3_2 < L4_2
      return L3_2
    end
  else
    L3_2 = A0_2.AvatarBaseType
    L4_2 = A1_2.AvatarBaseType
    if L3_2 ~= L4_2 then
      L3_2 = A0_2.AvatarBaseType
      L3_2 = #L3_2
      L4_2 = A1_2.AvatarBaseType
      L4_2 = #L4_2
      L3_2 = L3_2 < L4_2
      return L3_2
    else
      L3_2 = A0_2.ConfigID
      L4_2 = A1_2.ConfigID
      if L3_2 ~= L4_2 then
        L3_2 = A0_2.ConfigID
        L4_2 = A1_2.ConfigID
        L3_2 = L3_2 > L4_2
        return L3_2
      else
        L3_2 = A0_2.BelongAvatarID
        L4_2 = A1_2.BelongAvatarID
        if L3_2 ~= L4_2 then
          L3_2 = A0_2.BelongAvatarID
          if L3_2 ~= 0 then
            L3_2 = A1_2.BelongAvatarID
            if L3_2 == 0 then
              L3_2 = true
              return L3_2
          end
          else
            L3_2 = A0_2.BelongAvatarID
            if L3_2 == 0 then
              L3_2 = A1_2.BelongAvatarID
              if L3_2 ~= 0 then
                L3_2 = false
                return L3_2
              end
            end
          end
        else
          L3_2 = A0_2.Level
          L4_2 = A1_2.Level
          if L3_2 ~= L4_2 then
            L3_2 = A0_2.Level
            L4_2 = A1_2.Level
            L3_2 = L3_2 > L4_2
            return L3_2
          else
            L3_2 = A0_2.UID
            L4_2 = A1_2.UID
            L3_2 = L3_2 > L4_2
            return L3_2
          end
        end
      end
    end
  end
end
L3_1._compare_item_by_Name = L4_1
function L4_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2, L5_2
  L4_2 = A0_2.AvatarBaseType
  L5_2 = A1_2.AvatarBaseType
  if L4_2 ~= L5_2 and A3_2 ~= nil then
    L4_2 = A0_2.AvatarBaseType
    if A3_2 == L4_2 then
      L4_2 = true
      return L4_2
    else
      L4_2 = A1_2.AvatarBaseType
      if A3_2 == L4_2 then
        L4_2 = false
        return L4_2
      end
    end
  end
  L4_2 = A0_2.Rarity
  L5_2 = A1_2.Rarity
  if L4_2 ~= L5_2 then
    L4_2 = A0_2.Rarity
    L5_2 = A1_2.Rarity
    L4_2 = L4_2 > L5_2
    return L4_2
  end
  L4_2 = A0_2.BelongAvatarID
  L5_2 = A1_2.BelongAvatarID
  if L4_2 ~= L5_2 then
    L4_2 = A0_2.BelongAvatarID
    if L4_2 ~= 0 then
      L4_2 = A1_2.BelongAvatarID
      if L4_2 == 0 then
        L4_2 = true
        return L4_2
      end
    end
    L4_2 = A0_2.BelongAvatarID
    if L4_2 == 0 then
      L4_2 = A1_2.BelongAvatarID
      if L4_2 ~= 0 then
        L4_2 = false
        return L4_2
      end
    end
  end
  L4_2 = A0_2.Level
  L5_2 = A1_2.Level
  if L4_2 ~= L5_2 then
    L4_2 = A0_2.Level
    L5_2 = A1_2.Level
    L4_2 = L4_2 > L5_2
    return L4_2
  end
  L4_2 = A0_2.AvatarBaseType
  L5_2 = A1_2.AvatarBaseType
  if L4_2 ~= L5_2 then
    L4_2 = A0_2.AvatarBaseType
    L4_2 = #L4_2
    L5_2 = A1_2.AvatarBaseType
    L5_2 = #L5_2
    L4_2 = L4_2 < L5_2
    return L4_2
  end
  L4_2 = A0_2.ConfigID
  L5_2 = A1_2.ConfigID
  if L4_2 ~= L5_2 then
    L4_2 = A0_2.ConfigID
    L5_2 = A1_2.ConfigID
    L4_2 = L4_2 > L5_2
    return L4_2
  end
  L4_2 = A0_2.Rank
  L5_2 = A1_2.Rank
  if L4_2 ~= L5_2 then
    L4_2 = A0_2.Rank
    L5_2 = A1_2.Rank
    L4_2 = L4_2 > L5_2
    return L4_2
  end
  L4_2 = A0_2.IsProtected
  L5_2 = A1_2.IsProtected
  if L4_2 ~= L5_2 then
    L4_2 = A0_2.IsProtected
    return L4_2
  end
  L4_2 = A0_2.UID
  L5_2 = A1_2.UID
  L4_2 = L4_2 > L5_2
  return L4_2
end
L3_1._compare_sort_item_secondary = L4_1
function L4_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2, L5_2
  L4_2 = {}
  L4_2.list_name = A0_2
  L4_2.is_enable_multi_select = A1_2
  L5_2 = A2_2 or L5_2
  if not A2_2 then
    L5_2 = 3
  end
  L4_2.maxSelection = L5_2
  L4_2.mustSelect = A3_2
  L5_2 = {}
  L4_2.all_sort_type = L5_2
  return L4_2
end
L3_1.gen_type_list = L4_1
function L4_1(A0_2, A1_2)
  local L2_2
  L2_2 = {}
  L2_2.sort_type = A0_2
  L2_2.name = A1_2
  L2_2.isSelected = false
  L2_2.index = 0
  return L2_2
end
L3_1.gen_sort_type = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = L3_1.check_item_use
  L2_2 = A0_2
  L1_2 = L1_2(L2_2)
  if not L1_2 then
    return
  end
  L1_2 = A0_2.UseMethod
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.GameCore
  L2_2 = L2_2.ItemUseMethod
  L2_2 = L2_2.FixedRewardGift
  L2_2 = #L2_2
  if L1_2 ~= L2_2 then
    L1_2 = A0_2.UseMethod
    L2_2 = CS
    L2_2 = L2_2.RPG
    L2_2 = L2_2.GameCore
    L2_2 = L2_2.ItemUseMethod
    L2_2 = L2_2.RandomRewardGift
    L2_2 = #L2_2
    if L1_2 ~= L2_2 then
      L1_2 = A0_2.UseMethod
      L2_2 = CS
      L2_2 = L2_2.RPG
      L2_2 = L2_2.GameCore
      L2_2 = L2_2.ItemUseMethod
      L2_2 = L2_2.PlayerSelectedReward
      L2_2 = #L2_2
      if L1_2 ~= L2_2 then
        goto lbl_39
      end
    end
  end
  L1_2 = L3_1.use_gift_pack_item
  L2_2 = A0_2
  L3_2 = true
  L1_2(L2_2, L3_2)
  goto lbl_161
  ::lbl_39::
  L1_2 = A0_2.UseMethod
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.GameCore
  L2_2 = L2_2.ItemUseMethod
  L2_2 = L2_2.TeamFoodBenefit
  L2_2 = #L2_2
  if L1_2 ~= L2_2 then
    L1_2 = A0_2.UseMethod
    L2_2 = CS
    L2_2 = L2_2.RPG
    L2_2 = L2_2.GameCore
    L2_2 = L2_2.ItemUseMethod
    L2_2 = L2_2.TeamSpecificFoodBenefit
    L2_2 = #L2_2
    if L1_2 ~= L2_2 then
      L1_2 = A0_2.UseMethod
      L2_2 = CS
      L2_2 = L2_2.RPG
      L2_2 = L2_2.GameCore
      L2_2 = L2_2.ItemUseMethod
      L2_2 = L2_2.ExternalSystemFoodBenefit
      L2_2 = #L2_2
      if L1_2 ~= L2_2 then
        goto lbl_70
      end
    end
  end
  L1_2 = L3_1.use_buff_item
  L2_2 = A0_2
  L1_2(L2_2)
  goto lbl_161
  ::lbl_70::
  L1_2 = A0_2.UseMethod
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.GameCore
  L2_2 = L2_2.ItemUseMethod
  L2_2 = L2_2.TreasureMap
  L2_2 = #L2_2
  if L1_2 == L2_2 then
    L1_2 = L3_1.use_treasure_map
    L2_2 = A0_2
    L1_2(L2_2)
  else
    L1_2 = A0_2.UseMethod
    L2_2 = CS
    L2_2 = L2_2.RPG
    L2_2 = L2_2.GameCore
    L2_2 = L2_2.ItemUseMethod
    L2_2 = L2_2.Recipe
    L2_2 = #L2_2
    if L1_2 == L2_2 then
      L1_2 = L3_1.use_compose_formula
      L2_2 = A0_2
      L1_2(L2_2)
    else
      L1_2 = A0_2.UseMethod
      L2_2 = CS
      L2_2 = L2_2.RPG
      L2_2 = L2_2.GameCore
      L2_2 = L2_2.ItemUseMethod
      L2_2 = L2_2.PerformanceProp
      L2_2 = #L2_2
      if L1_2 == L2_2 then
        L1_2 = L3_1.use_performance_item
        L2_2 = A0_2
        L1_2(L2_2)
      else
        L1_2 = A0_2.UseMethod
        L2_2 = CS
        L2_2 = L2_2.RPG
        L2_2 = L2_2.GameCore
        L2_2 = L2_2.ItemUseMethod
        L2_2 = L2_2.MonthlyCard
        L2_2 = #L2_2
        if L1_2 ~= L2_2 then
          L1_2 = A0_2.UseMethod
          L2_2 = CS
          L2_2 = L2_2.RPG
          L2_2 = L2_2.GameCore
          L2_2 = L2_2.ItemUseMethod
          L2_2 = L2_2.BPUnlock68
          L2_2 = #L2_2
          if L1_2 ~= L2_2 then
            L1_2 = A0_2.UseMethod
            L2_2 = CS
            L2_2 = L2_2.RPG
            L2_2 = L2_2.GameCore
            L2_2 = L2_2.ItemUseMethod
            L2_2 = L2_2.BPUnlock128
            L2_2 = #L2_2
            if L1_2 ~= L2_2 then
              L1_2 = A0_2.UseMethod
              L2_2 = CS
              L2_2 = L2_2.RPG
              L2_2 = L2_2.GameCore
              L2_2 = L2_2.ItemUseMethod
              L2_2 = L2_2.BPUpgradeFrom68To128
              L2_2 = #L2_2
              if L1_2 ~= L2_2 then
                goto lbl_149
              end
            end
          end
        end
        L1_2 = L3_1.use_rebate_item
        L2_2 = A0_2
        L1_2(L2_2)
        goto lbl_161
        ::lbl_149::
        L1_2 = A0_2.UseMethod
        L2_2 = CS
        L2_2 = L2_2.RPG
        L2_2 = L2_2.GameCore
        L2_2 = L2_2.ItemUseMethod
        L2_2 = L2_2.TravelBrochureUse
        L2_2 = #L2_2
        if L1_2 == L2_2 then
          L1_2 = L3_1.use_travel_brochure
          L2_2 = A0_2
          L1_2(L2_2)
        end
      end
    end
  end
  ::lbl_161::
end
L3_1.use_item = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2
  if A0_2 == nil then
    L1_2 = G
    L1_2 = L1_2.SuperDebug
    L1_2 = L1_2.LogErrorFormat
    L2_2 = "use_gift_pack_item item is null"
    L1_2(L2_2)
    L1_2 = false
    return L1_2
  end
  L1_2 = A0_2.IsUsable
  if not L1_2 then
    L1_2 = false
    return L1_2
  end
  L1_2 = L3_1.is_item_banned
  L2_2 = A0_2
  L1_2 = L1_2(L2_2)
  if L1_2 then
    L1_2 = CS
    L1_2 = L1_2.RPG
    L1_2 = L1_2.Client
    L1_2 = L1_2.ConfirmDialogUtil
    L1_2 = L1_2.ShowOkHint
    L2_2 = "UIText_Toast_System_Off_Tips_1"
    L3_2 = CS
    L3_2 = L3_2.RPG
    L3_2 = L3_2.Client
    L3_2 = L3_2.TextID
    L3_2 = L3_2.empty
    L1_2(L2_2, L3_2)
    L1_2 = false
    return L1_2
  end
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.GlobalVars
  L1_2 = L1_2.s_ModuleManager
  L1_2 = L1_2.InventoryModule
  L2_2 = L1_2
  L1_2 = L1_2.CheckUseItem
  L3_2 = A0_2.ConfigID
  L1_2 = L1_2(L2_2, L3_2)
  if not L1_2 then
    L1_2 = false
    return L1_2
  end
  L1_2 = true
  return L1_2
end
L3_1.check_item_use = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.GlobalVars
  L1_2 = L1_2.s_ModuleManager
  L1_2 = L1_2.FeatureSwitchModule
  L3_2 = L1_2
  L2_2 = L1_2.IsFeaturePartialClosed
  L4_2 = CS
  L4_2 = L4_2.NPLIJJDOLJK
  L4_2 = L4_2.JGFACNEBGMJ
  L5_2 = A0_2.ConfigID
  return L2_2(L3_2, L4_2, L5_2)
end
L3_1.is_item_banned = L4_1
function L4_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.Client
  L3_2 = L3_2.GlobalVars
  L3_2 = L3_2.s_ModuleManager
  L3_2 = L3_2.InventoryModule
  L4_2 = L3_2
  L3_2 = L3_2.GetItemDataByConfigID
  L5_2 = A0_2
  L3_2 = L3_2(L4_2, L5_2)
  if L3_2 == nil then
    L4_2 = G
    L4_2 = L4_2.SuperDebug
    L4_2 = L4_2.LogErrorFormat
    L5_2 = "use_gift_pack_item_by_configID item is null"
    L4_2(L5_2)
    return
  end
  if not A1_2 then
    A1_2 = false
  end
  L4_2 = L3_1.use_gift_pack_item
  L5_2 = L3_2
  L6_2 = A1_2
  L7_2 = A2_2
  L4_2(L5_2, L6_2, L7_2)
end
L3_1.use_gift_pack_item_by_configID = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.GlobalVars
  L1_2 = L1_2.s_ModuleManager
  L1_2 = L1_2.InventoryModule
  L2_2 = L1_2
  L1_2 = L1_2.UseGiftPackItem
  L3_2 = A0_2.ConfigID
  L4_2 = 1
  L1_2(L2_2, L3_2, L4_2)
end
L3_1.use_rebate_item = L4_1
function L4_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L3_2 = L3_1.check_item_use
  L4_2 = A0_2
  L3_2 = L3_2(L4_2)
  if not L3_2 then
    return
  end
  if not A1_2 then
    A1_2 = false
  end
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.GameCore
  L3_2 = L3_2.ItemUseDataExcelTable
  L3_2 = L3_2.GetData
  L4_2 = A0_2.UseDataID
  L3_2 = L3_2(L4_2)
  L4_2 = A0_2.ConfigID
  L5_2 = CS
  L5_2 = L5_2.RPG
  L5_2 = L5_2.GameCore
  L5_2 = L5_2.ConstValueClientExcelTable
  L5_2 = L5_2.GetData
  L6_2 = "MonthCard_Rebate_Item_ID"
  L5_2 = L5_2(L6_2)
  L5_2 = L5_2.Value
  L5_2 = L5_2.IntValue
  if L4_2 ~= L5_2 then
    L4_2 = A0_2.ConfigID
    L5_2 = CS
    L5_2 = L5_2.RPG
    L5_2 = L5_2.GameCore
    L5_2 = L5_2.ConstValueCommonExcelTable
    L5_2 = L5_2.GetData
    L6_2 = "BattlePass_Rebate_Item_ID"
    L5_2 = L5_2(L6_2)
    L5_2 = L5_2.Value
    L5_2 = L5_2.IntValue
    if L4_2 ~= L5_2 then
      L4_2 = A0_2.ConfigID
      L5_2 = CS
      L5_2 = L5_2.RPG
      L5_2 = L5_2.GameCore
      L5_2 = L5_2.ConstValueCommonExcelTable
      L5_2 = L5_2.GetData
      L6_2 = "BattlePassPro_Rebate_Item_ID"
      L5_2 = L5_2(L6_2)
      L5_2 = L5_2.Value
      L5_2 = L5_2.IntValue
      if L4_2 ~= L5_2 then
        L4_2 = A0_2.ConfigID
        L5_2 = CS
        L5_2 = L5_2.RPG
        L5_2 = L5_2.GameCore
        L5_2 = L5_2.ConstValueCommonExcelTable
        L5_2 = L5_2.GetData
        L6_2 = "BattlePassLevelUp_Rebate_Item_ID"
        L5_2 = L5_2(L6_2)
        L5_2 = L5_2.Value
        L5_2 = L5_2.IntValue
        if L4_2 ~= L5_2 then
          goto lbl_76
        end
      end
    end
  end
  L4_2 = CS
  L4_2 = L4_2.RPG
  L4_2 = L4_2.Client
  L4_2 = L4_2.GlobalVars
  L4_2 = L4_2.s_ModuleManager
  L4_2 = L4_2.InventoryModule
  L5_2 = L4_2
  L4_2 = L4_2.UseGiftPackItem
  L6_2 = A0_2.ConfigID
  L7_2 = 1
  L4_2(L5_2, L6_2, L7_2)
  do return end
  ::lbl_76::
  L4_2 = A0_2.UseMethod
  L5_2 = CS
  L5_2 = L5_2.RPG
  L5_2 = L5_2.GameCore
  L5_2 = L5_2.ItemUseMethod
  L5_2 = L5_2.FixedRewardGift
  L5_2 = #L5_2
  if L4_2 ~= L5_2 then
    L4_2 = A0_2.UseMethod
    L5_2 = CS
    L5_2 = L5_2.RPG
    L5_2 = L5_2.GameCore
    L5_2 = L5_2.ItemUseMethod
    L5_2 = L5_2.RandomRewardGift
    L5_2 = #L5_2
    if L4_2 ~= L5_2 then
      goto lbl_104
    end
  end
  L4_2 = G
  L4_2 = L4_2.UIManager
  L4_2 = L4_2.load_and_show
  L5_2 = "Ui.Inventory.ItemUse.GiftPackDetailDialog"
  L6_2 = A0_2
  L7_2 = L3_2
  L8_2 = A1_2
  L9_2 = false
  L10_2 = A2_2
  L4_2(L5_2, L6_2, L7_2, L8_2, L9_2, L10_2)
  ::lbl_104::
  L4_2 = A0_2.UseMethod
  L5_2 = CS
  L5_2 = L5_2.RPG
  L5_2 = L5_2.GameCore
  L5_2 = L5_2.ItemUseMethod
  L5_2 = L5_2.PlayerSelectedReward
  L5_2 = #L5_2
  if L4_2 == L5_2 then
    L4_2 = G
    L4_2 = L4_2.UIManager
    L4_2 = L4_2.load_and_show
    L5_2 = "Ui.Inventory.ItemUse.OptionalGiftPackDetailDialog"
    L6_2 = A0_2
    L7_2 = L3_2
    L8_2 = A1_2
    L9_2 = A2_2
    L4_2(L5_2, L6_2, L7_2, L8_2, L9_2)
  end
end
L3_1.use_gift_pack_item = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = L3_1.check_item_use
  L2_2 = A0_2
  L1_2 = L1_2(L2_2)
  if not L1_2 then
    return
  end
  L1_2 = G
  L1_2 = L1_2.UIManager
  L1_2 = L1_2.load_and_show
  L2_2 = "Ui.Inventory.ItemUse.FoodUseDialog"
  L3_2 = A0_2
  L1_2(L2_2, L3_2)
end
L3_1.use_buff_item = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = L3_1.check_item_use
  L2_2 = A0_2
  L1_2 = L1_2(L2_2)
  if not L1_2 then
    return
  end
  L1_2 = G
  L1_2 = L1_2.UIManager
  L1_2 = L1_2.load_and_show
  L2_2 = "Ui.Book.TreasureMapDialog"
  L3_2 = A0_2.ConfigID
  L1_2(L2_2, L3_2)
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.GameCore
  L1_2 = L1_2.ItemCureInfoDataExcelTable
  L1_2 = L1_2.GetData
  L2_2 = A0_2.ConfigID
  L1_2 = L1_2(L2_2)
  if L1_2 ~= nil then
    L2_2 = L1_2.SyncServerOnUse
    if L2_2 then
      L2_2 = CS
      L2_2 = L2_2.RPG
      L2_2 = L2_2.Client
      L2_2 = L2_2.NetworkManager
      L2_2 = L2_2.OOGONDGGKMI
      L3_2 = L2_2
      L2_2 = L2_2.PCAHLIJJJOH
      L4_2 = A0_2.ConfigID
      L5_2 = 1
      L2_2(L3_2, L4_2, L5_2)
    end
  end
end
L3_1.use_treasure_map = L4_1
function L4_1(A0_2)
  local L1_2, L2_2
  L1_2 = L3_1.check_item_use
  L2_2 = A0_2
  L1_2 = L1_2(L2_2)
  if not L1_2 then
    return
  end
  L1_2 = G
  L1_2 = L1_2.TravelBrochureUtils
  L1_2 = L1_2.open_travel_brochure
  L1_2()
end
L3_1.use_travel_brochure = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = L3_1.check_item_use
  L2_2 = A0_2
  L1_2 = L1_2(L2_2)
  if not L1_2 then
    return
  end
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.NetworkManager
  L1_2 = L1_2.OOGONDGGKMI
  L2_2 = L1_2
  L1_2 = L1_2.PCAHLIJJJOH
  L3_2 = A0_2.ConfigID
  L4_2 = 1
  L1_2(L2_2, L3_2, L4_2)
end
L3_1.use_compose_formula = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L1_2 = L3_1.check_item_use
  L2_2 = A0_2
  L1_2 = L1_2(L2_2)
  if not L1_2 then
    return
  end
  L1_2 = A0_2.UseDataID
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.GameCore
  L2_2 = L2_2.PerformanceEExcelTable
  L2_2 = L2_2.GetData
  L3_2 = L1_2
  L2_2 = L2_2(L3_2)
  if L2_2 == nil then
    L3_2 = G
    L3_2 = L3_2.SuperDebug
    L3_2 = L3_2.LogErrorFormat
    L4_2 = "performanceRow Not Exist!! ID: "
    L5_2 = L1_2
    L4_2 = L4_2 .. L5_2
    L3_2(L4_2)
    return
  end
  L3_2 = G
  L3_2 = L3_2.NotifyManager
  L3_2 = L3_2.notify
  L4_2 = G
  L4_2 = L4_2.CS
  L4_2 = L4_2.NotifyType
  L4_2 = L4_2.PlayerExitLookAtPhoneLg
  L3_2(L4_2)
  L3_2 = L2_2.PerformancePath
  L4_2 = L3_1._get_entity_manager
  L4_2 = L4_2()
  if L4_2 then
    L6_2 = L4_2
    L5_2 = L4_2.CreateLevelGraphEntity
    L7_2 = L3_2
    L5_2 = L5_2(L6_2, L7_2)
    if L5_2 then
      L7_2 = L5_2
      L6_2 = L5_2.GetComponent
      L8_2 = typeof
      L9_2 = CS
      L9_2 = L9_2.RPG
      L9_2 = L9_2.GameCore
      L9_2 = L9_2.LevelGraphComponent
      L8_2, L9_2 = L8_2(L9_2)
      L6_2 = L6_2(L7_2, L8_2, L9_2)
      if L6_2 then
        L8_2 = L6_2
        L7_2 = L6_2.StartLevelGraph
        L7_2(L8_2)
      end
    end
  end
  L5_2 = CS
  L5_2 = L5_2.RPG
  L5_2 = L5_2.Client
  L5_2 = L5_2.GlobalVars
  L5_2 = L5_2.s_UIManager
  L6_2 = L5_2
  L5_2 = L5_2.TopPage
  L5_2 = L5_2(L6_2)
  L6_2 = L5_2.Name
  if L6_2 == "InventoryPage" then
    L7_2 = L5_2
    L6_2 = L5_2.exit
    L6_2(L7_2)
  end
end
L3_1.use_performance_item = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L1_2 = ipairs
  L2_2 = A0_2
  L1_2, L2_2, L3_2 = L1_2(L2_2)
  for L4_2, L5_2 in L1_2, L2_2, L3_2 do
    L6_2 = L5_2.ID
    L7_2 = G
    L7_2 = L7_2.UtilEngineWrap
    L7_2 = L7_2.ConvCsEnumToNum
    L8_2 = CS
    L8_2 = L8_2.HJLLLAFEOHH
    L8_2 = L8_2.AJNPKBJMOKL
    L7_2 = L7_2(L8_2)
    if L6_2 ~= L7_2 then
      L6_2 = L0_1
      L7_2 = L6_2
      L6_2 = L6_2.GetItemCountByConfigID
      L8_2 = L5_2.ID
      L6_2 = L6_2(L7_2, L8_2)
      L7_2 = L5_2.Num
      if L6_2 < L7_2 then
        L7_2 = L3_1._post_material_enough_check
        L8_2 = L5_2.ID
        L9_2 = L5_2.Num
        L9_2 = L9_2 - L6_2
        return L7_2(L8_2, L9_2)
      end
    end
  end
  L1_2 = true
  return L1_2
end
L3_1.is_material_enough = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2
  L1_2 = true
  L2_2 = nil
  L3_2 = 0
  L4_2 = A0_2.Count
  L4_2 = L4_2 - 1
  L5_2 = 1
  for L6_2 = L3_2, L4_2, L5_2 do
    L7_2 = A0_2[L6_2]
    L8_2 = L7_2.PileItem
    L8_2 = L8_2.ItemId
    L9_2 = G
    L9_2 = L9_2.UtilEngineWrap
    L9_2 = L9_2.ConvCsEnumToNum
    L10_2 = CS
    L10_2 = L10_2.HJLLLAFEOHH
    L10_2 = L10_2.AJNPKBJMOKL
    L9_2 = L9_2(L10_2)
    if L8_2 ~= L9_2 then
      L8_2 = L0_1
      L9_2 = L8_2
      L8_2 = L8_2.GetItemCountByConfigID
      L10_2 = L7_2.PileItem
      L10_2 = L10_2.ItemId
      L8_2 = L8_2(L9_2, L10_2)
      L9_2 = L7_2.PileItem
      L9_2 = L9_2.ItemNum
      if L8_2 < L9_2 then
        L9_2 = L3_1._post_material_enough_check
        L10_2 = L7_2.PileItem
        L10_2 = L10_2.ItemId
        L11_2 = L7_2.PileItem
        L11_2 = L11_2.ItemNum
        L11_2 = L11_2 - L8_2
        L9_2, L10_2 = L9_2(L10_2, L11_2)
        L2_2 = L10_2
        L1_2 = L9_2
        if not L1_2 then
          return L1_2
        end
      end
    end
  end
  L3_2 = L1_2
  L4_2 = L2_2
  return L3_2, L4_2
end
L3_1.is_item_cost_enough = L4_1
function L4_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.GameCore
  L2_2 = L2_2.ItemExcelTable
  L2_2 = L2_2.GetData
  L3_2 = A0_2
  L2_2 = L2_2(L3_2)
  L3_2 = L3_1.is_path_material
  L4_2 = L2_2.PurposeType
  L3_2 = L3_2(L4_2)
  if L3_2 then
    L3_2 = L0_1
    L4_2 = L3_2
    L3_2 = L3_2.GetItemCountByConfigID
    L5_2 = L3_1.get_common_path_item_id
    L5_2, L6_2 = L5_2()
    L3_2 = L3_2(L4_2, L5_2, L6_2)
    L4_2 = L3_1.get_need_exchange_common_item_num_by_rarity
    L5_2 = L2_2.Rarity
    L4_2 = L4_2(L5_2)
    L4_2 = L4_2 * A1_2
    L5_2 = L3_2 >= L4_2
    L6_2 = L4_2
    return L5_2, L6_2
  end
  L3_2 = false
  return L3_2
end
L3_1._post_material_enough_check = L4_1
function L4_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2
  L0_2 = CS
  L0_2 = L0_2.RPG
  L0_2 = L0_2.Client
  L0_2 = L0_2.GlobalVars
  L0_2 = L0_2.s_ModuleManager
  L0_2 = L0_2.FeatureSwitchModule
  L1_2 = L0_2
  L0_2 = L0_2.IsFeatureClosed
  L2_2 = CS
  L2_2 = L2_2.NPLIJJDOLJK
  L2_2 = L2_2.LBNOCKKPJDB
  L0_2 = L0_2(L1_2, L2_2)
  if L0_2 then
    L1_2 = false
    return L1_2
  end
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.RogueStatic
  L1_2 = L1_2.IsInSimulatedRogueMode
  L1_2 = L1_2()
  if L1_2 then
    L1_2 = CS
    L1_2 = L1_2.RPG
    L1_2 = L1_2.Client
    L1_2 = L1_2.RogueStatic
    L1_2 = L1_2.CanUseFoodInRogue
    L1_2 = L1_2()
    if not L1_2 then
      L1_2 = false
      return L1_2
    end
  end
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.GameCore
  L1_2 = L1_2.ConstValueClientExcelTable
  L1_2 = L1_2.GetData
  L2_2 = "Inventory_FuncEntrance_ID"
  L1_2 = L1_2(L2_2)
  L1_2 = L1_2.Value
  L1_2 = L1_2.IntValue
  L2_2 = L1_1
  L3_2 = L2_2
  L2_2 = L2_2.HasGotoType
  L4_2 = L1_2
  L2_2 = L2_2(L3_2, L4_2)
  L3_2 = L2_2 or L3_2
  if L2_2 then
    L3_2 = CS
    L3_2 = L3_2.RPG
    L3_2 = L3_2.Client
    L3_2 = L3_2.SystemOpenModule
    L3_2 = L3_2.IsOpen
    L4_2 = L2_1
    L3_2 = L3_2(L4_2)
  end
  return L3_2
end
L3_1.enable_quick_use_func = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.GameCore
  L1_2 = L1_2.ItemUseBuffDataExcelTable
  L1_2 = L1_2.GetData
  L2_2 = A0_2
  L1_2 = L1_2(L2_2)
  L2_2 = L3_1.can_be_quick_consumed_by_buff_data
  L3_2 = L1_2
  return L2_2(L3_2)
end
L3_1.can_be_quick_consumed_by_item_id = L4_1
function L4_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2 ~= nil
  return L1_2
end
L3_1.can_be_quick_consumed_by_buff_data = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2
  L1_2 = nil
  L2_2 = pairs
  L3_2 = A0_2
  L2_2, L3_2, L4_2 = L2_2(L3_2)
  for L5_2, L6_2 in L2_2, L3_2, L4_2 do
    L7_2 = L0_1
    L8_2 = L7_2
    L7_2 = L7_2.GetItemDataByConfigID
    L9_2 = L6_2
    L7_2 = L7_2(L8_2, L9_2)
    if L7_2 ~= nil then
      L8_2 = L7_2.CountAfterDelete
      if L8_2 < 0 then
        if not L1_2 then
          L8_2 = {}
          L1_2 = L8_2
        end
        L8_2 = table
        L8_2 = L8_2.insert
        L9_2 = L1_2
        L10_2 = {}
        L11_2 = L6_2
        L12_2 = L7_2.DelCount
        L10_2[1] = L11_2
        L10_2[2] = L12_2
        L8_2(L9_2, L10_2)
      end
    end
  end
  if L1_2 ~= nil then
    L2_2 = #L1_2
    if L2_2 ~= 0 then
      goto lbl_37
    end
  end
  L2_2 = false
  do return L2_2 end
  goto lbl_45
  ::lbl_37::
  L2_2 = G
  L2_2 = L2_2.UIManager
  L2_2 = L2_2.load_and_show
  L3_2 = "Ui.Common.RecycleDialog"
  L4_2 = L1_2
  L2_2(L3_2, L4_2)
  L2_2 = true
  do return L2_2 end
  ::lbl_45::
end
L3_1.check_item_deleted = L4_1
function L4_1()
  local L0_2, L1_2, L2_2
  L0_2 = CS
  L0_2 = L0_2.RPG
  L0_2 = L0_2.Client
  L0_2 = L0_2.GlobalVars
  L0_2 = L0_2.s_GamePhaseManager
  L1_2 = L0_2
  L0_2 = L0_2.GetCurrentPhase
  L0_2 = L0_2(L1_2)
  if L0_2 ~= nil then
    L2_2 = L0_2
    L1_2 = L0_2.GetMainWorld
    L1_2 = L1_2(L2_2)
    if L1_2 ~= nil then
      L2_2 = L1_2.EntityManagerRef
      return L2_2
    end
  end
  L1_2 = nil
  return L1_2
end
L3_1._get_entity_manager = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.GameCore
  L1_2 = L1_2.ItemExcelTable
  L1_2 = L1_2.GetData
  L2_2 = A0_2
  L1_2 = L1_2(L2_2)
  if L1_2 == nil then
    L2_2 = G
    L2_2 = L2_2.SuperDebug
    L2_2 = L2_2.LogErrorFormat
    L3_2 = "show_item_detail config is null"
    L2_2(L3_2)
    return
  end
  L2_2 = L1_2.ItemMainType
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.GameCore
  L3_2 = L3_2.ItemMainType
  L3_2 = L3_2.AvatarCard
  if L2_2 == L3_2 then
    L2_2 = L3_1.show_avatar_card_detail
    L3_2 = A0_2
    L2_2(L3_2)
  else
    L2_2 = L1_2.ItemMainType
    L3_2 = CS
    L3_2 = L3_2.RPG
    L3_2 = L3_2.GameCore
    L3_2 = L3_2.ItemMainType
    L3_2 = L3_2.Equipment
    if L2_2 == L3_2 then
      L2_2 = L3_1.show_light_cone_detail
      L3_2 = A0_2
      L2_2(L3_2)
    else
      L2_2 = L3_1.show_common_detail
      L3_2 = A0_2
      L2_2(L3_2)
    end
  end
end
L3_1.show_item_detail = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = G
  L1_2 = L1_2.UIManager
  L1_2 = L1_2.load_and_show
  L2_2 = "Ui.Gacha.GachaDetail.GachaAvatarDetailPage"
  L3_2 = A0_2
  L4_2 = false
  L1_2(L2_2, L3_2, L4_2)
end
L3_1.show_avatar_card_detail = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.ItemFactory
  L1_2 = L1_2.CreateEquipmentItemData
  L2_2 = A0_2
  L1_2 = L1_2(L2_2)
  L2_2 = G
  L2_2 = L2_2.UIManager
  L2_2 = L2_2.load_and_show
  L3_2 = "Ui.Gacha.GachaDetail.GachaLightConeDetailPage"
  L4_2 = L1_2
  L2_2(L3_2, L4_2)
end
L3_1.show_light_cone_detail = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = G
  L1_2 = L1_2.UIManager
  L1_2 = L1_2.load_and_show
  L2_2 = "Ui.Common.ItemDetailDialog"
  L1_2 = L1_2(L2_2)
  L3_2 = L1_2
  L2_2 = L1_2.setup_view
  L4_2 = A0_2
  L2_2(L3_2, L4_2)
end
L3_1.show_common_detail = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.GlobalVars
  L1_2 = L1_2.s_ModuleManager
  L1_2 = L1_2.InventoryModule
  L2_2 = L1_2
  L1_2 = L1_2.GetItemDataByConfigID
  L3_2 = A0_2
  L1_2 = L1_2(L2_2, L3_2)
  if L1_2 == nil then
    L2_2 = 0
    return L2_2
  end
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.GameCore
  L2_2 = L2_2.ItemUseBuffDataExcelTable
  L2_2 = L2_2.GetData
  L3_2 = L1_2.UseDataID
  L2_2 = L2_2(L3_2)
  L3_2 = L2_2.ActivityCount
  if 0 < L3_2 then
    L3_2 = L2_2.ActivityCount
    if L3_2 then
      goto lbl_28
    end
  end
  L3_2 = 1
  ::lbl_28::
  return L3_2
end
L3_1.get_activity_count = L4_1
function L4_1()
  local L0_2, L1_2, L2_2, L3_2
  L0_2 = {}
  L1_2 = table
  L1_2 = L1_2.insert
  L2_2 = L0_2
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.GameCore
  L3_2 = L3_2.ItemMainType
  L3_2 = L3_2.Equipment
  L1_2(L2_2, L3_2)
  L1_2 = L0_1
  L2_2 = L1_2
  L1_2 = L1_2.GetItemsByMainTypes
  L3_2 = L0_2
  L1_2 = L1_2(L2_2, L3_2)
  L2_2 = G
  L2_2 = L2_2.Utils
  L2_2 = L2_2.create_lua_table_from_cs_list
  L3_2 = L1_2
  return L2_2(L3_2)
end
L3_1.get_all_lightcone_items = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  if A0_2 == nil then
    return
  end
  L1_2 = A0_2.multi_drop_title
  if L1_2 ~= nil then
    L1_2 = A0_2.multi_drop_items
    if L1_2 ~= nil then
      L1_2 = L3_1.show_item_tips_multi_tab
      L2_2 = A0_2.multi_drop_items
      L3_2 = A0_2.multi_drop_title
      L4_2 = A0_2.sync_load
      L4_2 = not L4_2
      L5_2 = A0_2.is_item
      L6_2 = A0_2.init_index
      L7_2 = A0_2.hide_lock
      L8_2 = A0_2.display_only
      return L1_2(L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2)
  end
  else
    L1_2 = A0_2.items
    if L1_2 ~= nil then
      L1_2 = A0_2.items
      L1_2 = #L1_2
      if L1_2 == 1 then
        L1_2 = L3_1.show_item_detail_dialog
        L2_2 = A0_2.items
        L2_2 = L2_2[1]
        L3_2 = A0_2.is_item
        L4_2 = A0_2.hide_lock
        return L1_2(L2_2, L3_2, L4_2)
    end
    else
      L1_2 = A0_2.items
      if L1_2 ~= nil then
        L1_2 = L3_1.show_item_tips_single_tab
        L2_2 = A0_2.items
        L3_2 = A0_2.sync_load
        L3_2 = not L3_2
        L4_2 = A0_2.is_item
        L5_2 = A0_2.init_index
        L6_2 = A0_2.hide_lock
        L7_2 = A0_2.display_only
        return L1_2(L2_2, L3_2, L4_2, L5_2, L6_2, L7_2)
      end
    end
  end
end
L3_1.show_item_detail_display_dialog_for_gamepad = L4_1
function L4_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2
  if A1_2 then
    L3_2 = G
    L3_2 = L3_2.UIManager
    L3_2 = L3_2.load_and_show
    L4_2 = "Ui.Common.ItemDetailDialog"
    L3_2 = L3_2(L4_2)
    L5_2 = L3_2
    L4_2 = L3_2.setup_view_by_item
    L6_2 = A0_2
    L7_2 = A2_2
    L4_2(L5_2, L6_2, L7_2)
    return L3_2
  else
    L3_2 = G
    L3_2 = L3_2.UIManager
    L3_2 = L3_2.load_and_async_show
    L4_2 = "Ui.Common.ItemDetailDialog"
    L5_2 = A0_2
    return L3_2(L4_2, L5_2)
  end
end
L3_1.show_item_detail_dialog = L4_1
function L4_1(A0_2, A1_2, A2_2, A3_2, A4_2, A5_2)
  local L6_2, L7_2, L8_2, L9_2, L10_2
  if not A1_2 then
    A1_2 = false
  end
  if not A2_2 then
    A2_2 = false
  end
  if not A3_2 then
    A3_2 = 1
  end
  if not A4_2 then
    A4_2 = false
  end
  if A5_2 == nil then
    A5_2 = true
  end
  L6_2 = G
  L6_2 = L6_2.new
  L7_2 = "Ui.Common.ItemTip.ItemTipsDialog"
  L6_2 = L6_2(L7_2)
  L8_2 = L6_2
  L7_2 = L6_2.set_param
  L9_2 = A0_2
  L10_2 = A2_2
  L7_2(L8_2, L9_2, L10_2)
  L8_2 = L6_2
  L7_2 = L6_2.set_init_index
  L9_2 = 1
  L10_2 = A3_2
  L7_2(L8_2, L9_2, L10_2)
  L8_2 = L6_2
  L7_2 = L6_2.hide_lock
  L9_2 = A4_2 or L9_2
  if not A4_2 then
    L9_2 = false
  end
  L7_2(L8_2, L9_2)
  L8_2 = L6_2
  L7_2 = L6_2.set_display_only
  L9_2 = A5_2
  L7_2(L8_2, L9_2)
  L7_2 = G
  L7_2 = L7_2.UIManager
  L7_2 = L7_2.show
  L8_2 = L6_2
  L9_2 = A1_2
  L7_2(L8_2, L9_2)
  return L6_2
end
L3_1.show_item_tips_single_tab = L4_1
function L4_1(A0_2, A1_2, A2_2, A3_2, A4_2, A5_2, A6_2)
  local L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2
  if not A1_2 then
    L7_2 = {}
    A1_2 = L7_2
  end
  if not A2_2 then
    A2_2 = false
  end
  if not A3_2 then
    A3_2 = false
  end
  if not A4_2 then
    A4_2 = 1
  end
  if not A5_2 then
    A5_2 = false
  end
  if not A6_2 then
    A6_2 = true
  end
  L7_2 = G
  L7_2 = L7_2.new
  L8_2 = "Ui.Common.ItemTip.ItemTipsDialog"
  L7_2 = L7_2(L8_2)
  L8_2 = pairs
  L9_2 = A0_2
  L8_2, L9_2, L10_2 = L8_2(L9_2)
  for L11_2, L12_2 in L8_2, L9_2, L10_2 do
    L14_2 = L7_2
    L13_2 = L7_2.set_param
    L15_2 = L12_2
    L16_2 = A3_2
    L17_2 = A1_2[L11_2]
    L13_2(L14_2, L15_2, L16_2, L17_2)
  end
  L9_2 = L7_2
  L8_2 = L7_2.set_init_index
  L10_2 = 1
  L11_2 = A4_2
  L8_2(L9_2, L10_2, L11_2)
  L9_2 = L7_2
  L8_2 = L7_2.hide_lock
  L10_2 = A5_2 or L10_2
  if not A5_2 then
    L10_2 = false
  end
  L8_2(L9_2, L10_2)
  L9_2 = L7_2
  L8_2 = L7_2.set_display_only
  L10_2 = A6_2
  L8_2(L9_2, L10_2)
  L8_2 = G
  L8_2 = L8_2.UIManager
  L8_2 = L8_2.show
  L9_2 = L7_2
  L10_2 = A2_2
  L8_2(L9_2, L10_2)
  return L7_2
end
L3_1.show_item_tips_multi_tab = L4_1
function L4_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = {}
  function L3_2(A0_3)
    local L1_3, L2_3, L3_3
    L1_3 = 0
    L2_3 = A1_2
    L2_3 = #L2_3
    function L3_3()
      local L0_4, L1_4, L2_4
      L0_4 = L1_3
      L0_4 = L0_4 + 1
      L1_3 = L0_4
      L0_4 = L1_3
      L1_4 = L2_3
      if L0_4 <= L1_4 then
        L0_4 = L1_3
        L0_4 = A1_2[L0_4]
        L1_4 = type
        L2_4 = L0_4
        L1_4 = L1_4(L2_4)
        if L1_4 ~= "number" and L0_4 ~= nil then
          L0_4 = #L0_4
        end
        L1_4 = L0_4
        L2_4 = A0_3[L0_4]
        return L1_4, L2_4
      end
    end
    return L3_3
  end
  L2_2.__pairs = L3_2
  L3_2 = setmetatable
  L4_2 = A0_2
  L5_2 = L2_2
  L3_2(L4_2, L5_2)
end
L3_1.redefine_ergodic_lua_dict_table = L4_1
function L4_1(A0_2, A1_2)
  local L2_2, L3_2
  L2_2 = CS
  L2_2 = L2_2.Proto
  L2_2 = L2_2.ItemCost
  L2_2 = L2_2()
  L3_2 = CS
  L3_2 = L3_2.Proto
  L3_2 = L3_2.PileItem
  L3_2 = L3_2()
  L2_2.PileItem = L3_2
  L3_2 = L2_2.PileItem
  L3_2.ItemId = A0_2
  L3_2 = L2_2.PileItem
  L3_2.ItemNum = A1_2
  return L2_2
end
L3_1.create_item_cost = L4_1
function L4_1(A0_2)
  local L1_2, L2_2
  L1_2 = G
  L1_2 = L1_2.UtilEngineWrap
  L1_2 = L1_2.ConvCsEnumToNum
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.GameCore
  L2_2 = L2_2.ItemPurposeType
  L2_2 = L2_2.ItemPurposeType_3
  L1_2 = L1_2(L2_2)
  L1_2 = A0_2 == L1_2
  return L1_2
end
L3_1.is_path_material = L4_1
function L4_1()
  local L0_2, L1_2
  L0_2 = L3_1._common_path_item_id
  if L0_2 == nil then
    L0_2 = CS
    L0_2 = L0_2.RPG
    L0_2 = L0_2.GameCore
    L0_2 = L0_2.ConstValueCommonExcelTable
    L0_2 = L0_2.GetData
    L1_2 = "MultiPurpose_PathMaterial_ItemID"
    L0_2 = L0_2(L1_2)
    L0_2 = L0_2.Value
    L0_2 = L0_2.IntValue
    L3_1._common_path_item_id = L0_2
  end
  L0_2 = L3_1._common_path_item_id
  return L0_2
end
L3_1.get_common_path_item_id = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = #A0_2
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.GameCore
  L2_2 = L2_2.ConstValueCommonExcelTable
  L2_2 = L2_2.GetData
  L3_2 = "MultiPurpose_Exchange_PathMaterial_Rare"
  L4_2 = L1_2
  L3_2 = L3_2 .. L4_2
  L2_2 = L2_2(L3_2)
  L2_2 = L2_2.Value
  L2_2 = L2_2.IntValue
  return L2_2
end
L3_1.get_need_exchange_common_item_num_by_rarity = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L1_2 = 0
  L2_2 = A0_2.Count
  L2_2 = L2_2 - 1
  L3_2 = 1
  for L4_2 = L1_2, L2_2, L3_2 do
    L5_2 = A0_2[L4_2]
    L6_2 = L5_2.PileItem
    if L6_2 ~= nil then
      L6_2 = CS
      L6_2 = L6_2.RPG
      L6_2 = L6_2.GameCore
      L6_2 = L6_2.ItemExcelTable
      L6_2 = L6_2.GetData
      L7_2 = L5_2.PileItem
      L7_2 = L7_2.ItemId
      L6_2 = L6_2(L7_2)
      L7_2 = L3_1.is_path_material
      L8_2 = L6_2.PurposeType
      L7_2 = L7_2(L8_2)
      if L7_2 then
        return L5_2
      end
    end
  end
end
L3_1.get_path_item_cost_from_item_cost_list = L4_1
return L3_1
