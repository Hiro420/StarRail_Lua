local L0_1, L1_1, L2_1
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "NewbieTicketItemPanelBinder"
L2_1 = G
L2_1 = L2_1.UIBinder
L0_1 = L0_1(L1_1, L2_1)
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Text
  L4_2 = "Root/DescPanel/ScrollView/Viewport/Content/ItemDesc"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.quest_title = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Button
  L4_2 = "Root/BtnComSecond"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.get_reward_btn = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Image
  L4_2 = "Root/BtnComSecond/Frame/FrameBg"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.get_reward_btn_img = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Text
  L4_2 = "Root/BtnComSecond/TextPanel/Text"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.get_reward_btn_text = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "Root/ImgFinished"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.reward_got_hint = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "Root/BtnComSecond/Frame/InnerOutline"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.get_reward_btn_inner_circle = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "Root/TopPanel/ItemPanel/Item1"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.item1 = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Button
  L4_2 = "Root/TopPanel/ItemPanel/Item1"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.item1_btn = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Text
  L4_2 = "Root/TopPanel/ItemPanel/Item1/Text"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.item1_num = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Image
  L4_2 = "Root/TopPanel/ItemPanel/Item1/Icon"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.item1_icon = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "Root/TopPanel/ItemPanel/Item2"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.item2 = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Button
  L4_2 = "Root/TopPanel/ItemPanel/Item2"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.item2_btn = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Text
  L4_2 = "Root/TopPanel/ItemPanel/Item2/Text"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.item2_num = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Image
  L4_2 = "Root/TopPanel/ItemPanel/Item2/Icon"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.item2_icon = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Button
  L4_2 = ""
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.root_btn = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "Root/Selected"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.selected_effect = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.Client
  L3_2 = L3_2.MonoInControlButton
  L4_2 = "Root/BtnComSecond"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.mono_incontrol_button = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.Client
  L3_2 = L3_2.MonoInControlMove
  L4_2 = "Root/DescPanel/ScrollView/Viewport/Content"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.mono_incontrol_move = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.Client
  L3_2 = L3_2.MonoInControlTip
  L4_2 = "Root/BtnComSecond/TextPanel/KeyMapInfo"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.mono_incontrol_tip = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "Root/BtnComSecond/TextPanel/IconPanel"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.mono_incontrol_pc_tip = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.ScrollRect
  L4_2 = "Root/DescPanel/ScrollView"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.scroll_view = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "Root/TopPanel/ReceiveHint"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.receive_hint = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "Root/TopPanel/NormalEffect"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.normal_effect = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.CanvasGroup
  L4_2 = "Root/TopPanel/ListBg"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.bg_img_canvas = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.CanvasGroup
  L4_2 = "Root/TopPanel/NormalEffect"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.img_canvas = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.CanvasGroup
  L4_2 = "Root/DescPanel"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.desc_canvas = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.CanvasGroup
  L4_2 = "Root/TopPanel/ItemPanel/Item1/Text"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.item1_num_canvas = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.CanvasGroup
  L4_2 = "Root/TopPanel/ItemPanel/Item2/Text"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.item2_num_canvas = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.CanvasGroup
  L4_2 = "Root/DescPanel/TextLevelPanel"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.text_lv_panel_canvas = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.CanvasGroup
  L4_2 = "Root/TopPanel/TextBg"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.text_bg_canvas = L1_2
end
L0_1._on_bind = L1_1
return L0_1