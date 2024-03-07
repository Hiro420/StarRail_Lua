local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1, L6_1
L0_1 = G
L0_1 = L0_1.StaticClass
L1_1 = "AvatarUtils"
L0_1 = L0_1(L1_1)
L1_1 = CS
L1_1 = L1_1.RPG
L1_1 = L1_1.Client
L1_1 = L1_1.GlobalVars
L1_1 = L1_1.s_ModuleManager
L1_1 = L1_1.AvatarModule
L2_1 = CS
L2_1 = L2_1.RPG
L2_1 = L2_1.Client
L2_1 = L2_1.GlobalVars
L2_1 = L2_1.s_ModuleManager
L2_1 = L2_1.TeamModule
L3_1 = CS
L3_1 = L3_1.RPG
L3_1 = L3_1.Client
L3_1 = L3_1.GlobalVars
L3_1 = L3_1.s_ModuleManager
L3_1 = L3_1.InventoryModule
L4_1 = CS
L4_1 = L4_1.RPG
L4_1 = L4_1.Client
L4_1 = L4_1.GlobalVars
L4_1 = L4_1.s_ModuleManager
L4_1 = L4_1.FriendModule
L5_1 = CS
L5_1 = L5_1.RPG
L5_1 = L5_1.Client
L5_1 = L5_1.GlobalVars
L5_1 = L5_1.s_ModuleManager
L5_1 = L5_1.StoryLineModule
function L6_1(A0_2, A1_2)
  local L2_2, L3_2
  if A0_2 == nil or A1_2 == nil then
    L2_2 = false
    return L2_2
  end
  L2_2 = A0_2.IsTrialPlayer
  L3_2 = A1_2.IsTrialPlayer
  if L2_2 ~= L3_2 then
    L2_2 = false
    return L2_2
  end
  L2_2 = A0_2.IsAssistAvatar
  L3_2 = A1_2.IsAssistAvatar
  if L2_2 ~= L3_2 then
    L2_2 = false
    return L2_2
  end
  L2_2 = A0_2.ID
  L3_2 = A1_2.ID
  L2_2 = L2_2 == L3_2
  return L2_2
end
L0_1.is_same_avatar = L6_1
function L6_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  if A0_2 == nil or A1_2 == nil then
    L2_2 = nil
    return L2_2
  end
  L2_2 = ipairs
  L3_2 = A0_2
  L2_2, L3_2, L4_2 = L2_2(L3_2)
  for L5_2, L6_2 in L2_2, L3_2, L4_2 do
    L7_2 = L0_1.is_same_avatar
    L8_2 = L6_2
    L9_2 = A1_2
    L7_2 = L7_2(L8_2, L9_2)
    if L7_2 then
      return L5_2
    end
  end
  L2_2 = nil
  return L2_2
end
L0_1.index_of_avatar = L6_1
function L6_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  if A0_2 == nil or A1_2 == nil then
    L3_2 = nil
    return L3_2
  end
  L3_2 = 1
  L4_2 = A2_2
  L5_2 = 1
  for L6_2 = L3_2, L4_2, L5_2 do
    L7_2 = A0_2[L6_2]
    L8_2 = L0_1.is_same_avatar
    L9_2 = L7_2
    L10_2 = A1_2
    L8_2 = L8_2(L9_2, L10_2)
    if L8_2 then
      return L6_2
    end
  end
  L3_2 = nil
  return L3_2
end
L0_1.index_of_nonsequence_avatar = L6_1
function L6_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = A0_2.AvatarType
  L2_2 = CS
  L2_2 = L2_2.LHLCMODLJCB
  L2_2 = L2_2.DGJBAMOFJJK
  if L1_2 == L2_2 then
    L2_2 = L2_1
    L3_2 = L2_2
    L2_2 = L2_2.GetAvatarHpPercent
    L4_2 = L1_2
    L5_2 = A0_2.ID
    return L2_2(L3_2, L4_2, L5_2)
  else
    L2_2 = CS
    L2_2 = L2_2.LHLCMODLJCB
    L2_2 = L2_2.JPLBJNAMNBC
    if L1_2 == L2_2 then
      L2_2 = L2_1
      L3_2 = L2_2
      L2_2 = L2_2.GetAvatarHpPercent
      L4_2 = L1_2
      L5_2 = A0_2.TrialPlayerID
      return L2_2(L3_2, L4_2, L5_2)
    end
  end
end
L0_1.get_avatar_hp_percent = L6_1
function L6_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  if A0_2 == nil then
    L1_2 = {}
    return L1_2
  end
  L1_2 = {}
  L2_2 = 0
  L3_2 = 3
  L4_2 = 1
  for L5_2 = L2_2, L3_2, L4_2 do
    L7_2 = A0_2
    L6_2 = A0_2.GetMemberData
    L8_2 = L5_2
    L6_2 = L6_2(L7_2, L8_2)
    if L6_2 then
      L7_2 = L0_1.get_avatar_data_by_member_data
      L8_2 = L6_2
      L7_2 = L7_2(L8_2)
      if L7_2 ~= nil then
        L8_2 = table
        L8_2 = L8_2.insert
        L9_2 = L1_2
        L10_2 = L7_2
        L8_2(L9_2, L10_2)
      end
    end
  end
  return L1_2
end
L0_1.get_avatars_in_team = L6_1
function L6_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  if A0_2 == nil or A1_2 == nil then
    L2_2 = false
    return L2_2
  end
  L2_2 = 0
  L3_2 = 3
  L4_2 = 1
  for L5_2 = L2_2, L3_2, L4_2 do
    L7_2 = A1_2
    L6_2 = A1_2.GetMemberData
    L8_2 = L5_2
    L6_2 = L6_2(L7_2, L8_2)
    if L6_2 then
      L7_2 = L0_1.get_avatar_data_by_member_data
      L8_2 = L6_2
      L7_2 = L7_2(L8_2)
      if L7_2 == A0_2 then
        L8_2 = true
        return L8_2
      end
    end
  end
  L2_2 = false
  return L2_2
end
L0_1.is_avatar_in_team = L6_1
function L6_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  if A0_2 == nil or A1_2 == nil then
    L2_2 = false
    return L2_2
  end
  L2_2 = 0
  L3_2 = 3
  L4_2 = 1
  for L5_2 = L2_2, L3_2, L4_2 do
    L7_2 = A1_2
    L6_2 = A1_2.GetMemberData
    L8_2 = L5_2
    L6_2 = L6_2(L7_2, L8_2)
    if L6_2 then
      L7_2 = L6_2.AvatarID
      if L7_2 == A0_2 then
        L7_2 = true
        return L7_2
      end
    end
  end
  L2_2 = false
  return L2_2
end
L0_1.is_avatar_id_in_team = L6_1
function L6_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  if A0_2 == nil or A1_2 == nil then
    L2_2 = nil
    return L2_2
  end
  L2_2 = 0
  L3_2 = 3
  L4_2 = 1
  for L5_2 = L2_2, L3_2, L4_2 do
    L7_2 = A1_2
    L6_2 = A1_2.GetMemberData
    L8_2 = L5_2
    L6_2 = L6_2(L7_2, L8_2)
    if L6_2 then
      L7_2 = L6_2.AvatarID
      if L7_2 == A0_2 then
        L7_2 = L6_2.AvatarData
        return L7_2
      end
    end
  end
  L2_2 = nil
  return L2_2
