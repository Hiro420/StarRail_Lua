local L0_1, L1_1, L2_1
L0_1 = require
L1_1 = "Ui.Activity.ActivityTabLeftPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Activity.ActivityTabLeftPanelBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.TabItemBinder"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "MultipleDropActivityPanelBinder"
L2_1 = G
L2_1 = L2_1.TabItemBinder
L0_1 = L0_1(L1_1, L2_1)
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Text
  L4_2 = "Content/TitlePanel/DescPanel/Root/DescText"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.text_panel_desc = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Text
  L4_2 = "Content/TitlePanel/NamePanel/Name"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.text_panel_name = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Button
  L4_2 = "Content/TitlePanel/BtnRuleTip"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.btn_explain = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Text
  L4_2 = "Content/TitlePanel/BtnRuleTip/TextPanel/Text"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.btn_explain_btn_text = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Text
  L4_2 = "Content/BoxTask/BoxEnterkInfo/BoxTitle/NumPanel/Num"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.text_remain_times = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Text
  L4_2 = "Content/BoxTask/BoxEnterkInfo/BoxTitle/NumPanel/TotalNum"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.text_total_times = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Text
  L4_2 = "Content/BoxTask/BoxEnterkInfo/BoxTitle/Text"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.text_refresh_type = L1_2
  L1_2 = {}
  A0_2.node_farm_type_item = L1_2
  L1_2 = {}
  A0_2.node_farm_type_item_parent = L1_2
  L1_2 = {}
  L2_2 = "Content/BoxTask/BoxEnterkInfo/BoxInfo/BtnGoldInfoItem/BtnDoubleCocoonItem"
  L3_2 = "Content/BoxTask/BoxEnterkInfo/BoxInfo/BtnRedInfoItem/BtnDoubleCocoonItem"
  L1_2[1] = L2_2
  L1_2[2] = L3_2
  L2_2 = ipairs
  L3_2 = L1_2
  L2_2, L3_2, L4_2 = L2_2(L3_2)
  for L5_2, L6_2 in L2_2, L3_2, L4_2 do
    L8_2 = A0_2
    L7_2 = A0_2._safe_find
    L9_2 = L6_2
    L10_2 = false
    L7_2 = L7_2(L8_2, L9_2, L10_2)
    if L7_2 ~= nil then
      L8_2 = table
      L8_2 = L8_2.insert
      L9_2 = A0_2.node_farm_type_item
      L10_2 = L7_2
      L8_2(L9_2, L10_2)
    end
  end
  L2_2 = {}
  L3_2 = "Content/BoxTask/BoxEnterkInfo/BoxInfo/BtnGoldInfoItem"
  L4_2 = "Content/BoxTask/BoxEnterkInfo/BoxInfo/BtnRedInfoItem"
  L2_2[1] = L3_2
  L2_2[2] = L4_2
  L3_2 = ipairs
  L4_2 = L2_2
  L3_2, L4_2, L5_2 = L3_2(L4_2)
  for L6_2, L7_2 in L3_2, L4_2, L5_2 do
    L9_2 = A0_2
    L8_2 = A0_2._safe_find
    L10_2 = L7_2
    L11_2 = false
    L8_2 = L8_2(L9_2, L10_2, L11_2)
    if L8_2 ~= nil then
      L9_2 = table
      L9_2 = L9_2.insert
      L10_2 = A0_2.node_farm_type_item_parent
      L11_2 = L8_2
      L9_2(L10_2, L11_2)
    end
  end
  L4_2 = A0_2
  L3_2 = A0_2._safe_find
  L5_2 = "Content/TitlePanel/EventTime/Timer"
  L3_2 = L3_2(L4_2, L5_2)
  A0_2.node_remain_timer = L3_2
  L4_2 = A0_2
  L3_2 = A0_2._safe_get_cmpt
  L5_2 = CS
  L5_2 = L5_2.RPG
  L5_2 = L5_2.Client
  L5_2 = L5_2.MonoRemainTimer
  L6_2 = "Content/TitlePanel/EventTime/Timer/RemainTime"
  L3_2 = L3_2(L4_2, L5_2, L6_2)
  A0_2.remain_timer = L3_2
  L4_2 = A0_2
  L3_2 = A0_2._safe_find
  L5_2 = "Content/TitlePanel/EventTime/SpecialEventTime"
  L6_2 = false
  L3_2 = L3_2(L4_2, L5_2, L6_2)
  A0_2.node_special_remain_timer = L3_2
  L4_2 = A0_2
  L3_2 = A0_2._safe_get_cmpt
  L5_2 = CS
  L5_2 = L5_2.RPG
  L5_2 = L5_2.Client
  L5_2 = L5_2.MonoRemainTimer
  L6_2 = "Content/TitlePanel/EventTime/SpecialEventTime/RemainTime"
  L7_2 = false
  L3_2 = L3_2(L4_2, L5_2, L6_2, L7_2)
  A0_2.special_remain_timer = L3_2
  L4_2 = A0_2
  L3_2 = A0_2._safe_get_cmpt
  L5_2 = CS
  L5_2 = L5_2.UnityEngine
  L5_2 = L5_2.UI
  L5_2 = L5_2.Text
  L6_2 = "Content/TitlePanel/EventTime/SpecialEventTime/EventTxt"
  L7_2 = false
  L3_2 = L3_2(L4_2, L5_2, L6_2, L7_2)
  A0_2.theme_text = L3_2
  L4_2 = A0_2
  L3_2 = A0_2._safe_get_cmpt
  L5_2 = CS
  L5_2 = L5_2.UnityEngine
  L5_2 = L5_2.UI
  L5_2 = L5_2.Image
  L6_2 = "Content/TitlePanel/EventTime/SpecialEventTime/EventIcon"
  L7_2 = false
  L3_2 = L3_2(L4_2, L5_2, L6_2, L7_2)
  A0_2.theme_icon = L3_2
  L4_2 = A0_2
  L3_2 = A0_2._safe_get_cmpt
  L5_2 = CS
  L5_2 = L5_2.UnityEngine
  L5_2 = L5_2.UI
  L5_2 = L5_2.Text
  L6_2 = "Content/TitlePanel/BtnRuleTip/TextPanel/Text"
  L3_2 = L3_2(L4_2, L5_2, L6_2)
  A0_2.btn_explain_btn_text = L3_2
end
L0_1._on_bind = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L2_2 = A0_2
  L1_2 = A0_2._create_panel_in_btn
  L3_2 = G
  L3_2 = L3_2.ActivityTabLeftPanel
  L4_2 = G
  L4_2 = L4_2.ActivityTabLeftPanelBinder
  L5_2 = A0_2.tab_btn_root
  L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2)
  A0_2.tab_btn_panel = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt_in_btn
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.Transform
  L4_2 = "RedDot"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.go_reddot = L1_2
end
L0_1._on_tab_btn_bind = L1_1
return L0_1
