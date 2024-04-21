local L0_1, L1_1, L2_1
L0_1 = require
L1_1 = "Ui.Activity.ActivityRewardUtils"
L0_1(L1_1)
L0_1 = require
L1_1 = "Utilities.ConstValueUtils"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.StaticClass
L1_1 = "DrinkMakerBarUtils"
L0_1 = L0_1(L1_1)
L1_1 = CS
L1_1 = L1_1.RPG
L1_1 = L1_1.Client
L1_1 = L1_1.GlobalVars
L1_1 = L1_1.s_ModuleManager
L1_1 = L1_1.DrinkMakerModule
L0_1._hash_offset = 10000
L0_1.lock_name = "UIText_DrinkMaker_FormulaLockName"
function L2_1(A0_2, A1_2)
  local L2_2
  L2_2 = L0_1._hash_offset
  L2_2 = A0_2 * L2_2
  L2_2 = L2_2 + A1_2
  return L2_2
end
L0_1.get_hash_from_two_key = L2_1
function L2_1()
  local L0_2, L1_2
  L0_2 = G
  L0_2 = L0_2.ConstValueUtils
  L0_2 = L0_2.get_uint_value
  L1_2 = "DrinkMaker_GetAvatarQuestID"
  return L0_2(L1_2)
end
L0_1.get_avatar_select_quest_id = L2_1
function L2_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2
  L0_2 = L0_1.get_avatar_select_quest_id
  L0_2 = L0_2()
  if L0_2 == nil or L0_2 == 0 then
    return
  end
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.Prefs
  L1_2 = L1_2.User
  L2_2 = L1_2
  L1_2 = L1_2.SetDrinkMakerAvatarRewardHasSeen
  L3_2 = true
  L1_2(L2_2, L3_2)
  L1_2 = G
  L1_2 = L1_2.ActivityRewardUtils
  L1_2 = L1_2.show_avatar_reward_select_dialog
  L2_2 = L0_2
  L3_2 = "UIText_DrinkMaker_MainEntrancePage_Title"
  L4_2 = "SpriteOutput/TabIcon/Activity/DrinkMakerIcon.png"
  return L1_2(L2_2, L3_2, L4_2)
end
L0_1.show_avatar_select_dialog = L2_1
function L2_1()
  local L0_2, L1_2
  L0_2 = G
  L0_2 = L0_2.ConstValueUtils
  L0_2 = L0_2.get_uint_value
  L1_2 = "DrinkMaker_TimeLimitActivityRewardID"
  return L0_2(L1_2)
end
L0_1.get_time_limit_activity_reward_id = L2_1
function L2_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2
  L0_2 = L0_1.get_time_limit_activity_reward_id
  L0_2 = L0_2()
  if L0_2 == nil or L0_2 == 0 then
    return
  end
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.Prefs
  L1_2 = L1_2.User
  L2_2 = L1_2
  L1_2 = L1_2.SetDrinkMakerLimitRewardHasSeen
  L3_2 = true
  L1_2(L2_2, L3_2)
  L1_2 = G
  L1_2 = L1_2.ActivityRewardUtils
  L1_2 = L1_2.show_common_activity_reward_page
  L2_2 = L0_2
  L3_2 = "Ui.DrinkMaker.DrinkMakerTimeLimitRewardPageBinder"
  L4_2 = nil
  L5_2 = "DrinkMakerTimeLimitRewardTab"
  return L1_2(L2_2, L3_2, L4_2, L5_2)
end
L0_1.show_time_limit_reward_page = L2_1
function L2_1()
  local L0_2, L1_2, L2_2
  L0_2 = L0_1.get_time_limit_activity_reward_id
  L0_2 = L0_2()
  if L0_2 == nil or L0_2 == 0 then
    L1_2 = false
    return L1_2
  end
  L1_2 = G
  L1_2 = L1_2.ActivityRewardUtils
  L1_2 = L1_2.is_activity_reward_available
  L2_2 = L0_2
  return L1_2(L2_2)
