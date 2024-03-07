local L0_1, L1_1, L2_1
L0_1 = require
L1_1 = "Ui.Map.RegionalDetail.MapSymbolOfferingRewardPanel"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "MapOfferingRewardDetailPanel"
L2_1 = G
L2_1 = L2_1.BasePanel
L0_1 = L0_1(L1_1, L2_1)
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2.create_panel
  L3_2 = G
  L3_2 = L3_2.MapSymbolOfferingRewardPanel
  L4_2 = G
  L4_2 = L4_2.MapSymbolOfferingRewardPanelBinder
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2._symbol_panel = L1_2
  L1_2 = A0_2._symbol_panel
  L2_2 = L1_2
  L1_2 = L1_2.sync_loadto
  L3_2 = A0_2._binder
  L3_2 = L3_2.node_offering_progress
  L1_2(L2_2, L3_2)
end
L0_1._on_load = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  A0_2.param_data = A1_2
  L2_2 = A0_2.param_data
  L2_2 = L2_2.map_icon_data
  L2_2 = L2_2.EntranceID
  A0_2.entrance_id = L2_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.text_reward_title
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetTextID
  L4_2 = "UIText_WordShop_MapInfo_Reward"
  L2_2(L3_2, L4_2)
  L3_2 = A0_2
  L2_2 = A0_2._refresh
  L2_2(L3_2)
end
L0_1.setup_view = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.GameCore
  L1_2 = L1_2.SpecialMappingInfoExcelTable
  L1_2 = L1_2.GetData
  L2_2 = A0_2.param_data
  L2_2 = L2_2.map_icon_data
  L2_2 = L2_2.MappingInfoRow
  L2_2 = L2_2.ID
  L3_2 = A0_2.param_data
  L3_2 = L3_2.map_icon_data
  L3_2 = L3_2.MappingInfoRow
  L3_2 = L3_2.WorldLevel
  L1_2 = L1_2(L2_2, L3_2)
  if L1_2 == nil then
    return
  end
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.Client
  L2_2 = L2_2.GlobalVars
  L2_2 = L2_2.s_ModuleManager
  L2_2 = L2_2.OfferingModule
  L3_2 = L2_2
  L2_2 = L2_2.GetOfferingRewardData
  L4_2 = L1_2.ParamList
  L4_2 = L4_2[0]
  L2_2 = L2_2(L3_2, L4_2)
  if L2_2 ~= nil then
    L4_2 = L2_2
    L3_2 = L2_2.IsUnlock
    L3_2 = L3_2(L4_2)
    if L3_2 then
      goto lbl_45
    end
  end
  L3_2 = A0_2._binder
  L3_2 = L3_2.node_reward_panel
  L4_2 = L3_2
  L3_2 = L3_2.SafeSetActive
  L5_2 = false
  L3_2(L4_2, L5_2)
  L3_2 = A0_2._binder
  L3_2 = L3_2.node_offering_progress
  L4_2 = L3_2
  L3_2 = L3_2.SafeSetActive
  L5_2 = false
  L3_2(L4_2, L5_2)
  do return end
  ::lbl_45::
  L3_2 = A0_2._binder
  L3_2 = L3_2.node_offering_progress
  L4_2 = L3_2
  L3_2 = L3_2.SafeSetActive
  L5_2 = true
  L3_2(L4_2, L5_2)
  L4_2 = L2_2
  L3_2 = L2_2.GetUnlockHint
  L3_2 = L3_2(L4_2)
  L4_2 = A0_2._symbol_panel
  L5_2 = L4_2
  L4_2 = L4_2.setup_view
  L6_2 = L2_2
  L7_2 = L3_2
  L4_2(L5_2, L6_2, L7_2)
  L5_2 = A0_2
  L4_2 = A0_2._try_reddot_show
  L6_2 = L2_2
  L7_2 = L3_2 ~= nil
  L4_2(L5_2, L6_2, L7_2)
end
L0_1._refresh = L1_1
function L1_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2
  L3_2 = nil
  L5_2 = A1_2
  L4_2 = A1_2.HasAnyRewardCanTake
  L4_2 = L4_2(L5_2)
  if L4_2 then
    L3_2 = "UIText_OfferingClockie_MapinfoBubble01"
  else
    if not A2_2 then
      L5_2 = A1_2
      L4_2 = A1_2.CanLevelUp
      L4_2 = L4_2(L5_2)
      if L4_2 then
        L3_2 = "UIText_OfferingClockie_MapinfoBubble02"
    end
    else
      L4_2 = A1_2.IsShowUpgradeHint
      if L4_2 then
        L3_2 = "UIText_OfferingClockie_MapinfoBubble03"
      end
    end
  end
  L4_2 = A0_2._binder
  L4_2 = L4_2.node_red_dot_tip
  L5_2 = L4_2
  L4_2 = L4_2.SafeSetActive
  L6_2 = L3_2 ~= nil
  L4_2(L5_2, L6_2)
  if L3_2 ~= nil then
    L4_2 = A0_2._binder
    L4_2 = L4_2.text_red_dot_tip
    L5_2 = L4_2
    L4_2 = L4_2.SafeSetTextID
    L6_2 = L3_2
    L4_2(L5_2, L6_2)
  end
  A1_2.IsShowUpgradeHint = false
end
L0_1._try_reddot_show = L1_1
return L0_1
