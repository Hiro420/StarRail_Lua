local L0_1, L1_1, L2_1
L0_1 = require
L1_1 = "Ui.DrinkMaker.Bartend.Components.DrinkMakerQuantifyTagDetailPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.DrinkMaker.Bartend.Components.DrinkMakerBartendTagPanel"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "DrinkMakerBartendQuantifyTagPanelBinder"
L2_1 = G
L2_1 = L2_1.UIBinder
L0_1 = L0_1(L1_1, L2_1)
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.Client
  L3_2 = L3_2.AnimatorButton
  L4_2 = ""
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.btn_root = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._create_panel
  L3_2 = G
  L3_2 = L3_2.DrinkMakerBartendTagPanel
  L4_2 = G
  L4_2 = L4_2.DrinkMakerBartendTagPanelBinder
  L5_2 = "Root/Tag"
  L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2)
  A0_2.panel_tag = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "Root/TagDialog"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.node_tag_detail = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._create_panel
  L3_2 = G
  L3_2 = L3_2.DrinkMakerQuantifyTagDetailPanel
  L4_2 = G
  L4_2 = L4_2.DrinkMakerQuantifyTagDetailPanelBinder
  L5_2 = "Root/TagDialog/Root/DrinkMakerTagMixInfoRow"
  L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2)
  A0_2.panel_quantify_tag_detail = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Image
  L4_2 = "Root/ProgressBar/IconPanel/Icon"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.img_tag_icon = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.Client
  L3_2 = L3_2.LocalizedText
  L4_2 = "Root/ProgressBar/IconPanel/Text"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.text_tag_type_name = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.Client
  L3_2 = L3_2.LocalizedText
  L4_2 = "Root/ProgressBar/IconPanel/Num"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.text_quantity = L1_2
  L1_2 = {}
  L3_2 = A0_2
  L2_2 = A0_2._safe_get_cmpt
  L4_2 = CS
  L4_2 = L4_2.UnityEngine
  L4_2 = L4_2.UI
  L4_2 = L4_2.Slider
  L5_2 = "Root/ProgressBar/SliderItem/Slider/Slider1"
  L2_2 = L2_2(L3_2, L4_2, L5_2)
  L1_2[-2] = L2_2
  L3_2 = A0_2
  L2_2 = A0_2._safe_get_cmpt
  L4_2 = CS
  L4_2 = L4_2.UnityEngine
  L4_2 = L4_2.UI
  L4_2 = L4_2.Slider
  L5_2 = "Root/ProgressBar/SliderItem/Slider/Slider2"
  L2_2 = L2_2(L3_2, L4_2, L5_2)
  L1_2[-1] = L2_2
  L3_2 = A0_2
  L2_2 = A0_2._safe_get_cmpt
  L4_2 = CS
  L4_2 = L4_2.UnityEngine
  L4_2 = L4_2.UI
  L4_2 = L4_2.Slider
  L5_2 = "Root/ProgressBar/SliderItem/Slider/Slider3"
  L2_2 = L2_2(L3_2, L4_2, L5_2)
  L1_2[1] = L2_2
  L3_2 = A0_2
  L2_2 = A0_2._safe_get_cmpt
  L4_2 = CS
  L4_2 = L4_2.UnityEngine
  L4_2 = L4_2.UI
  L4_2 = L4_2.Slider
  L5_2 = "Root/ProgressBar/SliderItem/Slider/Slider4"
  L2_2 = L2_2(L3_2, L4_2, L5_2)
  L1_2[2] = L2_2
  A0_2.slider_fill_list = L1_2
  L1_2 = {}
  L3_2 = A0_2
  L2_2 = A0_2._safe_find
  L4_2 = "Root/ProgressBar/SliderItem/ItemPanel/Item2"
  L2_2 = L2_2(L3_2, L4_2)
  L1_2[1] = L2_2
  L3_2 = A0_2
  L2_2 = A0_2._safe_find
  L4_2 = "Root/ProgressBar/SliderItem/ItemPanel/Item1"
  L2_2 = L2_2(L3_2, L4_2)
  L1_2[2] = L2_2
  A0_2.node_negative_color_item = L1_2
  L1_2 = {}
  L3_2 = A0_2
  L2_2 = A0_2._safe_find
  L4_2 = "Root/ProgressBar/SliderItem/ItemPanel/Item3"
  L2_2 = L2_2(L3_2, L4_2)
  L1_2[1] = L2_2
  L3_2 = A0_2
  L2_2 = A0_2._safe_find
  L4_2 = "Root/ProgressBar/SliderItem/ItemPanel/Item4"
  L2_2 = L2_2(L3_2, L4_2)
  L1_2[2] = L2_2
  A0_2.node_positive_color_item = L1_2
end
L0_1._on_bind = L1_1
return L0_1
