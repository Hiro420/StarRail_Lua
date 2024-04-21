local L0_1, L1_1, L2_1, L3_1, L4_1
L0_1 = require
L1_1 = "Utilities.ConstValueUtils"
L0_1(L1_1)
L0_1 = CS
L0_1 = L0_1.RPG
L0_1 = L0_1.Client
L0_1 = L0_1.GlobalVars
L0_1 = L0_1.s_ModuleManager
L0_1 = L0_1.ActivityClockParkModule
L1_1 = CS
L1_1 = L1_1.RPG
L1_1 = L1_1.Client
L1_1 = L1_1.ClockParkAttributeType
L2_1 = CS
L2_1 = L2_1.RPG
L2_1 = L2_1.Client
L2_1 = L2_1.ClockParkGameStateEnum
L3_1 = G
L3_1 = L3_1.StaticClass
L4_1 = "ActivityClockParkUtils"
L3_1 = L3_1(L4_1)
function L4_1(A0_2)
  local L1_2
  L1_2 = L0_1
  if L1_2 ~= nil then
    L1_2 = L0_1.ClockParkInstance
    if L1_2 ~= nil then
      goto lbl_9
    end
  end
  L1_2 = 0
  do return L1_2 end
  ::lbl_9::
  L1_2 = L0_1.ClockParkInstance
  L1_2 = L1_2.BuffInfo
  L1_2 = L1_2.EffectResult
  L1_2 = L1_2.AttributeMultiplier
  L1_2 = L1_2[A0_2]
  return L1_2
end
L3_1.get_buff_attribute_multiplier_ratio = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = L0_1
  if L1_2 ~= nil then
    L1_2 = L0_1.ClockParkInstance
    if L1_2 ~= nil then
      goto lbl_9
    end
  end
  L1_2 = 0
  do return L1_2 end
  ::lbl_9::
  L1_2 = L3_1.get_attribute_change_from_effect_result
  L2_2 = L0_1.ClockParkInstance
  L2_2 = L2_2.BuffInfo
  L2_2 = L2_2.EffectResult
  L3_2 = A0_2
  return L1_2(L2_2, L3_2)
end
L3_1.get_buff_attribute_change = L4_1
function L4_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  if A0_2 ~= nil then
    L2_2 = A0_2.AttributeChange
    if L2_2 ~= nil then
      L2_2 = A0_2.AttributeChange
      L3_2 = L2_2
      L2_2 = L2_2.ContainsKey
      L4_2 = A1_2
      L2_2 = L2_2(L3_2, L4_2)
      if L2_2 then
        goto lbl_14
      end
    end
  end
  L2_2 = 0
  do return L2_2 end
  ::lbl_14::
  L2_2 = A0_2.AttributeChange
  L2_2 = L2_2[A1_2]
  return L2_2
end
L3_1.get_attribute_change_from_effect_result = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = L3_1.get_cur_attribute
  L2_2 = A0_2
  L1_2 = L1_2(L2_2)
  L2_2 = L3_1.get_attribute_effect
  L3_2 = A0_2
  L2_2 = L2_2(L3_2)
  L1_2 = L1_2 + L2_2
  return L1_2
end
L3_1.get_predict_round_finish_attribute = L4_1
function L4_1(A0_2)
  local L1_2
  L1_2 = L0_1
  if L1_2 ~= nil then
    L1_2 = L0_1.ClockParkInstance
    if L1_2 ~= nil then
      goto lbl_9
    end
  end
  L1_2 = 0
  do return L1_2 end
  ::lbl_9::
  L1_2 = L0_1.ClockParkInstance
  L1_2 = L1_2.AttributeInfo
  L1_2 = L1_2.AttributeItemsDict
  L1_2 = L1_2[A0_2]
  L1_2 = L1_2.Value
  return L1_2
