local L0_1, L1_1, L2_1
L0_1 = require
L1_1 = "Ui.PlayerInfo.PlayerPhotoPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.PlayerInfo.PlayerPhotoPanelBinder"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "PunkLordControlPanelBinder"
L2_1 = G
L2_1 = L2_1.UIBinder
L0_1 = L0_1(L1_1, L2_1)
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "BoxBattle"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.node_btn_confirm = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Button
  L4_2 = "BoxBattle/BtnBattle"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.btn_confirm = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Text
  L4_2 = "BoxBattle/BtnBattle/TextPanel/Text"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.text_confirm = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Text
  L4_2 = "BoxBattle/CostTip/TipPanel/Item1/CostNum"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.text_consume = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Button
  L4_2 = "BoxBattle/CostTip/TipPanel/BoxSwitch/BoxDes/KeyMapInfo/GamepadBtn"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.btn_game_pad_switch = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Button
  L4_2 = "BoxBattle/CostTip/TipPanel/BoxSwitch/TogSwitchDmg1"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.btn_switch_normal_attack = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Button
  L4_2 = "BoxBattle/CostTip/TipPanel/BoxSwitch/TogSwitchDmg2"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.btn_switch_power_attack = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Image
  L4_2 = "BoxBattle/CostTip/TipPanel/Item1/IconPanel/Icon"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.icon_assist = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Button
  L4_2 = "BtnShare"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.btn_share = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "BoxMineShareState"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.node_mine_share = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Text
  L4_2 = "BoxMineShareState/TxtShared"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.text_share_desc = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "BoxShareState"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.node_share_state = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._create_panel
  L3_2 = G
  L3_2 = L3_2.PlayerPhotoPanel
  L4_2 = G
  L4_2 = L4_2.PlayerPhotoPanelBinder
  L5_2 = "BoxShareState/AvatarPhoto"
  L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2)
  A0_2.panel_player_photo = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Text
  L4_2 = "BoxShareState/TxtName"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.text_share_name = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "BoxCollect"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.node_btn_collect = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Button
  L4_2 = "BoxCollect/BtnCollect"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.btn_collect = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Button
  L4_2 = "BoxCollect/CostTip/TipPanel/TogSingleSelect"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.btn_toggle_collect = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Text
  L4_2 = "BoxCollect/CostTip/TipPanel/StarTips/Root/TextPanel/TxtScore"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.text_extra_point = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "BoxCollect/CostTip/TipPanel/StarTips"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.node_extra_point = L1_2
end
L0_1._on_bind = L1_1
return L0_1