local L0_1, L1_1, L2_1
L0_1 = require
L1_1 = "Ui.ChallengeStory.Maze.ChallengeStoryLoadingPageBinder"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "ChallengeStoryLoadingPage"
L2_1 = G
L2_1 = L2_1.UIController
L0_1 = L0_1(L1_1, L2_1)
function L1_1(A0_2)
  local L1_2, L2_2, L3_2
  L2_2 = A0_2
  L1_2 = A0_2._create_binder
  L3_2 = G
  L3_2 = L3_2.ChallengeStoryLoadingPageBinder
  L1_2 = L1_2(L2_2, L3_2)
  A0_2._binder = L1_2
  L1_2 = G
  L1_2 = L1_2.ImportCsToLua
  L1_2 = L1_2.CS_RPG_Client_UILayer_AboveDialog
  A0_2._ui_layer = L1_2
  A0_2._close_when_phase_changed = false
end
L0_1.ctor = L1_1
function L1_1(A0_2)
  local L1_2
end
L0_1.init = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.ChallengeStoryLoadingFinished
  L4_2 = A0_2._on_loading_finished
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.LoadingProgress
  L4_2 = L0_1._on_loading_progress
  L1_2(L2_2, L3_2, L4_2)
end
L0_1._on_load = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.GlobalVars
  L1_2 = L1_2.s_ModuleManager
  L1_2 = L1_2.ChallengeModule
  L1_2 = L1_2.CurrentChallengeInstance
  A0_2._challenge_instance = L1_2
  L1_2 = A0_2._challenge_instance
  L1_2 = L1_2.ChallengeDataRef
  A0_2._challenge_data = L1_2
  L2_2 = A0_2
  L1_2 = A0_2.load_sprite_to
  L3_2 = A0_2._binder
  L3_2 = L3_2.img_fill
  L4_2 = A0_2._challenge_data
  L4_2 = L4_2.ChallengeGroupDataRef
  L4_2 = L4_2.StoryGroupExtraInfoRow
  L4_2 = L4_2.ThemeIconPicPath
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2.load_sprite_to
  L3_2 = A0_2._binder
  L3_2 = L3_2.img_progress
  L4_2 = A0_2._challenge_data
  L4_2 = L4_2.ChallengeGroupDataRef
  L4_2 = L4_2.StoryGroupExtraInfoRow
  L4_2 = L4_2.ThemeIconPicPath
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.TextmapStatic
  L1_2 = L1_2.GetText
  L2_2 = A0_2._challenge_data
  L2_2 = L2_2.ChallengeGroupDataRef
  L2_2 = L2_2.GroupName
  L1_2 = L1_2(L2_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.img_fill
  L2_2.fillAmount = 0
  L2_2 = A0_2._binder
  L2_2 = L2_2.txt_title
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetTextID
  L4_2 = "UIText_GameplayGuide_ChallengeStory_Title"
  L5_2 = L1_2
  L2_2(L3_2, L4_2, L5_2)
end
L0_1._setup_view = L1_1
function L1_1(A0_2, A1_2)
  local L2_2
  A0_2._progress = A1_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.img_fill
  L2_2.fillAmount = A1_2
end
L0_1._on_loading_progress = L1_1
function L1_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2.exit
  L1_2(L2_2)
end
L0_1._on_loading_finished = L1_1
return L0_1
