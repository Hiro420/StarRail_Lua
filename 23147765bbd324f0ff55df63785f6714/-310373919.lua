local L0_1, L1_1, L2_1, L3_1, L4_1
L0_1 = require
L1_1 = "Ui.Activity.FightActivity.FightActivityTaskProgressPanelBinder"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "FightActivityTaskProgressPanel"
L2_1 = G
L2_1 = L2_1.BasePanel
L0_1 = L0_1(L1_1, L2_1)
L1_1 = CS
L1_1 = L1_1.RPG
L1_1 = L1_1.Client
L1_1 = L1_1.GlobalVars
L1_1 = L1_1.s_ModuleManager
L1_1 = L1_1.FightActivityModule
L2_1 = CS
L2_1 = L2_1.RPG
L2_1 = L2_1.Client
L2_1 = L2_1.FightActivityUtils
L3_1 = "UIText_ActivityFight_ChallengeRequirement"
function L4_1(A0_2, A1_2, A2_2, A3_2, A4_2)
  local L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2
  L5_2 = L1_1
  L6_2 = L5_2
  L5_2 = L5_2.GetFightActivityGroupInfo
  L7_2 = A1_2
  L5_2 = L5_2(L6_2, L7_2)
  A0_2._group_info = L5_2
  L5_2 = L2_1.GetEndlessRewardWaves
  L6_2 = A1_2
  L5_2 = L5_2(L6_2)
  L6_2 = L2_1.GetEndlessRewardQuest
  L7_2 = A1_2
  L6_2 = L6_2(L7_2)
  L7_2 = A0_2._group_info
  L7_2 = L7_2 ~= nil
  if A4_2 and A2_2 == 3 then
    L8_2 = 1
    L9_2 = L5_2.Length
    L9_2 = L9_2 - 1
    L10_2 = 1
    for L11_2 = L8_2, L9_2, L10_2 do
      L12_2 = L5_2[L11_2]
      if L12_2 == A4_2 then
        L12_2 = CS
        L12_2 = L12_2.RPG
        L12_2 = L12_2.Client
        L12_2 = L12_2.GlobalVars
        L12_2 = L12_2.s_ModuleManager
        L12_2 = L12_2.QuestModule
        L13_2 = L12_2
        L12_2 = L12_2.TryGetQuestData
        L14_2 = L11_2 - 1
        L14_2 = L6_2[L14_2]
        L12_2 = L12_2(L13_2, L14_2)
        L13_2 = L12_2.Status
        L14_2 = CS
        L14_2 = L14_2.LEOGBBOPKKO
        L14_2 = L14_2.CMOFEAFMGAK
        L7_2 = L13_2 == L14_2
      end
    end
  end
  L8_2 = A0_2._binder
  L8_2 = L8_2.text_task_name
  L9_2 = L8_2
  L8_2 = L8_2.SafeSetTextID
  L10_2 = L3_1
  L11_2 = A3_2.RoundsLimit
  L12_2 = A4_2 or L12_2
  if not A4_2 or not A4_2 then
    L12_2 = A3_2.RewardWave
  end
  L8_2(L9_2, L10_2, L11_2, L12_2)
  L8_2 = G
  L8_2 = L8_2.UIColorUtils
  L8_2 = L8_2.GetColorWithAlpha
  L9_2 = "#dbc291"
  L10_2 = 1
  L8_2 = L8_2(L9_2, L10_2)
  if L7_2 then
    L9_2 = A0_2._binder
    L9_2 = L9_2.text_task_name
    L9_2.color = L8_2
  else
    L9_2 = A0_2._binder
    L9_2 = L9_2.text_task_name
    L10_2 = G
    L10_2 = L10_2.UIColorUtils
    L10_2 = L10_2.GetColorWithAlpha
    L11_2 = "#ffffff"
    L12_2 = 1
    L10_2 = L10_2(L11_2, L12_2)
    L9_2.color = L10_2
  end
  L9_2 = A0_2._binder
  L9_2 = L9_2.status_finish
  L10_2 = L9_2
  L9_2 = L9_2.SafeSetActive
  L11_2 = L7_2
  L9_2(L10_2, L11_2)
  L9_2 = A0_2._binder
  L9_2 = L9_2.status_unfinish
  L10_2 = L9_2
  L9_2 = L9_2.SafeSetActive
  L11_2 = not L7_2
  L9_2(L10_2, L11_2)
  L9_2 = A0_2._binder
  L9_2 = L9_2.status_finish_text
  L10_2 = L9_2
  L9_2 = L9_2.SafeSetActive
  L11_2 = false
  L9_2(L10_2, L11_2)
end
L0_1.setup_view = L4_1
return L0_1
