local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1, L6_1
L0_1 = require
L1_1 = "Ui.RogueCommon.Enum.RogueEnum"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.StaticClass
L1_1 = "RogueTalkUtils"
L0_1 = L0_1(L1_1)
L1_1 = CS
L1_1 = L1_1.RPG
L1_1 = L1_1.GameCore
L1_1 = L1_1.ConstValueCommonExcelTable
L1_1 = L1_1.GetData
L2_1 = "SimpleTalk_Text_IntervalTime"
L1_1 = L1_1(L2_1)
L1_1 = L1_1.Value
L1_1 = L1_1.IntValue
L2_1 = CS
L2_1 = L2_1.RPG
L2_1 = L2_1.GameCore
L2_1 = L2_1.ConstValueCommonExcelTable
L2_1 = L2_1.GetData
L3_1 = "SimpleTalk_Voice_IntervalTime"
L2_1 = L2_1(L3_1)
L2_1 = L2_1.Value
L2_1 = L2_1.IntValue
L3_1 = "ActionGroupTextmapID_ActionGroup_Select"
L4_1 = {}
L4_1.simple_talk = 1
L4_1.option_talk = 2
L4_1.simple_talk_gen_by_option = 3
L5_1 = {}
L5_1.default = 1
L5_1.unlock = 2
function L6_1()
  local L0_2, L1_2
  L0_2 = {}
  L0_2.has_sth_to_print = false
  L0_2.last_played_index = 0
  L0_2.total_simple_talks = 0
  return L0_2
end
L0_1.construct_talk_data = L6_1
function L6_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = L0_1._construct_simple_talk_data
  L3_2 = A0_2
  L2_2 = L2_2(L3_2)
  L3_2 = #L2_2
  if L3_2 == 0 then
    return
  end
  L3_2 = G
  L3_2 = L3_2.Utils
  L3_2 = L3_2.table_merge
  L4_2 = L2_2
  L5_2 = A1_2
  L3_2(L4_2, L5_2)
  A1_2.has_sth_to_print = true
  L3_2 = A1_2.total_simple_talks
  L4_2 = #L2_2
  L3_2 = L3_2 + L4_2
  A1_2.total_simple_talks = L3_2
  return A1_2
end
L0_1.add_new_simple_talk_to = L6_1
function L6_1(A0_2)
  local L1_2, L2_2
  L1_2 = L0_1._is_simple_option_in_random_evt
  L2_2 = A0_2
  return L1_2(L2_2)
end
L0_1.is_simple_option_in_random_evt = L6_1
function L6_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = L0_1.construct_random_event_data
  L3_2 = A0_2
  L2_2 = L2_2(L3_2)
  L3_2 = #L2_2
  if L3_2 == 0 then
    return
  end
  L3_2 = G
  L3_2 = L3_2.Utils
  L3_2 = L3_2.table_merge
  L4_2 = L2_2
  L5_2 = A1_2
  L3_2(L4_2, L5_2)
end
L0_1.add_new_option_talk_to = L6_1
function L6_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L2_2 = ipairs
  L3_2 = A1_2
  L2_2, L3_2, L4_2 = L2_2(L3_2)
  for L5_2, L6_2 in L2_2, L3_2, L4_2 do
    L7_2 = L6_2.type
    L8_2 = L4_1.option_talk
    if L7_2 == L8_2 then
      L7_2 = L6_2.is_chosen
      if L7_2 == true then
        L7_2 = L0_1._gen_simple_talk_from_option_talk
        L8_2 = L6_2
        L7_2 = L7_2(L8_2)
        L8_2 = table
        L8_2 = L8_2.insert
        L9_2 = A0_2
        L10_2 = L7_2
        L8_2(L9_2, L10_2)
      end
    end
  end
  L2_2 = A0_2.total_simple_talks
  L2_2 = L2_2 + 1
  A0_2.total_simple_talks = L2_2
  A0_2.has_sth_to_print = true
  return A0_2
