local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1, L6_1, L7_1, L8_1
L0_1 = require
L1_1 = "Ui.Activity.EvolveBuild.EvolveBuildStageEntranceBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Activity.EvolveBuild.EvolveBuildStagePage"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Activity.EvolveBuild.EvolveBuildConst"
L0_1 = L0_1(L1_1)
L1_1 = CS
L1_1 = L1_1.RPG
L1_1 = L1_1.Client
L1_1 = L1_1.GlobalVars
L1_1 = L1_1.s_ModuleManager
L1_1 = L1_1.EvolveBuildModule
L2_1 = CS
L2_1 = L2_1.RPG
L2_1 = L2_1.Client
L2_1 = L2_1.EvolveBuildStageStatus
L2_1 = L2_1.Locked
L3_1 = CS
L3_1 = L3_1.RPG
L3_1 = L3_1.Client
L3_1 = L3_1.EvolveBuildStageStatus
L3_1 = L3_1.Unchallenged
L4_1 = CS
L4_1 = L4_1.RPG
L4_1 = L4_1.Client
L4_1 = L4_1.EvolveBuildStageStatus
L4_1 = L4_1.InProgress
L5_1 = CS
L5_1 = L5_1.RPG
L5_1 = L5_1.Client
L5_1 = L5_1.EvolveBuildStageStatus
L5_1 = L5_1.Challenged
L6_1 = G
L6_1 = L6_1.Class
L7_1 = "EvolveBuildStageEntrance"
L8_1 = G
L8_1 = L8_1.BasePanel
L6_1 = L6_1(L7_1, L8_1)
function L7_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.enter_btn
  L4_2 = A0_2._on_enter_btn_clicked
  L1_2(L2_2, L3_2, L4_2)
