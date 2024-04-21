local L0_1, L1_1, L2_1
L0_1 = require
L1_1 = "Ui.Relic.RelicIconInfoPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Relic.RelicIconInfoPanelBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Relic.RelicReplacePanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Relic.RelicReplacePanelBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Relic.RelicReplaceComparePanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Relic.RelicReplaceComparePanelBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Common.FilterSort.BtnMultiSortPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Common.FilterSort.BtnMultiSortPanelBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Relic.Filter.RelicFilterPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Relic.Recommend.RelicRecommendPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Relic.Recommend.RelicRecommendPanelBinder"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "RelicReplacePageBinder"
L2_1 = G
L2_1 = L2_1.UIBinder
L0_1 = L0_1(L1_1, L2_1)
function L1_1()
  local L0_2, L1_2
  L0_2 = "UI/Avatar/Relic/RelicReplacePage.prefab"
  return L0_2
end
L0_1.get_prefab_path = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Button
  L4_2 = "Root/BtnBack"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.btn_exit = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Text
  L4_2 = "Root/PageInfo/TitleType/Text"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.text_sub_title = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Image
  L4_2 = "Root/PageInfo/TitleType/ExtraContent/ProfessionalIcon"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.img_avatar_type = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "Root/LeftPanel/RelicListArea/ItemArea/ItemList/TopListPanel/ScrollView/TabControl"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.node_tab_control = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "Root/LeftPanel/RelicListArea/ItemArea"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.node_tab_root = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Button
  L4_2 = "Root/LeftPanel/RelicListArea/ItemArea/ItemList/TopListPanel/ScrollView/KeyMapInfo_Left/GamepadBtn"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.btn_select_left = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Button
  L4_2 = "Root/LeftPanel/RelicListArea/ItemArea/ItemList/TopListPanel/ScrollView/KeyMapInfo_Right/GamepadBtn"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.btn_select_right = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.CanvasGroup
  L4_2 = "Root/LeftPanel/RelicListArea/ItemArea"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.canvas_group_item_list = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._create_panel
  L3_2 = G
  L3_2 = L3_2.BtnFilterSortSelectPanel
  L4_2 = G
  L4_2 = L4_2.BtnFilterSortSelectPanelBinder
  L5_2 = "Root/LeftPanel/RelicListArea/OrderPanel"
  L6_2 = {}
  L7_2 = FilterSortSelectEnum
  L7_2 = L7_2.Filter
  L8_2 = FilterSortSelectEnum
  L8_2 = L8_2.MultiOrderOptionSort
  L6_2[1] = L7_2
  L6_2[2] = L8_2
  L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2, L6_2)
  A0_2.filter_order_select_panel = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._create_panel
  L3_2 = G
  L3_2 = L3_2.RelicIconInfoPanel
  L4_2 = G
  L4_2 = L4_2.RelicIconInfoPanelBinder
  L5_2 = "Root/AvatarRelicSingleContainer/RelicIconInfo"
  L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2)
  A0_2.icon_info_panel = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._create_panel
  L3_2 = G
  L3_2 = L3_2.RelicReplacePanel
  L4_2 = G
  L4_2 = L4_2.RelicReplacePanelBinder
  L5_2 = "Root/RelicReplacePanel"
  L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2)
  A0_2.replace_panel = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._create_panel
  L3_2 = G
  L3_2 = L3_2.RelicReplaceComparePanel
  L4_2 = G
  L4_2 = L4_2.RelicReplaceComparePanelBinder
  L5_2 = "Root/RelicReplaceComparePanel"
  L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2)
  A0_2.replace_compare_panel = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._create_panel
  L3_2 = G
  L3_2 = L3_2.RelicRecommendPanel
  L4_2 = G
  L4_2 = L4_2.RelicRecommendPanelBinder
  L5_2 = "Root/RecommendPanel"
  L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2)
  A0_2.panel_recommend_panel = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._create_panel
  L3_2 = G
  L3_2 = L3_2.RelicFilterPanel
  L4_2 = G
  L4_2 = L4_2.BtnFilterPanelBinder
  L5_2 = "Root/LeftPanel/RelicListArea/OrderPanel/Root/BtnFilter"
  L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2)
  A0_2.filter_panel = L1_2
  L1_2 = A0_2.filter_order_select_panel
  L2_2 = L1_2
  L1_2 = L1_2.get_panel_by_enum
  L3_2 = FilterSortSelectEnum
  L3_2 = L3_2.MultiOrderOptionSort
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.order_panel = L1_2
end
L0_1._on_bind = L1_1
return L0_1
