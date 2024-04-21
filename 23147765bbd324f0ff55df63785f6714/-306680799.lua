local L0_1, L1_1, L2_1, L3_1
L0_1 = require
L1_1 = "Ui.ActivityFeverTime.Buff.ActivityFeverTimeChallengeTargetInfoBinder"
L0_1(L1_1)
L0_1 = CS
L0_1 = L0_1.RPG
L0_1 = L0_1.Client
L0_1 = L0_1.GlobalVars
L0_1 = L0_1.s_ModuleManager
L0_1 = L0_1.QuestModule
L1_1 = G
L1_1 = L1_1.Class
L2_1 = "ActivityFeverTimeChallengeTargetInfo"
L3_1 = G
L3_1 = L3_1.BasePanel
L1_1 = L1_1(L2_1, L3_1)
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L2_2 = L0_1
  L3_2 = L2_2
  L2_2 = L2_2.TryGetQuestData
  L4_2 = A1_2
  L2_2 = L2_2(L3_2, L4_2)
  if L2_2 then
    L3_2 = L2_2.FinishWayRow
    L4_2 = A0_2._binder
    L4_2 = L4_2.txt_desc
    L5_2 = L4_2
    L4_2 = L4_2.SafeSetTextID
    L6_2 = L2_2.DataRow
    L6_2 = L6_2.QuestTitle
    L7_2 = L3_2.ParamInt1
    L8_2 = L3_2.ParamInt2
    L9_2 = L3_2.ParamInt3
    L10_2 = L3_2.Progress
    L4_2(L5_2, L6_2, L7_2, L8_2, L9_2, L10_2)
    L5_2 = A0_2
    L4_2 = A0_2._setup_status
    L6_2 = L2_2
    L4_2(L5_2, L6_2)
  end
end
L1_1.setup_view = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A1_2.Status
  L3_2 = CS
  L3_2 = L3_2.LEOGBBOPKKO
  L3_2 = L3_2.JKFPIINHGPD
  if L2_2 ~= L3_2 then
    L2_2 = A1_2.Status
    L3_2 = CS
    L3_2 = L3_2.LEOGBBOPKKO
    L3_2 = L3_2.CMOFEAFMGAK
    if L2_2 ~= L3_2 then
      goto lbl_19
    end
  end
  L2_2 = A0_2._binder
  L2_2 = L2_2.animation_root
  L3_2 = L2_2
  L2_2 = L2_2.Play
  L4_2 = "UI_FeverTimeTargetInfoRow_Success"
  L2_2(L3_2, L4_2)
  goto lbl_24
  ::lbl_19::
  L2_2 = A0_2._binder
  L2_2 = L2_2.animation_root
  L3_2 = L2_2
  L2_2 = L2_2.Play
  L4_2 = "UI_FeverTimeTargetInfoRow_Normal"
  L2_2(L3_2, L4_2)
  ::lbl_24::
end
L1_1._setup_status = L2_1
return L1_1
