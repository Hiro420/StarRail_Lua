local L0_1, L1_1, L2_1, L3_1, L4_1
L0_1 = CS
L0_1 = L0_1.RPG
L0_1 = L0_1.Client
L0_1 = L0_1.GlobalVars
L0_1 = L0_1.s_ModuleManager
L0_1 = L0_1.FeatureSwitchModule
L1_1 = 3601
L2_1 = G
L2_1 = L2_1.Class
L3_1 = "GotoSpecificActivityFuncCommand"
L4_1 = "Logic.Goto.BaseCommand"
L2_1 = L2_1(L3_1, L4_1)
function L3_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L3_2 = A0_2
  L2_2 = A0_2._goto_punklord_page
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
end
L2_1.execute = L3_1
function L3_1(A0_2, A1_2)
  local L2_2, L3_2
  L3_2 = A0_2
  L2_2 = A0_2._check_feature_open_with_hint
  L2_2 = L2_2(L3_2)
  if not L2_2 then
    return
  end
  L2_2 = A1_2.ID
  L3_2 = L1_1
  if L2_2 == L3_2 then
    L2_2 = G
    L2_2 = L2_2.UIManager
    L2_2 = L2_2.load_and_async_show
    L3_2 = "Ui.Activity.ActivityPunkLord.Tutorial.TutorialPunkLordMainPage"
    L2_2(L3_2)
  else
    L2_2 = G
    L2_2 = L2_2.UIManager
    L2_2 = L2_2.load_and_async_show
    L3_2 = "Ui.Activity.ActivityPunkLord.PunkLordMainPage"
    L2_2(L3_2)
  end
end
L2_1._goto_punklord_page = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = L0_1
  L2_2 = L1_2
  L1_2 = L1_2.IsFeatureClosed
  L3_2 = CS
  L3_2 = L3_2.KJMOMPDBPKH
  L3_2 = L3_2.BDGIGPECFBM
  L1_2 = L1_2(L2_2, L3_2)
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
  L1_2 = true
  return L1_2
end
L2_1._check_feature_open_with_hint = L3_1
return L2_1
