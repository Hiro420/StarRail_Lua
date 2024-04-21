local L0_1, L1_1, L2_1
L0_1 = require
L1_1 = "Logic.LogicUtils.RewardUtils"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Activity.ActivityPanel.TrailblazeMissionBannerActivityPanelBinder"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "TrailblazeMissionBannerActivityPanel"
L2_1 = G
L2_1 = L2_1.TabItem
L0_1 = L0_1(L1_1, L2_1)
function L1_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2
  A0_2._activity_data = A3_2
  L4_2 = G
  L4_2 = L4_2.Utils
  L4_2 = L4_2.create_lua_table_from_cs_array
  L5_2 = A0_2._activity_data
  L5_2 = L5_2.Row
  L5_2 = L5_2.TypeParam
  L4_2 = L4_2(L5_2)
  L5_2 = #L4_2
  if L5_2 < 2 then
    L5_2 = nil
    return L5_2
  end
  L5_2 = L4_2[1]
  A0_2._prev_mission_id = L5_2
  L5_2 = CS
  L5_2 = L5_2.System
  L5_2 = L5_2.Collections
  L5_2 = L5_2.Generic
  L5_2 = L5_2.List
  L6_2 = CS
  L6_2 = L6_2.System
  L6_2 = L6_2.UInt32
  L5_2 = L5_2(L6_2)
  L5_2 = L5_2()
  A0_2._content_mission_id_list = L5_2
  L5_2 = 2
  L6_2 = #L4_2
  L7_2 = 1
  for L8_2 = L5_2, L6_2, L7_2 do
    L9_2 = A0_2._content_mission_id_list
    L10_2 = L9_2
    L9_2 = L9_2.Add
    L11_2 = L4_2[L8_2]
    L9_2(L10_2, L11_2)
  end
end
L0_1.ctor = L1_1
function L1_1(A0_2, A1_2)
  local L2_2
  L2_2 = NavigationZoneType
  L2_2 = L2_2.Zone2
  if A1_2 == L2_2 then
    L2_2 = false
    return L2_2
  end
end
L0_1._is_can_to_zoom = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2
  L3_2 = A0_2
  L2_2 = A0_2.is_current_tab_item
  L2_2 = L2_2(L3_2)
  if not L2_2 then
    return
  end
end
L0_1._on_enter_zoom = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._is_custom_loaded
  if L1_2 then
    return
  end
  A0_2._is_custom_loaded = true
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_go
  L4_2 = A0_2._on_btn_go
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._setup_start_tips
  L3_2 = true
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2._setup_btn_state
  L3_2 = false
  L1_2(L2_2, L3_2)
end
L0_1._custom_on_load = L1_1
function L1_1(A0_2)
  local L1_2
end
L0_1._on_dispose = L1_1
function L1_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2._setup_tab_panel
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._setup_reddot
  L1_2(L2_2)