end
L0_1.on_option_choosed = L6_1
function L6_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L1_2 = {}
  L2_2 = A0_2.IsAeonTalk
  if L2_2 then
    L2_2 = table
    L2_2 = L2_2.insert
    L3_2 = L1_2
    L4_2 = L0_1._construct_aeon_simple_talk
    L5_2 = A0_2
    L4_2, L5_2, L6_2, L7_2, L8_2, L9_2 = L4_2(L5_2)
    L2_2(L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2)
  else
    L2_2 = 0
    L3_2 = A0_2.SimpleTalkList
    L3_2 = L3_2.Length
    L3_2 = L3_2 - 1
    L4_2 = 1
    for L5_2 = L2_2, L3_2, L4_2 do
      L6_2 = table
      L6_2 = L6_2.insert
      L7_2 = L1_2
      L8_2 = L0_1._construct_one_simple_talk
      L9_2 = A0_2.SimpleTalkList
      L9_2 = L9_2[L5_2]
      L8_2, L9_2 = L8_2(L9_2)
      L6_2(L7_2, L8_2, L9_2)
    end
  end
  return L1_2
end
L0_1._construct_simple_talk_data = L6_1
function L6_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = {}
  if A0_2 ~= nil then
    L2_2 = A0_2.TalkSentenceID
    if L2_2 ~= 0 then
      goto lbl_8
    end
  end
  do return L1_2 end
  ::lbl_8::
  L2_2 = L4_1.simple_talk
  L1_2.type = L2_2
  L1_2.is_played = false
  L1_2.is_newest_talk = false
  L2_2 = A0_2.TalkSentenceID
  L1_2.TalkSentenceID = L2_2
  L2_2 = A0_2.TextSpeed
  L1_2.TextSpeed = L2_2
  L2_2 = A0_2.TalkBgID
  L1_2.TalkBgID = L2_2
  L2_2 = L0_1._get_talk_sentence_row
  L3_2 = A0_2.TalkSentenceID
  L2_2 = L2_2(L3_2)
  if L2_2 ~= nil then
    L3_2 = L2_2.TextmapTalkSentenceName
    if L3_2 then
      goto lbl_27
    end
  end
  L3_2 = nil
  ::lbl_27::
  L1_2.name_id = L3_2
  if L2_2 ~= nil then
    L3_2 = L2_2.TalkSentenceText
    if L3_2 then
      goto lbl_34
    end
  end
  L3_2 = nil
  ::lbl_34::
  L1_2.content_id = L3_2
  return L1_2
end
L0_1._construct_one_simple_talk = L6_1
function L6_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2
  L1_2 = {}
  L1_2.is_aeon_spe_talk = true
  L2_2 = A0_2.SimpleTalkList
  L3_2 = A0_2.AeonTalkAssignedUI
  L2_2 = L2_2[L3_2]
  if L2_2 ~= nil then
    L3_2 = L2_2.TalkSentenceID
    if L3_2 ~= 0 then
      goto lbl_12
    end
  end
  do return L1_2 end
  ::lbl_12::
  L3_2 = L4_1.simple_talk
  L1_2.type = L3_2
  L1_2.is_played = false
  L1_2.is_newest_talk = false
  L3_2 = L2_2.TalkSentenceID
  L1_2.TalkSentenceID = L3_2
  L3_2 = L2_2.TextSpeed
  L1_2.TextSpeed = L3_2
  L3_2 = L2_2.TalkBgID
  L1_2.TalkBgID = L3_2
  L3_2 = L0_1._get_talk_sentence_row
  L4_2 = L2_2.TalkSentenceID
  L3_2 = L3_2(L4_2)
  if L3_2 ~= nil then
    L4_2 = L3_2.TextmapTalkSentenceName
    if L4_2 then
      goto lbl_31
    end
  end
  L4_2 = nil
  ::lbl_31::
  L1_2.name_id = L4_2
  if L3_2 ~= nil then
    L4_2 = L3_2.TalkSentenceText
    if L4_2 then
      goto lbl_38
    end
  end
  L4_2 = nil
  ::lbl_38::
  L1_2.content_id = L4_2
  L4_2 = {}
  L5_2 = 0
  L6_2 = A0_2.SimpleTalkList
  L6_2 = L6_2.Length
  L6_2 = L6_2 - 1
  L7_2 = 1
  for L8_2 = L5_2, L6_2, L7_2 do
    L9_2 = L0_1._get_talk_sentence_row
    L10_2 = A0_2.SimpleTalkList
    L10_2 = L10_2[L8_2]
    L10_2 = L10_2.TalkSentenceID
    L9_2 = L9_2(L10_2)
    L10_2 = table
    L10_2 = L10_2.insert
    L11_2 = L4_2
    L12_2 = L9_2.TextmapTalkSentenceName
    L10_2(L11_2, L12_2)
  end
  L1_2.title_tb = L4_2
  return L1_2
