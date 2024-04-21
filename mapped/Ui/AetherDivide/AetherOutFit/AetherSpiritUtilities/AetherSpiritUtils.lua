local L0_1, L1_1, L2_1
L0_1 = require
L1_1 = "Ui.AetherDivide.AetherOutFit.AetherSpiritUtilities.AetherTeamUtils"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.StaticClass
L1_1 = "AetherSpiritUtils"
L0_1 = L0_1(L1_1)
L1_1 = CS
L1_1 = L1_1.RPG
L1_1 = L1_1.Client
L1_1 = L1_1.GlobalVars
L1_1 = L1_1.s_ModuleManager
L1_1 = L1_1.AetherDivideModule
L1_1 = L1_1.AetherOutfitData
function L2_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2
  L3_2 = A1_2 or nil
  if not A1_2 then
    L3_2 = false
  end
  function L4_2(A0_3, A1_3)
    local L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3
    L2_3 = L1_1
    L3_3 = L2_3
    L2_3 = L2_3.GetAetherMonsterAvatar
    L4_3 = A0_3.ID
    L2_3 = L2_3(L3_3, L4_3)
    L3_3 = L1_1
    L4_3 = L3_3
    L3_3 = L3_3.GetAetherMonsterAvatar
    L5_3 = A1_3.ID
    L3_3 = L3_3(L4_3, L5_3)
    if L2_3 ~= nil and L3_3 ~= nil then
      L4_3 = G
      L4_3 = L4_3.AetherTeamUtils
      L4_3 = L4_3.check_is_spirit_in_team
      L5_3 = L2_3
      L6_3 = A2_2
      L4_3 = L4_3(L5_3, L6_3)
      L5_3 = G
      L5_3 = L5_3.AetherTeamUtils
      L5_3 = L5_3.check_is_spirit_in_team
      L6_3 = L3_3
      L7_3 = A2_2
      L5_3 = L5_3(L6_3, L7_3)
      if L4_3 ~= L5_3 then
        return L4_3
      end
      if L4_3 and L5_3 then
        L6_3 = G
        L6_3 = L6_3.AetherTeamUtils
        L6_3 = L6_3.get_spirit_in_team_index
        L7_3 = L2_3
        L8_3 = A2_2
        L6_3 = L6_3(L7_3, L8_3)
        L7_3 = G
        L7_3 = L7_3.AetherTeamUtils
        L7_3 = L7_3.get_spirit_in_team_index
        L8_3 = L3_3
        L9_3 = A2_2
        L7_3 = L7_3(L8_3, L9_3)
        L8_3 = L6_3 < L7_3
        return L8_3
      end
    end
    L4_3 = A0_3.Status
    L5_3 = A1_3.Status
    if L4_3 ~= L5_3 then
      L6_3 = CS
      L6_3 = L6_3.RPG
      L6_3 = L6_3.Client
      L6_3 = L6_3.AetherMonsterAvatarDisplayDataStatus
      L6_3 = L6_3.Unlocked
      if L4_3 == L6_3 then
        L6_3 = true
        return L6_3
      else
        L6_3 = CS
        L6_3 = L6_3.RPG
        L6_3 = L6_3.Client
        L6_3 = L6_3.AetherMonsterAvatarDisplayDataStatus
        L6_3 = L6_3.Forbidden
        if L4_3 == L6_3 then
          L6_3 = false
          return L6_3
        else
          L6_3 = CS
          L6_3 = L6_3.RPG
          L6_3 = L6_3.Client
          L6_3 = L6_3.AetherMonsterAvatarDisplayDataStatus
          L6_3 = L6_3.Unlocked
          if L5_3 == L6_3 then
            L6_3 = false
            return L6_3
          else
            L6_3 = true
            return L6_3
          end
        end
      end
    end
    L6_3 = CS
    L6_3 = L6_3.RPG
    L6_3 = L6_3.Client
    L6_3 = L6_3.AetherMonsterAvatarDisplayDataStatus
    L6_3 = L6_3.Forbidden
    if L4_3 == L6_3 then
      L6_3 = L0_1._check_other_sort_spirit_condition
      L7_3 = false
      L8_3 = A0_3
      L9_3 = A1_3
      return L6_3(L7_3, L8_3, L9_3)
    else
      L6_3 = CS
      L6_3 = L6_3.RPG
      L6_3 = L6_3.Client
      L6_3 = L6_3.AetherMonsterAvatarDisplayDataStatus
      L6_3 = L6_3.Unlocked
      if L4_3 == L6_3 then
        L6_3 = L2_3.Promotion
        L7_3 = L3_3.Promotion
        if L6_3 ~= L7_3 then
          L8_3 = L0_1._compare_by_value
          L9_3 = L3_2
          L10_3 = L6_3
          L11_3 = L7_3
          return L8_3(L9_3, L10_3, L11_3)
        end
      else
        L6_3 = L2_3.CurrentExp
        L7_3 = L3_3.CurrentExp
        if L6_3 ~= L7_3 then
          L8_3 = L0_1._compare_by_value
          L9_3 = L3_2
          L10_3 = L6_3
          L11_3 = L7_3
          return L8_3(L9_3, L10_3, L11_3)
        end
      end
    end
    L6_3 = L0_1._check_other_sort_spirit_condition
    L7_3 = false
    L8_3 = A0_3
    L9_3 = A1_3
    return L6_3(L7_3, L8_3, L9_3)
  end
  L5_2 = table
  L5_2 = L5_2.sort
  L6_2 = A0_2
  L7_2 = L4_2
  L5_2(L6_2, L7_2)
