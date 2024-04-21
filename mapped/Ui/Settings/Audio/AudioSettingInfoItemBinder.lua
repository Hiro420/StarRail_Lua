local L0_1, L1_1, L2_1
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "AudioSettingInfoItemBinder"
L2_1 = G
L2_1 = L2_1.UIBinder
L0_1 = L0_1(L1_1, L2_1)
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "SettingTitle"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.node_setting_title = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Text
  L4_2 = "SettingTitle/Text"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.text_setting_title = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "Root"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.node_setting_content = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Button
  L4_2 = "Root"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.btn_root = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Text
  L4_2 = "Root/Contents/Title/TextTitle"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.text_title = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "Root/Contents/FuctionArea/DropDownPanel"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.node_drop_down = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Dropdown
  L4_2 = "Root/Contents/FuctionArea/DropDownPanelPC"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.node_drop_down_pc = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "Root/Contents/FuctionArea/ExchangeMiniPanel"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.node_exchange_mini = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "Root/Contents/FuctionArea/LinkBtnPanel"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.node_link = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "Root/Contents/FuctionArea/SettingsHotkeyPanel"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.node_hot_key = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._create_panel
  L3_2 = G
  L3_2 = L3_2.SliderPanel
  L4_2 = G
  L4_2 = L4_2.SliderPanelBinder
  L5_2 = "Root/Contents/FuctionArea/ExchangeMiniPanel"
  L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2)
  A0_2.slider_panel = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Text
  L4_2 = "Root/Contents/FuctionArea/LinkBtnPanel/Text"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.text_content = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "Root/ClickArea"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.node_click_area = L1_2
end
L0_1._bind = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2._bind
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Text
  L4_2 = "Root/Contents/FuctionArea/DropDownPanel/OptionBtn/Text"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.text_content = L1_2
end
L0_1._on_bind = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2._bind
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Text
  L4_2 = "Root/Contents/FuctionArea/DropDownPanelPC/OptionBtn/Text"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.text_content = L1_2
end
L0_1._on_pc_bind = L1_1
return L0_1