end
L0_1.get_avatar_in_team_by_id = L6_1
function L6_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  if A0_2 == nil or A1_2 == nil then
    L2_2 = -1
    return L2_2
  end
  L2_2 = 0
  L3_2 = 3
  L4_2 = 1
  for L5_2 = L2_2, L3_2, L4_2 do
    L7_2 = A1_2
    L6_2 = A1_2.GetMemberData
    L8_2 = L5_2
    L6_2 = L6_2(L7_2, L8_2)
    if L6_2 then
      L7_2 = L6_2.AvatarID
      if L7_2 == A0_2 then
        return L5_2
      end
    end
  end
  L2_2 = -1
  return L2_2
end
L0_1.get_avatar_id_in_team_index = L6_1
function L6_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  if not A1_2 or not A0_2 then
    L2_2 = false
    return L2_2
  end
  L2_2 = 0
  L3_2 = 2
  L4_2 = 1
  for L5_2 = L2_2, L3_2, L4_2 do
    L7_2 = A1_2
    L6_2 = A1_2.GetMemberData
    L8_2 = L5_2
    L6_2 = L6_2(L7_2, L8_2)
    if L6_2 then
      L7_2 = L6_2.AvatarID
      if L7_2 == A0_2 then
        L7_2 = true
        return L7_2
      end
    end
  end
  L2_2 = false
  return L2_2
end
L0_1.is_assist_avatar_repeat = L6_1
function L6_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  if A1_2 == nil then
    L2_2 = nil
    return L2_2
  end
  L2_2 = pairs
  L3_2 = A1_2
  L2_2, L3_2, L4_2 = L2_2(L3_2)
  for L5_2, L6_2 in L2_2, L3_2, L4_2 do
    L7_2 = L0_1.is_same_avatar
    L8_2 = L6_2
    L9_2 = A0_2
    L7_2 = L7_2(L8_2, L9_2)
    if L7_2 then
      return L5_2
    end
  end
  L2_2 = nil
  return L2_2
end
L0_1.find_avatar_key = L6_1
function L6_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2
  L4_2 = {}
  L5_2 = pairs
  L6_2 = A0_2
  L5_2, L6_2, L7_2 = L5_2(L6_2)
  for L8_2, L9_2 in L5_2, L6_2, L7_2 do
    L10_2 = L0_1.find_avatar_key
    L11_2 = L9_2
    L12_2 = A3_2
    L10_2 = L10_2(L11_2, L12_2)
    if L10_2 then
      L10_2 = table
      L10_2 = L10_2.insert
      L11_2 = L4_2
      L12_2 = L9_2
      L10_2(L11_2, L12_2)
    else
      if A1_2 ~= nil then
        L10_2 = L9_2.Row
        L10_2 = L10_2.DamageType
        L10_2 = #L10_2
        L10_2 = A1_2[L10_2]
        if L10_2 ~= true then
          goto lbl_39
        end
      end
      if A2_2 ~= nil then
        L10_2 = L9_2.Row
        L10_2 = L10_2.AvatarBaseType
        L10_2 = #L10_2
        L10_2 = A2_2[L10_2]
        if L10_2 ~= true then
          goto lbl_39
        end
      end
      L10_2 = table
      L10_2 = L10_2.insert
      L11_2 = L4_2
      L12_2 = L9_2
      L10_2(L11_2, L12_2)
    end
    ::lbl_39::
  end
  return L4_2
end
L0_1.filter_avatars = L6_1
function L6_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L4_2 = table
  L4_2 = L4_2.sort
  L5_2 = A0_2
  L6_2 = L0_1.get_sort_compare
  L7_2 = A1_2
  L8_2 = A2_2
  L9_2 = A3_2
  L6_2, L7_2, L8_2, L9_2 = L6_2(L7_2, L8_2, L9_2)
  L4_2(L5_2, L6_2, L7_2, L8_2, L9_2)
end
L0_1.sort_avatars = L6_1
function L6_1(A0_2, A1_2, A2_2)
  local L3_2
  function L3_2(A0_3, A1_3)
    local L2_3, L3_3, L4_3, L5_3, L6_3, L7_3
    L2_3 = L0_1.find_avatar_key
    L3_3 = A0_3
    L4_3 = A2_2
    L2_3 = L2_3(L3_3, L4_3)
    L3_3 = L0_1.find_avatar_key
    L4_3 = A1_3
    L5_3 = A2_2
    L3_3 = L3_3(L4_3, L5_3)
    if L2_3 ~= nil and L3_3 ~= nil then
      L4_3 = L2_3 < L3_3
      return L4_3
    elseif L2_3 ~= nil then
      L4_3 = true
      return L4_3
    elseif L3_3 ~= nil then
      L4_3 = false
      return L4_3
    end
    L4_3 = A0_2
    L5_3 = AvatarSortType
    L5_3 = L5_3.Level
    if L4_3 == L5_3 then
      L4_3 = L0_1._compare_by_level
      L5_3 = A1_2
      L6_3 = A0_3
      L7_3 = A1_3
      return L4_3(L5_3, L6_3, L7_3)
    else
      L4_3 = A0_2
      L5_3 = AvatarSortType
      L5_3 = L5_3.Rarity
      if L4_3 == L5_3 then
        L4_3 = L0_1._compare_by_rarity
        L5_3 = A1_2
        L6_3 = A0_3
        L7_3 = A1_3
        return L4_3(L5_3, L6_3, L7_3)
      end
    end
  end
  return L3_2
end
L0_1.get_sort_compare = L6_1
function L6_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2
  L3_2 = A1_2.Level
  L4_2 = A2_2.Level
  if L3_2 ~= L4_2 then
    L3_2 = L0_1._compare_by_value
    L4_2 = A0_2
    L5_2 = A1_2.Level
    L6_2 = A2_2.Level
    return L3_2(L4_2, L5_2, L6_2)
  else
    L3_2 = A1_2.Promotion
    L4_2 = A2_2.Promotion
    if L3_2 ~= L4_2 then
      L3_2 = L0_1._compare_by_value
      L4_2 = false
      L5_2 = A1_2.Promotion
      L6_2 = A2_2.Promotion
      return L3_2(L4_2, L5_2, L6_2)
    end
    L3_2 = A1_2.Row
    L3_2 = L3_2.Rarity
    L4_2 = A2_2.Row
    L4_2 = L4_2.Rarity
    if L3_2 ~= L4_2 then
      L3_2 = L0_1._compare_by_value
      L4_2 = false
      L5_2 = A1_2.Row
      L5_2 = L5_2.Rarity
      L5_2 = #L5_2
      L6_2 = A2_2.Row
      L6_2 = L6_2.Rarity
      L6_2 = #L6_2
      return L3_2(L4_2, L5_2, L6_2)
    else
      L3_2 = A1_2.Row
      L3_2 = L3_2.AvatarBaseType
      L3_2 = #L3_2
      L4_2 = A2_2.Row
      L4_2 = L4_2.AvatarBaseType
      L4_2 = #L4_2
      if L3_2 ~= L4_2 then
        L3_2 = L0_1._compare_by_value
        L4_2 = false
        L5_2 = A1_2.Row
        L5_2 = L5_2.AvatarBaseType
        L5_2 = #L5_2
        L6_2 = A2_2.Row
        L6_2 = L6_2.AvatarBaseType
        L6_2 = #L6_2
        return L3_2(L4_2, L5_2, L6_2)
      else
        L3_2 = L0_1._compare_by_value
        L4_2 = false
        L5_2 = A1_2.ID
        L6_2 = A2_2.ID
        return L3_2(L4_2, L5_2, L6_2)
      end
    end
  end
