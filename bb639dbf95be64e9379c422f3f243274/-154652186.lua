local L0_1, L1_1, L2_1
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "ItemComposeRelicSynthesisPanelBinder"
L2_1 = G
L2_1 = L2_1.UIBinder
L0_1 = L0_1(L1_1, L2_1)
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "Root/StateFramePnael/Normal"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.node_normal_panel = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "Root/StateFramePnael/AttrDir"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.node_black_crystal_panel = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.Client
  L3_2 = L3_2.AnimatorButton
  L4_2 = "Root/SynthesisInfo/BoxInfo/Quantity/ConfirmBtn"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.btn_compose = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.Client
  L3_2 = L3_2.MonoInControlButton
  L4_2 = "Root/SynthesisInfo/BoxInfo/Quantity/ConfirmBtn"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.mono_in_ctrl_btn_compose = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "Root/SynthesisInfo/BoxInfo/Quantity/ConfirmBtn/TextPanel/KeyMapInfo"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.node_keymap_btn_compose = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.Client
  L3_2 = L3_2.AnimatorButton
  L4_2 = "Root/SynthesisInfo/BtnComSecond"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.btn_black_crystal = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.Client
  L3_2 = L3_2.LocalizedText
  L4_2 = "Root/SynthesisInfo/BtnComSecond/TextPanel/Text"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.txt_btn_compose_style = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.Client
  L3_2 = L3_2.MonoInControlButton
  L4_2 = "Root/SynthesisInfo/BtnComSecond"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.mono_in_ctrl_btn_black_crystal = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "Root/SynthesisInfo/BtnComSecond/TextPanel/KeyMapInfo"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.node_keymap_btn_black_crystal = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.Client
  L3_2 = L3_2.LocalizedText
  L4_2 = "Root/SynthesisInfo/BoxInfo/TxtName"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.txt_relic_name = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.Client
  L3_2 = L3_2.LocalizedText
  L4_2 = "Root/SynthesisInfo/BoxInfo/BoxTotal/TxtTotal"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.txt_own_count = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "Root/SynthesisInfo/Material0"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.node_target_item_panel = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "Root/SynthesisInfo/BoxInfo/BoxDes"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.node_main_affix_panel = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.Client
  L3_2 = L3_2.LocalizedText
  L4_2 = "Root/SynthesisInfo/BoxInfo/BoxDes/AttrDirControl/TxtName"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.txt_main_affix_name = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.Client
  L3_2 = L3_2.AnimatorButton
  L4_2 = "Root/SynthesisInfo/BoxInfo/BoxDes/AttrDirControl/BtnSwitch"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.btn_change_main_affix = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.SuperScrollView
  L3_2 = L3_2.LoopListView2
  L4_2 = "Root/SynthesisInfo/BoxInfo/BoxMaterialList/BoxMaterials/MaterialsList"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.scroll_view_material_list = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Text
  L4_2 = "Root/SynthesisInfo/BoxInfo/Quantity/ConfirmBtn/Content/2/Text"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.txt_compose_cost = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Image
  L4_2 = "Root/SynthesisInfo/BoxInfo/Quantity/ConfirmBtn/Content/2/Icon"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.img_compose_cost_icon = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "Root/SynthesisInfo/BoxInfo/Quantity"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.node_compose_and_slider_panel = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "Root/SynthesisInfo/BoxInfo/Quantity/ExchangePanel"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.node_slider_panel = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "Root/SynthesisInfo/BoxInfo/DisableHintPanel"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.node_disable_panel = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.Client
  L3_2 = L3_2.LocalizedText
  L4_2 = "Root/SynthesisInfo/BoxInfo/DisableHintPanel/Text"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.txt_disable_panel = L1_2
end
L0_1._on_bind = L1_1
return L0_1