end
L0_1._construct_aeon_simple_talk = L6_1
function L6_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L2_2 = {}
  if A1_2 == nil then
    L3_2 = CS
    L3_2 = L3_2.RPG
    L3_2 = L3_2.Client
    L3_2 = L3_2.RogueStatic
    L3_2 = L3_2.IsInMissionReplay
    L3_2 = L3_2()
    A1_2 = L3_2
  end
  L3_2 = 0
  L4_2 = A0_2.Count
  L4_2 = L4_2 - 1
  L5_2 = 1
  for L6_2 = L3_2, L4_2, L5_2 do
    L7_2 = L0_1.construct_one_random_event_option_data
    L8_2 = A0_2[L6_2]
    L7_2 = L7_2(L8_2)
    L7_2.index = L6_2
    L8_2 = A0_2[L6_2]
    L8_2 = L8_2.InfoIndex
    L7_2.InfoIndex = L8_2
    L8_2 = table
    L8_2 = L8_2.insert
    L9_2 = L2_2
    L10_2 = L7_2
    L8_2(L9_2, L10_2)
  end
  L3_2 = table
  L3_2 = L3_2.sort
  L4_2 = L2_2
  function L5_2(A0_3, A1_3)
    local L2_3, L3_3
    L2_3 = A0_3.show_aeon_icon
    if L2_3 then
      L2_3 = A1_3.show_aeon_icon
      if not L2_3 then
        L2_3 = true
        return L2_3
      end
    end
    L2_3 = A1_3.show_aeon_icon
    if L2_3 then
      L2_3 = A0_3.show_aeon_icon
      if not L2_3 then
        L2_3 = false
        return L2_3
      end
    end
    L2_3 = A0_3.index
    L3_3 = A1_3.index
    L2_3 = L2_3 < L3_3
    return L2_3
  end
  L3_2(L4_2, L5_2)
  return L2_2
end
L0_1.construct_option_data = L6_1
function L6_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = {}
  L2_2 = L4_1.option_talk
  L1_2.type = L2_2
  L1_2.is_chosen = false
  L2_2 = A0_2.Text
  L1_2.text_id = L2_2
  L2_2 = A0_2.TextParam
  L1_2.param_text = L2_2
  L2_2 = A0_2.DescCostParam
  L1_2.desc_cost_param = L2_2
  L2_2 = A0_2.DescRatioParam
  L1_2.desc_ratio_param = L2_2
  L2_2 = A0_2.DescIntParam
  L1_2.desc_int_param = L2_2
  L2_2 = A0_2.DescParam2
  L1_2.desc_param_2 = L2_2
  L2_2 = A0_2.DescParam3
  L1_2.desc_param_3 = L2_2
  L2_2 = A0_2.DescParam4
  L1_2.desc_param_4 = L2_2
  L2_2 = A0_2.DynamicDisplay2
  L1_2.dynamic_display_2 = L2_2
  L2_2 = A0_2.IconPath
  L1_2.icon_path = L2_2
  L2_2 = A0_2.HasTriggered
  L1_2.has_triggered = L2_2
  L1_2.is_selected = false
  L1_2.is_navigation = true
  L2_2 = A0_2.DialogueGroupID
  L1_2.dialogue_group_id = L2_2
  L2_2 = A0_2.DialogueEventID
  L1_2.dialogue_event_id = L2_2
  L2_2 = A0_2.IsValid
  L1_2.is_valid = L2_2
  L1_2.action_name = "Menu_Confirm"
  L2_2 = L5_1.default
  L1_2.option_status = L2_2
  L2_2 = L0_1._get_random_evt_option_data_extra_effect_param
  L3_2 = A0_2
  L2_2, L3_2, L4_2, L5_2 = L2_2(L3_2)
  L1_2.left_up_icon = L5_2
  L1_2.show_select_effect = L4_2
  L1_2.aeon_icon_path = L3_2
  L1_2.show_aeon_icon = L2_2
  L2_2 = L0_1._get_rogue_nous_evt_option_data_extra_effect_param
  L3_2 = A0_2
  L2_2, L3_2 = L2_2(L3_2)
  L1_2.nous_param = L3_2
  L1_2.is_nous_option = L2_2
  return L1_2