end
L0_1._compare_by_level = L6_1
function L6_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2
  L3_2 = A1_2.Row
  L3_2 = L3_2.AvatarBaseType
  L3_2 = #L3_2
  L4_2 = A2_2.Row
  L4_2 = L4_2.AvatarBaseType
  L4_2 = #L4_2
  if L3_2 ~= L4_2 then
    L3_2 = L0_1._compare_by_value
    L4_2 = A0_2
    L5_2 = A1_2.Row
    L5_2 = L5_2.AvatarBaseType
    L5_2 = #L5_2
    L6_2 = A2_2.Row
    L6_2 = L6_2.AvatarBaseType
    L6_2 = #L6_2
    return L3_2(L4_2, L5_2, L6_2)
  else
    L3_2 = A1_2.Level
    L4_2 = A2_2.Level
    if L3_2 ~= L4_2 then
      L3_2 = L0_1._compare_by_value
      L4_2 = false
      L5_2 = A1_2.Level
      L6_2 = A2_2.Level
      return L3_2(L4_2, L5_2, L6_2)
    else
      L3_2 = A1_2.Row
      L3_2 = L3_2.Rarity
      L4_2 = A2_2.Row
      L4_2 = L4_2.Rarity
      if L3_2 ~= L4_2 then
        L3_2 = L0_1._compare_by_value
        L4_2 = false
        L5_2 = A1_2.Row
        L5_2 = L5_2.Rarity
        L5_2 = #L5_2
        L6_2 = A2_2.Row
        L6_2 = L6_2.Rarity
        L6_2 = #L6_2
        return L3_2(L4_2, L5_2, L6_2)
      else
        L3_2 = L0_1._compare_by_value
        L4_2 = false
        L5_2 = A1_2.ID
        L6_2 = A2_2.ID
        return L3_2(L4_2, L5_2, L6_2)
      end
    end
  end
end
L0_1._compare_by_profession = L6_1
function L6_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2
  L3_2 = A1_2.Row
  L3_2 = L3_2.Rarity
  L4_2 = A2_2.Row
  L4_2 = L4_2.Rarity
  if L3_2 ~= L4_2 then
    L3_2 = L0_1._compare_by_value
    L4_2 = A0_2
    L5_2 = A1_2.Row
    L5_2 = L5_2.Rarity
    L5_2 = #L5_2
    L6_2 = A2_2.Row
    L6_2 = L6_2.Rarity
    L6_2 = #L6_2
    return L3_2(L4_2, L5_2, L6_2)
  else
    L3_2 = A1_2.Level
    L4_2 = A2_2.Level
    if L3_2 ~= L4_2 then
      L3_2 = L0_1._compare_by_value
      L4_2 = false
      L5_2 = A1_2.Level
      L6_2 = A2_2.Level
      return L3_2(L4_2, L5_2, L6_2)
    else
      L3_2 = A1_2.Row
      L3_2 = L3_2.AvatarBaseType
      L3_2 = #L3_2
      L4_2 = A2_2.Row
      L4_2 = L4_2.AvatarBaseType
      L4_2 = #L4_2
      if L3_2 ~= L4_2 then
        L3_2 = L0_1._compare_by_value
        L4_2 = false
        L5_2 = A1_2.Row
        L5_2 = L5_2.AvatarBaseType
        L5_2 = #L5_2
        L6_2 = A2_2.Row
        L6_2 = L6_2.AvatarBaseType
        L6_2 = #L6_2
        return L3_2(L4_2, L5_2, L6_2)
      else
        L3_2 = L0_1._compare_by_value
        L4_2 = false
        L5_2 = A1_2.ID
        L6_2 = A2_2.ID
        return L3_2(L4_2, L5_2, L6_2)
      end
    end
  end
end
L0_1._compare_by_rarity = L6_1
function L6_1(A0_2, A1_2, A2_2)
  local L3_2
  if A0_2 then
    L3_2 = A1_2 < A2_2
    return L3_2
  else
    L3_2 = A2_2 < A1_2
    return L3_2
  end
end
L0_1._compare_by_value = L6_1
function L6_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2.IsTrialPlayer
  if L1_2 then
    L1_2 = L1_1
    L2_2 = L1_2
    L1_2 = L1_2.GetTrialAvatar
    L3_2 = A0_2.TrialPlayerID
    return L1_2(L2_2, L3_2)
  else
    L1_2 = A0_2.IsAssistAvatar
    if L1_2 then
      L1_2 = L4_1.CurAssistAvatarData
      return L1_2
    else
      L1_2 = L1_1
      L2_2 = L1_2
      L1_2 = L1_2.GetAvatar
      L3_2 = A0_2.AvatarID
      return L1_2(L2_2, L3_2)
    end
  end
end
L0_1.get_avatar_data_by_member_data = L6_1
function L6_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2.IsTrialPlayer
  if L1_2 then
    L1_2 = A0_2.TrialPlayerID
    L2_2 = CS
    L2_2 = L2_2.RPG
    L2_2 = L2_2.GameCore
    L2_2 = L2_2.GamePlayStatic
    L2_2 = L2_2.AdventureGetSpecialAvatarRowByAvatarID
    L3_2 = L1_2
    L2_2 = L2_2(L3_2)
    L3_2 = L2_2.Type
    L4_2 = CS
    L4_2 = L4_2.RPG
    L4_2 = L4_2.GameCore
    L4_2 = L4_2.SpecialAvatarType
    L4_2 = L4_2.TYPE_TRIAL
    if L3_2 == L4_2 then
      L3_2 = "UIText_TrialAvatar_TagType1"
      return L3_2
    else
      L3_2 = L2_2.Type
      L4_2 = CS
      L4_2 = L4_2.RPG
      L4_2 = L4_2.GameCore
      L4_2 = L4_2.SpecialAvatarType
      L4_2 = L4_2.TYPE_MISSION
      if L3_2 == L4_2 then
        L3_2 = "UIText_TrialAvatar_TagType2"
        return L3_2
      else
        L3_2 = L2_2.Type
        L4_2 = CS
        L4_2 = L4_2.RPG
        L4_2 = L4_2.GameCore
        L4_2 = L4_2.SpecialAvatarType
        L4_2 = L4_2.TYPE_PLOT
        if L3_2 == L4_2 then
          L3_2 = "UIText_TrialAvatar_TagType4"
          return L3_2
        end
      end
    end
  else
    L1_2 = A0_2.IsAssistAvatar
    if L1_2 then
      L1_2 = "UIText_Assist_Avatar_Label"
      return L1_2
    end
  end
  L1_2 = ""
  return L1_2
