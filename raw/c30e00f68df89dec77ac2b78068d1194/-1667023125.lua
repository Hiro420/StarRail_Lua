local L0_1, L1_1, L2_1
L0_1 = require
L1_1 = "Ui.RogueDLC.RogueNous.Tools.RogueNousUtils"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.RogueDLC.RogueNous.Entrance.Components.RogueNousBattleExtendInfoPanelBinder"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "RogueNousBattleExtendInfoPanel"
L2_1 = G
L2_1 = L2_1.BasePanel
L0_1 = L0_1(L1_1, L2_1)
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_root
  L4_2 = A0_2._on_btn_root
  L1_2(L2_2, L3_2, L4_2)
end
L0_1._on_load = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = G
  L1_2 = L1_2.RogueNousUtils
  L1_2 = L1_2.get_cur_difficulty_level
  L1_2, L2_2 = L1_2()
  A0_2._additional_level = L2_2
  A0_2._attribute_level = L1_2
  L1_2 = A0_2._attribute_level
  L2_2 = A0_2._additional_level
  L1_2 = L1_2 + L2_2
  L3_2 = A0_2
  L2_2 = A0_2.safe_set_active
  L4_2 = L1_2 ~= 0
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.text_level
  L3_2 = L2_2
  L2_2 = L2_2.SetCustomizedText
  L4_2 = L1_2
  L2_2(L3_2, L4_2)
end
L0_1.setup_view = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = G
  L1_2 = L1_2.UIManager
  L1_2 = L1_2.load_and_async_show
  L2_2 = "Ui.RogueDLC.RogueNous.ChessBoard.RogueNousHardTipsToastDialog"
  L3_2 = A0_2._attribute_level
  L4_2 = A0_2._additional_level
  L1_2(L2_2, L3_2, L4_2)
end
L0_1._on_btn_root = L1_1
return L0_1