end
L0_1.construct_one_random_event_option_data = L6_1
function L6_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L1_2 = false
  L2_2 = ""
  L3_2 = false
  L4_2 = nil
  L5_2 = CS
  L5_2 = L5_2.RPG
  L5_2 = L5_2.GameCore
  L5_2 = L5_2.DialogueEventExcelTable
  L5_2 = L5_2.GetData
  L6_2 = A0_2.DialogueEventID
  L5_2 = L5_2(L6_2)
  if L5_2 then
    L6_2 = L5_2.PerformanceType
    L1_2 = L6_2 ~= 0
    if L1_2 then
      L6_2 = CS
      L6_2 = L6_2.RPG
      L6_2 = L6_2.GameCore
      L6_2 = L6_2.RogueEventSpecialOptionExcelTable
      L6_2 = L6_2.GetData
      L7_2 = L5_2.PerformanceType
      L6_2 = L6_2(L7_2)
      if L6_2 then
        L2_2 = L6_2.AeonFigure
        L4_2 = L6_2.AeonIcon
      end
    end
    L3_2 = true
  end
  L6_2 = L1_2
  L7_2 = L2_2
  L8_2 = L3_2
  L9_2 = L4_2
  return L6_2, L7_2, L8_2, L9_2
end
L0_1._get_random_evt_option_data_extra_effect_param = L6_1
function L6_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.GameCore
  L1_2 = L1_2.DialogueEventExcelTable
  L1_2 = L1_2.GetData
  L2_2 = A0_2.DialogueEventID
  L1_2 = L1_2(L2_2)
  if L1_2 then
    L2_2 = L1_2.RogueEffectType
    L3_2 = CS
    L3_2 = L3_2.RPG
    L3_2 = L3_2.GameCore
    L3_2 = L3_2.RogueDialogueEventType
    L3_2 = L3_2.ChangeNousValue
    if L2_2 == L3_2 then
      L2_2 = true
      L3_2 = L1_2.RogueEffectParamList
      L3_2 = L3_2[0]
      return L2_2, L3_2
    end
  end
  L2_2 = false
  L3_2 = nil
  return L2_2, L3_2
end
L0_1._get_rogue_nous_evt_option_data_extra_effect_param = L6_1
function L6_1()
  local L0_2, L1_2
end
L0_1.construct_random_option_data = L6_1
function L6_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  if A0_2 == nil or A0_2 <= 0 then
    L1_2 = G
    L1_2 = L1_2.SuperDebug
    L1_2 = L1_2.LogErrorFormat
    L2_2 = "invalid talkSentenceID: "
    L3_2 = tostring
    L4_2 = A0_2
    L3_2 = L3_2(L4_2)
    L2_2 = L2_2 .. L3_2
    L1_2(L2_2)
    L1_2 = nil
    return L1_2
  end
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.GameCore
  L1_2 = L1_2.TalkSentenceConfigExcelTable
  L1_2 = L1_2.GetData
  L2_2 = A0_2
  L1_2 = L1_2(L2_2)
  if L1_2 == nil then
    L2_2 = G
    L2_2 = L2_2.SuperDebug
    L2_2 = L2_2.LogErrorFormat
    L3_2 = "talkSentenceID \230\137\190\228\184\141\229\136\176\230\149\176\230\141\174: "
    L4_2 = tostring
    L5_2 = A0_2
    L4_2 = L4_2(L5_2)
    L3_2 = L3_2 .. L4_2
    L2_2(L3_2)
  end
  return L1_2