end
L0_1.get_special_avatar_hint = L6_1
function L6_1(A0_2)
  local L1_2, L2_2, L3_2
  if A0_2 == nil then
    L1_2 = {}
    return L1_2
  end
  L1_2 = A0_2.LineupType
  L2_2 = CS
  L2_2 = L2_2.DEAEDMGDDHH
  L2_2 = L2_2.INKHBENBOHE
  if L1_2 == L2_2 then
    L1_2 = L0_1.get_rogue_all_picked_avatars
    return L1_2()
  else
    L1_2 = A0_2.LineupType
    L2_2 = CS
    L2_2 = L2_2.DEAEDMGDDHH
    L2_2 = L2_2.BJPEFPLKPMD
    if L1_2 == L2_2 then
      L1_2 = L0_1.get_chess_rogue_all_picked_avatars
      return L1_2()
    else
      L1_2 = A0_2.LineupType
      L2_2 = CS
      L2_2 = L2_2.DEAEDMGDDHH
      L2_2 = L2_2.FJGPPKPICLG
      L1_2 = L1_2 == L2_2 and L1_2
      L2_2 = L0_1.get_all_avatars
      L3_2 = L1_2
      return L2_2(L3_2)
    end
  end
end
L0_1.get_avatars_by_team = L6_1
function L6_1()
  local L0_2, L1_2
  L0_2 = CS
  L0_2 = L0_2.RPG
  L0_2 = L0_2.Client
  L0_2 = L0_2.RogueStatic
  L0_2 = L0_2.IsInSimulatedRogueMode
  L0_2 = L0_2()
  if L0_2 then
    L0_2 = L0_1.get_simulate_universe_picked_avatars
    return L0_2()
  else
    L0_2 = CS
    L0_2 = L0_2.RPG
    L0_2 = L0_2.Client
    L0_2 = L0_2.RogueStatic
    L0_2 = L0_2.IsInChessRogueMode
    L0_2 = L0_2()
    if L0_2 then
      L0_2 = L0_1.get_chess_rogue_all_picked_avatars
      return L0_2()
    end
  end
end
L0_1.get_rogue_all_picked_avatars = L6_1
function L6_1()
  local L0_2, L1_2, L2_2
  L0_2 = CS
  L0_2 = L0_2.RPG
  L0_2 = L0_2.Client
  L0_2 = L0_2.GlobalVars
  L0_2 = L0_2.s_ModuleManager
  L0_2 = L0_2.RogueModule
  L1_2 = L0_2
  L0_2 = L0_2.GetRogueData
  L0_2 = L0_2(L1_2)
  if L0_2 == nil then
    L1_2 = {}
    return L1_2
  end
  L1_2 = L0_1.get_picked_avatars_from_rogue_avatar_info
  L2_2 = L0_2.AvatarInfo
  return L1_2(L2_2)
end
L0_1.get_simulate_universe_picked_avatars = L6_1
function L6_1()
  local L0_2, L1_2, L2_2
  L0_2 = CS
  L0_2 = L0_2.RPG
  L0_2 = L0_2.Client
  L0_2 = L0_2.GlobalVars
  L0_2 = L0_2.s_ModuleManager
  L0_2 = L0_2.ChessRogueModule
  L0_2 = L0_2.ChessRogueData
  if L0_2 == nil then
    L1_2 = {}
    return L1_2
  end
  L1_2 = L0_1.get_picked_avatars_from_rogue_avatar_info
  L2_2 = L0_2.AvatarInfo
  return L1_2(L2_2)
end
L0_1.get_chess_rogue_all_picked_avatars = L6_1
function L6_1()
  local L0_2, L1_2, L2_2, L3_2
  L0_2 = CS
  L0_2 = L0_2.RPG
  L0_2 = L0_2.Client
  L0_2 = L0_2.GlobalVars
  L0_2 = L0_2.s_ModuleManager
  L0_2 = L0_2.RogueModule
  L1_2 = L0_2.EndlessProgressInfo
  if L1_2 == nil then
    L2_2 = {}
    return L2_2
  end
  L2_2 = L0_1.get_picked_avatars_from_rogue_avatar_info
  L3_2 = L1_2.AvatarInfo
  return L2_2(L3_2)
end
L0_1.get_rogue_endless_all_picked_avatars = L6_1
function L6_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2
  if A0_2 == nil then
    L1_2 = {}
    return L1_2
  end
  L1_2 = {}
  L2_2 = A0_2.PickAvatarIDs
  L3_2 = 0
  L4_2 = L2_2.Count
  L4_2 = L4_2 - 1
  L5_2 = 1
  for L6_2 = L3_2, L4_2, L5_2 do
    L7_2 = L1_1
    L8_2 = L7_2
    L7_2 = L7_2.GetAvatar
    L9_2 = L2_2[L6_2]
    L7_2 = L7_2(L8_2, L9_2)
    if L7_2 ~= nil then
      L8_2 = table
      L8_2 = L8_2.insert
      L9_2 = L1_2
      L10_2 = L7_2
      L8_2(L9_2, L10_2)
    end
  end
  L3_2 = A0_2.PickTrialAvatarIDs
  L4_2 = 0
  L5_2 = L3_2.Count
  L5_2 = L5_2 - 1
  L6_2 = 1
  for L7_2 = L4_2, L5_2, L6_2 do
    L8_2 = L1_1
    L9_2 = L8_2
    L8_2 = L8_2.AddTrialPlayer
    L10_2 = L3_2[L7_2]
    L8_2(L9_2, L10_2)
    L8_2 = L1_1
    L9_2 = L8_2
    L8_2 = L8_2.GetTrialAvatar
    L10_2 = L3_2[L7_2]
    L8_2 = L8_2(L9_2, L10_2)
    if L8_2 ~= nil then
      L9_2 = table
      L9_2 = L9_2.insert
      L10_2 = L1_2
      L11_2 = L8_2
      L9_2(L10_2, L11_2)
    end
  end
  return L1_2
end
L0_1.get_picked_avatars_from_rogue_avatar_info = L6_1
function L6_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L1_2 = L0_1.get_all_obtained_avatars
  L1_2 = L1_2()
  if A0_2 then
    L2_2 = L0_1.get_team_trail_avatars
    L2_2 = L2_2()
    L3_2 = pairs
    L4_2 = L2_2
    L3_2, L4_2, L5_2 = L3_2(L4_2)
    for L6_2, L7_2 in L3_2, L4_2, L5_2 do
      L8_2 = table
      L8_2 = L8_2.insert
      L9_2 = L1_2
      L10_2 = L7_2
      L8_2(L9_2, L10_2)
    end
  end
  return L1_2
end
L0_1.get_all_avatars = L6_1
function L6_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = L0_1.get_all_obtained_avatars
  L1_2 = L1_2()
  L2_2 = L0_1.merge_avatar_list
  L3_2 = L1_2
  L4_2 = A0_2
  return L2_2(L3_2, L4_2)
end
L0_1.get_raid_avatar_data_with_trial = L6_1
function L6_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L2_2 = {}
  L3_2 = G
  L3_2 = L3_2.Utils
  L3_2 = L3_2.table_merge
  L4_2 = A0_2
  L5_2 = L2_2
  L3_2(L4_2, L5_2)
  L3_2 = ipairs
  L4_2 = A1_2
  L3_2, L4_2, L5_2 = L3_2(L4_2)
  for L6_2, L7_2 in L3_2, L4_2, L5_2 do
    L8_2 = L0_1.has_same_avatar
    L9_2 = A0_2
    L10_2 = L7_2
    L8_2 = L8_2(L9_2, L10_2)
    if not L8_2 then
      L8_2 = table
      L8_2 = L8_2.insert
      L9_2 = L2_2
      L10_2 = L7_2
      L8_2(L9_2, L10_2)
    end
  end
  return L2_2
