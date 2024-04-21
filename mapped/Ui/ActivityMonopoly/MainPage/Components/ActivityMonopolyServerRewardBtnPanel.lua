local L0_1, L1_1, L2_1, L3_1
L0_1 = require
L1_1 = "Ui.ActivityMonopoly.MainPage.Components.ActivityMonopolyServerRewardBtnPanelBinder"
L0_1(L1_1)
L0_1 = CS
L0_1 = L0_1.RPG
L0_1 = L0_1.Client
L0_1 = L0_1.GlobalVars
L0_1 = L0_1.s_ModuleManager
L0_1 = L0_1.MonopolyModule
L1_1 = G
L1_1 = L1_1.Class
L2_1 = "ActivityMonopolyServerRewardBtnPanel"
L3_1 = G
L3_1 = L3_1.BasePanel
L1_1 = L1_1(L2_1, L3_1)
L2_1 = 281015
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.root_btn
  L4_2 = A0_2._on_root_btn_clicked
  L1_2(L2_2, L3_2, L4_2)
end
L1_1._on_load = L3_1
function L3_1(A0_2, A1_2)
  A0_2._lock_info_provider_ref = A1_2
end
L1_1.setup_view = L3_1
function L3_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._lock_info_provider_ref
  if L1_2 then
    L1_2 = A0_2._lock_info_provider_ref
    L2_2 = L1_2
    L1_2 = L1_2.is_locked
    L1_2 = L1_2(L2_2)
    if L1_2 then
      return
    end
  end
  L1_2 = G
  L1_2 = L1_2.InventoryUtils
  L1_2 = L1_2.show_item_detail
  L2_2 = L2_1
  L1_2(L2_2)
end
L1_1._on_root_btn_clicked = L3_1
return L1_1