end
L0_1._get_talk_sentence_row = L6_1
function L6_1(A0_2)
  local L1_2, L2_2
  L1_2 = {}
  L2_2 = L4_1.simple_talk_gen_by_option
  L1_2.type = L2_2
  L1_2.is_played = false
  L1_2.TalkSentenceID = nil
  L1_2.TextSpeed = 20
  L1_2.TalkBgID = nil
  L1_2.name_id = "UIText_Rogue_Option_Name"
  L2_2 = A0_2.text_id
  L1_2.content_id = L2_2
  L2_2 = A0_2.param_text
  L1_2.content_param = L2_2
  L2_2 = A0_2.desc_cost_param
  L1_2.desc_cost_param = L2_2
  L2_2 = A0_2.desc_ratio_param
  L1_2.desc_ratio_param = L2_2
  L2_2 = A0_2.desc_int_param
  L1_2.desc_int_param = L2_2
  L2_2 = A0_2.desc_param_2
  L1_2.desc_param_2 = L2_2
  L2_2 = A0_2.desc_param_3
  L1_2.desc_param_3 = L2_2
  L2_2 = A0_2.desc_param_4
  L1_2.desc_param_4 = L2_2
  L2_2 = A0_2.dynamic_display_2
  L1_2.dynamic_display_2 = L2_2
  L2_2 = A0_2.index
  L1_2.index = L2_2
  return L1_2
end
L0_1._gen_simple_talk_from_option_talk = L6_1
function L6_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = {}
  L2_2 = L4_1.option_talk
  L1_2.type = L2_2
  L1_2.is_chosen = false
  L2_2 = L3_1
  L1_2.text_id = L2_2
  L1_2.param_text = nil
  L1_2.desc_cost_param = nil
  L1_2.desc_ratio_param = nil
  L1_2.desc_int_param = nil
  L1_2.desc_param_2 = nil
  L1_2.desc_param_3 = nil
  L1_2.desc_param_4 = nil
  L1_2.dynamic_display_2 = nil
  L1_2.icon_path = "SpriteOutput/TalkIcon/ChatContinueIcon.png"
  L1_2.has_triggered = nil
  L1_2.is_selected = false
  L1_2.is_navigation = true
  L1_2.dialogue_group_id = nil
  L1_2.dialogue_event_id = nil
  L1_2.is_valid = true
  L1_2.action_name = "Menu_Confirm"
  L1_2.option_status = nil
  L1_2.is_special_option = true
  L2_2 = {}
  L3_2 = L1_2
  L2_2[1] = L3_2
  return L2_2
end
L0_1.construct_special_aeon_talk = L6_1
function L6_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = 0
  L2_2 = A0_2.Count
  L2_2 = L2_2 - 1
  L3_2 = 1
  for L4_2 = L1_2, L2_2, L3_2 do
    L5_2 = A0_2[L4_2]
    L5_2 = L5_2.DialogueEventID
    if L5_2 == 0 then
      L5_2 = true
      return L5_2
    end
  end
  L1_2 = false
  return L1_2
end
L0_1._is_simple_option_in_random_evt = L6_1
function L6_1(A0_2)
  local L1_2, L2_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.GlobalVars
  L1_2 = L1_2.s_ModuleManager
  L1_2 = L1_2.RogueHandbookModule
  L1_2 = L1_2.RandomEventsMap
  L1_2 = L1_2[A0_2]
  L2_2 = L1_2.IsUnlocked
  L2_2 = not L2_2
  return L2_2
end
L0_1.is_random_evt_first_met = L6_1
function L6_1(A0_2)
  local L1_2, L2_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.GameCore
  L1_2 = L1_2.RogueImageExcelTable
  L1_2 = L1_2.GetData
  L2_2 = A0_2
  L1_2 = L1_2(L2_2)
  if L1_2 then
    L2_2 = L1_2.ParamStr1
    return L2_2
  end
  L2_2 = ""
  return L2_2
