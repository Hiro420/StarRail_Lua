local L0_1, L1_1, L2_1
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "MissionChroniclePathDetailPanelBinder"
L2_1 = G
L2_1 = L2_1.UIBinder
L0_1 = L0_1(L1_1, L2_1)
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.Client
  L3_2 = L3_2.AnimatorButton
  L4_2 = "RightPanel/BtnClose"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.btn_close = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.Animation
  L4_2 = ""
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.anim_root = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "RightPanel/ChapterNamePanel"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.node_chapter = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.Client
  L3_2 = L3_2.LocalizedText
  L4_2 = "RightPanel/ChapterNamePanel/Content/Name"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.txt_chapter = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "RightPanel/ChapterImg"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.node_img_path = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Image
  L4_2 = "RightPanel/ChapterImg/Bg/RarityBg"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.img_path = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.Client
  L3_2 = L3_2.LocalizedText
  L4_2 = "RightPanel/MissionNamePanel/MissionNameText"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.txt_mission_name = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "RightPanel/DetailPanel/ScrollView/Viewport/Content/AvatarPanel"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.node_avatar_panel = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "RightPanel/DetailPanel/ScrollView/Viewport/Content/MissionBriefly"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.node_mission_hint = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.Client
  L3_2 = L3_2.LocalizedText
  L4_2 = "RightPanel/DetailPanel/ScrollView/Viewport/Content/MissionBriefly/TextPanel/Text"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.txt_mission_hint = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "RightPanel/DetailPanel/ScrollView/Viewport/Content/MissionDescText"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.node_mission_desc = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.Client
  L3_2 = L3_2.LocalizedText
  L4_2 = "RightPanel/DetailPanel/ScrollView/Viewport/Content/MissionDescText/Text"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.txt_mission_desc = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "RightPanel/DetailPanel/ScrollView/Viewport/Content/UnlockHintPanel"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.node_unlock_condition = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.Client
  L3_2 = L3_2.AnimatorButton
  L4_2 = "RightPanel/BtnPanel/BtnGo"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.btn_go_to = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "RightPanel/ChallengeHintPanel/CompletedTip"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.node_complete_hint = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "RightPanel/ChallengeHintPanel/UnlockTip"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.node_lock_hint = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "RightPanel/PerspectiveState"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.node_story_line_hint = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Image
  L4_2 = "RightPanel/PerspectiveState/EquipCharaMark/CharaPanel/ImgAvatar"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.img_story_line_icon = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.Client
  L3_2 = L3_2.LocalizedText
  L4_2 = "RightPanel/PerspectiveState/Text"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.txt_story_line_hint = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.ScrollRect
  L4_2 = "RightPanel/DetailPanel/ScrollView"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.scroll_rect = L1_2
end
L0_1._on_bind = L1_1
return L0_1
