local L0_1, L1_1, L2_1
L0_1 = require
L1_1 = "Ui.Activity.ActivityAlley.Entrance.AlleyFundPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Activity.ActivityAlley.Entrance.AlleyFundPanelBinder"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "AlleyPackShippingResultDialogBinder"
L2_1 = G
L2_1 = L2_1.UIBinder
L0_1 = L0_1(L1_1, L2_1)
function L1_1(A0_2)
  local L1_2
  L1_2 = "UI/Quest/Alley/AlleyShippingResultDialog.prefab"
  return L1_2
end
L0_1.get_prefab_path = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Button
  L4_2 = "Bg/BtnEmptyClose"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.btn_empty = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Button
  L4_2 = "BtnPanel/Root/BtnBack"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.btn_pack = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Button
  L4_2 = "BtnPanel/Root/BtnClose"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.btn_exit = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Button
  L4_2 = "BtnPanel/Root/BtnGoMission"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.btn_mission = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.Client
  L3_2 = L3_2.LocalizedText
  L4_2 = "Contents/TitlePanel/GlowBg/TitleText"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.text_title = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._create_panel
  L3_2 = G
  L3_2 = L3_2.NodeListView
  L4_2 = G
  L4_2 = L4_2.NodeListViewBinder
  L5_2 = "Contents/ResultList"
  L6_2 = "Ui.Activity.ActivityAlley.Pack.Widget.AlleyPackResultInfoRowPanel"
  L7_2 = "Ui.Activity.ActivityAlley.Pack.Widget.AlleyPackResultInfoRowPanelBinder"
  L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2, L6_2, L7_2)
  A0_2.panel_result_info = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._create_panel
  L3_2 = G
  L3_2 = L3_2.AlleyFundPanel
  L4_2 = G
  L4_2 = L4_2.AlleyFundPanelBinder
  L5_2 = "Contents/DebtPanel"
  L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2)
  A0_2.fund_panel = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "MainEventHint"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.node_main_event_hint = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.Client
  L3_2 = L3_2.LocalizedText
  L4_2 = "MainEventHint/Root/MissionTitle/TextPanel/TitleText"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.text_main_event_title = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.Client
  L3_2 = L3_2.LocalizedText
  L4_2 = "MainEventHint/Root/MissionContent/DescText"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.text_main_event_desc = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.Client
  L3_2 = L3_2.MonoRemainTimer
  L4_2 = "MainEventHint/Root/MissionContent/RemainTime"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.remain_time_mission = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "SubEventHint"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.node_shop_event_hint = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.Client
  L3_2 = L3_2.LocalizedText
  L4_2 = "SubEventHint/Root/MissionTitle/TextPanel/TitleText"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.text_shop_event_title = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.Client
  L3_2 = L3_2.LocalizedText
  L4_2 = "SubEventHint/Root/MissionContent/DescText"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.text_shop_event_desc = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.Client
  L3_2 = L3_2.LocalizedText
  L4_2 = "SubEventHint/Root/MissionContent/NewOrderHint/HintText"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.text_shop_event_new_order_tips = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Image
  L4_2 = "SubEventHint/Root/MissionTitle/TextPanel/IconPanel/ShopIcon"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.img_shop_icon = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "LittleEventHint"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.node_daily_event_hint = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.Client
  L3_2 = L3_2.LocalizedText
  L4_2 = "LittleEventHint/Root/MissionTitle/TextPanel/TitleText"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.text_daily_event_title = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.Client
  L3_2 = L3_2.LocalizedText
  L4_2 = "LittleEventHint/Root/MissionContent/DescText"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.text_daily_event_desc = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "HintPanel"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.node_hint_panel = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.Client
  L3_2 = L3_2.LocalizedText
  L4_2 = "BtnPanel/Root/BtnBack/OrderInfoText"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.text_order_left = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "Contents/OrderInfoPanel"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.node_order_info = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.Animation
  L4_2 = "Contents"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.animation_content = L1_2
end
L0_1._on_bind = L1_1
return L0_1
