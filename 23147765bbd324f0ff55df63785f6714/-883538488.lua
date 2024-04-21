local L0_1, L1_1, L2_1, L3_1, L4_1
L0_1 = require
L1_1 = "Ui.Map.RegionalDetail.MapSymbolDetailPanelBinder"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "MapTeleportDetailPanel"
L2_1 = G
L2_1 = L2_1.BasePanel
L0_1 = L0_1(L1_1, L2_1)
L1_1 = CS
L1_1 = L1_1.RPG
L1_1 = L1_1.Client
L1_1 = L1_1.GlobalVars
L1_1 = L1_1.s_ModuleManager
L1_1 = L1_1.TransferModule
L2_1 = G
L2_1 = L2_1.MapModule
L2_1 = L2_1.Instance
L3_1 = CS
L3_1 = L3_1.RPG
L3_1 = L3_1.Client
L3_1 = L3_1.GlobalVars
L3_1 = L3_1.s_ModuleManager
L3_1 = L3_1.PlayerModule
function L4_1(A0_2)
  local L1_2
end
L0_1._on_load = L4_1
function L4_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  A0_2.param_data = A1_2
  L2_2 = A0_2.param_data
  L2_2 = L2_2.map_icon_data
  L2_2 = L2_2.EntranceID
  A0_2.entrance_id = L2_2
  L2_2 = A0_2.param_data
  L2_2 = L2_2.map_icon_data
  L2_2 = L2_2.DimensionID
  A0_2._dimension_id = L2_2
  L2_2 = {}
  A0_2._reward_item_list = L2_2
  L3_2 = A0_2
  L2_2 = A0_2._bind_btn_callback
  L4_2 = A0_2._binder
  L4_2 = L4_2.btn_transfer
  L5_2 = A0_2._on_btn_transfer_click
  L2_2(L3_2, L4_2, L5_2)
  L3_2 = A0_2
  L2_2 = A0_2._bind_btn_callback
  L4_2 = A0_2._binder
  L4_2 = L4_2.btn_trace
  L5_2 = A0_2._on_btn_trace_click
  L2_2(L3_2, L4_2, L5_2)
  L3_2 = A0_2
  L2_2 = A0_2._bind_btn_callback
  L4_2 = A0_2._binder
  L4_2 = L4_2.btn_game_pad
  L5_2 = A0_2._on_btn_game_pad_click
  L2_2(L3_2, L4_2, L5_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.text_reward_title
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetTextID
  L4_2 = "UIText_Cocoon_RewardInfo"
  L2_2(L3_2, L4_2)
  L3_2 = A0_2
  L2_2 = A0_2._setup_teleport_view
  L2_2(L3_2)
end
L0_1.setup_view = L4_1
function L4_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2._on_teleport_btn_transfer_click
  L1_2(L2_2)
end
L0_1._on_btn_transfer_click = L4_1
function L4_1(A0_2)
  local L1_2
end
L0_1._on_btn_trace_click = L4_1
function L4_1(A0_2)
  local L1_2
end
L0_1._on_btn_game_pad_click = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_refresh_time
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = false
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_reward_panel
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = false
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.btn_trace
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = false
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.text_desc
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = true
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.btn_transfer
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = true
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_btn_panel
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = true
  L1_2(L2_2, L3_2)
  L1_2 = A0_2.param_data
  L1_2 = L1_2.map_icon_data
  L1_2 = L1_2.MappingInfoID
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.GameCore
  L2_2 = L2_2.MappingInfoExcelTable
  L2_2 = L2_2.GetData
  L3_2 = L1_2
  L4_2 = L3_1.PlayerData
  L4_2 = L4_2.WorldLevel
  L2_2 = L2_2(L3_2, L4_2)
  if L2_2 == nil then
    L3_2 = CS
    L3_2 = L3_2.RPG
    L3_2 = L3_2.GameCore
    L3_2 = L3_2.MappingInfoExcelTable
    L3_2 = L3_2.GetData
    L4_2 = L1_2
    L5_2 = 0
    L3_2 = L3_2(L4_2, L5_2)
    L2_2 = L3_2
  end
  L3_2 = A0_2.param_data
  L3_2 = L3_2.map_icon_data
  L3_2 = L3_2.MapIconType
  L4_2 = CS
  L4_2 = L4_2.RPG
  L4_2 = L4_2.GameCore
  L4_2 = L4_2.MiniMapIconExcelTable
  L4_2 = L4_2.GetData
  L5_2 = L3_2
  L4_2 = L4_2(L5_2)
  if L4_2 then
    L5_2 = L4_2.IconPath
    if L5_2 then
      L6_2 = A0_2
      L5_2 = A0_2._async_load_sprite_to
      L7_2 = A0_2._binder
      L7_2 = L7_2.image_title
      L8_2 = L4_2.IconPath
      L5_2(L6_2, L7_2, L8_2)
    end
  end
  if L2_2 then
    L5_2 = A0_2._binder
    L5_2 = L5_2.text_title
    L6_2 = L5_2
    L5_2 = L5_2.SafeSetTextID
    L7_2 = L2_2.Name
    L5_2(L6_2, L7_2)
    L5_2 = A0_2._binder
    L5_2 = L5_2.text_desc
    L6_2 = L5_2
    L5_2 = L5_2.SafeSetTextID
    L7_2 = L2_2.Desc
    L5_2(L6_2, L7_2)
  end
end
L0_1._setup_teleport_view = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = L2_1.is_teleport_unlock
  L1_2 = L1_2()
  if L1_2 then
    L2_2 = A0_2
    L1_2 = A0_2.get_blackboard
    L1_2 = L1_2(L2_2)
    L2_2 = L1_2
    L1_2 = L1_2.query
    L3_2 = "StoryLineID"
    L1_2 = L1_2(L2_2, L3_2)
    L2_2 = G
    L2_2 = L2_2.StoryLineUtils
    L2_2 = L2_2.show_switch_line_check_on_demand
    function L3_2()
      local L0_3, L1_3, L2_3, L3_3, L4_3, L5_3
      L0_3 = L1_1
      L1_3 = L0_3
      L0_3 = L0_3.Transfer
      L2_3 = A0_2.entrance_id
      L3_3 = A0_2.param_data
      L3_3 = L3_3.map_icon_data
      L3_3 = L3_3.MappingInfoID
      L4_3 = L1_2
      L5_3 = A0_2._dimension_id
      L0_3(L1_3, L2_3, L3_3, L4_3, L5_3)
    end
    L4_2 = L1_2
    L2_2(L3_2, L4_2)
  else
    L1_2 = G
    L1_2 = L1_2.NotifyManager
    L1_2 = L1_2.notify
    L2_2 = G
    L2_2 = L2_2.CS
    L2_2 = L2_2.NotifyType
    L2_2 = L2_2.UIPileToastMessageTextID
    L3_2 = "UIText_Mappinginfo_Teleport_UnlockDesc"
    L1_2(L2_2, L3_2)
  end
end
L0_1._on_teleport_btn_transfer_click = L4_1
return
