local L0_1, L1_1, L2_1, L3_1
L0_1 = require
L1_1 = "Ui.Activity.ActivityRankPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Activity.ActivityRankPanelBinder"
L0_1(L1_1)
L0_1 = CS
L0_1 = L0_1.RPG
L0_1 = L0_1.Client
L0_1 = L0_1.GlobalVars
L0_1 = L0_1.s_ModuleManager
L0_1 = L0_1.ActivityTelevisionModule
L1_1 = G
L1_1 = L1_1.Class
L2_1 = "MapActivityTelevisionPanel"
L3_1 = G
L3_1 = L3_1.BasePanel
L1_1 = L1_1(L2_1, L3_1)
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2.obj_progress
  if L1_2 == nil then
    L2_2 = A0_2
    L1_2 = A0_2.sync_load_prefab
    L3_2 = "UI/Map/Widget/TelevisionScoreInfo.prefab"
    L4_2 = A0_2._binder
    L4_2 = L4_2.node_television_progress
    L1_2 = L1_2(L2_2, L3_2, L4_2)
    A0_2.obj_progress = L1_2
  end
  L1_2 = G
  L1_2 = L1_2.ComponentExtensions
  L1_2 = L1_2.SafeGetCmpt
  L2_2 = typeof
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Text
  L2_2 = L2_2(L3_2)
  L3_2 = A0_2.obj_progress
  L3_2 = L3_2.transform
  L4_2 = "Root/Progress01/ScorePanel/TextDetail/Num"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.txt_score = L1_2
  L1_2 = G
  L1_2 = L1_2.ComponentExtensions
  L1_2 = L1_2.SafeFind
  L2_2 = A0_2.obj_progress
  L2_2 = L2_2.transform
  L3_2 = "Root/Progress01/ScorePanel/TextDetail/CommonRankHint"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.node_rank = L1_2
  L1_2 = G
  L1_2 = L1_2.ComponentExtensions
  L1_2 = L1_2.SafeGetCmpt
  L2_2 = typeof
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Text
  L2_2 = L2_2(L3_2)
  L3_2 = A0_2.obj_progress
  L3_2 = L3_2.transform
  L4_2 = "Root/Progress01/Text1"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.txt_tips = L1_2
  L1_2 = G
  L1_2 = L1_2.ComponentExtensions
  L1_2 = L1_2.SafeFind
  L2_2 = A0_2.obj_progress
  L2_2 = L2_2.transform
  L3_2 = "Root/Progress01/ScorePanel"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.node_score_panel = L1_2
  L2_2 = A0_2
  L1_2 = A0_2.create_panel
  L3_2 = G
  L3_2 = L3_2.ActivityRankPanel
  L4_2 = G
  L4_2 = L4_2.ActivityRankPanelBinder
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.rank_panel = L1_2
  L1_2 = A0_2.rank_panel
  L2_2 = L1_2
  L1_2 = L1_2.bind
  L3_2 = A0_2.node_rank
  L1_2(L2_2, L3_2)
end
L1_1._on_load = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  A0_2.param_data = A1_2
  L2_2 = A0_2.param_data
  L2_2 = L2_2.map_icon_data
  L2_2 = L2_2.EntranceID
  A0_2.entrance_id = L2_2
  L2_2 = L0_1
  L3_2 = L2_2
  L2_2 = L2_2.GetTelevisionDataByMappingInfoID
  L4_2 = A1_2.map_icon_data
  L4_2 = L4_2.MappingInfoID
  L2_2 = L2_2(L3_2, L4_2)
  A0_2.television_data = L2_2
  L3_2 = A0_2
  L2_2 = A0_2._setup_activity_television_view
  L2_2(L3_2)
end
L1_1.setup_view = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_progress
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = true
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_television_progress
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = true
  L1_2(L2_2, L3_2)
  L1_2 = A0_2.television_data
  L2_2 = L1_2
  L1_2 = L1_2.IsRevealed
  L1_2 = L1_2(L2_2)
  if L1_2 then
    L1_2 = A0_2._binder
    L1_2 = L1_2.text_title
    L2_2 = L1_2
    L1_2 = L1_2.SafeSetTextID
    L3_2 = A0_2.television_data
    L3_2 = L3_2.Row
    L3_2 = L3_2.StageName
    L1_2(L2_2, L3_2)
    L1_2 = A0_2._binder
    L1_2 = L1_2.text_desc
    L2_2 = L1_2
    L1_2 = L1_2.SafeSetTextID
    L3_2 = A0_2.television_data
    L3_2 = L3_2.Row
    L3_2 = L3_2.Desc
    L1_2(L2_2, L3_2)
  else
    L1_2 = A0_2._binder
    L1_2 = L1_2.text_title
    L2_2 = L1_2
    L1_2 = L1_2.SafeSetTextID
    L3_2 = A0_2.television_data
    L3_2 = L3_2.Row
    L3_2 = L3_2.OriginalStageName
    L1_2(L2_2, L3_2)
    L1_2 = A0_2._binder
    L1_2 = L1_2.text_desc
    L2_2 = L1_2
    L1_2 = L1_2.SafeSetTextID
    L3_2 = A0_2.television_data
    L3_2 = L3_2.Row
    L3_2 = L3_2.OriginalDesc
    L1_2(L2_2, L3_2)
  end
  L1_2 = A0_2.television_data
  L2_2 = L1_2
  L1_2 = L1_2.NotChallenged
  L1_2 = L1_2(L2_2)
  L2_2 = A0_2.node_score_panel
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = not L1_2
  L2_2(L3_2, L4_2)
  if L1_2 then
    L2_2 = A0_2.txt_tips
    L3_2 = L2_2
    L2_2 = L2_2.SafeSetTextID
    L4_2 = "UIText_ActivityTelevision_UnChallenge_Tip1"
    L2_2(L3_2, L4_2)
  else
    L2_2 = A0_2.txt_tips
    L3_2 = L2_2
    L2_2 = L2_2.SafeSetTextID
    L4_2 = "UIText_ActivityTelevision_MapScore"
    L2_2(L3_2, L4_2)
    L2_2 = A0_2.txt_score
    L3_2 = L2_2
    L2_2 = L2_2.SafeSetText
    L4_2 = A0_2.television_data
    L4_2 = L4_2.Score
    L2_2(L3_2, L4_2)
    L2_2 = L0_1
    L3_2 = L2_2
    L2_2 = L2_2.GetScoreRank
    L4_2 = A0_2.television_data
    L4_2 = L4_2.Score
    L2_2 = L2_2(L3_2, L4_2)
    L3_2 = A0_2.rank_panel
    L4_2 = L3_2
    L3_2 = L3_2.setup_view
    L5_2 = L2_2
    L3_2(L4_2, L5_2)
  end
end
L1_1._setup_activity_television_view = L2_1
return L1_1