end
L0_1.is_time_limit_reward_available = L2_1
function L2_1()
  local L0_2, L1_2, L2_2, L3_2
  L0_2 = G
  L0_2 = L0_2.ConstValueUtils
  L0_2 = L0_2.get_uint_value
  L1_2 = "DrinkMaker_GetAvatarQuestID"
  L0_2 = L0_2(L1_2)
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.GlobalVars
  L1_2 = L1_2.s_ModuleManager
  L1_2 = L1_2.QuestModule
  L2_2 = L1_2
  L1_2 = L1_2.TryGetQuestData
  L3_2 = L0_2
  L1_2 = L1_2(L2_2, L3_2)
  L2_2 = L1_2 ~= nil
  return L2_2
end
L0_1.is_avatar_reward_taken = L2_1
function L2_1()
  local L0_2, L1_2
  L0_2 = L0_1._unlock_submissions
  if L0_2 == nil then
    L0_2 = L0_1._init_unlock_data
    L0_2()
  end
  L0_2 = L0_1._unlock_submissions
  return L0_2
end
L0_1.get_unlock_submission_list = L2_1
function L2_1(A0_2)
  local L1_2
  L1_2 = L0_1._unlock_submissions
  if L1_2 == nil then
    L1_2 = L0_1._init_unlock_data
    L1_2()
  end
  L1_2 = L0_1._unlock_submissions_title
  L1_2 = L1_2[A0_2]
  return L1_2
end
L0_1.get_unlock_title = L2_1
function L2_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L0_2 = G
  L0_2 = L0_2.ConstValueUtils
  L0_2 = L0_2.get_uint_array
  L1_2 = "DrinkMaker_UnlockMissionList"
  L0_2 = L0_2(L1_2)
  L0_1._unlock_submissions = L0_2
  L0_2 = {}
  L0_1._unlock_submissions_title = L0_2
  L0_2 = CS
  L0_2 = L0_2.RPG
  L0_2 = L0_2.GameCore
  L0_2 = L0_2.ConstValueClientExcelTable
  L0_2 = L0_2.GetData
  L1_2 = "DrinkMaker_UnlockList"
  L0_2 = L0_2(L1_2)
  L1_2 = L0_2.Value
  L1_2 = L1_2.ArrayValue
  L2_2 = 0
  L3_2 = L1_2.Length
  L3_2 = L3_2 - 1
  L4_2 = 1
  for L5_2 = L2_2, L3_2, L4_2 do
    L6_2 = L1_2[L5_2]
    L7_2 = L0_1._unlock_submissions
    L8_2 = L5_2 + 1
    L7_2 = L7_2[L8_2]
    L8_2 = L0_1._unlock_submissions_title
    L9_2 = L6_2.StringValue
    L8_2[L7_2] = L9_2
  end