end
L0_1.sort_display_spirit_table = L2_1
function L2_1(A0_2, A1_2, A2_2)
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
    L3_2 = A1_2.Row
    L3_2 = L3_2.SpiritType
    L4_2 = A2_2.Row
    L4_2 = L4_2.SpiritType
    if L3_2 ~= L4_2 then
      L3_2 = L0_1._compare_by_value
      L4_2 = not A0_2
      L5_2 = A1_2.Row
      L5_2 = L5_2.SpiritType
      L5_2 = #L5_2
      L6_2 = A2_2.Row
      L6_2 = L6_2.SpiritType
      L6_2 = #L6_2
      return L3_2(L4_2, L5_2, L6_2)
    else
      L3_2 = L0_1._compare_by_value
      L4_2 = not A0_2
      L5_2 = A1_2.ID
      L6_2 = A2_2.ID
      return L3_2(L4_2, L5_2, L6_2)
    end
  end
end
L0_1._check_other_sort_spirit_condition = L2_1
function L2_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2
  L3_2 = A1_2 or nil
  if not A1_2 then
    L3_2 = false
  end
  function L4_2(A0_3, A1_3)
    local L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3
    L2_3 = A0_3
    L3_3 = A1_3
    L4_3 = G
    L4_3 = L4_3.AetherTeamUtils
    L4_3 = L4_3.check_is_spirit_in_team
    L5_3 = L2_3
    L6_3 = A2_2
    L4_3 = L4_3(L5_3, L6_3)
    L5_3 = G
    L5_3 = L5_3.AetherTeamUtils
    L5_3 = L5_3.check_is_spirit_in_team
    L6_3 = L3_3
    L7_3 = A2_2
    L5_3 = L5_3(L6_3, L7_3)
    if L4_3 ~= L5_3 then
      return L4_3
    elseif L4_3 and L5_3 then
      L6_3 = G
      L6_3 = L6_3.AetherTeamUtils
      L6_3 = L6_3.get_spirit_in_team_index
      L7_3 = L2_3
      L8_3 = A2_2
      L6_3 = L6_3(L7_3, L8_3)
      L7_3 = G
      L7_3 = L7_3.AetherTeamUtils
      L7_3 = L7_3.get_spirit_in_team_index
      L8_3 = L3_3
      L9_3 = A2_2
      L7_3 = L7_3(L8_3, L9_3)
      L8_3 = L6_3 < L7_3
      return L8_3
    else
      L6_3 = L2_3.Promotion
      L7_3 = L3_3.Promotion
      if L6_3 ~= L7_3 then
        L8_3 = L0_1._compare_by_value
        L9_3 = L3_2
        L10_3 = L6_3
        L11_3 = L7_3
        return L8_3(L9_3, L10_3, L11_3)
      elseif L6_3 == 0 then
        L8_3 = L2_3.CurrentExp
        L9_3 = L3_3.CurrentExp
        if L8_3 ~= L9_3 then
          L10_3 = L0_1._compare_by_value
          L11_3 = L3_2
          L12_3 = L8_3
          L13_3 = L9_3
          return L10_3(L11_3, L12_3, L13_3)
        end
      else
        L8_3 = L0_1._check_other_sort_spirit_condition
        L9_3 = false
        L10_3 = A0_3
        L11_3 = A1_3
        return L8_3(L9_3, L10_3, L11_3)
      end
    end
  end
  L5_2 = table
  L5_2 = L5_2.sort
  L6_2 = A0_2
  L7_2 = L4_2
  L5_2(L6_2, L7_2)
