local L0_1, L1_1, L2_1
L0_1 = G
L0_1 = L0_1.StaticClass
L1_1 = "ActivityMonopolyUtils"
L0_1 = L0_1(L1_1)
L1_1 = CS
L1_1 = L1_1.RPG
L1_1 = L1_1.Client
L1_1 = L1_1.GlobalVars
L1_1 = L1_1.s_ModuleManager
L1_1 = L1_1.MonopolyModule
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = {}
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.Client
  L2_2 = L2_2.MonopolyUtils
  L2_2 = L2_2.GetMonopolyCurrencyID
  L2_2 = L2_2()
  L3_2 = A0_2.IsOwnedByPlayer
  L3_2 = not L3_2
  L1_2.has_next = L3_2
  L3_2 = L1_2.has_next
  if L3_2 then
    L3_2 = A0_2.DisplayData
    L3_2 = L3_2.Price
    L1_2.item_num = L3_2
    L3_2 = CS
    L3_2 = L3_2.RPG
    L3_2 = L3_2.GameCore
    L3_2 = L3_2.ItemExcelTable
    L3_2 = L3_2.GetData
    L4_2 = L2_2
    L3_2 = L3_2(L4_2)
    L4_2 = L3_2.ItemIconPath
    L1_2.icon_path = L4_2
    L4_2 = L1_1.SystemInfo
    L4_2 = L4_2.CurrencyNum
    L5_2 = L1_2.item_num
    L4_2 = L4_2 >= L5_2
    L1_2.can_buy = L4_2
  end
  return L1_2
end
L0_1.get_buy_asset_currency_display_data = L2_1
function L2_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2.Type
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.Client
  L2_2 = L2_2.MonopolyEffectDisplayEnum
  L2_2 = L2_2.AddBuff
  if L1_2 == L2_2 then
    L1_2 = L0_1._fetch_add_buff_display_data
    L2_2 = A0_2
    return L1_2(L2_2)
  else
    L1_2 = A0_2.Type
    L2_2 = CS
    L2_2 = L2_2.RPG
    L2_2 = L2_2.Client
    L2_2 = L2_2.MonopolyEffectDisplayEnum
    L2_2 = L2_2.AddCurrency
    if L1_2 == L2_2 then
      L1_2 = L0_1._fetch_add_currency_display_data
      L2_2 = A0_2
      return L1_2(L2_2)
    else
      L1_2 = A0_2.Type
      L2_2 = CS
      L2_2 = L2_2.RPG
      L2_2 = L2_2.Client
      L2_2 = L2_2.MonopolyEffectDisplayEnum
      L2_2 = L2_2.ReduceCurrency
      if L1_2 == L2_2 then
        L1_2 = L0_1._fetch_sub_currency_display_data
        L2_2 = A0_2
        return L1_2(L2_2)
      else
        L1_2 = A0_2.Type
        L2_2 = CS
        L2_2 = L2_2.RPG
        L2_2 = L2_2.Client
        L2_2 = L2_2.MonopolyEffectDisplayEnum
        L2_2 = L2_2.AddDice
        if L1_2 == L2_2 then
          L1_2 = L0_1._fetch_add_dice_display_data
          L2_2 = A0_2
          return L1_2(L2_2)
        else
          L1_2 = A0_2.Type
          L2_2 = CS
          L2_2 = L2_2.RPG
          L2_2 = L2_2.Client
          L2_2 = L2_2.MonopolyEffectDisplayEnum
          L2_2 = L2_2.AddCheatDice
          if L1_2 == L2_2 then
            L1_2 = L0_1._fetch_add_cheat_dice_display_data
            L2_2 = A0_2
            return L1_2(L2_2)
          else
            L1_2 = A0_2.Type
            L2_2 = CS
            L2_2 = L2_2.RPG
            L2_2 = L2_2.Client
            L2_2 = L2_2.MonopolyEffectDisplayEnum
            L2_2 = L2_2.AddReRollItem
            if L1_2 == L2_2 then
              L1_2 = L0_1._fetch_add_re_roll_display_data
              L2_2 = A0_2
              return L1_2(L2_2)
            end
          end
        end
      end
    end
  end
