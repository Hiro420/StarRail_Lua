local L0_1, L1_1, L2_1
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
L0_1 = require
L1_1 = "Ui.Relic.RelicLockPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Relic.RelicLockPanelBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Relic.RelicReplaceToggleBtnPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Relic.RelicReplaceToggleBtnPanelBinder"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "RelicReplacePanelBinder"
L2_1 = G
L2_1 = L2_1.UIBinder
L0_1 = L0_1(L1_1, L2_1)
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Button
  L4_2 = "Contents/FunctionPanel/BtnReplace"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.btn_replace = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Button
  L4_2 = "Contents/FunctionPanel/BtnEquip"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.btn_equip = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Button
  L4_2 = "Contents/FunctionPanel/BtnUpdate"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.btn_upgrade = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Button
  L4_2 = "Contents/FunctionPanel/BtnDisMount"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.btn_dismount = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Text
  L4_2 = "Contents/RelicInfo/RelicSkillPanel/RelicSetListPanel/ScrollView/Viewport/Content/StoryDesc"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.text_bg_desc = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Text
  L4_2 = "Contents/RelicInfoDetail/PositionPanel/Text"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.text_position = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Text
  L4_2 = "Contents/RelicInfoDetail/NumPanel/Num"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.text_level = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Text
  L4_2 = "Contents/RelicInfoDetail/TitlePanel/Text"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.text_relic_name = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "Contents/RelicInfo/EquippedInfo"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.node_equip_info = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Image
  L4_2 = "Contents/RelicInfo/EquippedInfo/IconProfession"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.img_profession = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Image
  L4_2 = "Contents/RelicInfo/EquippedInfo/EquipCharaMark/CharaPanel/ImgAvatar"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.img_avatar = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._create_panel
  L3_2 = G
  L3_2 = L3_2.RelicReplaceToggleBtnPanel
  L4_2 = G
  L4_2 = L4_2.RelicReplaceToggleBtnPanelBinder
  L5_2 = "Contents/TopBtnPanel/BtnStatusDetail"
  L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2)
  A0_2.panel_btn_detail = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._create_panel
  L3_2 = G
  L3_2 = L3_2.RelicReplaceToggleBtnPanel
  L4_2 = G
  L4_2 = L4_2.RelicReplaceToggleBtnPanelBinder
  L5_2 = "Contents/TopBtnPanel/BtnRecommend"
  L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2)
  A0_2.panel_btn_recommend = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.ScrollRect
  L4_2 = "Contents/RelicInfo/RelicSkillPanel/RelicSetListPanel/ScrollView"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.scroll_rect = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "Contents/RelicInfo/RelicSkillPanel/RelicSetListPanel/ScrollView"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.node_scroll_content = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "Contents/RelicInfo/RelicSkillPanel/RelicDetailEmptyPanel"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.node_empty = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._create_panel
  L3_2 = G
  L3_2 = L3_2.RelicStatusPanel
  L4_2 = G
  L4_2 = L4_2.RelicStatusPanelBinder
  L5_2 = "Contents/RelicInfo/RelicStatusPanel/RelicStatusInfo"
  L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2)
  A0_2.relic_status_panel = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._create_panel
  L3_2 = G
  L3_2 = L3_2.RelicSetSkillInfoPanel
  L4_2 = G
  L4_2 = L4_2.RelicSetSkillInfoPanelBinder
  L5_2 = "Contents/RelicInfo/RelicSkillPanel/RelicSetListPanel/ScrollView/Viewport/Content/RelicSetSkillInfo"
  L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2)
  A0_2.set_skill_info_panel = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._create_panel
  L3_2 = G
  L3_2 = L3_2.RelicLockPanel
  L4_2 = G
  L4_2 = L4_2.RelicLockPanelBinder
  L5_2 = "Contents/RelicInfoDetail/LockBtnPanel"
  L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2)
  A0_2.lock_panel = L1_2
end
L0_1._on_bind = L1_1
return L0_1
