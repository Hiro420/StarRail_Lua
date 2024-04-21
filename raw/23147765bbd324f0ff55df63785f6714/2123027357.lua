local L0_1, L1_1, L2_1
L0_1 = require
L1_1 = "Ui.RogueCommon.Shop.Buff.Components.RogueBuffShopRightPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Rogue.RogueCostBtnPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Rogue.RogueCostBtnPanelBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Common.ResBarAreaPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Common.ResBarAreaPanelBinder"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "RogueBuffShopPageBinder"
L2_1 = G
L2_1 = L2_1.UIBinder
L0_1 = L0_1(L1_1, L2_1)
function L1_1()
  local L0_2, L1_2
  L0_2 = "UI/Rogue/RogueBuffShopPage.prefab"
  return L0_2
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
  L4_2 = "Root/BtnClose"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.btn_close = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._create_panel
  L3_2 = G
  L3_2 = L3_2.TopBarAreaPanel
  L4_2 = G
  L4_2 = L4_2.TopBarAreaPanelBinder
  L5_2 = "Root/TopBarArea"
  L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2)
  A0_2.panel_top_bar = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Button
  L4_2 = "Root/TopBarArea/AreaPanel/TopBtnList/BtnView"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.btn_view = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "Root/Contents/LeftPanel/ItemArea/ItemListEmpty"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.node_empty = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.SuperScrollView
  L3_2 = L3_2.LoopGridView
  L4_2 = "Root/Contents/LeftPanel/ItemArea/ItemList/ScrollViewMask/ScrollView"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.scroller_buff = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._create_panel
  L3_2 = G
  L3_2 = L3_2.RogueBuffShopRightPanel
  L4_2 = G
  L4_2 = L4_2.RogueBuffShopRightPanelBinder
  L5_2 = "Root/Contents/RightPanel/RogueAltusRightPanel"
  L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2)
  A0_2.panel_buff = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "Root/Contents/LeftPanel/ItemArea/ItemList/FunctionBtnPanel"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.node_refresh = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._create_panel
  L3_2 = G
  L3_2 = L3_2.RogueCostBtnPanel
  L4_2 = G
  L4_2 = L4_2.RogueCostBtnPanelBinder
  L5_2 = "Root/Contents/LeftPanel/ItemArea/ItemList/FunctionBtnPanel/BtnRefresh"
  L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2)
  A0_2.panel_btn_refresh = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Button
  L4_2 = "Root/Contents/LeftPanel/ItemArea/ItemList/RogueTabBeneTitle/BtnShortMessage"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.btn_multi_select = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "Root/Contents/RightPanel/RogueAltusRightPanel/FunctionBtnPanel/HintPanel"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.node_hint_lv_max = L1_2
  L1_2 = A0_2.node_hint_lv_max
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = false
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.Client
  L3_2 = L3_2.LocalizedText
  L4_2 = "Root/Contents/RightPanel/RogueAltusRightPanel/FunctionBtnPanel/HintPanel/Text"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.text_hint = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._create_panel
  L3_2 = G
  L3_2 = L3_2.RogueCostBtnPanel
  L4_2 = G
  L4_2 = L4_2.RogueCostBtnPanelBinder
  L5_2 = "Root/Contents/RightPanel/RogueAltusRightPanel/FunctionBtnPanel/BtnUpdate"
  L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2)
  A0_2.panel_btn_confirm = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "Root/Contents/LeftPanel/AltasMarkInfo"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.node_handbook_hint = L1_2
end
L0_1._on_bind = L1_1
return L0_1