end
L0_1.fetch_effect_display_data = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = {}
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.Client
  L2_2 = L2_2.MonopolyUtils
  L2_2 = L2_2.GetMonopolyCurrencyID
  L2_2 = L2_2()
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.GameCore
  L3_2 = L3_2.ItemExcelTable
  L3_2 = L3_2.GetData
  L4_2 = L2_2
  L3_2 = L3_2(L4_2)
  L4_2 = L3_2.ItemIconPath
  L1_2.icon = L4_2
  L4_2 = G
  L4_2 = L4_2.TextmapStatic
  L4_2 = L4_2.GetText
  L5_2 = "UIText_ActivityMonopoly_Event_Tips_AddCoin"
  L6_2 = A0_2.Value
  L4_2 = L4_2(L5_2, L6_2)
  L1_2.txt = L4_2
  L1_2.prefab_index = 0
  return L1_2
end
L0_1._fetch_add_currency_display_data = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = {}
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.Client
  L2_2 = L2_2.MonopolyUtils
  L2_2 = L2_2.GetMonopolyCurrencyID
  L2_2 = L2_2()
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.GameCore
  L3_2 = L3_2.ItemExcelTable
  L3_2 = L3_2.GetData
  L4_2 = L2_2
  L3_2 = L3_2(L4_2)
  L4_2 = L3_2.ItemIconPath
  L1_2.icon = L4_2
  L4_2 = G
  L4_2 = L4_2.TextmapStatic
  L4_2 = L4_2.GetText
  L5_2 = "UIText_ActivityMonopoly_Event_Tips_SubCoin"
  L6_2 = A0_2.Value
  L4_2 = L4_2(L5_2, L6_2)
  L1_2.txt = L4_2
  L1_2.prefab_index = 1
  return L1_2
end
L0_1._fetch_sub_currency_display_data = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L1_2 = {}
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.Client
  L2_2 = L2_2.MonopolyUtils
  L2_2 = L2_2.GetMonopolyDiceID
  L2_2 = L2_2()
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.GameCore
  L3_2 = L3_2.ItemExcelTable
  L3_2 = L3_2.GetData
  L4_2 = L2_2
  L3_2 = L3_2(L4_2)
  L4_2 = L3_2.ItemIconPath
  L1_2.icon = L4_2
  L4_2 = G
  L4_2 = L4_2.TextmapStatic
  L4_2 = L4_2.GetText
  L5_2 = "UIText_ActivityMonopoly_Event_Tips_GetItem"
  L6_2 = A0_2.Value
  L7_2 = G
  L7_2 = L7_2.TextmapStatic
  L7_2 = L7_2.GetText
  L8_2 = L3_2.ItemName
  L7_2, L8_2 = L7_2(L8_2)
  L4_2 = L4_2(L5_2, L6_2, L7_2, L8_2)
  L1_2.txt = L4_2
  L1_2.prefab_index = 2
  return L1_2
end
L0_1._fetch_add_dice_display_data = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L1_2 = {}
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.Client
  L2_2 = L2_2.MonopolyUtils
  L2_2 = L2_2.GetMonopolyCheatDiceID
  L2_2 = L2_2()
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.GameCore
  L3_2 = L3_2.ItemExcelTable
  L3_2 = L3_2.GetData
  L4_2 = L2_2
  L3_2 = L3_2(L4_2)
  L4_2 = L3_2.ItemIconPath
  L1_2.icon = L4_2
  L4_2 = G
  L4_2 = L4_2.TextmapStatic
  L4_2 = L4_2.GetText
  L5_2 = "UIText_ActivityMonopoly_Event_Tips_GetItem"
  L6_2 = A0_2.Value
  L7_2 = G
  L7_2 = L7_2.TextmapStatic
  L7_2 = L7_2.GetText
  L8_2 = L3_2.ItemName
  L7_2, L8_2 = L7_2(L8_2)
  L4_2 = L4_2(L5_2, L6_2, L7_2, L8_2)
  L1_2.txt = L4_2
  L1_2.prefab_index = 2
  return L1_2
