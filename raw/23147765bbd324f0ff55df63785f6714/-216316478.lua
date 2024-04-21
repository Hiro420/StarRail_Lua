local L0_1, L1_1, L2_1
L0_1 = require
L1_1 = "Ui.Relic.RelicLockPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Relic.RelicLockPanelBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Relic.RelicStatusPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Relic.RelicStatusPanelBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Relic.RelicSetSkillInfoPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Relic.RelicSetSkillInfoPanelBinder"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "RelicDetailSingleTabItemBinder"
L2_1 = G
L2_1 = L2_1.TabItemBinder
L0_1 = L0_1(L1_1, L2_1)
function L1_1(A0_2)
  local L1_2
  L1_2 = "UI/Avatar/Relic/Widget/AvatarRelicSingletDetailPanel.prefab"
  return L1_2
end
L0_1.get_prefab_path = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Button
  L4_2 = "RelicInfoPanel/FunctionPanel/BtnStory"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.btn_story = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Button
  L4_2 = "RelicInfoPanel/FunctionPanel/BtnPutOff"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.btn_takeoff = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Text
  L4_2 = "RelicInfoPanel/RelicInfoDetail/TitlePanel/Text"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.text_name = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Text
  L4_2 = "RelicInfoPanel/RelicInfoDetail/PositionPanel/Text"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.text_position = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Text
  L4_2 = "RelicInfoPanel/RelicInfoDetail/NumPanel/Num"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.text_level = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Text
  L4_2 = "RelicInfoPanel/RelicInfo/RelicSkillPanel/RelicSetListPanel/ScrollView/Viewport/Content/StoryDesc"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.text_bg_story = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Image
  L4_2 = "RelicInfoPanel/EquippedInfo/IconProfession"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.img_profession = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Image
  L4_2 = "RelicInfoPanel/EquippedInfo/EquipCharaMark/CharaPanel/ImgAvatar"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.img_avatar = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "RelicInfoPanel/EquippedInfo"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.node_belong_to = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._create_panel
  L3_2 = G
  L3_2 = L3_2.RelicLockPanel
  L4_2 = G
  L4_2 = L4_2.RelicLockPanelBinder
  L5_2 = "RelicInfoPanel/RelicInfoDetail/LockBtnPanel"
  L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2)
  A0_2.lock_panel = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._create_panel
  L3_2 = G
  L3_2 = L3_2.RelicStatusPanel
  L4_2 = G
  L4_2 = L4_2.RelicStatusPanelBinder
  L5_2 = "RelicInfoPanel/RelicInfo/RelicStatusPanel/RelicStatusInfo"
  L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2)
  A0_2.status_panel = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._create_panel
  L3_2 = G
  L3_2 = L3_2.RelicSetSkillInfoPanel
  L4_2 = G
  L4_2 = L4_2.RelicSetSkillInfoPanelBinder
  L5_2 = "RelicInfoPanel/RelicInfo/RelicSkillPanel/RelicSetListPanel/ScrollView/Viewport/Content/RelicSetSkillInfo"
  L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2)
  A0_2.set_skill_panel = L1_2
end
L0_1._on_bind = L1_1
function L1_1(A0_2)
  local L1_2
end
L0_1._on_tab_btn_bind = L1_1
return L0_1