end
L0_1.merge_avatar_list = L6_1
function L6_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L2_2 = ipairs
  L3_2 = A0_2
  L2_2, L3_2, L4_2 = L2_2(L3_2)
  for L5_2, L6_2 in L2_2, L3_2, L4_2 do
    L7_2 = L0_1.is_same_avatar
    L8_2 = L6_2
    L9_2 = A1_2
    L7_2 = L7_2(L8_2, L9_2)
    if L7_2 then
      L7_2 = true
      return L7_2
    end
  end
  L2_2 = false
  return L2_2
end
L0_1.has_same_avatar = L6_1
function L6_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2
  L1_2 = {}
  L2_2 = ipairs
  L3_2 = A0_2
  L2_2, L3_2, L4_2 = L2_2(L3_2)
  for L5_2, L6_2 in L2_2, L3_2, L4_2 do
    L7_2 = table
    L7_2 = L7_2.insert
    L8_2 = L1_2
    L9_2 = L6_2
    L7_2(L8_2, L9_2)
  end
  L2_2 = L0_1.get_all_obtained_avatars
  L2_2 = L2_2()
  L3_2 = ipairs
  L4_2 = L2_2
  L3_2, L4_2, L5_2 = L3_2(L4_2)
  for L6_2, L7_2 in L3_2, L4_2, L5_2 do
    L8_2 = false
    L9_2 = ipairs
    L10_2 = A0_2
    L9_2, L10_2, L11_2 = L9_2(L10_2)
    for L12_2, L13_2 in L9_2, L10_2, L11_2 do
      L14_2 = L0_1.is_same_avatar
      L15_2 = L7_2
      L16_2 = L13_2
      L14_2 = L14_2(L15_2, L16_2)
      if L14_2 then
        L8_2 = true
      end
    end
    if not L8_2 then
      L9_2 = table
      L9_2 = L9_2.insert
      L10_2 = L1_2
      L11_2 = L7_2
      L9_2(L10_2, L11_2)
    end
  end
  return L1_2
end
L0_1.get_all_avatars_with_custom_trial_avatar_table = L6_1
function L6_1()
  local L0_2, L1_2
  L0_2 = G
  L0_2 = L0_2.Utils
  L0_2 = L0_2.create_lua_table_from_cs_dict
  L1_2 = L1_1.AllAvatars
  return L0_2(L1_2)
end
L0_1.get_all_obtained_avatars = L6_1
function L6_1()
  local L0_2, L1_2, L2_2
  L0_2 = L5_1.CurrentLine
  L1_2 = L0_2
  L0_2 = L0_2.GetTrialAvatars
  L0_2 = L0_2(L1_2)
  L1_2 = G
  L1_2 = L1_2.Utils
  L1_2 = L1_2.create_lua_table_from_cs_list
  L2_2 = L0_2
  return L1_2(L2_2)
end
L0_1.get_story_line_avatars = L6_1
function L6_1()
  local L0_2, L1_2, L2_2
  L0_2 = G
  L0_2 = L0_2.Utils
  L0_2 = L0_2.create_lua_table_from_cs_list
  L1_2 = L2_1
  L2_2 = L1_2
  L1_2 = L1_2.GetAllTrailAvatars
  L1_2, L2_2 = L1_2(L2_2)
  return L0_2(L1_2, L2_2)
end
L0_1.get_team_trail_avatars = L6_1
function L6_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2
  L2_2 = nil
  L3_2 = G
  L3_2 = L3_2.UtilEngineWrap
  L3_2 = L3_2.IsCsType
  L4_2 = A0_2
  L5_2 = CS
  L5_2 = L5_2.RPG
  L5_2 = L5_2.GameCore
  L5_2 = L5_2.AvatarRowData
  L3_2 = L3_2(L4_2, L5_2)
  if L3_2 then
    L2_2 = A0_2
    A0_2 = A0_2.AvatarData
  end
  L3_2 = {}
  if L2_2 then
    L4_2 = L2_2.Rank
    if L4_2 then
      goto lbl_23
    end
  end
  L5_2 = A0_2
  L4_2 = A0_2.GetRankAfterExtraAddition
  L4_2 = L4_2(L5_2)
  ::lbl_23::
  L5_2 = A1_2.RatedRankID
  if L5_2 then
    L5_2 = 0
    L6_2 = A1_2.RatedRankID
    L6_2 = L6_2.Length
    L6_2 = L6_2 - 1
    L7_2 = 1
    for L8_2 = L5_2, L6_2, L7_2 do
      L9_2 = {}
      L10_2 = A1_2.RatedRankID
      L10_2 = L10_2[L8_2]
      L11_2 = CS
      L11_2 = L11_2.RPG
      L11_2 = L11_2.GameCore
      L11_2 = L11_2.AvatarRankConfigExcelTable
      L11_2 = L11_2.GetData
      L12_2 = L10_2
      L11_2 = L11_2(L12_2)
      L12_2 = L11_2.Rank
      if L4_2 >= L12_2 then
        L12_2 = L11_2.Name
        L9_2.Title = L12_2
        L12_2 = L11_2.Desc
        L9_2.Desc = L12_2
        L9_2.IsEidolon = true
        L12_2 = {}
        L13_2 = 0
        L14_2 = L11_2.Param
        L14_2 = L14_2.Length
        L14_2 = L14_2 - 1
        L15_2 = 1
        for L16_2 = L13_2, L14_2, L15_2 do
          L17_2 = table
          L17_2 = L17_2.insert
          L18_2 = L12_2
          L19_2 = L11_2.Param
          L19_2 = L19_2[L16_2]
          L17_2(L18_2, L19_2)
        end
        L9_2.Param = L12_2
        L13_2 = table
        L13_2 = L13_2.insert
        L14_2 = L3_2
        L15_2 = L9_2
        L13_2(L14_2, L15_2)
      end
    end
  end
  L5_2 = A1_2.RatedSkillTreeID
  if L5_2 then
    L5_2 = 0
    L6_2 = A1_2.RatedSkillTreeID
    L6_2 = L6_2.Length
    L6_2 = L6_2 - 1
    L7_2 = 1
    for L8_2 = L5_2, L6_2, L7_2 do
      L9_2 = {}
      L10_2 = A1_2.RatedSkillTreeID
      L10_2 = L10_2[L8_2]
      L11_2 = A0_2.SkillTreeData
      L12_2 = L11_2
      L11_2 = L11_2.GetSkillTreePointLevel
      L13_2 = L10_2
      L11_2 = L11_2(L12_2, L13_2)
      if 0 < L11_2 then
        L12_2 = CS
        L12_2 = L12_2.RPG
        L12_2 = L12_2.GameCore
        L12_2 = L12_2.AvatarSkillTreeExcelTable
        L12_2 = L12_2.GetData
        L13_2 = L10_2
        L14_2 = L11_2
        L12_2 = L12_2(L13_2, L14_2)
        L13_2 = L12_2.PointName
        L9_2.Title = L13_2
        L13_2 = L12_2.PointDesc
        L9_2.Desc = L13_2
        L9_2.IsEidolon = false
        L13_2 = {}
        L14_2 = 0
        L15_2 = L12_2.ParamList
        L15_2 = L15_2.Length
        L15_2 = L15_2 - 1
        L16_2 = 1
        for L17_2 = L14_2, L15_2, L16_2 do
          L18_2 = table
          L18_2 = L18_2.insert
          L19_2 = L13_2
          L20_2 = L12_2.ParamList
          L20_2 = L20_2[L17_2]
          L18_2(L19_2, L20_2)
        end
        L9_2.Param = L13_2
        L14_2 = table
        L14_2 = L14_2.insert
        L15_2 = L3_2
        L16_2 = L9_2
        L14_2(L15_2, L16_2)
      end
    end
  end
  return L3_2