end
L0_1._fetch_add_cheat_dice_display_data = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L1_2 = {}
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.Client
  L2_2 = L2_2.MonopolyUtils
  L2_2 = L2_2.GetMonopolyReRollItemID
  L2_2 = L2_2()
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.GameCore
  L3_2 = L3_2.ItemExcelTable
  L3_2 = L3_2.GetData
  L4_2 = L2_2
  L3_2 = L3_2(L4_2)
  L4_2 = L3_2.ItemIconPath
  L1_2.icon = L4_2
  L4_2 = G
  L4_2 = L4_2.TextmapStatic
  L4_2 = L4_2.GetText
  L5_2 = "UIText_ActivityMonopoly_Event_Tips_GetItem"
  L6_2 = A0_2.Value
  L7_2 = G
  L7_2 = L7_2.TextmapStatic
  L7_2 = L7_2.GetText
  L8_2 = L3_2.ItemName
  L7_2, L8_2 = L7_2(L8_2)
  L4_2 = L4_2(L5_2, L6_2, L7_2, L8_2)
  L1_2.txt = L4_2
  L1_2.prefab_index = 2
  return L1_2
end
L0_1._fetch_add_re_roll_display_data = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = {}
  L2_2 = L1_1.BuffInfo
  L2_2 = L2_2.BuffDict
  L3_2 = A0_2.Value
  L2_2 = L2_2[L3_2]
  L3_2 = L2_2.IconPath
  L1_2.icon = L3_2
  L3_2 = G
  L3_2 = L3_2.TextmapStatic
  L3_2 = L3_2.GetText
  L4_2 = "UIText_ActivityMonopoly_Event_Tips_GetBuff"
  L5_2 = G
  L5_2 = L5_2.TextmapStatic
  L5_2 = L5_2.GetText
  L6_2 = L2_2.Name
  L5_2, L6_2 = L5_2(L6_2)
  L3_2 = L3_2(L4_2, L5_2, L6_2)
  L1_2.txt = L3_2
  L1_2.prefab_index = 3
  return L1_2
end
L0_1._fetch_add_buff_display_data = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L2_2 = {}
  L3_2 = 1
  L4_2 = A0_2
  L5_2 = 1
  for L6_2 = L3_2, L4_2, L5_2 do
    L7_2 = CS
    L7_2 = L7_2.RPG
    L7_2 = L7_2.Client
    L7_2 = L7_2.UIRandomUtils
    L7_2 = L7_2.RangeInt
    L8_2 = 1
    L9_2 = #A1_2
    L9_2 = L9_2 + 1
    L7_2 = L7_2(L8_2, L9_2)
    L8_2 = table
    L8_2 = L8_2.insert
    L9_2 = L2_2
    L10_2 = A1_2[L7_2]
    L8_2(L9_2, L10_2)
  end
  return L2_2
end
L0_1.create_gacha_random_sequence = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  if A0_2 ~= nil then
    L1_2 = #A0_2
    if L1_2 ~= 0 then
      goto lbl_8
    end
  end
  L1_2 = 0
  do return L1_2 end
  ::lbl_8::
  L1_2 = 1
  L2_2 = nil
  L3_2 = {}
  L4_2 = ipairs
  L5_2 = A0_2
  L4_2, L5_2, L6_2 = L4_2(L5_2)
  for L7_2, L8_2 in L4_2, L5_2, L6_2 do
    L9_2 = L3_2[L8_2]
    if L9_2 == nil then
      L9_2 = 0
    end
    L9_2 = L9_2 + 1
    L3_2[L8_2] = L9_2
    if L1_2 < L9_2 then
      L1_2 = L9_2
      L2_2 = L8_2
    end
  end
  L4_2 = L1_2
  L5_2 = L2_2
  return L4_2, L5_2
end
L0_1.get_numbers_max_same = L2_1
function L2_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L0_2 = {}
  L1_2 = L0_1._get_on_going_game_data
  L1_2 = L1_2()
  if L1_2 then
    L2_2 = table
    L2_2 = L2_2.insert
    L3_2 = L0_2
    L4_2 = L1_2
    L2_2(L3_2, L4_2)
  end
  L2_2 = L0_1._get_on_going_quiz_data
  L2_2 = L2_2()
  L3_2 = ipairs
  L4_2 = L2_2
  L3_2, L4_2, L5_2 = L3_2(L4_2)
  for L6_2, L7_2 in L3_2, L4_2, L5_2 do
    L8_2 = table
    L8_2 = L8_2.insert
    L9_2 = L0_2
    L10_2 = L7_2
    L8_2(L9_2, L10_2)
  end
  return L0_2
