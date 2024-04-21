local L0_1, L1_1, L2_1, L3_1
L0_1 = require
L1_1 = "Utilities.ShopUtils"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "DropLinkInfoRowPanel"
L2_1 = G
L2_1 = L2_1.BasePanel
L0_1 = L0_1(L1_1, L2_1)
L1_1 = {}
L1_1[4100] = true
L1_1[4101] = true
L2_1 = CS
L2_1 = L2_1.RPG
L2_1 = L2_1.Client
L2_1 = L2_1.GlobalVars
L2_1 = L2_1.s_ModuleManager
L2_1 = L2_1.MissionModule
function L3_1(A0_2)
  local L1_2
end
L0_1.ctor = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.button
  L4_2 = A0_2._on_click
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.button
  function L2_2()
    local L0_3, L1_3, L2_3
    L0_3 = A0_2
    L1_3 = L0_3
    L0_3 = L0_3.save_navigation_target
    L2_3 = A0_2._binder
    L2_3 = L2_3.root
    L2_3 = L2_3.gameObject
    L0_3(L1_3, L2_3)
  end
  L1_2.onSelectTrigger = L2_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.GameCore
  L1_2 = L1_2.AdventureStatic
  L2_2 = L1_2
  L1_2 = L1_2.GetCurrentGameModeType
  L1_2 = L1_2(L2_2)
  A0_2._cur_game_mode = L1_2
end
L0_1._on_load = L3_1
function L3_1(A0_2)
  local L1_2
  A0_2._gotoID = nil
  A0_2._on_click_callback = nil
  A0_2._on_click_callback_self = nil
end
L0_1._on_dispose = L3_1
function L3_1(A0_2, A1_2, A2_2)
  A0_2._drop_hint_go_to_callback = A1_2
  A0_2._drop_hint_go_to_callback_self = A2_2
end
L0_1.register_drop_hint_go_to_callback = L3_1
function L3_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  A0_2._item_come_from_row = A1_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.button
  L3_2 = L2_2
  L2_2 = L2_2.SetChecked
  L4_2 = false
  L2_2(L3_2, L4_2)
  L3_2 = A0_2
  L2_2 = A0_2._setup_title
  L2_2(L3_2)
  L3_2 = A0_2
  L2_2 = A0_2._setup_source
  L2_2(L3_2)
end
L0_1.setup_view = L3_1
function L3_1(A0_2, A1_2, A2_2)
  A0_2._on_click_callback = A1_2
  A0_2._on_click_callback_self = A2_2
end
L0_1.register_click_handler = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._item_come_from_row
  L1_2 = L1_2.Desc
  L2_2 = A0_2._binder
  L2_2 = L2_2.txt_desc
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetTextID
  L4_2 = L1_2
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.txt_desc_disable
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetTextID
  L4_2 = L1_2
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.txt_desc_diaplay
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetTextID
  L4_2 = L1_2
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.txt_desc_mission
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetTextID
  L4_2 = L1_2
  L2_2(L3_2, L4_2)
