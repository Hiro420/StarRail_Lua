local L0_1, L1_1, L2_1
L0_1 = require
L1_1 = "Ui.Team.TeamMemberMultiSelectPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Team.TeamMemberMultiSelectPanelBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Team.TeamMemberMultiListMultiSelectPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Team.TeamLimitPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Team.TeamLimitPanelBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Team.Widget.DamageTypeListPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Team.Widget.DamageTypeListPanelBinder"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "TeamQuickEditPageBinder"
L2_1 = G
L2_1 = L2_1.UIBinder
L0_1 = L0_1(L1_1, L2_1)
function L1_1(A0_2)
  local L1_2
  L1_2 = "UI/Team/TeamMemberChoosePage.prefab"
  return L1_2
end
L0_1.get_prefab_path = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.Transform
  L4_2 = "AvatarDetailInfo/TeamMemberEditContents"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.node_info = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.Transform
  L4_2 = "FuntionPanel/BtnConfirm"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.node_confirm = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.Transform
  L4_2 = "FuntionPanel/BtnDetail"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.node_detail = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.Transform
  L4_2 = "AvatarDetailInfo/AvatarPanel/AvatarEmptyPanel"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.node_empty_tip = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.Client
  L3_2 = L3_2.CustomButton
  L4_2 = "FuntionPanel/BtnSave"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.btn_save = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.Client
  L3_2 = L3_2.CustomButton
  L4_2 = "FuntionPanel/BtnBack"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.btn_close = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.Client
  L3_2 = L3_2.CustomButton
  L4_2 = "AvatarDetailInfo/AvatarPanel"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.btn_avatar = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._create_panel
  L3_2 = G
  L3_2 = L3_2.TeamMemberMultiSelectPanel
  L4_2 = G
  L4_2 = L4_2.TeamMemberMultiSelectPanelBinder
  L5_2 = "MemberList"
  L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2)
  A0_2.panel_avatar_select = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._create_panel
  L3_2 = G
  L3_2 = L3_2.TeamMemberMultiListMultiSelectPanel
  L4_2 = G
  L4_2 = L4_2.TeamMemberMultiListMultiSelectPanelBinder
  L5_2 = "MemberListMulti"
  L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2)
  A0_2.multi_list_panel_avater_select = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "ChallengePanel"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.node_tip = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._create_panel
  L3_2 = G
  L3_2 = L3_2.TeamLimitPanel
  L4_2 = G
  L4_2 = L4_2.TeamLimitPanelBinder
  L5_2 = "ChallengePanel"
  L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2)
  A0_2.panel_team_limit = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._create_panel
  L3_2 = G
  L3_2 = L3_2.DamageTypeListPanel
  L4_2 = G
  L4_2 = L4_2.DamageTypeListPanelBinder
  L5_2 = "ChallengePanel/ConditionPanel/PropertyPanel"
  L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2)
  A0_2.panel_damages = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Text
  L4_2 = "FuntionPanel/TeamBuffPanel/BuffStateBtn/TextPanel/Root/TitleText"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.text_buff_state_btn = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "FuntionPanel/TeamBuffPanel"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.node_team_buff_panel = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.Client
  L3_2 = L3_2.AnimatorButton
  L4_2 = "FuntionPanel/TeamBuffPanel/BuffStateBtn"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.btn_buff_state = L1_2
end
L0_1._on_bind = L1_1
return L0_1
