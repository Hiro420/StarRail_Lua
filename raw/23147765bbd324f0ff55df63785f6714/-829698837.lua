local L0_1, L1_1, L2_1
L0_1 = require
L1_1 = "Ui.Phone.PhoneEvent.PhoneEventTravelBrochurePanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Phone.PhoneEvent.PhoneEventTravelBrochurePanelBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Utilities.TravelBrochureUtils"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "PhoneEventContainerPanel"
L2_1 = G
L2_1 = L2_1.BasePanel
L0_1 = L0_1(L1_1, L2_1)
function L1_1(A0_2)
  local L1_2
end
L0_1._on_load = L1_1
function L1_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2._refresh_travel_brochure
  L1_2(L2_2)
end
L0_1.setup_view = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.GlobalVars
  L1_2 = L1_2.s_ModuleManager
  L1_2 = L1_2.TravelBrochureModule
  L2_2 = L1_2
  L1_2 = L1_2.IsEntranceShow
  L1_2 = L1_2(L2_2)
  if L1_2 then
    L1_2 = G
    L1_2 = L1_2.TravelBrochureUtils
    L1_2 = L1_2.can_open_travel_brochure
    L1_2 = L1_2()
  end
  if not L1_2 then
    L2_2 = A0_2._panel_travel_brochure
    if L2_2 == nil then
      return
    end
  end
  L2_2 = A0_2._panel_travel_brochure
  if L2_2 == nil then
    L3_2 = A0_2
    L2_2 = A0_2.create_panel
    L4_2 = G
    L4_2 = L4_2.PhoneEventTravelBrochurePanel
    L5_2 = G
    L5_2 = L5_2.PhoneEventTravelBrochurePanelBinder
    L2_2 = L2_2(L3_2, L4_2, L5_2)
    A0_2._panel_travel_brochure = L2_2
    L2_2 = A0_2._panel_travel_brochure
    L3_2 = L2_2
    L2_2 = L2_2.sync_loadto
    L4_2 = A0_2._binder
    L4_2 = L4_2.node_root
    L2_2(L3_2, L4_2)
  end
  L2_2 = A0_2._panel_travel_brochure
  L3_2 = L2_2
  L2_2 = L2_2.safe_set_active
  L4_2 = L1_2
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._panel_travel_brochure
  L3_2 = L2_2
  L2_2 = L2_2.setup_view
  L2_2(L3_2)
end
L0_1._refresh_travel_brochure = L1_1
return L0_1