end
L0_1.get_on_going_event_display_data = L2_1
function L2_1()
  local L0_2, L1_2, L2_2
  L0_2 = L1_1.GameInfo
  L0_2 = L0_2.CurGuessRow
  if L0_2 == nil then
    return
  end
  L1_2 = {}
  L2_2 = L0_2.GameIcon
  L1_2.IconPath = L2_2
  L2_2 = L0_2.Name
  L1_2.CellName = L2_2
  L2_2 = L0_2.IntroDesc
  L1_2.CellDesc = L2_2
  return L1_2
end
L0_1._get_on_going_game_data = L2_1
function L2_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2
  L0_2 = {}
  L1_2 = 0
  L2_2 = L1_1.GameInfo
  L2_2 = L2_2.DoingQuizIDs
  L2_2 = L2_2.Count
  L2_2 = L2_2 - 1
  L3_2 = 1
  for L4_2 = L1_2, L2_2, L3_2 do
    L5_2 = L1_1.GameInfo
    L5_2 = L5_2.DoingQuizIDs
    L5_2 = L5_2[L4_2]
    L6_2 = L1_1.GameInfo
    L6_2 = L6_2.QuizDatas
    L6_2 = L6_2[L5_2]
    L7_2 = table
    L7_2 = L7_2.insert
    L8_2 = L0_2
    L9_2 = {}
    L10_2 = L1_1.GameInfo
    L10_2 = L10_2.QuizDisplayRow
    L10_2 = L10_2.GameIcon
    L9_2.IconPath = L10_2
    L10_2 = G
    L10_2 = L10_2.TextmapStatic
    L10_2 = L10_2.GetText
    L11_2 = L1_1.GameInfo
    L11_2 = L11_2.QuizDisplayRow
    L11_2 = L11_2.Name
    L12_2 = G
    L12_2 = L12_2.TextmapStatic
    L12_2 = L12_2.GetText
    L13_2 = L6_2.Row
    L13_2 = L13_2.QuizName
    L12_2, L13_2 = L12_2(L13_2)
    L10_2 = L10_2(L11_2, L12_2, L13_2)
    L9_2.CellName = L10_2
    L10_2 = G
    L10_2 = L10_2.TextmapStatic
    L10_2 = L10_2.GetText
    L11_2 = L1_1.GameInfo
    L11_2 = L11_2.QuizDisplayRow
    L11_2 = L11_2.IntroDesc
    L12_2 = L6_2.RemainTurn
    L10_2 = L10_2(L11_2, L12_2)
    L9_2.CellDesc = L10_2
    L7_2(L8_2, L9_2)
  end
  return L0_2
end
L0_1._get_on_going_quiz_data = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L3_2 = A0_2
  L2_2 = A0_2.SafeSetTextID
  L4_2 = "UIText_CommonValueShow_AutomatiConversion"
  L5_2 = A1_2
  L2_2(L3_2, L4_2, L5_2)
end
L0_1.set_text_value_in_thousands = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.GameCore
  L1_2 = L1_2.ConstValueClientExcelTable
  L1_2 = L1_2.GetData
  L2_2 = "Monopoly_Activity_Quiz_PlayerID"
  L1_2 = L1_2(L2_2)
  L1_2 = L1_2.Value
  L1_2 = L1_2.UintValue
  if A0_2 == L1_2 then
    L2_2 = CS
    L2_2 = L2_2.RPG
    L2_2 = L2_2.Client
    L2_2 = L2_2.GlobalVars
    L2_2 = L2_2.s_ModuleManager
    L2_2 = L2_2.PlayerModule
    L2_2 = L2_2.PlayerData
    L2_2 = L2_2.HeroAvatarInfoData
    L3_2 = L2_2
    L2_2 = L2_2.GetCurrentHeroBasicType
    L2_2 = L2_2(L3_2)
    L3_2 = CS
    L3_2 = L3_2.RPG
    L3_2 = L3_2.GameCore
    L3_2 = L3_2.AvatarExcelTable
    L3_2 = L3_2.GetData
    L4_2 = #L2_2
    L3_2 = L3_2(L4_2)
    L4_2 = L3_2.AvatarSideIconPath
    return L4_2
  end
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.GameCore
  L2_2 = L2_2.MonopolyQuizPlayerConfigExcelTable
  L2_2 = L2_2.GetData
  L3_2 = A0_2
  L2_2 = L2_2(L3_2)
  L3_2 = L2_2.IconPath
  return L3_2
end
L0_1.get_quiz_player_icon = L2_1
return L0_1
