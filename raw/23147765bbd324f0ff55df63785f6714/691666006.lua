local L0_1, L1_1, L2_1
L0_1 = require
L1_1 = "Ui.Activity.ActivityAlley.Transport.AlleyTransportLayerPanelBinder"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "AlleyTransportLayerPanel"
L2_1 = G
L2_1 = L2_1.TabItem
L0_1 = L0_1(L1_1, L2_1)
L1_1 = CS
L1_1 = L1_1.RPG
L1_1 = L1_1.Client
L1_1 = L1_1.GlobalVars
L1_1 = L1_1.s_ModuleManager
L1_1 = L1_1.AlleyModule
function L2_1(A0_2, A1_2, A2_2, A3_2)
  A0_2._map_layer = A3_2
end
L0_1.ctor = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_lock
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L4_2 = A0_2
  L3_2 = A0_2._check_is_active
  L3_2 = L3_2(L4_2)
  L3_2 = not L3_2
  L1_2(L2_2, L3_2)
end
L0_1._on_added = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = G
  L1_2 = L1_2.AlleyTransport
  L1_2 = L1_2.is_use_by_tutorial
  if L1_2 then
    L1_2 = A0_2._map_layer
    L2_2 = G
    L2_2 = L2_2.AlleyTransport
    L2_2 = L2_2.appoint_show_layer_by_mission
    if L1_2 ~= L2_2 then
      L1_2 = G
      L1_2 = L1_2.NotifyManager
      L1_2 = L1_2.notify
      L2_2 = G
      L2_2 = L2_2.CS
      L2_2 = L2_2.NotifyType
      L2_2 = L2_2.UIPileToastMessageTextID
      L3_2 = "UIText_ActivityAlley_Airline_MissionLayerTips"
      L1_2(L2_2, L3_2)
    end
  else
    L1_2 = L1_1
    L2_2 = L1_2
    L1_2 = L1_2.IsAlleyMapUnlockByLayer
    L3_2 = A0_2._map_layer
    L1_2 = L1_2(L2_2, L3_2)
    if L1_2 then
      L1_2 = G
      L1_2 = L1_2.UIManager
      L1_2 = L1_2.load_and_async_show
      L2_2 = "Ui.Activity.ActivityAlley.Transport.AlleyTransportConfirmDialog"
      L3_2 = nil
      L4_2 = "UIText_ActivityAlley_Airline_ChangeLayerDesc"
      L5_2 = "UIText_ActivityAlley_Airline_ChangeLayerTitle"
      L6_2 = A0_2._map_layer
      L1_2(L2_2, L3_2, L4_2, L5_2, L6_2)
    else
      L1_2 = G
      L1_2 = L1_2.NotifyManager
      L1_2 = L1_2.notify
      L2_2 = G
      L2_2 = L2_2.CS
      L2_2 = L2_2.NotifyType
      L2_2 = L2_2.UIPileToastMessageTextID
      L3_2 = "UIText_ActivityAlley_Airline_LayerLockTips"
      L1_2(L2_2, L3_2)
    end
  end
end
L0_1._on_select_when_disable = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = G
  L1_2 = L1_2.AlleyTransport
  L1_2 = L1_2.is_use_by_tutorial
  if L1_2 then
    L1_2 = A0_2._map_layer
    L2_2 = G
    L2_2 = L2_2.AlleyTransport
    L2_2 = L2_2.appoint_show_layer_by_mission
    L1_2 = L1_2 == L2_2
    return L1_2
  else
    L1_2 = L1_1
    L2_2 = L1_2
    L1_2 = L1_2.IsAlleyMapUnlockByLayer
    L3_2 = A0_2._map_layer
    L1_2 = L1_2(L2_2, L3_2)
    if L1_2 then
      L1_2 = G
      L1_2 = L1_2.AlleyTransport
      L1_2 = L1_2.cur_show_layer
      L2_2 = A0_2._map_layer
      if L1_2 == L2_2 then
        L1_2 = true
        return L1_2
      else
        L1_2 = G
        L1_2 = L1_2.AlleyTransport
        L1_2 = L1_2.try_show_layer_by_click
        if 0 < L1_2 then
          L1_2 = true
          return L1_2
        else
          L1_2 = L1_1
          L2_2 = L1_2
          L1_2 = L1_2.CheckIsLineDataChangedByMapLayer
          L3_2 = G
          L3_2 = L3_2.AlleyTransport
          L3_2 = L3_2.cur_show_layer
          L1_2 = L1_2(L2_2, L3_2)
          L1_2 = not L1_2
          return L1_2
        end
      end
    else
      L1_2 = false
      return L1_2
    end
  end
end
L0_1._is_enable = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = G
  L1_2 = L1_2.AlleyTransport
  L1_2 = L1_2.is_use_by_tutorial
  if L1_2 then
    L1_2 = A0_2._map_layer
    L2_2 = G
    L2_2 = L2_2.AlleyTransport
    L2_2 = L2_2.appoint_show_layer_by_mission
    L1_2 = L1_2 == L2_2
    return L1_2
  else
    L1_2 = L1_1
    L2_2 = L1_2
    L1_2 = L1_2.IsAlleyMapUnlockByLayer
    L3_2 = A0_2._map_layer
    return L1_2(L2_2, L3_2)
  end
end
L0_1._check_is_active = L2_1
function L2_1(A0_2)
  local L1_2
end
L0_1._on_select = L2_1
function L2_1(A0_2)
  local L1_2
end
L0_1._on_unselect = L2_1
return L0_1