end
L0_1.get_random_evt_sound_str = L6_1
function L6_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  if A0_2 == 0 then
    L2_2 = false
    return L2_2
  end
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.GameCore
  L2_2 = L2_2.RogueTalkNameConfigExcelTable
  L2_2 = L2_2.GetData
  L3_2 = A0_2
  L2_2 = L2_2(L3_2)
  if L2_2 == nil then
    L3_2 = false
    return L3_2
  end
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.GameCore
  L3_2 = L3_2.RogueImageExcelTable
  L3_2 = L3_2.GetData
  L4_2 = L2_2.ImageID
  L3_2 = L3_2(L4_2)
  if L3_2 == nil then
    L4_2 = false
    return L4_2
  end
  L4_2 = A1_2 or L4_2
  if not A1_2 then
    L4_2 = {}
  end
  L5_2 = ipairs
  L6_2 = L4_2
  L5_2, L6_2, L7_2 = L5_2(L6_2)
  for L8_2, L9_2 in L5_2, L6_2, L7_2 do
    L10_2 = L3_2.ImageID
    if L9_2 == L10_2 then
      L10_2 = true
      return L10_2
    end
  end
  L5_2 = false
  return L5_2
end
L0_1.check_is_aeon_played = L6_1
function L6_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  if A0_2 == 0 then
    L1_2 = false
    return L1_2
  end
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.GameCore
  L1_2 = L1_2.RogueTalkNameConfigExcelTable
  L1_2 = L1_2.GetData
  L2_2 = A0_2
  L1_2 = L1_2(L2_2)
  if L1_2 == nil then
    L2_2 = false
    return L2_2
  end
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.GameCore
  L2_2 = L2_2.RogueImageExcelTable
  L2_2 = L2_2.GetData
  L3_2 = L1_2.ImageID
  L2_2 = L2_2(L3_2)
  if L2_2 == nil then
    L3_2 = false
    return L3_2
  end
  L3_2 = L2_2.ImageType
  L4_2 = CS
  L4_2 = L4_2.RPG
  L4_2 = L4_2.GameCore
  L4_2 = L4_2.RogueImageType
  L4_2 = L4_2.Aeon
  L3_2 = L3_2 == L4_2
  return L3_2
end
L0_1.check_is_aeon = L6_1
function L6_1(A0_2)
  local L1_2, L2_2
  if A0_2 == 0 then
    L1_2 = 0
    return L1_2
  end
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.GameCore
  L1_2 = L1_2.RogueTalkNameConfigExcelTable
  L1_2 = L1_2.GetData
  L2_2 = A0_2
  L1_2 = L1_2(L2_2)
  if L1_2 == nil then
    L2_2 = 0
    return L2_2
  end
  L2_2 = L1_2.ImageID
  return L2_2
end
L0_1._get_aeon_image_id = L6_1
function L6_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = L0_1._get_aeon_image_id
  L3_2 = A0_2
  L2_2 = L2_2(L3_2)
  L3_2 = L0_1._get_aeon_image_id
  L4_2 = A1_2
  L3_2 = L3_2(L4_2)
  L2_2 = L2_2 == L3_2
  return L2_2
end
L0_1.check_is_same_bg = L6_1
function L6_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.GameCore
  L1_2 = L1_2.ConstValueClientExcelTable
  L1_2 = L1_2.GetData
  L2_2 = "RogueNous_NousEventList"
  L1_2 = L1_2(L2_2)
  L2_2 = L1_2.Value
  L2_2 = L2_2.ArrayValue
  if L2_2 == nil then
    return
  end
  L3_2 = 0
  L4_2 = L2_2.Length
  L4_2 = L4_2 - 1
  L5_2 = 1
  for L6_2 = L3_2, L4_2, L5_2 do
    L7_2 = L2_2[L6_2]
    L7_2 = L7_2.IntValue
    if L7_2 == A0_2 then
      L8_2 = true
      return L8_2
    end
  end
  L3_2 = false
  return L3_2
end
L0_1.is_rogue_nous_event_npc = L6_1
return L0_1