end
L0_1.sort_spirit_table = L2_1
function L2_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2, L5_2, L6_2, L7_2
  function L4_2(A0_3, A1_3)
    local L2_3, L3_3, L4_3, L5_3, L6_3, L7_3
    L2_3 = L0_1.get_spirit_index
    L3_3 = A0_3
    L4_3 = A3_2
    L2_3 = L2_3(L3_3, L4_3)
    L3_3 = L0_1.get_spirit_index
    L4_3 = A1_3
    L5_3 = A3_2
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
    L4_3 = A1_2
    L5_3 = AetherSpiritSortType
    L5_3 = L5_3.Promotion
    if L4_3 == L5_3 then
      L4_3 = A0_3.Promotion
      L5_3 = A1_3.Promotion
      if L4_3 ~= L5_3 then
        L4_3 = L0_1._compare_by_value
        L5_3 = A2_2
        L6_3 = A0_3.Promotion
        L7_3 = A1_3.Promotion
        return L4_3(L5_3, L6_3, L7_3)
    end
    else
      L4_3 = A1_2
      L5_3 = AetherSpiritSortType
      L5_3 = L5_3.Rarity
      if L4_3 == L5_3 then
        L4_3 = A0_3.Rarity
        L5_3 = A1_3.Rarity
        if L4_3 ~= L5_3 then
          L4_3 = L0_1._compare_by_value
          L5_3 = A2_2
          L6_3 = A0_3.Rarity
          L6_3 = #L6_3
          L7_3 = A1_3.Rarity
          L7_3 = #L7_3
          return L4_3(L5_3, L6_3, L7_3)
      end
      else
        L4_3 = L0_1._check_other_sort_spirit_condition
        L5_3 = false
        L6_3 = A0_3
        L7_3 = A1_3
        return L4_3(L5_3, L6_3, L7_3)
      end
    end
  end
  L5_2 = table
  L5_2 = L5_2.sort
  L6_2 = A0_2
  L7_2 = L4_2
  L5_2(L6_2, L7_2)
end
L0_1.sort_spirit_table_by_sort_panel = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L2_2 = 1
  L3_2 = #A1_2
  L4_2 = 1
  for L5_2 = L2_2, L3_2, L4_2 do
    L6_2 = L0_1.is_same_spirit
    L7_2 = A0_2
    L8_2 = A1_2[L5_2]
    L6_2 = L6_2(L7_2, L8_2)
    if L6_2 then
      return L5_2
    end
  end
  L2_2 = nil
  return L2_2
end
L0_1.get_spirit_index = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2
  if A0_2 == nil or A1_2 == nil then
    L2_2 = false
    return L2_2
  end
  L2_2 = A0_2.ID
  L3_2 = A1_2.ID
  L2_2 = L2_2 == L3_2
  return L2_2
end
L0_1.is_same_spirit = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  function L2_2(A0_3, A1_3)
    local L2_3, L3_3, L4_3, L5_3
    L2_3 = A0_3.SkillRarity
    L3_3 = A1_3.SkillRarity
    if L2_3 ~= L3_3 then
      L2_3 = L0_1._compare_by_value
      L3_3 = A1_2
      L4_3 = A0_3.SkillRarity
      L5_3 = A1_3.SkillRarity
      return L2_3(L3_3, L4_3, L5_3)
    else
      L2_3 = A0_3.BelongAetherMonsterAvatarID
      if L2_3 == 0 then
        L2_3 = A1_3.BelongAetherMonsterAvatarID
        if L2_3 ~= 0 then
          goto lbl_24
        end
      end
      L2_3 = A0_3.BelongAetherMonsterAvatarID
      if L2_3 ~= 0 then
        L2_3 = A1_3.BelongAetherMonsterAvatarID
        ::lbl_24::
        if L2_3 == 0 then
          L2_3 = A0_3.BelongAetherMonsterAvatarID
          L2_3 = L2_3 ~= 0
          return L2_3
      end
      else
        L2_3 = A0_3.PassiveSkillType
        L3_3 = A1_3.PassiveSkillType
        if L2_3 ~= L3_3 then
          L2_3 = L0_1._compare_by_value
          L3_3 = A1_2
          L3_3 = not L3_3
          L4_3 = A0_3.PassiveSkillType
          L4_3 = #L4_3
          L5_3 = A1_3.PassiveSkillType
          L5_3 = #L5_3
          return L2_3(L3_3, L4_3, L5_3)
        else
          L2_3 = A0_3.ConfigID
          L3_3 = A1_3.ConfigID
          if L2_3 == L3_3 then
            L2_3 = A0_3.BelongAetherMonsterAvatarID
            L3_3 = A1_3.BelongAetherMonsterAvatarID
            L2_3 = L2_3 > L3_3
            return L2_3
          end
        end
      end
    end
    L2_3 = A0_3.ConfigID
    L3_3 = A1_3.ConfigID
    L2_3 = L2_3 < L3_3
    return L2_3
  end
  L3_2 = table
  L3_2 = L3_2.sort
  L4_2 = A0_2
  L5_2 = L2_2
  L3_2(L4_2, L5_2)