end
L0_1.get_skill_extra_desc_table = L6_1
function L6_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.GameCore
  L2_2 = L2_2.AvatarPropertyOverrideExcelTable
  L2_2 = L2_2.GetData
  L3_2 = A0_2.ID
  L2_2 = L2_2(L3_2)
  L3_2 = nil
  L4_2 = nil
  L5_2 = {}
  L6_2 = {}
  if L2_2 ~= nil then
    if A1_2 then
      L3_2 = L2_2.HidePropertyInBattleList
      L4_2 = L2_2.ShowPropertyInBattleList
    else
      L3_2 = L2_2.HidePropertyList
      L4_2 = L2_2.ShowPropertyList
    end
    L7_2 = 0
    L8_2 = L3_2.Length
    L8_2 = L8_2 - 1
    L9_2 = 1
    for L10_2 = L7_2, L8_2, L9_2 do
      L11_2 = L3_2[L10_2]
      L5_2[L11_2] = true
    end
    L7_2 = 0
    L8_2 = L4_2.Length
    L8_2 = L8_2 - 1
    L9_2 = 1
    for L10_2 = L7_2, L8_2, L9_2 do
      L11_2 = L4_2[L10_2]
      L6_2[L11_2] = true
    end
  end
  L7_2 = {}
  L8_2 = pairs
  L9_2 = CS
  L9_2 = L9_2.RPG
  L9_2 = L9_2.GameCore
  L9_2 = L9_2.AvatarPropertyExcelTable
  L9_2 = L9_2.dataDict
  L8_2, L9_2, L10_2 = L8_2(L9_2)
  for L11_2, L12_2 in L8_2, L9_2, L10_2 do
    L13_2 = L12_2.PropertyType
    if A1_2 then
      L14_2 = L12_2.isBattleDisplay
      if L14_2 then
        L14_2 = L5_2[L13_2]
        if L14_2 == nil then
          goto lbl_68
        end
      end
      L14_2 = L6_2[L13_2]
      if L14_2 then
        goto lbl_68
      end
    end
    if not A1_2 then
      L14_2 = L12_2.IsDisplay
      if L14_2 then
        L14_2 = L5_2[L13_2]
        if L14_2 == nil then
          goto lbl_68
        end
      end
    end
    L14_2 = L6_2[L13_2]
    ::lbl_68::
    if L14_2 then
      L14_2 = table
      L14_2 = L14_2.insert
      L15_2 = L7_2
      L16_2 = L12_2
      L14_2(L15_2, L16_2)
    end
  end
  return L7_2
end
L0_1.get_avatar_property_table = L6_1
function L6_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  if A0_2 == nil then
    L1_2 = false
    return L1_2
  end
  L1_2 = A0_2.Rank
  L2_2 = A0_2.Row
  L2_2 = L2_2.MaxRank
  if L1_2 >= L2_2 then
    L1_2 = false
    return L1_2
  end
  L1_2 = A0_2.Row
  L1_2 = L1_2.RankIDList
  L2_2 = A0_2.Rank
  L3_2 = L1_2.Length
  if L2_2 < L3_2 then
    L2_2 = CS
    L2_2 = L2_2.RPG
    L2_2 = L2_2.GameCore
    L2_2 = L2_2.AvatarRankConfigExcelTable
    L2_2 = L2_2.GetData
    L3_2 = A0_2.Rank
    L3_2 = L1_2[L3_2]
    L2_2 = L2_2(L3_2)
    L3_2 = L0_1.is_avatar_rankup_cost_enough
    L4_2 = L2_2
    L3_2 = L3_2(L4_2)
    if L3_2 then
      L3_2 = true
      return L3_2
    end
  end
  L2_2 = false
  return L2_2
end
L0_1.is_avatar_can_rankup = L6_1
function L6_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  if A0_2 == nil then
    L1_2 = false
    return L1_2
  end
  L1_2 = A0_2.Rank
  L2_2 = A0_2.Row
  L2_2 = L2_2.MaxRank
  if L1_2 >= L2_2 then
    L1_2 = true
    return L1_2
  end
  L1_2 = 0
  L2_2 = 0
  L3_2 = A0_2.Row
  L3_2 = L3_2.RankIDList
  L4_2 = A0_2.Rank
  L5_2 = A0_2.Row
  L5_2 = L5_2.MaxRank
  L5_2 = L5_2 - 1
  L6_2 = 1
  for L7_2 = L4_2, L5_2, L6_2 do
    L8_2 = CS
    L8_2 = L8_2.RPG
    L8_2 = L8_2.GameCore
    L8_2 = L8_2.AvatarRankConfigExcelTable
    L8_2 = L8_2.GetData
    L9_2 = L3_2[L7_2]
    L8_2 = L8_2(L9_2)
    L9_2 = L8_2.UnlockCost
    L9_2 = L9_2[0]
    L1_2 = L9_2.ItemID
    L9_2 = L8_2.UnlockCost
    L9_2 = L9_2[0]
    L9_2 = L9_2.ItemNum
    L2_2 = L2_2 + L9_2
  end
  L4_2 = CS
  L4_2 = L4_2.RPG
  L4_2 = L4_2.Client
  L4_2 = L4_2.GlobalVars
  L4_2 = L4_2.s_ModuleManager
  L4_2 = L4_2.InventoryModule
  L5_2 = L4_2
  L4_2 = L4_2.GetItemCountByConfigID
  L6_2 = L1_2
  L4_2 = L4_2(L5_2, L6_2)
  L4_2 = L2_2 <= L4_2
  return L4_2
end
L0_1.is_avatar_can_rank_max = L6_1
function L6_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L1_2 = L0_1.get_avatar_rankup_cost
  L2_2 = A0_2
  L1_2 = L1_2(L2_2)
  L2_2 = 1
  L3_2 = #L1_2
  L4_2 = 1
  for L5_2 = L2_2, L3_2, L4_2 do
    L6_2 = L3_1
    L7_2 = L6_2
    L6_2 = L6_2.GetItemCountByConfigID
    L8_2 = L1_2[L5_2]
    L8_2 = L8_2.ID
    L6_2 = L6_2(L7_2, L8_2)
    L7_2 = L1_2[L5_2]
    L7_2 = L7_2.Num
    if L6_2 < L7_2 then
      L7_2 = false
      return L7_2
    end
  end
  L2_2 = true
  return L2_2
end
L0_1.is_avatar_rankup_cost_enough = L6_1
function L6_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L1_2 = {}
  if A0_2 == nil then
    return L1_2
  end
  L2_2 = 0
  L3_2 = A0_2.UnlockCost
  L3_2 = L3_2.Length
  L3_2 = L3_2 - 1
  L4_2 = 1
  for L5_2 = L2_2, L3_2, L4_2 do
    L6_2 = {}
    L7_2 = A0_2.UnlockCost
    L7_2 = L7_2[L5_2]
    L7_2 = L7_2.ItemID
    L6_2.ID = L7_2
    L7_2 = A0_2.UnlockCost
    L7_2 = L7_2[L5_2]
    L7_2 = L7_2.ItemNum
    L6_2.Num = L7_2
    L7_2 = table
    L7_2 = L7_2.insert
    L8_2 = L1_2
    L9_2 = L6_2
    L7_2(L8_2, L9_2)
  end
  return L1_2