end
L3_1.get_cur_attribute = L4_1
function L4_1(A0_2)
  local L1_2
  L1_2 = L0_1
  if L1_2 ~= nil then
    L1_2 = L0_1.ClockParkInstance
    if L1_2 ~= nil then
      goto lbl_9
    end
  end
  L1_2 = 0
  do return L1_2 end
  ::lbl_9::
  L1_2 = L0_1.ClockParkInstance
  L1_2 = L1_2.AttributeInfo
  L1_2 = L1_2.AttributeItemsDict
  L1_2 = L1_2[A0_2]
  return L1_2
end
L3_1.get_attribute_item = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = L0_1
  if L1_2 ~= nil then
    L1_2 = L0_1.ClockParkInstance
    if L1_2 ~= nil then
      goto lbl_9
    end
  end
  L1_2 = 0
  do return L1_2 end
  ::lbl_9::
  L1_2 = L0_1.ClockParkInstance
  L1_2 = L1_2.ActionInfo
  L1_2 = L1_2.OnCardEffectResult
  L2_2 = L0_1.ClockParkInstance
  L2_2 = L2_2.ActionInfo
  L2_2 = L2_2.OnCardSuccessEffectResult
  L3_2 = L3_1.get_attribute_change_from_effect_result
  L4_2 = L1_2
  L5_2 = A0_2
  L3_2 = L3_2(L4_2, L5_2)
  L4_2 = L3_1.get_attribute_change_from_effect_result
  L5_2 = L2_2
  L6_2 = A0_2
  L4_2 = L4_2(L5_2, L6_2)
  L3_2 = L3_2 + L4_2
  L4_2 = L3_1.get_buff_attribute_change
  L5_2 = A0_2
  L4_2 = L4_2(L5_2)
  L4_2 = L3_2 + L4_2
  return L4_2
end
L3_1.get_attribute_effect = L4_1
function L4_1()
  local L0_2, L1_2
  L0_2 = L3_1._attribute_types
  if L0_2 == nil then
    L0_2 = G
    L0_2 = L0_2.Utils
    L0_2 = L0_2.create_lua_table_from_cs_list
    L1_2 = CS
    L1_2 = L1_2.RPG
    L1_2 = L1_2.Client
    L1_2 = L1_2.ClockParkAttributeInfo
    L1_2 = L1_2.AttributeTypeList
    L0_2 = L0_2(L1_2)
    L3_1._attribute_types = L0_2
  end
  L0_2 = L3_1._attribute_types
  return L0_2
end
L3_1.get_attribute_types = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = L0_1
  if L1_2 ~= nil then
    L1_2 = L0_1.ClockParkInstance
    if L1_2 ~= nil then
      goto lbl_9
    end
  end
  L1_2 = nil
  do return L1_2 end
  ::lbl_9::
  L1_2 = L0_1.ClockParkInstance
  L2_2 = L1_2
  L1_2 = L1_2.GetState
  L3_2 = A0_2
  return L1_2(L2_2, L3_2)
end
L3_1.get_state = L4_1
function L4_1()
  local L0_2, L1_2
  L0_2 = false
  return L0_2