end
L6_1._on_load = L7_1
function L7_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  if A1_2 == nil then
    return
  end
  A0_2._stage = A1_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.name
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetTextID
  L4_2 = A1_2.Name
  L2_2(L3_2, L4_2)
  L3_2 = A0_2
  L2_2 = A0_2._setup_score_rank
  L2_2(L3_2)
  L2_2 = A1_2.Status
  L3_2 = A0_2._binder
  L3_2 = L3_2.enter_btn
  L4_2 = L2_1
  L4_2 = L2_2 == L4_2
  L3_2.IsInFakeDisableState = L4_2
  L3_2 = A0_2._binder
  L3_2 = L3_2.lock_panel
  L4_2 = L3_2
  L3_2 = L3_2.SafeSetActive
  L5_2 = L2_1
  L5_2 = L2_2 == L5_2
  L3_2(L4_2, L5_2)
  L3_2 = A0_2._binder
  L3_2 = L3_2.score_panel
  L4_2 = L3_2
  L3_2 = L3_2.SafeSetActive
  L5_2 = A1_2.HighScore
  L5_2 = 0 < L5_2
  L3_2(L4_2, L5_2)
  L3_2 = A0_2._binder
  L3_2 = L3_2.unchallenged_panel
  L4_2 = L3_2
  L3_2 = L3_2.SafeSetActive
  L5_2 = L3_1
  L5_2 = L2_2 == L5_2
  L3_2(L4_2, L5_2)
  L3_2 = A0_2._binder
  L3_2 = L3_2.in_progress_panel
  L4_2 = L3_2
  L3_2 = L3_2.SafeSetActive
  L5_2 = L4_1
  L5_2 = L2_2 == L5_2
  L3_2(L4_2, L5_2)
  L3_2 = G
  L3_2 = L3_2.RedDotModule
  L3_2 = L3_2.Instance
  L4_2 = L3_2
  L3_2 = L3_2.bind_reddot
  L5_2 = "EvolveBuildStage"
  L6_2 = A0_2._stage
  L6_2 = L6_2.ID
  L7_2 = A0_2
  L8_2 = A0_2._binder
  L8_2 = L8_2.red_dot
  L3_2(L4_2, L5_2, L6_2, L7_2, L8_2)
  L3_2 = A1_2.ID
  L4_2 = L0_1.EndlessStageID
  if L3_2 == L4_2 then
    L3_2 = "EvolveEventItem_FinalEvent_Loop"
    if L3_2 then
      goto lbl_76
    end
  end
  L3_2 = "EvolveEventItem_Loop"
  ::lbl_76::
  L4_2 = A1_2.ID
  L5_2 = L0_1.EndlessStageID
  if L4_2 == L5_2 then
    L4_2 = "EvolveEventItem_FinalEvent_Unlock"
    if L4_2 then
      goto lbl_84
    end
  end
  L4_2 = "EvolveEventItem_Unlock"
  ::lbl_84::
  L5_2 = A1_2.ShouldPlayUnlockAnim
  if L5_2 then
    L5_2 = A0_2._binder
    L5_2 = L5_2.lock_panel
    L6_2 = L5_2
    L5_2 = L5_2.SafeSetActive
    L7_2 = true
    L5_2(L6_2, L7_2)
    L5_2 = A0_2._binder
    L5_2 = L5_2.anim
    L6_2 = L5_2
    L5_2 = L5_2.Play
    L7_2 = L4_2
    L5_2(L6_2, L7_2)
    L5_2 = A0_2._binder
    L5_2 = L5_2.anim
    L6_2 = L5_2
    L5_2 = L5_2.PlayQueued
    L7_2 = L3_2
    L5_2(L6_2, L7_2)
    A1_2.ShouldPlayUnlockAnim = false
  else
    L5_2 = L2_1
    if L2_2 ~= L5_2 then
      L5_2 = A0_2._binder
      L5_2 = L5_2.anim
      L6_2 = L5_2
      L5_2 = L5_2.PlayQueued
      L7_2 = L3_2
      L5_2(L6_2, L7_2)
    end
  end
  L5_2 = A0_2._binder
  L5_2 = L5_2.enter_btn
  function L6_2()
    local L0_3, L1_3, L2_3, L3_3
    L0_3 = A0_2
    L1_3 = L0_3
    L0_3 = L0_3.save_navigation_target
    L2_3 = A0_2
    L3_3 = L2_3
    L2_3 = L2_3.game_obj
    L2_3, L3_3 = L2_3(L3_3)
    L0_3(L1_3, L2_3, L3_3)
  end
  L5_2.onSelectTrigger = L6_2
end
L6_1.setup_view = L7_1
function L7_1(A0_2)
  local L1_2
end
L6_1._on_dispose = L7_1
function L7_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = NavigationZoneType
  L2_2 = L2_2.Zone1
  if A1_2 == L2_2 then
    L3_2 = A0_2
    L2_2 = A0_2.set_navigation_target
    L5_2 = A0_2
    L4_2 = A0_2.get_navigation_target
    L4_2, L5_2 = L4_2(L5_2)
    L2_2(L3_2, L4_2, L5_2)
  end
end
L6_1._on_enter_zoom = L7_1
function L7_1(A0_2)
  local L1_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.enter_btn
  L1_2 = L1_2.gameObject
  return L1_2
end
L6_1.game_obj = L7_1
function L7_1(A0_2)
  local L1_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.enter_btn
  return L1_2
end
L6_1.button = L7_1
function L7_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L1_2 = A0_2._stage
  L2_2 = L1_2.HighScore
  L4_2 = L1_2
  L3_2 = L1_2.GetRankName
  L5_2 = L2_2
  L3_2 = L3_2(L4_2, L5_2)
  L4_2 = L0_1.RankIconPath
  L4_2 = L4_2[L3_2]
  L5_2 = A0_2._binder
  L5_2 = L5_2.score
  L6_2 = L5_2
  L5_2 = L5_2.SafeSetText
  L7_2 = L2_2
  L5_2(L6_2, L7_2)
  L5_2 = A0_2._binder
  L5_2 = L5_2.rank_text
  L6_2 = L5_2
  L5_2 = L5_2.SafeSetText
  L7_2 = L3_2
  L5_2(L6_2, L7_2)
  L6_2 = A0_2
  L5_2 = A0_2._async_load_sprite_to
  L7_2 = A0_2._binder
  L7_2 = L7_2.rank_icon
  L8_2 = L4_2
  L5_2(L6_2, L7_2, L8_2)