end
L0_1.get_avatar_rankup_cost = L6_1
function L6_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.GameCore
  L3_2 = L3_2.AvatarSkillTreeExcelTable
  L3_2 = L3_2.GetData
  L4_2 = A1_2
  L5_2 = A2_2 + 1
  L3_2 = L3_2(L4_2, L5_2)
  if L3_2 == nil then
    L4_2 = false
    return L4_2
  end
  L4_2 = L0_1.is_skill_upgradable_check_avatar
  L5_2 = A0_2
  L6_2 = L3_2
  L4_2 = L4_2(L5_2, L6_2)
  if L4_2 then
    L4_2 = L0_1.is_skill_upgradable_check_cost
    L5_2 = L3_2
    L4_2 = L4_2(L5_2)
  end
  return L4_2
end
L0_1.is_skill_upgradable = L6_1
function L6_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = L0_1.is_skill_promotion_enough
  L3_2 = A0_2
  L4_2 = A1_2
  L2_2 = L2_2(L3_2, L4_2)
  if L2_2 then
    L2_2 = L0_1.is_skill_level_enough
    L3_2 = A0_2
    L4_2 = A1_2
    L2_2 = L2_2(L3_2, L4_2)
    if L2_2 then
      L2_2 = L0_1.is_skill_pre_point_enough
      L3_2 = A0_2
      L4_2 = A1_2
      L2_2 = L2_2(L3_2, L4_2)
    end
  end
  return L2_2
end
L0_1.is_skill_upgradable_check_avatar = L6_1
function L6_1(A0_2)
  local L1_2, L2_2
  L1_2 = L0_1.is_skill_material_enough
  L2_2 = A0_2
  L1_2 = L1_2(L2_2)
  if L1_2 then
    L1_2 = L0_1.is_skill_coin_enough
    L2_2 = A0_2
    L1_2 = L1_2(L2_2)
  end
  return L1_2
end
L0_1.is_skill_upgradable_check_cost = L6_1
function L6_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.GameCore
  L3_2 = L3_2.AvatarSkillTreeExcelTable
  L3_2 = L3_2.GetData
  L4_2 = A1_2
  L5_2 = A2_2 + 1
  L3_2 = L3_2(L4_2, L5_2)
  if L3_2 == nil then
    L4_2 = false
    return L4_2
  end
  L4_2 = L0_1.is_skill_upgradable_check_avatar
  L5_2 = A0_2
  L6_2 = L3_2
  return L4_2(L5_2, L6_2)
end
L0_1.is_skill_upgradable_check_avatar_with_point = L6_1
function L6_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.GameCore
  L2_2 = L2_2.AvatarSkillTreeExcelTable
  L2_2 = L2_2.GetData
  L3_2 = A0_2
  L4_2 = A1_2 + 1
  L2_2 = L2_2(L3_2, L4_2)
  if L2_2 == nil then
    L3_2 = false
    return L3_2
  end
  L3_2 = L0_1.is_skill_upgradable_check_cost
  L4_2 = L2_2
  return L3_2(L4_2)
end
L0_1.is_skill_upgradable_check_cost_with_point = L6_1
function L6_1(A0_2, A1_2)
  local L2_2, L3_2
  L2_2 = A1_2.AvatarPromotionLimit
  if L2_2 == nil then
    L2_2 = true
    return L2_2
  end
  L2_2 = A0_2.Promotion
  L3_2 = A1_2.AvatarPromotionLimit
  L2_2 = L2_2 >= L3_2
  return L2_2
end
L0_1.is_skill_promotion_enough = L6_1
function L6_1(A0_2, A1_2)
  local L2_2, L3_2
  L2_2 = A1_2.AvatarLevelLimit
  if L2_2 == nil then
    L2_2 = true
    return L2_2
  end
  L2_2 = A0_2.Level
  L3_2 = A1_2.AvatarLevelLimit
  L2_2 = L2_2 >= L3_2
  return L2_2
end
L0_1.is_skill_level_enough = L6_1
function L6_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = L0_1.get_skill_pre_point
  L3_2 = A0_2
  L4_2 = A1_2
  L2_2 = L2_2(L3_2, L4_2)
  L2_2 = L2_2 == 0
  return L2_2
end
L0_1.is_skill_pre_point_enough = L6_1
function L6_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L2_2 = A1_2.PrePoint
  L2_2 = L2_2.Length
  if 0 < L2_2 then
    L2_2 = 0
    L3_2 = A1_2.PrePoint
    L3_2 = L3_2.Length
    L3_2 = L3_2 - 1
    L4_2 = 1
    for L5_2 = L2_2, L3_2, L4_2 do
      L6_2 = A1_2.PrePoint
      L6_2 = L6_2[L5_2]
      L7_2 = CS
      L7_2 = L7_2.RPG
      L7_2 = L7_2.GameCore
      L7_2 = L7_2.AvatarSkillTreeExcelTable
      L7_2 = L7_2.GetData
      L8_2 = L6_2
      L9_2 = 1
      L7_2 = L7_2(L8_2, L9_2)
      L8_2 = A0_2.SkillTreeData
      L9_2 = L8_2
      L8_2 = L8_2.GetSkillTreePointLevel
      L10_2 = L6_2
      L8_2 = L8_2(L9_2, L10_2)
      L9_2 = L7_2.MaxLevel
      if L8_2 < L9_2 then
        return L6_2
      end
    end
  end
  L2_2 = 0
  return L2_2
end
L0_1.get_skill_pre_point = L6_1
function L6_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L1_2 = L0_1.get_skill_material_cost
  L2_2 = A0_2
  L1_2 = L1_2(L2_2)
  L2_2 = ipairs
  L3_2 = L1_2
  L2_2, L3_2, L4_2 = L2_2(L3_2)
  for L5_2, L6_2 in L2_2, L3_2, L4_2 do
    L7_2 = L3_1
    L8_2 = L7_2
    L7_2 = L7_2.GetItemCountByConfigID
    L9_2 = L6_2.ID
    L7_2 = L7_2(L8_2, L9_2)
    L8_2 = L6_2.Num
    if L7_2 < L8_2 then
      L8_2 = false
      return L8_2
    end
  end
  L2_2 = true
  return L2_2
end
L0_1.is_skill_material_enough = L6_1
function L6_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L1_2 = A0_2.MaterialList
  if L1_2 ~= nil then
    L2_2 = L1_2.Length
    if not (L2_2 <= 0) then
      goto lbl_9
    end
  end
  L2_2 = {}
  do return L2_2 end
  ::lbl_9::
  L2_2 = {}
  L3_2 = 0
  L4_2 = L1_2.Length
  L4_2 = L4_2 - 1
  L5_2 = 1
  for L6_2 = L3_2, L4_2, L5_2 do
    L7_2 = L1_2[L6_2]
    L7_2 = L7_2.ItemID
    L8_2 = G
    L8_2 = L8_2.UtilEngineWrap
    L8_2 = L8_2.ConvCsEnumToNum
    L9_2 = CS
    L9_2 = L9_2.HJLLLAFEOHH
    L9_2 = L9_2.AJNPKBJMOKL
    L8_2 = L8_2(L9_2)
    if L7_2 ~= L8_2 then
      L7_2 = {}
      L8_2 = L1_2[L6_2]
      L8_2 = L8_2.ItemID
      L7_2.ID = L8_2
      L8_2 = L1_2[L6_2]
      L8_2 = L8_2.ItemNum
      L7_2.Num = L8_2
      L8_2 = table
      L8_2 = L8_2.insert
      L9_2 = L2_2
      L10_2 = L7_2
      L8_2(L9_2, L10_2)
    end
  end
  L3_2 = G
  L3_2 = L3_2.RewardUtils
  L3_2 = L3_2.sort_reward_item
  L4_2 = L2_2
  L3_2(L4_2)
  return L2_2
