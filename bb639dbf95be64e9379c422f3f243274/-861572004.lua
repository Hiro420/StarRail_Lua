local L0_1, L1_1, L2_1, L3_1
L0_1 = CS
L0_1 = L0_1.RPG
L0_1 = L0_1.Client
L0_1 = L0_1.GlobalVars
L0_1 = L0_1.s_ModuleManager
L0_1 = L0_1.InventoryModule
L1_1 = G
L1_1 = L1_1.Class
L2_1 = "RelicRecommendPanel"
L3_1 = G
L3_1 = L3_1.BasePanel
L1_1 = L1_1(L2_1, L3_1)
function L2_1(A0_2)
  local L1_2
end
L1_1._on_load = L2_1
function L2_1(A0_2)
  local L1_2
  A0_2._avatar_data = nil
  A0_2._relic_type = nil
  A0_2._on_refresh_callback = nil
  A0_2._on_refresh_callback_self = nil
  A0_2._relic_recommend_data = nil
end
L1_1._on_dispose = L2_1
function L2_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2
  A0_2._avatar_data = A1_2
  A0_2._relic_type = A2_2
  L4_2 = A0_2
  L3_2 = A0_2._refresh_panel
  L3_2(L4_2)
end
L1_1.setup_view = L2_1
function L2_1(A0_2, A1_2)
  A0_2._relic_type = A1_2
end
L1_1.set_relic_type = L2_1
function L2_1(A0_2, A1_2, A2_2)
  A0_2._on_refresh_callback = A1_2
  A0_2._on_refresh_callback_self = A2_2
end
L1_1.register_refresh_callback = L2_1
function L2_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2.is_active
  L1_2 = L1_2(L2_2)
  if not L1_2 then
    L1_2 = {}
    return L1_2
  end
  L1_2 = A0_2._binder
  L1_2 = L1_2.panel_suit
  L2_2 = L1_2
  L1_2 = L1_2.get_recommend_set_ids
  return L1_2(L2_2)
end
L1_1.get_recommend_set_ids = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L3_2 = A0_2
  L2_2 = A0_2.is_active
  L2_2 = L2_2(L3_2)
  if L2_2 == A1_2 then
    L2_2 = false
    return L2_2
  end
  L3_2 = A0_2
  L2_2 = A0_2.safe_set_active
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
  L3_2 = A0_2
  L2_2 = A0_2._refresh_panel
  L2_2(L3_2)
  L2_2 = true
  return L2_2
end
L1_1.set_panel_visibility = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.panel_suit
  L3_2 = L2_2
  L2_2 = L2_2.set_filter_panel
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
end
L1_1.set_filter_panel = L2_1
function L2_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.panel_suit
  L2_2 = L1_2
  L1_2 = L1_2.on_filter_changed
  L1_2(L2_2)
