local L0_1, L1_1, L2_1
L0_1 = require
L1_1 = "Ui.Challenge.Entrance.Common.ChallengeRecommendPanelBinder"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "ChallengeRecommendPanel"
L2_1 = G
L2_1 = L2_1.BasePanel
L0_1 = L0_1(L1_1, L2_1)
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_recommend
  L4_2 = A0_2._on_btn_recommend
  L1_2(L2_2, L3_2, L4_2)
end
L0_1._on_load = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2
  A0_2._challenge_data = A1_2
  L2_2 = A0_2._challenge_data
  L2_2 = L2_2.ChallengeGroupDataRef
  L2_2 = L2_2.IsScheduleChallenge
  L3_2 = L2_2 or L3_2
  if L2_2 then
    L3_2 = CS
    L3_2 = L3_2.RPG
    L3_2 = L3_2.Client
    L3_2 = L3_2.ChallengeRecommendData
    L3_2 = L3_2.IsChallengeRecommendFeatureOpen
    L3_2 = L3_2()
  end
  L5_2 = A0_2
  L4_2 = A0_2.safe_set_active
  L6_2 = L3_2
  L4_2(L5_2, L6_2)
  if L3_2 then
    L4_2 = G
    L4_2 = L4_2.NotifyManager
    L4_2 = L4_2.notify
    L5_2 = G
    L5_2 = L5_2.CS
    L5_2 = L5_2.NotifyType
    L5_2 = L5_2.TutorialTaskUnlock
    L6_2 = "4033"
    L4_2(L5_2, L6_2)
  end
end
L0_1.setup_view = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L1_2 = A0_2._challenge_data
  if L1_2 == nil then
    return
  end
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.ChallengeRecommendData
  L1_2 = L1_2.IsChallengeRecommendFeatureOpen
  L1_2 = L1_2()
  if not L1_2 then
    L1_2 = A0_2._binder
    L1_2 = L1_2.btn_recommend
    L2_2 = L1_2
    L1_2 = L1_2.SafeSetActive
    L3_2 = false
    L1_2(L2_2, L3_2)
    return
  end
  L1_2 = A0_2._recommend_data
  if L1_2 == nil then
    L1_2 = CS
    L1_2 = L1_2.RPG
    L1_2 = L1_2.Client
    L1_2 = L1_2.ChallengeRecommendData
    L1_2 = L1_2.Create
    L2_2 = A0_2._challenge_data
    L2_2 = L2_2.ID
    L1_2 = L1_2(L2_2)
    A0_2._recommend_data = L1_2
    L1_2 = A0_2._recommend_data
    L2_2 = L1_2
    L1_2 = L1_2.GetRecommendLineupDataPromise
    L1_2 = L1_2(L2_2)
    L2_2 = L1_2
    L1_2 = L1_2.ThenLuaAction
    function L3_2()
      local L0_3, L1_3
      L0_3 = A0_2
      L1_3 = L0_3
      L0_3 = L0_3._on_btn_recommend
      L0_3(L1_3)
    end
    L1_2(L2_2, L3_2)
    return
  end
  L1_2 = A0_2._recommend_data
  L1_2 = L1_2.RecommendLineupData
  if L1_2 ~= nil then
    L2_2 = A0_2._owner
    L2_2 = L2_2.__name
    L3_2 = CS
    L3_2 = L3_2.RPG
    L3_2 = L3_2.Client
    L3_2 = L3_2.SDKLuaReportAdapter
    L3_2 = L3_2.ReportUIPanelSwitch
    L4_2 = L2_2
    L5_2 = "FriendChallengeTeamPanel"
    L6_2 = A0_2._owner
    L6_2 = L6_2.guid
    L3_2(L4_2, L5_2, L6_2)
    L3_2 = G
    L3_2 = L3_2.new
    L4_2 = "Ui.PlayerInfo.RecommendLineupListDialog"
    L3_2 = L3_2(L4_2)
    L5_2 = L3_2
    L4_2 = L3_2.init
    L6_2 = L1_2
    L7_2 = A0_2._challenge_data
    L7_2 = L7_2.Name
    L8_2 = L2_2
    L4_2(L5_2, L6_2, L7_2, L8_2)
    L4_2 = A0_2._recommend_data
    L4_2 = L4_2.CanRefresh
    if not L4_2 then
      L5_2 = L3_2
      L4_2 = L3_2.disable_refresh
      L4_2(L5_2)
    end
    L5_2 = L3_2
    L4_2 = L3_2.async_show
    L4_2(L5_2)
  end
end
L0_1._on_btn_recommend = L1_1
return L0_1