end
L0_1.sort_skill_core_table = L2_1
function L2_1(A0_2, A1_2, A2_2)
  local L3_2
  if A0_2 then
    L3_2 = A1_2 < A2_2
    return L3_2
  else
    L3_2 = A2_2 < A1_2
    return L3_2
  end
end
L0_1._compare_by_value = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2
  if A1_2 ~= nil then
    L2_2 = A1_2.Status
    L3_2 = CS
    L3_2 = L3_2.RPG
    L3_2 = L3_2.Client
    L3_2 = L3_2.MonsterAvatarSkillSlotStatus
    L3_2 = L3_2.Equipped
    if L2_2 ~= L3_2 then
      L2_2 = false
      return L2_2
    end
  end
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.Client
  L2_2 = L2_2.GlobalVars
  L2_2 = L2_2.s_ModuleManager
  L2_2 = L2_2.InventoryModule
  L3_2 = {}
  L4_2 = CS
  L4_2 = L4_2.RPG
  L4_2 = L4_2.GameCore
  L4_2 = L4_2.ItemSubType
  L4_2 = L4_2.AetherSkill
  L3_2[1] = L4_2
  L5_2 = L2_2
  L4_2 = L2_2.GetItemsBySubTypes
  L6_2 = L3_2
  L4_2 = L4_2(L5_2, L6_2)
  L5_2 = {}
  L6_2 = 0
  L7_2 = L4_2.Count
  L7_2 = L7_2 - 1
  L8_2 = 1
  for L9_2 = L6_2, L7_2, L8_2 do
    L10_2 = CS
    L10_2 = L10_2.RPG
    L10_2 = L10_2.GameCore
    L10_2 = L10_2.AetherDividePassiveSkillExcelTable
    L10_2 = L10_2.GetData
    L11_2 = L4_2[L9_2]
    L11_2 = L11_2.ConfigID
    L10_2 = L10_2(L11_2)
    if L10_2 ~= nil then
      L10_2 = table
      L10_2 = L10_2.insert
      L11_2 = L5_2
      L12_2 = L4_2[L9_2]
      L10_2(L11_2, L12_2)
    end
  end
  L6_2 = 1
  L7_2 = #L5_2
  L8_2 = 1
  for L9_2 = L6_2, L7_2, L8_2 do
    L10_2 = L5_2[L9_2]
    L11_2 = L10_2.PassiveSkillType
    if L11_2 == A0_2 then
      L11_2 = L10_2.BelongAetherMonsterAvatarID
      if L11_2 == 0 then
        L11_2 = true
        return L11_2
      end
    end
  end
  L6_2 = false
  return L6_2
end
L0_1.check_is_passvie_skill_slot_can_equip = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = nil
  if A0_2 == 5 then
    L1_2 = "#ffcf70"
  elseif A0_2 == 4 then
    L1_2 = "#c197ff"
  elseif A0_2 == 3 then
    L1_2 = "#73b0f4"
  elseif A0_2 == 2 then
    L1_2 = "#6ee0b6"
  else
    L1_2 = "#cdcdd8"
  end
  L2_2 = G
  L2_2 = L2_2.UIColorUtils
  L2_2 = L2_2.GetColor
  L3_2 = L1_2
  return L2_2(L3_2)
end
L0_1.get_color_by_rarity = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2
  L2_2 = {}
  L3_2 = nil
  if A1_2 then
    L3_2 = A0_2.SimpleExtraEffectIDList
  else
    L3_2 = A0_2.ExtraEffectIDList
  end
  L4_2 = CS
  L4_2 = L4_2.RPG
  L4_2 = L4_2.GameCore
  L4_2 = L4_2.ExtraEffectExcelTable
  L5_2 = 0
  L6_2 = L3_2.Length
  L6_2 = L6_2 - 1
  L7_2 = 1
  for L8_2 = L5_2, L6_2, L7_2 do
    L9_2 = L3_2[L8_2]
    L10_2 = L4_2.GetData
    L11_2 = L9_2
    L10_2 = L10_2(L11_2)
    L11_2 = {}
    L12_2 = L10_2.ExtraEffectName
    L11_2.Name = L12_2
    L12_2 = L10_2.ExtraEffectDesc
    L11_2.Desc = L12_2
    L12_2 = table
    L12_2 = L12_2.pack
    L13_2 = G
    L13_2 = L13_2.UITextUtils
    L13_2 = L13_2.GetSkillParams
    L14_2 = L10_2.DescParamList
    L13_2, L14_2 = L13_2(L14_2)
    L12_2 = L12_2(L13_2, L14_2)
    L11_2.DescParam = L12_2
    L12_2 = table
    L12_2 = L12_2.insert
    L13_2 = L2_2
    L14_2 = L11_2
    L12_2(L13_2, L14_2)
  end
  return L2_2
end
L0_1.get_proper_noun_table_by_spirit_skill_row = L2_1
return L0_1