end
L1_1.on_filter_changed = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.AvatarData
  L1_2 = L1_2.ConvertBaseIDToReal
  L2_2 = A0_2._avatar_data
  L2_2 = L2_2.ID
  L1_2 = L1_2(L2_2)
  L2_2 = A0_2._relic_recommend_data
  L2_2 = L2_2 ~= nil
  L4_2 = A0_2
  L3_2 = A0_2.is_active
  L3_2 = L3_2(L4_2)
  if not L3_2 then
    if L2_2 then
      L3_2 = A0_2._relic_recommend_data
      L3_2 = L3_2.DataValid
      if L3_2 then
        L3_2 = G
        L3_2 = L3_2.Utils
        L3_2 = L3_2.invoke_callback
        L4_2 = A0_2._on_refresh_callback
        L5_2 = A0_2._on_refresh_callback_self
        L3_2(L4_2, L5_2)
      end
    end
    return
  end
  L3_2 = A0_2._binder
  L3_2 = L3_2.node_wait_packet
  L4_2 = L3_2
  L3_2 = L3_2.SafeSetActive
  L5_2 = true
  L3_2(L4_2, L5_2)
  L3_2 = A0_2._binder
  L3_2 = L3_2.node_empty
  L4_2 = L3_2
  L3_2 = L3_2.SafeSetActive
  L5_2 = false
  L3_2(L4_2, L5_2)
  L3_2 = A0_2._binder
  L3_2 = L3_2.node_tips
  L4_2 = L3_2
  L3_2 = L3_2.SafeSetActive
  L5_2 = false
  L3_2(L4_2, L5_2)
  L3_2 = A0_2._binder
  L3_2 = L3_2.panel_suit
  L4_2 = L3_2
  L3_2 = L3_2.safe_set_active
  L5_2 = false
  L3_2(L4_2, L5_2)
  L3_2 = A0_2._binder
  L3_2 = L3_2.panel_property
  L4_2 = L3_2
  L3_2 = L3_2.safe_set_active
  L5_2 = false
  L3_2(L4_2, L5_2)
  if not L2_2 then
    L3_2 = L0_1
    L4_2 = L3_2
    L3_2 = L3_2.GetRelicRecommendData
    L5_2 = A0_2._avatar_data
    L5_2 = L5_2.ID
    L3_2 = L3_2(L4_2, L5_2)
    L5_2 = L3_2
    L4_2 = L3_2.ThenLuaActionOneParam
    function L6_2(A0_3)
      local L1_3, L2_3, L3_3, L4_3
      A0_2._relic_recommend_data = A0_3
      L1_3 = A0_2
      L2_3 = L1_3
      L1_3 = L1_3._refresh
      L3_3 = A0_3
      L4_3 = A0_2._relic_type
      L1_3(L2_3, L3_3, L4_3)
      L1_3 = A0_2._relic_recommend_data
      L1_3 = L1_3.DataValid
      if L1_3 then
        L1_3 = G
        L1_3 = L1_3.Utils
        L1_3 = L1_3.invoke_callback
        L2_3 = A0_2._on_refresh_callback
        L3_3 = A0_2._on_refresh_callback_self
        L1_3(L2_3, L3_3)
      end
    end
    L4_2(L5_2, L6_2)
  else
    L4_2 = A0_2
    L3_2 = A0_2._refresh
    L5_2 = A0_2._relic_recommend_data
    L6_2 = A0_2._relic_type
    L3_2(L4_2, L5_2, L6_2)
    L3_2 = A0_2._relic_recommend_data
    L3_2 = L3_2.DataValid
    if L3_2 then
      L3_2 = G
      L3_2 = L3_2.Utils
      L3_2 = L3_2.invoke_callback
      L4_2 = A0_2._on_refresh_callback
      L5_2 = A0_2._on_refresh_callback_self
      L3_2(L4_2, L5_2)
    end
  end
end
L1_1._refresh_panel = L2_1
function L2_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2
  L3_2 = A0_2._binder
  L3_2 = L3_2.node_wait_packet
  L4_2 = L3_2
  L3_2 = L3_2.SafeSetActive
  L5_2 = false
  L3_2(L4_2, L5_2)
  L3_2 = A1_2.DataValid
  L4_2 = A0_2._binder
  L4_2 = L4_2.node_empty
  L5_2 = L4_2
  L4_2 = L4_2.SafeSetActive
  L6_2 = not L3_2
  L4_2(L5_2, L6_2)
  L4_2 = A0_2._binder
  L4_2 = L4_2.node_tips
  L5_2 = L4_2
  L4_2 = L4_2.SafeSetActive
  L6_2 = L3_2
  L4_2(L5_2, L6_2)
  L4_2 = A0_2._binder
  L4_2 = L4_2.panel_suit
  L5_2 = L4_2
  L4_2 = L4_2.safe_set_active
  L6_2 = L3_2
  L4_2(L5_2, L6_2)
  L4_2 = A0_2._binder
  L4_2 = L4_2.panel_property
  L5_2 = L4_2
  L4_2 = L4_2.safe_set_active
  L6_2 = L3_2
  L4_2(L5_2, L6_2)
  if L3_2 then
    L4_2 = A0_2._binder
    L4_2 = L4_2.panel_suit
    L5_2 = L4_2
    L4_2 = L4_2.setup_view
    L6_2 = A1_2
    L7_2 = A2_2
    L4_2(L5_2, L6_2, L7_2)
    L4_2 = A0_2._binder
    L4_2 = L4_2.panel_property
    L5_2 = L4_2
    L4_2 = L4_2.setup_view
    L6_2 = A1_2
    L7_2 = A2_2
    L4_2(L5_2, L6_2, L7_2)
  end
end
L1_1._refresh = L2_1
return L1_1