end
L6_1._setup_score_rank = L7_1
function L7_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L1_2 = A0_2._stage
  if L1_2 == nil then
    return
  end
  L1_2 = A0_2._stage
  L1_2 = L1_2.Status
  L2_2 = L2_1
  if L1_2 == L2_2 then
    L2_2 = G
    L2_2 = L2_2.NotifyManager
    L2_2 = L2_2.notify
    L3_2 = G
    L3_2 = L3_2.CS
    L3_2 = L3_2.NotifyType
    L3_2 = L3_2.UIPileToastMessageString
    L4_2 = G
    L4_2 = L4_2.TextmapStatic
    L4_2 = L4_2.GetText
    L5_2 = "UIText_EvolveBuild_MainPageStatusToast"
    L6_2 = A0_2._stage
    L6_2 = L6_2.LockToastParam
    L4_2, L5_2, L6_2, L7_2, L8_2, L9_2 = L4_2(L5_2, L6_2)
    L2_2(L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2)
    return
  end
  L2_2 = L4_1
  if L1_2 == L2_2 then
    L2_2 = G
    L2_2 = L2_2.UIManager
    L2_2 = L2_2.load_and_show
    L3_2 = "Ui.Activity.EvolveBuild.EvolveBuildLeaveDialog"
    L4_2 = L1_1.InProgressLevelInfo
    L2_2(L3_2, L4_2)
    return
  end
  L2_2 = L1_1.InProgressStage
  if L2_2 ~= nil then
    L3_2 = G
    L3_2 = L3_2.NotifyManager
    L3_2 = L3_2.notify
    L4_2 = G
    L4_2 = L4_2.CS
    L4_2 = L4_2.NotifyType
    L4_2 = L4_2.UIPileToastMessageString
    L5_2 = G
    L5_2 = L5_2.TextmapStatic
    L5_2 = L5_2.GetText
    L6_2 = "UIText_EvolveBuild_OtherStageInProgress"
    L7_2 = G
    L7_2 = L7_2.TextmapStatic
    L7_2 = L7_2.GetText
    L8_2 = L2_2.Name
    L7_2, L8_2, L9_2 = L7_2(L8_2)
    L5_2, L6_2, L7_2, L8_2, L9_2 = L5_2(L6_2, L7_2, L8_2, L9_2)
    L3_2(L4_2, L5_2, L6_2, L7_2, L8_2, L9_2)
    return
  end
  L3_2 = A0_2._stage
  L3_2 = L3_2.ID
  L4_2 = L0_1.TutorialStageID
  if L3_2 == L4_2 then
    L3_2 = L1_1
    L4_2 = L3_2
    L3_2 = L3_2.StartLevel
    L5_2 = L0_1.TutorialStageID
    L6_2 = 0
    L7_2 = 0
    L8_2 = A0_2._stage
    L9_2 = L8_2
    L8_2 = L8_2.GetTrialAvatars
    L8_2, L9_2 = L8_2(L9_2)
    L3_2(L4_2, L5_2, L6_2, L7_2, L8_2, L9_2)
    return
  end
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.Client
  L3_2 = L3_2.Prefs
  L3_2 = L3_2.User
  L4_2 = L3_2
  L3_2 = L3_2.SetEvolveBuildLastEnteredStageID
  L5_2 = A0_2._stage
  L5_2 = L5_2.ID
  L3_2(L4_2, L5_2)
  L3_2 = A0_2._stage
  L3_2.IsClicked = true
  L3_2 = G
  L3_2 = L3_2.UIManager
  L3_2 = L3_2.load_and_async_show
  L4_2 = G
  L4_2 = L4_2.EvolveBuildStagePage
  L5_2 = A0_2._stage
  L3_2(L4_2, L5_2)
end
L6_1._on_enter_btn_clicked = L7_1
return L6_1
