local L0_1, L1_1, L2_1
L0_1 = require
L1_1 = "Ui.Rogue.MainPage.IRogueDLCEntranceClickAction"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "RogueNousEntranceClickAction"
L2_1 = G
L2_1 = L2_1.IRogueDLCEntranceClickAction
L0_1 = L0_1(L1_1, L2_1)
function L1_1(A0_2)
  local L1_2, L2_2
  L1_2 = G
  L1_2 = L1_2.UIManager
  L1_2 = L1_2.load_and_async_show
  L2_2 = "Ui.RogueDLC.RogueNous.Entrance.RogueNousMainPage"
  L1_2(L2_2)
end
L0_1.on_click = L1_1
return L0_1
