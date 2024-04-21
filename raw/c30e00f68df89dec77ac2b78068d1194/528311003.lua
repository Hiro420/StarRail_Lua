local L0_1, L1_1, L2_1
L0_1 = require
L1_1 = "Ui.DrinkMaker.DrinkMakerBarUtils"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "DrinkMakerPredictionItemPanel"
L2_1 = G
L2_1 = L2_1.BasePanel
L0_1 = L0_1(L1_1, L2_1)
L1_1 = CS
L1_1 = L1_1.RPG
L1_1 = L1_1.Client
L1_1 = L1_1.GlobalVars
L1_1 = L1_1.s_ModuleManager
L1_1 = L1_1.OfferingModule
function L2_1(A0_2)
  local L1_2
end
L0_1._on_load = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2
  A0_2._row = A1_2
  L3_2 = A0_2
  L2_2 = A0_2._setup_guest_info
  L2_2(L3_2)
  L3_2 = A0_2
  L2_2 = A0_2._setup_tip_icon
  L2_2(L3_2)
  L3_2 = A0_2
  L2_2 = A0_2._setup_prediction
  L2_2(L3_2)
end
L0_1.setup_view = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2._async_load_sprite_to
  L3_2 = A0_2._binder
  L3_2 = L3_2.img_guest
  L4_2 = A0_2._row
  L4_2 = L4_2.IconPath
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.txt_guest_name
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetTextID
  L3_2 = A0_2._row
  L3_2 = L3_2.BartenderGuestName
  L1_2(L2_2, L3_2)
end
L0_1._setup_guest_info = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = L1_1
  L2_2 = L1_2
  L1_2 = L1_2.GetOfferingRewardData
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.Client
  L3_2 = L3_2.DrinkMakerModule
  L3_2 = L3_2.OFFER_TYPE
  L1_2 = L1_2(L2_2, L3_2)
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.GameCore
  L2_2 = L2_2.ItemExcelTable
  L2_2 = L2_2.GetData
  L3_2 = L1_2.SubmittedItemID
  L2_2 = L2_2(L3_2)
  L4_2 = A0_2
  L3_2 = A0_2._async_load_sprite_to
  L5_2 = A0_2._binder
  L5_2 = L5_2.img_tip
  L6_2 = L2_2.ItemIconPath
  L3_2(L4_2, L5_2, L6_2)
end
L0_1._setup_tip_icon = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L1_2 = G
  L1_2 = L1_2.DrinkMakerBarUtils
  L1_2 = L1_2.get_guest_expected_tips
  L2_2 = A0_2._row
  L2_2 = L2_2.GuestID
  L1_2, L2_2 = L1_2(L2_2)
  L3_2 = A0_2._binder
  L3_2 = L3_2.txt_prediction
  L4_2 = L3_2
  L3_2 = L3_2.SetCustomizedText
  L5_2 = L1_2
  L6_2 = "~"
  L7_2 = L2_2
  L5_2 = L5_2 .. L6_2 .. L7_2
  L3_2(L4_2, L5_2)
end
L0_1._setup_prediction = L2_1
return L0_1