end
L0_1._init_unlock_data = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2
  L1_2 = 0
  L2_2 = 0
  L3_2 = L1_1.DrinkMakerBar
  L3_2 = L3_2.IsFreePhase
  if L3_2 then
    L3_2 = L1_1.DrinkMakerBar
    L3_2 = L3_2.SequenceId
    L4_2 = CS
    L4_2 = L4_2.RPG
    L4_2 = L4_2.GameCore
    L4_2 = L4_2.DrinkMakerGuestSequenceExcelTable
    L4_2 = L4_2.GetData
    L5_2 = L3_2
    L4_2 = L4_2(L5_2)
    if L4_2 ~= nil then
      L5_2 = L4_2.GuestID
      if A0_2 == L5_2 then
        L5_2 = L0_1._get_sequence_expected_tips
        L6_2 = L4_2
        L7_2 = false
        L5_2 = L5_2(L6_2, L7_2)
        L1_2 = L5_2
        L5_2 = L0_1._get_sequence_expected_tips
        L6_2 = L4_2
        L7_2 = true
        L5_2 = L5_2(L6_2, L7_2)
        L2_2 = L5_2
      end
    end
    L5_2 = L1_2
    L6_2 = L2_2
    return L5_2, L6_2
  end
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.GameCore
  L3_2 = L3_2.DrinkMakerDayExcelTable
  L3_2 = L3_2.GetData
  L4_2 = L1_1.DrinkMakerBar
  L4_2 = L4_2.Day
  L3_2 = L3_2(L4_2)
  if L3_2 ~= nil then
    L4_2 = L3_2.GuestSequenceList
    if L4_2 ~= nil then
      goto lbl_50
    end
  end
  L4_2 = L1_2
  L5_2 = L2_2
  do return L4_2, L5_2 end
  ::lbl_50::
  L4_2 = 0
  L5_2 = L3_2.GuestSequenceList
  L5_2 = L5_2.Length
  L5_2 = L5_2 - 1
  L6_2 = 1
  for L7_2 = L4_2, L5_2, L6_2 do
    L8_2 = L3_2.GuestSequenceList
    L8_2 = L8_2[L7_2]
    L9_2 = CS
    L9_2 = L9_2.RPG
    L9_2 = L9_2.GameCore
    L9_2 = L9_2.DrinkMakerGuestSequenceExcelTable
    L9_2 = L9_2.GetData
    L10_2 = L8_2
    L9_2 = L9_2(L10_2)
    L10_2 = L9_2.GuestID
    if A0_2 == L10_2 then
      L10_2 = L0_1._get_sequence_expected_tips
      L11_2 = L9_2
      L12_2 = false
      L10_2 = L10_2(L11_2, L12_2)
      L11_2 = L0_1._get_sequence_expected_tips
      L12_2 = L9_2
      L13_2 = true
      L11_2 = L11_2(L12_2, L13_2)
      L1_2 = L1_2 + L10_2
      L2_2 = L2_2 + L11_2
    end
  end
  L4_2 = L1_2
  L5_2 = L2_2
  return L4_2, L5_2
end
L0_1.get_guest_expected_tips = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L2_2 = 0
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.GameCore
  L3_2 = L3_2.DrinkMakerChatExcelTable
  L3_2 = L3_2.GetData
  L4_2 = A0_2.StartChatID
  L3_2 = L3_2(L4_2)
  L4_2 = 10
  while L3_2 ~= nil do
    if L4_2 < 0 then
      L5_2 = G
      L5_2 = L5_2.SuperDebug
      L5_2 = L5_2.LogErrorFormat
      L6_2 = "\230\128\170\231\137\169\233\133\146\229\144\167SequenceID:"
      L7_2 = A0_2.SequenceID
      L8_2 = "\233\129\141\229\142\134ChatID\230\172\161\230\149\176\232\191\135\229\164\154\239\188\140\232\175\183\230\163\128\230\159\165DrinkMakerChat.txt\228\184\173\231\154\132\233\133\141\231\189\174\230\152\175\229\144\166\230\173\163\231\161\174"
      L6_2 = L6_2 .. L7_2 .. L8_2
      L5_2(L6_2)
      break
    end
    L4_2 = L4_2 - 1
    L5_2 = CS
    L5_2 = L5_2.RPG
    L5_2 = L5_2.GameCore
    L5_2 = L5_2.DrinkMakerRequestExcelTable
    L5_2 = L5_2.GetData
    L6_2 = L3_2.RequestID
    L5_2 = L5_2(L6_2)
    if L5_2 ~= nil then
      if A1_2 then
        L6_2 = L5_2.SuccessTip
        if L6_2 then
          goto lbl_39
        end
      end
      L6_2 = L5_2.FailTip
      ::lbl_39::
      L2_2 = L2_2 + L6_2
    end
    L6_2 = CS
    L6_2 = L6_2.RPG
    L6_2 = L6_2.GameCore
    L6_2 = L6_2.DrinkMakerChatExcelTable
    L6_2 = L6_2.GetData
    if A1_2 then
      L7_2 = L3_2.SuccessNextChatID
      if L7_2 then
        goto lbl_51
      end
    end
    L7_2 = L3_2.FailNextChatID
    ::lbl_51::
    L6_2 = L6_2(L7_2)
    L3_2 = L6_2
  end
  return L2_2
end
L0_1._get_sequence_expected_tips = L2_1
return L0_1
