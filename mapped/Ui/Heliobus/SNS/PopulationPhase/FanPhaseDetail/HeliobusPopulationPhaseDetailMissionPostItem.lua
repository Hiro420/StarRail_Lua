local L0_1, L1_1, L2_1, L3_1, L4_1
L0_1 = require
L1_1 = "Ui.Heliobus.HeliobusUtilities.HeliobusSNSUtils"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Heliobus.Common.HeliobusCommonSNSUserIconPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Heliobus.Common.HeliobusCommonSNSUserIconPanelBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Heliobus.SNS.PopulationPhase.FanPhaseDetail.HeliobusPopulationPhaseDetailMissionPostItemBinder"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "HeliobusPopulationPhaseDetailMissionPostItem"
L2_1 = G
L2_1 = L2_1.BasePanel
L0_1 = L0_1(L1_1, L2_1)
L1_1 = CS
L1_1 = L1_1.RPG
L1_1 = L1_1.Client
L1_1 = L1_1.GlobalVars
L1_1 = L1_1.s_ModuleManager
L1_1 = L1_1.MissionModule
L2_1 = CS
L2_1 = L2_1.RPG
L2_1 = L2_1.Client
L2_1 = L2_1.GlobalVars
L2_1 = L2_1.s_ModuleManager
L2_1 = L2_1.HeliobusModule
L2_1 = L2_1.HeliobusSNSData
L3_1 = "UIText_Heliobus_SNSCenter_UnKnownPost"
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2.create_panel
  L3_2 = G
  L3_2 = L3_2.HeliobusCommonSNSUserIconPanel
  L4_2 = G
  L4_2 = L4_2.HeliobusCommonSNSUserIconPanelBinder
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2._user_icon_panel = L1_2
  L1_2 = A0_2._user_icon_panel
  L2_2 = L1_2
  L1_2 = L1_2.bind
  L3_2 = A0_2._binder
  L3_2 = L3_2.node_user_icon
  L1_2(L2_2, L3_2)
end
L0_1._on_load = L4_1
function L4_1(A0_2, A1_2)
  local L2_2, L3_2
  L2_2 = G
  L2_2 = L2_2.HeliobusSNSUtils
  L2_2 = L2_2.get_post_by_post_id
  L3_2 = A1_2
  L2_2 = L2_2(L3_2)
  A0_2._mission_post = L2_2
  L3_2 = A0_2
  L2_2 = A0_2._hide_nodes
  L2_2(L3_2)
  L3_2 = A0_2
  L2_2 = A0_2._setup_mission_post
  L2_2(L3_2)
end
L0_1.setup_view = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_finish
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = false
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_lock
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = false
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_mission_post
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = false
  L1_2(L2_2, L3_2)
end
L0_1._hide_nodes = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._mission_post
  if L1_2 == nil then
    L1_2 = A0_2._binder
    L1_2 = L1_2.txt_lock_tip
    L2_2 = L1_2
    L1_2 = L1_2.SafeSetTextID
    L3_2 = L3_1
    L1_2(L2_2, L3_2)
    L1_2 = A0_2._binder
    L1_2 = L1_2.node_lock
    L2_2 = L1_2
    L1_2 = L1_2.SafeSetActive
    L3_2 = true
    L1_2(L2_2, L3_2)
    return
  end
  L1_2 = A0_2._user_icon_panel
  L2_2 = L1_2
  L1_2 = L1_2.setup_view
  L3_2 = A0_2._mission_post
  L3_2 = L3_2.UserID
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_mission_post
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = true
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.txt_post_name
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetTextID
  L3_2 = A0_2._mission_post
  L3_2 = L3_2.Title
  L1_2(L2_2, L3_2)
  L1_2 = L1_1
  L2_2 = L1_2
  L1_2 = L1_2.GetMainMissionDataWithPromise
  L3_2 = A0_2._mission_post
  L3_2 = L3_2.Row
  L3_2 = L3_2.PostTypeParameter
  L1_2 = L1_2(L2_2, L3_2)
  L2_2 = L1_2
  L1_2 = L1_2.ThenLuaActionOneParam
  function L3_2(A0_3)
    local L1_3, L2_3, L3_3, L4_3
    L1_3 = A0_2._binder
    if L1_3 == nil then
      return
    end
    L1_3 = A0_3.IsFinish
    if L1_3 then
      L1_3 = A0_2._binder
      L1_3 = L1_3.node_finish
      L2_3 = L1_3
      L1_3 = L1_3.SafeSetActive
      L3_3 = true
      L1_3(L2_3, L3_3)
    end
    L1_3 = A0_2
    L2_3 = L1_3
    L1_3 = L1_3._async_load_sprite_to
    L3_3 = A0_2._binder
    L3_3 = L3_3.img_mission_type
    L4_3 = A0_3.TrackIconPath
    L1_3(L2_3, L3_3, L4_3)
  end
  L1_2(L2_2, L3_2)
end
L0_1._setup_mission_post = L4_1
function L4_1(A0_2)
  local L1_2
end
L0_1._on_unload = L4_1
function L4_1(A0_2)
  local L1_2
end
L0_1._on_dispose = L4_1
return L0_1