end
L0_1._setup_title = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L1_2 = A0_2._item_come_from_row
  L1_2 = L1_2.GotoID
  L2_2 = L1_2 == nil or L1_2 == 0
  L3_2 = A0_2._binder
  L3_2 = L3_2.node_diaplay
  L4_2 = L3_2
  L3_2 = L3_2.SafeSetActive
  L5_2 = L2_2
  L3_2(L4_2, L5_2)
  if L2_2 then
    L3_2 = A0_2._binder
    L3_2 = L3_2.node_normal
    L4_2 = L3_2
    L3_2 = L3_2.SafeSetActive
    L5_2 = false
    L3_2(L4_2, L5_2)
    L3_2 = A0_2._binder
    L3_2 = L3_2.node_disable
    L4_2 = L3_2
    L3_2 = L3_2.SafeSetActive
    L5_2 = false
    L3_2(L4_2, L5_2)
    L3_2 = A0_2._binder
    L3_2 = L3_2.node_lock_by_mission
    L4_2 = L3_2
    L3_2 = L3_2.SafeSetActive
    L5_2 = false
    L3_2(L4_2, L5_2)
    L3_2 = A0_2._binder
    L3_2 = L3_2.node_event_open
    L4_2 = L3_2
    L3_2 = L3_2.SafeSetActive
    L5_2 = false
    L3_2(L4_2, L5_2)
    return
  end
  L3_2 = G
  L3_2 = L3_2.GotoManager
  L3_2 = L3_2.CanGoto
  L4_2 = L1_2
  L3_2 = L3_2(L4_2)
  A0_2._can_goto = L3_2
  L3_2 = G
  L3_2 = L3_2.GotoManager
  L3_2 = L3_2.is_locking_by_mission
  L4_2 = L1_2
  L3_2, L4_2 = L3_2(L4_2)
  A0_2._trace_mission_id = L4_2
  A0_2._can_trace = L3_2
  L3_2 = A0_2._can_trace
  if L3_2 then
    L3_2 = A0_2._item_come_from_row
    L3_2 = L3_2.EnableMissionTrack
  end
  A0_2._can_trace = L3_2
  L3_2 = A0_2._binder
  L3_2 = L3_2.node_normal
  L4_2 = L3_2
  L3_2 = L3_2.SafeSetActive
  L5_2 = A0_2._can_goto
  if L5_2 then
    L5_2 = A0_2._can_trace
    L5_2 = not L5_2
  end
  L3_2(L4_2, L5_2)
  L3_2 = A0_2._binder
  L3_2 = L3_2.node_disable
  L4_2 = L3_2
  L3_2 = L3_2.SafeSetActive
  L5_2 = A0_2._can_goto
  L5_2 = A0_2._can_trace
  L5_2 = not L5_2 and L5_2
  L3_2(L4_2, L5_2)
  L3_2 = A0_2._can_goto
  L3_2 = not L3_2 and L3_2
  L4_2 = A0_2._binder
  L4_2 = L4_2.node_lock_by_mission
  L5_2 = L4_2
  L4_2 = L4_2.SafeSetActive
  L6_2 = L3_2
  L4_2(L5_2, L6_2)
  if L3_2 then
    L4_2 = L2_1
    L5_2 = L4_2
    L4_2 = L4_2.GetGapChainDoingMissionType
    L6_2 = A0_2._trace_mission_id
    L4_2 = L4_2(L5_2, L6_2)
    L5_2 = CS
    L5_2 = L5_2.RPG
    L5_2 = L5_2.GameCore
    L5_2 = L5_2.MainMissionTypeConfigExcelTable
    L5_2 = L5_2.GetData
    L6_2 = L4_2
    L5_2 = L5_2(L6_2)
    L6_2 = CS
    L6_2 = L6_2.RPG
    L6_2 = L6_2.GameCore
    L6_2 = L6_2.MiniMapIconExcelTable
    L6_2 = L6_2.GetData
    L7_2 = L5_2.WaypointIconType
    L6_2 = L6_2(L7_2)
    L8_2 = A0_2
    L7_2 = A0_2._async_load_sprite_to
    L9_2 = A0_2._binder
    L9_2 = L9_2.img_mission_type
    L10_2 = L6_2.MissionIconPath
    L7_2(L8_2, L9_2, L10_2)
    L7_2 = A0_2._binder
    L7_2 = L7_2.img_mission_bg
    L8_2 = G
    L8_2 = L8_2.UIColorUtils
    L8_2 = L8_2.GetColor
    L9_2 = L5_2.TypeColor
    L8_2 = L8_2(L9_2)
    L7_2.color = L8_2
  end
  L4_2 = CS
  L4_2 = L4_2.RPG
  L4_2 = L4_2.GameCore
  L4_2 = L4_2.ItemComefromLimitExcelTable
  L4_2 = L4_2.GetData
  L5_2 = A0_2._item_come_from_row
  L5_2 = L5_2.ID
  L6_2 = A0_2._item_come_from_row
  L6_2 = L6_2.ComefromID
  L4_2 = L4_2(L5_2, L6_2)
  L4_2 = nil ~= L4_2
  L5_2 = A0_2._binder
  L5_2 = L5_2.node_event_open
  L6_2 = L5_2
  L5_2 = L5_2.SafeSetActive
  L7_2 = L4_2
  L5_2(L6_2, L7_2)
end
L0_1._setup_source = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = G
  L1_2 = L1_2.Utils
  L1_2 = L1_2.invoke_callback
  L2_2 = A0_2._on_click_callback
  L3_2 = A0_2._on_click_callback_self
  L4_2 = A0_2._item_come_from_row
  L4_2 = L4_2.GotoID
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2._can_goto
  if not L1_2 then
    L1_2 = A0_2._can_trace
    if L1_2 then
      L1_2 = G
      L1_2 = L1_2.MissionUtils
      L1_2 = L1_2.trace_main_mission
      L2_2 = A0_2._trace_mission_id
      L1_2(L2_2)
      return
    end
  end
  L2_2 = A0_2
  L1_2 = A0_2._on_click_by_goto_id
  L1_2(L2_2)
