local L0_1, L1_1, L2_1
L0_1 = require
L1_1 = "Ui.Rogue.Aeon.Panels.RogueAeonEffectDescPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Rogue.Aeon.Panels.RogueAeonEffectDescPanelBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Rogue.Aeon.Panels.RogueAeonBuffIconPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Rogue.Aeon.Panels.RogueAeonBuffIconPanelBinder"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "RogueAeonDetailPanelBinder"
L2_1 = G
L2_1 = L2_1.UIBinder
L0_1 = L0_1(L1_1, L2_1)
function L1_1(A0_2)
  local L1_2
  L1_2 = "UI/Rogue/Echo/RoguePathEchoDetailInfo.prefab"
  return L1_2
end
L0_1.get_prefab_path = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.CanvasGroup
  L4_2 = ""
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.canvas_group = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Image
  L4_2 = "LeftPanel/PathEchoInfo/IconPanel/Img"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.img_aeon_icon = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.Client
  L3_2 = L3_2.LocalizedText
  L4_2 = "LeftPanel/PathEchoInfo/NamePanel/Text"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.text_aeon_name = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Image
  L4_2 = "RightPanel/Frame/Image"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.img_aeon_bg = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "RightPanel/AttributeInfoPanel"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.node_effect = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.Client
  L3_2 = L3_2.LocalizedText
  L4_2 = "RightPanel/AttributeInfoPanel/HintText"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.text_effect_tip = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._create_panel
  L3_2 = G
  L3_2 = L3_2.NodeListView
  L4_2 = G
  L4_2 = L4_2.NodeListViewBinder
  L5_2 = "RightPanel/AttributeInfoPanel/InfoList/Viewport/Content"
  L6_2 = "Ui.Rogue.Aeon.Panels.RogueAeonEffectDescPanel"
  L7_2 = "Ui.Rogue.Aeon.Panels.RogueAeonEffectDescPanelBinder"
  L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2, L6_2, L7_2)
  A0_2.list_effect_desc = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.Client
  L3_2 = L3_2.LocalizedText
  L4_2 = "RightPanel/EffectPanel/HintText"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.text_buff_tip = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._create_panel
  L3_2 = G
  L3_2 = L3_2.RogueAeonBuffIconPanel
  L4_2 = G
  L4_2 = L4_2.RogueAeonBuffIconPanelBinder
  L5_2 = "RightPanel/EffectPanel/BasicSkillPanel/Skill01"
  L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2)
  A0_2.panel_buff_basic = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "RightPanel/EffectPanel/UpgadeSkillPanel/SkillList"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.node_enhance_buff_root = L1_2
  L1_2 = {}
  A0_2.panels_buff_enhanced = L1_2
  L1_2 = 1
  L2_2 = 3
  L3_2 = 1
  for L4_2 = L1_2, L2_2, L3_2 do
    L6_2 = A0_2
    L5_2 = A0_2._create_panel
    L7_2 = G
    L7_2 = L7_2.RogueAeonBuffIconPanel
    L8_2 = G
    L8_2 = L8_2.RogueAeonBuffIconPanelBinder
    L9_2 = "RightPanel/EffectPanel/UpgadeSkillPanel/SkillList/Skill"
    L10_2 = tostring
    L11_2 = L4_2
    L10_2 = L10_2(L11_2)
    L11_2 = "/RoguePathEchoBtn"
    L9_2 = L9_2 .. L10_2 .. L11_2
    L5_2 = L5_2(L6_2, L7_2, L8_2, L9_2)
    L6_2 = table
    L6_2 = L6_2.insert
    L7_2 = A0_2.panels_buff_enhanced
    L8_2 = A0_2.panels_buff_enhanced
    L8_2 = #L8_2
    L8_2 = L8_2 + 1
    L9_2 = L5_2
    L6_2(L7_2, L8_2, L9_2)
  end
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "RightPanel/EffectPanel/UpgadeSkillPanel/EmptyStatusTip"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.node_buff_enhance_locked = L1_2
end
L0_1._on_bind = L1_1
return L0_1
