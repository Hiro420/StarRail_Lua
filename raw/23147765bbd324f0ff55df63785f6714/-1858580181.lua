local L0_1, L1_1, L2_1
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
L1_1 = "ActivityExpeditionContentPanelBinder"
L2_1 = G
L2_1 = L2_1.UIBinder
L0_1 = L0_1(L1_1, L2_1)
function L1_1(A0_2)
  local L1_2
  L1_2 = "UI/Assignment/Widget/MedicineDetailInfoPanel.prefab"
  return L1_2
end
L0_1.get_prefab_path = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L2_2 = A0_2
  L1_2 = A0_2._create_panel
  L3_2 = G
  L3_2 = L3_2.ExpeditionCountDownPanel
  L4_2 = G
  L4_2 = L4_2.ExpeditionCountDownPanelBinder
  L5_2 = "InfoPanel"
  L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2)
  A0_2.panel_count_down_activity = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Text
  L4_2 = "InfoPanel/Time/TimePanel/RemainTime/Hour"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.txt_activity_duration = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "InfoPanel/Time/TimePanel"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.node_activity_duration = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._create_panel
  L3_2 = G
  L3_2 = L3_2.ExpeditionAvatarIconListPanel
  L4_2 = G
  L4_2 = L4_2.ExpeditionAvatarIconListPanelBinder
  L5_2 = "Member"
  L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2)
  A0_2.panel_avatars_activity = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._create_panel
  L3_2 = G
  L3_2 = L3_2.ExpeditionAvatarHeadIconPanel
  L4_2 = G
  L4_2 = L4_2.ExpeditionAvatarHeadIconPanelBinder
  L5_2 = "Member/Support"
  L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2)
  A0_2.panel_avatar_assist = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "Member/Support/KeyMapInfo_Support"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.node_support_key_map = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "Member/MemberPanel/ScrollView/Viewport/KeyMapInfo_Member"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.node_avatar_key_map = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._create_panel
  L3_2 = G
  L3_2 = L3_2.ExpeditionDetailRewardPanel
  L4_2 = G
  L4_2 = L4_2.ExpeditionDetailRewardPanelBinder
  L5_2 = "Reward"
  L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2)
  A0_2.panel_reward_activity = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "Outline"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.node_frame_activity = L1_2
end
L0_1._on_bind = L1_1
return L0_1