end
L0_1._on_click = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L1_2 = A0_2._item_come_from_row
  L1_2 = L1_2.GotoID
  if L1_2 == nil or L1_2 == 0 then
    return
  end
  L2_2 = L1_1[L1_2]
  if L2_2 == true then
    L2_2 = G
    L2_2 = L2_2.GotoManager
    L2_2 = L2_2.Goto
    L3_2 = L1_2
    L4_2 = {}
    L5_2 = A0_2._item_come_from_row
    L4_2[1] = L5_2
    L2_2(L3_2, L4_2)
    L3_2 = A0_2
    L2_2 = A0_2._trigger_drop_hint_go_to_callback
    L4_2 = L1_2
    L2_2(L3_2, L4_2)
    return
  end
  L2_2 = G
  L2_2 = L2_2.ShopUtils
  L2_2 = L2_2.check_is_exchange_shop_param
  L3_2 = L1_2
  L2_2 = L2_2(L3_2)
  if L2_2 then
    L2_2 = {}
    L3_2 = CS
    L3_2 = L3_2.RPG
    L3_2 = L3_2.GameCore
    L3_2 = L3_2.GotoConfigExcelTable
    L3_2 = L3_2.GetData
    L4_2 = A0_2._item_come_from_row
    L4_2 = L4_2.GotoID
    L3_2 = L3_2(L4_2)
    L4_2 = L3_2.ParamIntList
    L4_2 = L4_2.Length
    if 0 < L4_2 then
      L4_2 = 0
      L5_2 = L3_2.ParamIntList
      L5_2 = L5_2.Length
      L5_2 = L5_2 - 1
      L6_2 = 1
      for L7_2 = L4_2, L5_2, L6_2 do
        L8_2 = #L2_2
        L8_2 = L8_2 + 1
        L9_2 = L3_2.ParamIntList
        L9_2 = L9_2[L7_2]
        L2_2[L8_2] = L9_2
      end
    end
    L4_2 = table
    L4_2 = L4_2.insert
    L5_2 = L2_2
    L6_2 = A0_2._item_come_from_row
    L6_2 = L6_2.ID
    L4_2(L5_2, L6_2)
    L4_2 = G
    L4_2 = L4_2.GotoManager
    L4_2 = L4_2.Goto
    L5_2 = L1_2
    L6_2 = L2_2
    L4_2(L5_2, L6_2)
    L5_2 = A0_2
    L4_2 = A0_2._trigger_drop_hint_go_to_callback
    L6_2 = L1_2
    L4_2(L5_2, L6_2)
    return
  end
  L2_2 = G
  L2_2 = L2_2.Utils
  L2_2 = L2_2.create_lua_table_from_cs_array
  L3_2 = A0_2._item_come_from_row
  L3_2 = L3_2.GotoParam
  L2_2 = L2_2(L3_2)
  L3_2 = #L2_2
  if L3_2 == 0 then
    L2_2 = nil
  end
  L3_2 = G
  L3_2 = L3_2.GotoManager
  L3_2 = L3_2.Goto
  L4_2 = L1_2
  L5_2 = L2_2
  L3_2(L4_2, L5_2)
  L4_2 = A0_2
  L3_2 = A0_2._trigger_drop_hint_go_to_callback
  L5_2 = L1_2
  L3_2(L4_2, L5_2)
end
L0_1._on_click_by_goto_id = L3_1
function L3_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = G
  L2_2 = L2_2.GotoManager
  L2_2 = L2_2.CanGoto
  L3_2 = A1_2
  L2_2 = L2_2(L3_2)
  if L2_2 then
    L2_2 = A0_2._drop_hint_go_to_callback
    if L2_2 then
      L2_2 = A0_2._drop_hint_go_to_callback_self
      if L2_2 then
        L2_2 = A0_2._drop_hint_go_to_callback
        L3_2 = A0_2._drop_hint_go_to_callback_self
        L4_2 = A1_2
        L2_2(L3_2, L4_2)
      end
    end
  end
end
L0_1._trigger_drop_hint_go_to_callback = L3_1
return L0_1
