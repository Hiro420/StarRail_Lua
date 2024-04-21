local L0_1, L1_1, L2_1
L0_1 = require
L1_1 = "Ui.Expedition.Detail.ExpeditionDurationPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Expedition.Detail.ExpeditionDurationPanelBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Expedition.Detail.ExpeditionCountDownPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Expedition.Detail.ExpeditionCountDownPanelBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Expedition.Detail.ExpeditionDetailRewardPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Expedition.Detail.ExpeditionDetailRewardPanelBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Team.Widget.ProfessionTypeListPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Team.Widget.ProfessionTypeListPanelBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Expedition.Detail.ExpeditionDetailBtnPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Expedition.Detail.ExpeditionDetailBtnPanelBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Expedition.Detail.ExpeditionDetailInfoPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Expedition.Detail.ExpeditionDetailInfoPanelBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Expedition.Detail.ExpeditionAvatarIconListPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Expedition.Detail.ExpeditionAvatarIconListPanelBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Expedition.Detail.ExpeditionAvatarHeadIconPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Expedition.Detail.ExpeditionAvatarHeadIconPanelBinder"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "ExpeditionDetailPanelBinder"
L2_1 = G
L2_1 = L2_1.UIBinder
L0_1 = L0_1(L1_1, L2_1)
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L2_2 = A0_2
  L1_2 = A0_2._create_panel
  L3_2 = G
  L3_2 = L3_2.ExpeditionDetailInfoPanel
  L4_2 = G
  L4_2 = L4_2.ExpeditionDetailInfoPanelBinder
  L5_2 = "MissionDetail/AssignInfo"
  L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2)
  A0_2.panel_info = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "MissionDetail/AssignInfo/Seal"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.node_seal = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._create_panel
  L3_2 = G
  L3_2 = L3_2.ProfessionTypeListPanel
  L4_2 = G
  L4_2 = L4_2.ProfessionTypeListPanelBinder
  L5_2 = "MissionDetail/AssignInfo/ClientPanel2/PropertyPanel"
  L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2)
  A0_2.panel_types = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "DetailInfoPanel"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.node_normal = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "MedicineDetailInfoPanel"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.node_activity = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._create_panel
  L3_2 = G
  L3_2 = L3_2.ExpeditionCountDownPanel
  L4_2 = G
  L4_2 = L4_2.ExpeditionCountDownPanelBinder
  L5_2 = "DetailInfoPanel/InfoPanel"
  L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2)
  A0_2.panel_count_down = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._create_panel
  L3_2 = G
  L3_2 = L3_2.ExpeditionDurationPanel
  L4_2 = G
  L4_2 = L4_2.ExpeditionDurationPanelBinder
  L5_2 = "DetailInfoPanel/InfoPanel/Time/TimePanel"
  L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2)
  A0_2.panel_select_duration = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._create_panel
  L3_2 = G
  L3_2 = L3_2.ExpeditionAvatarIconListPanel
  L4_2 = G
  L4_2 = L4_2.ExpeditionAvatarIconListPanelBinder
  L5_2 = "DetailInfoPanel/Member"
  L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2)
  A0_2.panel_avatars = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._create_panel
  L3_2 = G
  L3_2 = L3_2.ExpeditionDetailRewardPanel
  L4_2 = G
  L4_2 = L4_2.ExpeditionDetailRewardPanelBinder
  L5_2 = "DetailInfoPanel/Reward"
  L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2)
  A0_2.panel_reward = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "DetailInfoPanel/Outline"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.node_frame = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._create_panel
  L3_2 = G
  L3_2 = L3_2.ExpeditionDetailBtnPanel
  L4_2 = G
  L4_2 = L4_2.ExpeditionDetailBtnPanelBinder
  L5_2 = ""
  L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2)
  A0_2.panel_btn = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "UnlockTime"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.node_timer_lock = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.Client
  L3_2 = L3_2.MonoRemainTimer
  L4_2 = "UnlockTime/UnLock/RemainTime"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.timer_lock = L1_2
end
L0_1._on_bind = L1_1
return L0_1