end
L3_1.is_state_near_check = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L1_2 = {}
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.GameCore
  L2_2 = L2_2.ClockParkLotteryExcelTable
  L2_2 = L2_2.GetData
  L3_2 = A0_2
  L2_2 = L2_2(L3_2)
  if L2_2 ~= nil then
    L3_2 = L2_2.LotteryAttributeGain
    L3_2 = L3_2.AttributeA
    if 0 < L3_2 then
      L3_2 = table
      L3_2 = L3_2.insert
      L4_2 = L1_2
      L5_2 = L3_1._create_single_reward_attribute
      L6_2 = L1_1.A
      L7_2 = L2_2.LotteryAttributeGain
      L7_2 = L7_2.AttributeA
      L5_2, L6_2, L7_2 = L5_2(L6_2, L7_2)
      L3_2(L4_2, L5_2, L6_2, L7_2)
    end
    L3_2 = L2_2.LotteryAttributeGain
    L3_2 = L3_2.AttributeB
    if 0 < L3_2 then
      L3_2 = table
      L3_2 = L3_2.insert
      L4_2 = L1_2
      L5_2 = L3_1._create_single_reward_attribute
      L6_2 = L1_1.B
      L7_2 = L2_2.LotteryAttributeGain
      L7_2 = L7_2.AttributeB
      L5_2, L6_2, L7_2 = L5_2(L6_2, L7_2)
      L3_2(L4_2, L5_2, L6_2, L7_2)
    end
    L3_2 = L2_2.LotteryAttributeGain
    L3_2 = L3_2.AttributeC
    if 0 < L3_2 then
      L3_2 = table
      L3_2 = L3_2.insert
      L4_2 = L1_2
      L5_2 = L3_1._create_single_reward_attribute
      L6_2 = L1_1.C
      L7_2 = L2_2.LotteryAttributeGain
      L7_2 = L7_2.AttributeC
      L5_2, L6_2, L7_2 = L5_2(L6_2, L7_2)
      L3_2(L4_2, L5_2, L6_2, L7_2)
    end
  end
  return L1_2
end
L3_1.create_attribute_reward_from_lottery = L4_1
function L4_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = {}
  L3_2 = L3_1.get_attribute_item
  L4_2 = A0_2
  L3_2 = L3_2(L4_2)
  L3_2 = L3_2.IconPath
  L2_2.IconPath = L3_2
  L2_2.Count = A1_2
  return L2_2
end
L3_1._create_single_reward_attribute = L4_1
function L4_1()
  local L0_2, L1_2
  L0_2 = CS
  L0_2 = L0_2.RPG
  L0_2 = L0_2.GameCore
  L0_2 = L0_2.ConstValueClientExcelTable
  L0_2 = L0_2.GetData
  L1_2 = "Icon_All_Attribute"
  L0_2 = L0_2(L1_2)
  L0_2 = L0_2.Value
  L0_2 = L0_2.StringValue
  return L0_2
end
L3_1.get_icon_all_attribute = L4_1
L4_1 = {}
L4_1[1] = "SpriteOutput/UI/Quest/ClockPark/ClockParkGamePlayDiceNum1.png"
L4_1[2] = "SpriteOutput/UI/Quest/ClockPark/ClockParkGamePlayDiceNum2.png"
L4_1[3] = "SpriteOutput/UI/Quest/ClockPark/ClockParkGamePlayDiceNum3.png"
L4_1[4] = "SpriteOutput/UI/Quest/ClockPark/ClockParkGamePlayDiceNum4.png"
L4_1[5] = "SpriteOutput/UI/Quest/ClockPark/ClockParkGamePlayDiceNum5.png"
L4_1[6] = "SpriteOutput/UI/Quest/ClockPark/ClockParkGamePlayDiceNum6.png"
L3_1.dice_icon_list = L4_1
L4_1 = {}
L4_1[1] = "SpriteOutput/UI/Quest/ClockPark/IconNextArrowLeft.png"
L4_1[2] = "SpriteOutput/UI/Quest/ClockPark/IconNextArrowFront.png"
L4_1[3] = "SpriteOutput/UI/Quest/ClockPark/IconNextArrowRight.png"
L3_1.dice_special_icon_list = L4_1
function L4_1(A0_2)
  local L1_2, L2_2
  L1_2 = L3_1.is_cur_round_show_special_dice
  L1_2 = L1_2()
  if L1_2 then
    L2_2 = L3_1.dice_special_icon_list
    L2_2 = L2_2[A0_2]
    if not L2_2 then
      L2_2 = ""
    end
    return L2_2
  end
  L2_2 = L3_1.dice_icon_list
  L2_2 = L2_2[A0_2]
  if not L2_2 then
    L2_2 = ""
  end
  return L2_2