end
L0_1.get_skill_material_cost = L6_1
function L6_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = L0_1.get_skill_coin_cost
  L2_2 = A0_2
  L1_2 = L1_2(L2_2)
  L2_2 = L3_1
  L3_2 = L2_2
  L2_2 = L2_2.GetItemCountByConfigID
  L4_2 = G
  L4_2 = L4_2.UtilEngineWrap
  L4_2 = L4_2.ConvCsEnumToNum
  L5_2 = CS
  L5_2 = L5_2.HJLLLAFEOHH
  L5_2 = L5_2.AJNPKBJMOKL
  L4_2, L5_2 = L4_2(L5_2)
  L2_2 = L2_2(L3_2, L4_2, L5_2)
  L3_2 = L1_2 <= L2_2
  return L3_2
end
L0_1.is_skill_coin_enough = L6_1
function L6_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L1_2 = A0_2.MaterialList
  if L1_2 ~= nil then
    L2_2 = L1_2.Length
    if not (L2_2 <= 0) then
      goto lbl_9
    end
  end
  L2_2 = 0
  do return L2_2 end
  ::lbl_9::
  L2_2 = 0
  L3_2 = L1_2.Length
  L3_2 = L3_2 - 1
  L4_2 = 1
  for L5_2 = L2_2, L3_2, L4_2 do
    L6_2 = L1_2[L5_2]
    L6_2 = L6_2.ItemID
    L7_2 = G
    L7_2 = L7_2.UtilEngineWrap
    L7_2 = L7_2.ConvCsEnumToNum
    L8_2 = CS
    L8_2 = L8_2.HJLLLAFEOHH
    L8_2 = L8_2.AJNPKBJMOKL
    L7_2 = L7_2(L8_2)
    if L6_2 == L7_2 then
      L6_2 = L1_2[L5_2]
      L6_2 = L6_2.ItemNum
      return L6_2
    end
  end
  L2_2 = 0
  return L2_2
end
L0_1.get_skill_coin_cost = L6_1
function L6_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = {}
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.GameCore
  L2_2 = L2_2.AdventureStatic
  L2_2 = L2_2.GetCurrentGameModeType
  L2_2 = L2_2()
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.GameCore
  L3_2 = L3_2.GameModeType
  L3_2 = L3_2.TrialActivity
  if L2_2 == L3_2 then
    L2_2 = L0_1._get_avatar_data_list_by_trial_activity
    L2_2 = L2_2()
    L1_2 = L2_2
  else
    L2_2 = L0_1._get_avatar_data_list_by_provider
    L3_2 = A0_2
    L2_2 = L2_2(L3_2)
    L1_2 = L2_2
  end
  return L1_2
end
L0_1.get_avatar_data_list = L6_1
function L6_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L0_2 = {}
  L1_2 = L2_1
  L2_2 = L1_2
  L1_2 = L1_2.GetExtraTeam
  L3_2 = CS
  L3_2 = L3_2.DEAEDMGDDHH
  L3_2 = L3_2.DAOAHGJPHCD
  L1_2 = L1_2(L2_2, L3_2)
  L2_2 = 1
  L3_2 = 4
  L4_2 = 1
  for L5_2 = L2_2, L3_2, L4_2 do
    L7_2 = L1_2
    L6_2 = L1_2.GetMemberDataByIndex
    L8_2 = L5_2
    L6_2 = L6_2(L7_2, L8_2)
    if L6_2 ~= nil then
      L7_2 = table
      L7_2 = L7_2.insert
      L8_2 = L0_2
      L9_2 = L6_2.AvatarData
      L7_2(L8_2, L9_2)
    end
  end
  return L0_2
end
L0_1._get_avatar_data_list_by_trial_activity = L6_1
function L6_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L2_2 = A0_2
  L1_2 = A0_2.get_all_avatars
  L1_2 = L1_2(L2_2)
  L2_2 = L0_1._get_rogue_picked_avatars
  L3_2 = A0_2
  L2_2 = L2_2(L3_2)
  if L2_2 ~= nil then
    L3_2 = ipairs
    L4_2 = L2_2
    L3_2, L4_2, L5_2 = L3_2(L4_2)
    for L6_2, L7_2 in L3_2, L4_2, L5_2 do
      if L7_2 ~= nil then
        L8_2 = L7_2.IsTrialPlayer
        if L8_2 == true then
          L8_2 = G
          L8_2 = L8_2.AvatarUtils
          L8_2 = L8_2.find_avatar_key
          L9_2 = L7_2
          L10_2 = L1_2
          L8_2 = L8_2(L9_2, L10_2)
          if L8_2 == nil then
            L8_2 = table
            L8_2 = L8_2.insert
            L9_2 = L1_2
            L10_2 = L7_2
            L8_2(L9_2, L10_2)
          end
        end
      end
    end
  end
  L3_2 = L4_1.CurAssistAvatarData
  if L3_2 then
    L4_2 = table
    L4_2 = L4_2.insert
    L5_2 = L1_2
    L6_2 = L3_2
    L4_2(L5_2, L6_2)
  end
  L4_2 = G
  L4_2 = L4_2.AvatarUtils
  L4_2 = L4_2.sort_avatars
  L5_2 = L1_2
  L6_2 = AvatarSortType
  L6_2 = L6_2.Level
  L7_2 = false
  L9_2 = A0_2
  L8_2 = A0_2.get_avatars_in_team
  L8_2, L9_2, L10_2 = L8_2(L9_2)
  L4_2(L5_2, L6_2, L7_2, L8_2, L9_2, L10_2)
  return L1_2
end
L0_1._get_avatar_data_list_by_provider = L6_1
function L6_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = G
  L1_2 = L1_2.IsInstanceOf
  L2_2 = A0_2
  L3_2 = G
  L3_2 = L3_2.RogueTeamInfoProvider
  L1_2 = L1_2(L2_2, L3_2)
  if L1_2 then
    L2_2 = A0_2
    L1_2 = A0_2.get_avatars_in_team
    return L1_2(L2_2)
  end
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.GameCore
  L1_2 = L1_2.AdventureStatic
  L2_2 = L1_2
  L1_2 = L1_2.GetCurrentGameModeType
  L1_2 = L1_2(L2_2)
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.GameCore
  L2_2 = L2_2.GameModeType
  L2_2 = L2_2.RogueExplore
  if L1_2 == L2_2 then
    L1_2 = G
    L1_2 = L1_2.AvatarUtils
    L1_2 = L1_2.get_rogue_all_picked_avatars
    return L1_2()
  end
  L1_2 = nil
  return L1_2
end
L0_1._get_rogue_picked_avatars = L6_1
return L0_1
