local L0_1, L1_1, L2_1
L0_1 = G
L0_1 = L0_1.StaticClass
L1_1 = "ChessRogueAnimationTypeFactory"
L0_1 = L0_1(L1_1)
L1_1 = CS
L1_1 = L1_1.RPG
L1_1 = L1_1.GameCore
L1_1 = L1_1.ChessRogueBoardAnimationType
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.GameCore
  L2_2 = L2_2.RogueDLCChessBoardAnimationExcelTable
  L2_2 = L2_2.GetData
  L3_2 = A0_2
  L4_2 = A1_2
  L2_2 = L2_2(L3_2, L4_2)
  if L2_2 == nil then
    L3_2 = nil
    return L3_2
  end
  L3_2 = L2_2.AnimationType
  L3_2 = #L3_2
  L4_2 = L2_2.NeedCheckCoinChange
  return L3_2, L4_2
end
L0_1.get_animation_type_for_dice_effect = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = {}
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.GameCore
  L2_2 = L2_2.ModifierEffectType
  L2_2 = L2_2.ExtraMarkAndRandomSwap
  L2_2 = #L2_2
  L3_2 = L1_1.MarkTypeFadeIn
  L3_2 = #L3_2
  L1_2[L2_2] = L3_2
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.GameCore
  L2_2 = L2_2.ModifierEffectType
  L2_2 = L2_2.ProtectCellNoCollapse
  L2_2 = #L2_2
  L3_2 = L1_1.Preservation
  L3_2 = #L3_2
  L1_2[L2_2] = L3_2
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.GameCore
  L2_2 = L2_2.ModifierEffectType
  L2_2 = L2_2.ExtraMoneyAndRandomSwap
  L2_2 = #L2_2
  L3_2 = L1_1.Remembrance
  L3_2 = #L3_2
  L1_2[L2_2] = L3_2
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.GameCore
  L2_2 = L2_2.ModifierEffectType
  L2_2 = L2_2.ReRandomEmptyCell
  L2_2 = #L2_2
  L3_2 = L1_1.Nihility
  L3_2 = #L3_2
  L1_2[L2_2] = L3_2
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.GameCore
  L2_2 = L2_2.ModifierEffectType
  L2_2 = L2_2.FertileAeonGain
  L2_2 = #L2_2
  L3_2 = L1_1.Abundance
  L3_2 = #L3_2
  L1_2[L2_2] = L3_2
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.GameCore
  L2_2 = L2_2.ModifierEffectType
  L2_2 = L2_2.DestroyAeonGain
  L2_2 = #L2_2
  L3_2 = L1_1.DestructionChange
  L3_2 = #L3_2
  L1_2[L2_2] = L3_2
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.GameCore
  L2_2 = L2_2.ModifierEffectType
  L2_2 = L2_2.GetHelpOnEnterCell
  L2_2 = #L2_2
  L3_2 = L1_1.Elation
  L3_2 = #L3_2
  L1_2[L2_2] = L3_2
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.GameCore
  L2_2 = L2_2.ModifierEffectType
  L2_2 = L2_2.RandomGenSwarm
  L2_2 = #L2_2
  L3_2 = L1_1.Propagation
  L3_2 = #L3_2
  L1_2[L2_2] = L3_2
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.GameCore
  L2_2 = L2_2.ModifierEffectType
  L2_2 = L2_2.StartBoardSetMarkType
  L2_2 = #L2_2
  L3_2 = L1_1.MarkTypeFadeIn
  L3_2 = #L3_2
  L1_2[L2_2] = L3_2
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.GameCore
  L2_2 = L2_2.ModifierEffectType
  L2_2 = L2_2.StartBoardRandomSetMarkType
  L2_2 = #L2_2
  L3_2 = L1_1.MarkTypeFadeIn
  L3_2 = #L3_2
  L1_2[L2_2] = L3_2
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.GameCore
  L2_2 = L2_2.ModifierEffectType
  L2_2 = L2_2.StartBoardRandomSetSpecialType
  L2_2 = #L2_2
  L3_2 = L1_1.Erudition
  L3_2 = #L3_2
  L1_2[L2_2] = L3_2
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.GameCore
  L2_2 = L2_2.ModifierEffectType
  L2_2 = L2_2.StartBoardRandomSetBlockType
  L2_2 = #L2_2
  L3_2 = L1_1.EruditionChange
  L3_2 = #L3_2
  L1_2[L2_2] = L3_2
  L2_2 = L1_2[A0_2]
  return L2_2
end
L0_1.get_animation_type_for_start_effect = L2_1
function L2_1(A0_2)
  local L1_2
  if A0_2 == nil then
    L1_2 = L1_1.Normal
    L1_2 = #L1_2
    return L1_2
  end
  L1_2 = CS
  L1_2 = L1_2.DKKGDJEEEBN
  L1_2 = L1_2.CJJJENDFBIH
  if A0_2 == L1_2 then
    L1_2 = L1_1.Remembrance
    L1_2 = #L1_2
    return L1_2
  else
    L1_2 = CS
    L1_2 = L1_2.DKKGDJEEEBN
    L1_2 = L1_2.FNIOICEPOFE
    if A0_2 == L1_2 then
      L1_2 = L1_1.Abundance
      L1_2 = #L1_2
      return L1_2
    else
      L1_2 = CS
      L1_2 = L1_2.DKKGDJEEEBN
      L1_2 = L1_2.OKFNLJOJJIL
      if A0_2 == L1_2 then
        L1_2 = L1_1.Preservation
        L1_2 = #L1_2
        return L1_2
      else
        L1_2 = CS
        L1_2 = L1_2.DKKGDJEEEBN
        L1_2 = L1_2.IHMBDAGOHEE
        if A0_2 == L1_2 then
          L1_2 = L1_1.TheHunt
          L1_2 = #L1_2
          return L1_2
        else
          L1_2 = CS
          L1_2 = L1_2.DKKGDJEEEBN
          L1_2 = L1_2.JBDJKGBDAPF
          if A0_2 == L1_2 then
            L1_2 = L1_1.Erudition
            L1_2 = #L1_2
            return L1_2
          end
        end
      end
    end
  end
  L1_2 = L1_1.Normal
  L1_2 = #L1_2
  return L1_2
end
L0_1.get_animation_type_for_cell_special_type = L2_1
return L0_1