end
L3_1.get_dice_icon_path = L4_1
function L4_1()
  local L0_2, L1_2
  L0_2 = L0_1
  if L0_2 ~= nil then
    L0_2 = L0_1.ClockParkInstance
    if L0_2 ~= nil then
      goto lbl_9
    end
  end
  L0_2 = false
  do return L0_2 end
  ::lbl_9::
  L0_2 = L0_1.ClockParkInstance
  L0_2 = L0_2.ScriptInfo
  L0_2 = L0_2.ChapterInfo
  L0_2 = L0_2.RoundInfo
  L0_2 = L0_2.DiceSpecialDisplay
  return L0_2
end
L3_1.is_cur_round_show_special_dice = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = math
  L1_2 = L1_2.max
  L2_2 = 0
  L3_2 = A0_2.CardValue
  L4_2 = A0_2.SlotInfo
  L5_2 = L4_2
  L4_2 = L4_2.GetAllDiceTotalValue
  L4_2 = L4_2(L5_2)
  L3_2 = L3_2 - L4_2
  return L1_2(L2_2, L3_2)
end
L3_1.get_ground_card_value_param = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L1_2 = A0_2.EffectResult
  L2_2 = A0_2.SuccessEffectResult
  L3_2 = pairs
  L4_2 = L3_1.get_attribute_types
  L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2 = L4_2()
  L3_2, L4_2, L5_2 = L3_2(L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2)
  for L6_2, L7_2 in L3_2, L4_2, L5_2 do
    L9_2 = L1_2
    L8_2 = L1_2.HasPositiveEffect
    L10_2 = L7_2
    L8_2 = L8_2(L9_2, L10_2)
    if not L8_2 then
      L9_2 = L2_2
      L8_2 = L2_2.HasPositiveEffect
      L10_2 = L7_2
      L8_2 = L8_2(L9_2, L10_2)
      if not L8_2 then
        goto lbl_20
      end
    end
    L8_2 = true
    do return L8_2 end
    ::lbl_20::
  end
  L3_2 = false
  return L3_2
end
L3_1.has_positive_effect = L4_1
function L4_1()
  local L0_2, L1_2
  L0_2 = G
  L0_2 = L0_2.ConstValueUtils
  L0_2 = L0_2.get_uint_value
  L1_2 = "Activity_Quest_Reward_ID_Limited"
  return L0_2(L1_2)
end
L3_1.get_time_limit_activity_reward_id = L4_1
function L4_1()
  local L0_2, L1_2
  L0_2 = G
  L0_2 = L0_2.ConstValueUtils
  L0_2 = L0_2.get_uint_value
  L1_2 = "Activity_Quest_Reward_ID_Resident"
  return L0_2(L1_2)
end
L3_1.get_resident_activity_reward_id = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2
  if A0_2 ~= nil then
    L1_2 = A0_2.ChapterStoryIDList
    L2_2 = L1_2.Length
    if 0 < L2_2 then
      L2_2 = CS
      L2_2 = L2_2.RPG
      L2_2 = L2_2.GameCore
      L2_2 = L2_2.ClockParkStoryExcelTable
      L2_2 = L2_2.GetData
      L3_2 = L1_2[0]
      return L2_2(L3_2)
    end
  end
end
L3_1.get_story_row_from_chapter_row = L4_1
L3_1._use_simplified_value = true
function L4_1(A0_2)
  local L1_2
  L1_2 = A0_2 or nil
  if not A0_2 then
    L1_2 = false
  end
  L3_1._use_simplified_value = L1_2
end
L3_1.set_use_simplified_value = L4_1
function L4_1()
  local L0_2, L1_2
  L0_2 = L3_1._use_simplified_value
  return L0_2
