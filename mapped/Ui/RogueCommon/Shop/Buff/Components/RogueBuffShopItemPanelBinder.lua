local L0_1, L1_1, L2_1
L0_1 = require
L1_1 = "Ui.Rogue.Buff.Panels.RogueBuffRarityPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Rogue.Buff.Panels.RogueBuffRarityPanelBinder"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "RogueBuffShopItemPanelBinder"
L2_1 = G
L2_1 = L2_1.UIBinder
L0_1 = L0_1(L1_1, L2_1)
function L1_1(A0_2)
  local L1_2
  L1_2 = "UI/Rogue/AtlasPanel/RogueItemIcon.prefab"
  return L1_2
end
L0_1.get_prefab_path = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.Client
  L3_2 = L3_2.AnimatorButton
  L4_2 = ""
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.btn_buff = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.Client
  L3_2 = L3_2.AnimatorButton
  L4_2 = "Root/MinusBtn"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.btn_minus = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.CanvasGroup
  L4_2 = "Root"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.root_canvas = L1_2
  L1_2 = {}
  A0_2.node_bg_normal_table = L1_2
  L1_2 = {}
  A0_2.node_bg_up_table = L1_2
  L1_2 = 1
  L2_2 = 3
  L3_2 = 1
  for L4_2 = L1_2, L2_2, L3_2 do
    L6_2 = A0_2
    L5_2 = A0_2._safe_find
    L7_2 = "Root/Bg/Rank0"
    L8_2 = L4_2
    L7_2 = L7_2 .. L8_2
    L5_2 = L5_2(L6_2, L7_2)
    L6_2 = table
    L6_2 = L6_2.insert
    L7_2 = A0_2.node_bg_normal_table
    L8_2 = L5_2
    L6_2(L7_2, L8_2)
    L7_2 = A0_2
    L6_2 = A0_2._safe_find
    L8_2 = "Root/Bg/Rank0"
    L9_2 = L4_2
    L10_2 = "UP"
    L8_2 = L8_2 .. L9_2 .. L10_2
    L6_2 = L6_2(L7_2, L8_2)
    L7_2 = table
    L7_2 = L7_2.insert
    L8_2 = A0_2.node_bg_up_table
    L9_2 = L6_2
    L7_2(L8_2, L9_2)
  end
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Image
  L4_2 = "Root/IconPanel/Normal"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.img_icon = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.Client
  L3_2 = L3_2.LocalizedText
  L4_2 = "Root/ItemTitle/NameText/Name"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.text_title = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._create_panel
  L3_2 = G
  L3_2 = L3_2.RogueBuffRarityPanel
  L4_2 = G
  L4_2 = L4_2.RogueBuffRarityPanelBinder
  L5_2 = "Root/ItemTitle/PromotionPanel/Promotion"
  L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2)
  A0_2.panel_rarity = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "Root/TipsPanel"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.node_tip_can_enhance = L1_2
  L1_2 = A0_2.node_tip_can_enhance
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = false
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Image
  L4_2 = "Root/PrizePanel/Bg/Contant/Num/Icon"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.img_cost = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.Client
  L3_2 = L3_2.LocalizedText
  L4_2 = "Root/PrizePanel/Bg/Contant/Num/Text"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.text_cost = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "Root/StatusPanel"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.node_status_panel = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "Root/StatusPanel/BlackMask"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.black_mask = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "Root/AltasMark"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.node_handbook_mark = L1_2
end
L0_1._on_bind = L1_1
return L0_1