end
L0_1._on_added = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._owner
  L2_2 = L1_2
  L1_2 = L1_2._get_panel_prefab_path_by_activity_data
  L3_2 = A0_2._activity_data
  L1_2 = L1_2(L2_2, L3_2)
  L2_2 = A0_2._is_custom_bind
  if not L2_2 then
    L3_2 = A0_2
    L2_2 = A0_2.bind
    L4_2 = L1_2
    L2_2(L3_2, L4_2)
  end
  A0_2._is_custom_bind = true
  L3_2 = A0_2
  L2_2 = A0_2._custom_on_load
  L2_2(L3_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.root
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = true
  L2_2(L3_2, L4_2)
  L3_2 = A0_2
  L2_2 = A0_2._refresh
  L2_2(L3_2)
end
L0_1._on_select = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.root
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = false
  L2_2(L3_2, L4_2)
end
L0_1._on_unselect = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.tab_btn_panel
  L2_2 = L1_2
  L1_2 = L1_2.setup_view
  L3_2 = A0_2._activity_data
  L1_2(L2_2, L3_2)
end
L0_1._setup_tab_panel = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.tab_btn_panel
  L2_2 = L1_2
  L1_2 = L1_2.bind_reddot
  L3_2 = "ActivityQuest"
  L4_2 = A0_2._activity_data
  L4_2 = L4_2.PanelID
  L1_2(L2_2, L3_2, L4_2)
end
L0_1._setup_reddot = L1_1
function L1_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2._setup_bg
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._setup_desc
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._refresh_state_by_mission
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._setup_title
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._setup_remain_time
  L1_2(L2_2)
end
L0_1._refresh = L1_1
function L1_1(A0_2)
  local L1_2
end
L0_1._setup_bg = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.tag_desc_text
  if L1_2 ~= nil then
    L1_2 = A0_2._binder
    L1_2 = L1_2.tag_desc_text
    L2_2 = L1_2
    L1_2 = L1_2.SafeSetTextID
    L3_2 = A0_2._activity_data
    L3_2 = L3_2.Row
    L3_2 = L3_2.TagDesc
    L1_2(L2_2, L3_2)
  end
  L1_2 = A0_2._binder
  L1_2 = L1_2.panel_desc_text
  if L1_2 ~= nil then
    L1_2 = A0_2._binder
    L1_2 = L1_2.panel_desc_text
    L2_2 = L1_2
    L1_2 = L1_2.SafeSetTextID
    L3_2 = A0_2._activity_data
    L3_2 = L3_2.Row
    L3_2 = L3_2.PanelDesc
    L1_2(L2_2, L3_2)
  end
end
L0_1._setup_desc = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.GlobalVars
  L1_2 = L1_2.s_ModuleManager
  L1_2 = L1_2.MissionModule
  L3_2 = L1_2
  L2_2 = L1_2.MainMissionDataPromised
  L4_2 = A0_2._prev_mission_id
  L2_2 = L2_2(L3_2, L4_2)
  L3_2 = L2_2
  L2_2 = L2_2.ThenLuaAction
  function L4_2()
    local L0_3, L1_3, L2_3, L3_3
    L0_3 = L1_2
    L1_3 = L0_3
    L0_3 = L0_3.TryGetMainMissionData
    L2_3 = A0_2._prev_mission_id
    L0_3 = L0_3(L1_3, L2_3)
    if L0_3 == nil then
      return
    end
    L1_3 = A0_2
    L2_3 = L1_3
    L1_3 = L1_3._setup_start_tips
    L3_3 = L0_3.IsFinish
    L3_3 = L3_3 == false
    L1_3(L2_3, L3_3)
    L1_3 = A0_2
    L2_3 = L1_3
    L1_3 = L1_3._setup_btn_state
    L3_3 = L0_3.IsFinish
    L3_3 = L3_3 == true
    L1_3(L2_3, L3_3)
  end
  L2_2(L3_2, L4_2)
end
L0_1._refresh_state_by_mission = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2._binder
  if L2_2 ~= nil then
    L2_2 = A0_2._binder
    L2_2 = L2_2.btn_go
    if L2_2 ~= nil then
      L2_2 = A0_2._binder
      L2_2 = L2_2.text_btn_go
      if L2_2 ~= nil then
        goto lbl_13
      end
    end
  end
  do return end
  ::lbl_13::
  L2_2 = A0_2._binder
  L2_2 = L2_2.btn_go
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.btn_go
  L2_2.interactable = A1_2
  if A1_2 then
    L2_2 = A0_2._binder
    L2_2 = L2_2.text_btn_go
    L3_2 = L2_2
    L2_2 = L2_2.SafeSetTextID
    L4_2 = "UIText_QuestOverviewtDialog_Btn02"
    L2_2(L3_2, L4_2)
  else
    L2_2 = A0_2._binder
    L2_2 = L2_2.text_btn_go
    L3_2 = L2_2
    L2_2 = L2_2.SafeSetTextID
    L4_2 = "UIText_Mission_Advance1"
    L2_2(L3_2, L4_2)
  end
end
L0_1._setup_btn_state = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L2_2 = A0_2._binder
  if L2_2 ~= nil then
    L2_2 = A0_2._binder
    L2_2 = L2_2.node_start_tips
    if L2_2 ~= nil then
      L2_2 = A0_2._binder
      L2_2 = L2_2.text_start_tips
      if L2_2 ~= nil then
        goto lbl_13
      end
    end
  end
  do return end
  ::lbl_13::
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_start_tips
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
  if A1_2 then
    L2_2 = CS
    L2_2 = L2_2.RPG
    L2_2 = L2_2.Client
    L2_2 = L2_2.GlobalVars
    L2_2 = L2_2.s_ModuleManager
    L2_2 = L2_2.MissionModule
    L3_2 = L2_2
    L2_2 = L2_2.GetMainMissionRow
    L4_2 = A0_2._prev_mission_id
    L2_2 = L2_2(L3_2, L4_2)
    L3_2 = L2_2.Name
    L4_2 = G
    L4_2 = L4_2.TextmapStatic
    L4_2 = L4_2.GetText
    L5_2 = L3_2
    L4_2 = L4_2(L5_2)
    L5_2 = A0_2._binder
    L5_2 = L5_2.text_start_tips
    L6_2 = L5_2
    L5_2 = L5_2.SafeSetTextID
    L7_2 = "GotoTips_Name_4"
    L8_2 = L4_2
    L5_2(L6_2, L7_2, L8_2)
  end
end
L0_1._setup_start_tips = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.text_title
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetTextID
  L3_2 = A0_2._activity_data
  L3_2 = L3_2.Row
  L3_2 = L3_2.TitleName
  L1_2(L2_2, L3_2)
end
L0_1._setup_title = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.remain_timer
  L2_2 = L1_2
  L1_2 = L1_2.SetTargetTimeByTimeStamp
  L3_2 = A0_2._activity_data
  L3_2 = L3_2.EndTimeStamp
  L4_2 = A0_2._expire_call_back
  L5_2 = A0_2
  L6_2 = 2
  L1_2(L2_2, L3_2, L4_2, L5_2, L6_2)
end
L0_1._setup_remain_time = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.SDKLuaReportAdapter
  L1_2 = L1_2.ReportUIButtonClick
  L2_2 = A0_2._owner
  L2_2 = L2_2.__name
  L3_2 = A0_2.__name
  L4_2 = "GotoMissionBtn"
  L5_2 = A0_2._owner
  L5_2 = L5_2.guid
  L1_2(L2_2, L3_2, L4_2, L5_2)
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.GlobalVars
  L1_2 = L1_2.s_ModuleManager
  L1_2 = L1_2.MissionModule
  L3_2 = L1_2
  L2_2 = L1_2.MainMissionDataPromised
  L4_2 = A0_2._content_mission_id_list
  L2_2 = L2_2(L3_2, L4_2)
  L3_2 = L2_2
  L2_2 = L2_2.ThenLuaAction
  function L4_2()
    local L0_3, L1_3, L2_3, L3_3, L4_3, L5_3, L6_3
    L0_3 = 0
    L1_3 = A0_2._content_mission_id_list
    L1_3 = L1_3.Count
    L2_3 = 1
    for L3_3 = L0_3, L1_3, L2_3 do
      L4_3 = L1_2
      L5_3 = L4_3
      L4_3 = L4_3.TryGetMainMissionData
      L6_3 = A0_2._content_mission_id_list
      L6_3 = L6_3[L3_3]
      L4_3 = L4_3(L5_3, L6_3)
      L5_3 = L4_3.IsFinish
      if not L5_3 then
        L5_3 = G
        L5_3 = L5_3.MissionUtils
        L5_3 = L5_3.common_jump_to_mission_by_main_mission
        L6_3 = L4_3
        L5_3(L6_3)
        return
      end
    end
  end
  L2_2(L3_2, L4_2)
end
L0_1._on_btn_go = L1_1
function L1_1(A0_2)
  local L1_2, L2_2
  L1_2 = G
  L1_2 = L1_2.NotifyManager
  L1_2 = L1_2.notify
  L2_2 = G
  L2_2 = L2_2.CS
  L2_2 = L2_2.NotifyType
  L2_2 = L2_2.ActivityRefreshAll
  L1_2(L2_2)
end
L0_1._expire_call_back = L1_1
return L0_1