end
L3_1.is_use_simplified_value = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2
  if A0_2 == 0 then
    L1_2 = 0
    return L1_2
  end
  L1_2 = 0 < A0_2
  L2_2 = math
  L2_2 = L2_2.abs
  L3_2 = A0_2
  L2_2 = L2_2(L3_2)
  if L2_2 <= 2 then
    if L1_2 then
      L3_2 = 1
      if L3_2 then
        goto lbl_21
      end
    end
    L3_2 = -1
    ::lbl_21::
    return L3_2
  end
  if L2_2 <= 4 then
    if L1_2 then
      L3_2 = 2
      if L3_2 then
        goto lbl_30
      end
    end
    L3_2 = -2
    ::lbl_30::
    return L3_2
  end
  if L2_2 <= 6 then
    if L1_2 then
      L3_2 = 3
      if L3_2 then
        goto lbl_39
      end
    end
    L3_2 = -3
    ::lbl_39::
    return L3_2
  end
  if L1_2 then
    L3_2 = 4
    if L3_2 then
      goto lbl_46
    end
  end
  L3_2 = -4
  ::lbl_46::
  return L3_2
end
L3_1.get_simplified_value = L4_1
function L4_1(A0_2, A1_2)
  local L2_2
  L2_2 = A1_2 ~= nil and 6 < A1_2
  return L2_2
end
L3_1.show_value_max_hint = L4_1
L4_1 = {}
L4_1[5] = "UIText_ActivityCommon_RankSS"
L4_1[4] = "UIText_ActivityCommon_RankS"
L4_1[3] = "UIText_ActivityCommon_RankA"
L4_1[2] = "UIText_ActivityCommon_RankB"
L4_1[1] = "UIText_ActivityCommon_RankC"
L3_1._rank_to_textID = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = L3_1.get_rank_index
  L2_2 = A0_2
  L1_2 = L1_2(L2_2)
  L2_2 = math
  L2_2 = L2_2.max
  L3_2 = L1_2
  L4_2 = 1
  L2_2 = L2_2(L3_2, L4_2)
  L1_2 = L2_2
  L2_2 = math
  L2_2 = L2_2.min
  L3_2 = L1_2
  L4_2 = L3_1._rank_to_textID
  L4_2 = #L4_2
  L2_2 = L2_2(L3_2, L4_2)
  L1_2 = L2_2
  L2_2 = L3_1._rank_to_textID
  L2_2 = L2_2[L1_2]
  return L2_2
end
L3_1.get_rank = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L1_2 = L3_1.get_endless_rank_config
  L1_2 = L1_2()
  L2_2 = 1
  if L1_2 ~= nil then
    L3_2 = #L1_2
    if 0 < L3_2 then
      L3_2 = pairs
      L4_2 = L1_2
      L3_2, L4_2, L5_2 = L3_2(L4_2)
      for L6_2, L7_2 in L3_2, L4_2, L5_2 do
        if L7_2 <= A0_2 then
          L2_2 = L6_2 + 1
        end
      end
    end
  end
  return L2_2
end
L3_1.get_rank_index = L4_1
function L4_1()
  local L0_2, L1_2
  L0_2 = G
  L0_2 = L0_2.ConstValueUtils
  L0_2 = L0_2.get_uint_array
  L1_2 = "Endless_Score_Rank_List"
  return L0_2(L1_2)
end
L3_1.get_endless_rank_config = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = L3_1.get_endless_score_config
  L1_2 = L1_2()
  if L1_2 ~= nil then
    L2_2 = #L1_2
    if 0 < L2_2 then
      L2_2 = L1_2[1]
      L3_2 = L2_2 * A0_2
      return L3_2
    end
  end
  L2_2 = 0
  return L2_2
end
L3_1.get_endless_round_score = L4_1
function L4_1()
  local L0_2, L1_2
  L0_2 = G
  L0_2 = L0_2.ConstValueUtils
  L0_2 = L0_2.get_uint_array
  L1_2 = "Endless_Score_Param_List"
  return L0_2(L1_2)
end
L3_1.get_endless_score_config = L4_1
return L3_1
