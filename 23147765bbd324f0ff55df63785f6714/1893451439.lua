local L0_1, L1_1, L2_1, L3_1
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "SilverWolfActivityMissionVerticalTabItemPanel"
L2_1 = G
L2_1 = L2_1.TabItem
L0_1 = L0_1(L1_1, L2_1)
L1_1 = CS
L1_1 = L1_1.RPG
L1_1 = L1_1.Client
L1_1 = L1_1.GlobalVars
L1_1 = L1_1.s_ModuleManager
L1_1 = L1_1.SilverWolfModule
L2_1 = CS
L2_1 = L2_1.RPG
L2_1 = L2_1.Client
L2_1 = L2_1.GlobalVars
L2_1 = L2_1.s_ModuleManager
L2_1 = L2_1.MissionModule
function L3_1(A0_2)
  local L1_2
  A0_2.locked = true
end
L0_1._on_load = L3_1
function L3_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2
  L3_2 = A0_2._mission_sub_menu
  L4_2 = L3_2
  L3_2 = L3_2.get_zoom_target
  L5_2 = A1_2
  L6_2 = A2_2
  return L3_2(L4_2, L5_2, L6_2)
end
L0_1.get_zoom_target = L3_1
function L3_1(A0_2, A1_2)
  A0_2._mission_sub_menu = A1_2
end
L0_1.setup_mission_sub_menu = L3_1
function L3_1(A0_2, A1_2)
  local L2_2
  A0_2._group_data = A1_2
  L2_2 = A0_2._group_data
  L2_2 = L2_2.GroupId
  A0_2.group_id = L2_2
end
L0_1.setup_group_data = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_unselect_finish
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = A0_2._group_data
  L3_2 = L3_2.IsGroupClose
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_select_finish
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = A0_2._group_data
  L3_2 = L3_2.IsGroupClose
  L1_2(L2_2, L3_2)
end
L0_1._refresh_finish_state = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2._async_load_sprite_to
  L3_2 = A0_2._binder
  L3_2 = L3_2.img_currency_icon
  L4_2 = CS
  L4_2 = L4_2.RPG
  L4_2 = L4_2.Client
  L4_2 = L4_2.SilverWolfUtils
  L4_2 = L4_2.GetCurrencyIcon
  L4_2 = L4_2()
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.btn_root
  L2_2 = A0_2._binder
  L2_2 = L2_2.btn_root
  L2_2 = L2_2.onSelectTrigger
  function L3_2()
    local L0_3, L1_3, L2_3
    L0_3 = A0_2.locked
    if not L0_3 then
      L0_3 = A0_2._mission_sub_menu
      L1_3 = L0_3
      L0_3 = L0_3.is_can_to_zoom
      L0_3 = L0_3(L1_3)
      if L0_3 then
        goto lbl_14
      end
    end
    L0_3 = A0_2
    L1_3 = L0_3
    L0_3 = L0_3.setup_short_cut_hint_panel
    L2_3 = 1
    L0_3(L1_3, L2_3)
    goto lbl_18
    ::lbl_14::
    L0_3 = A0_2
    L1_3 = L0_3
    L0_3 = L0_3.setup_short_cut_hint_panel
    L2_3 = 32
    L0_3(L1_3, L2_3)
    ::lbl_18::
  end
  L2_2 = L2_2 + L3_2
  L1_2.onSelectTrigger = L2_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.btn_root
  L2_2 = L1_2
  L1_2 = L1_2.ClearAnimationState
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._refresh_finish_state
  L1_2(L2_2)
end
L0_1.my_init = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L2_2 = A0_2
  L1_2 = A0_2._refresh_finish_state
  L1_2(L2_2)
  L1_2 = L1_1
  L2_2 = L1_2
  L1_2 = L1_2.GetSilverWolfGroupData
  L3_2 = A0_2._group_data
  L3_2 = L3_2.GroupId
  L1_2 = L1_2(L2_2, L3_2)
  A0_2._group_data = L1_2
  L1_2 = A0_2._group_data
  L1_2 = L1_2.Conditions
  L1_2 = L1_2[0]
  L2_2 = L2_1
  L3_2 = L2_2
  L2_2 = L2_2.MainMissionDataPromised
  L4_2 = tonumber
  L5_2 = L1_2.Param
  L4_2, L5_2 = L4_2(L5_2)
  L2_2 = L2_2(L3_2, L4_2, L5_2)
  L3_2 = L2_2
  L2_2 = L2_2.ThenLuaAction
  function L4_2()
    local L0_3, L1_3, L2_3
    L0_3 = CS
    L0_3 = L0_3.RPG
    L0_3 = L0_3.Client
    L0_3 = L0_3.ConditionCheckerUtil
    L0_3 = L0_3.DoCheck
    L1_3 = L1_2.Type
    L2_3 = L1_2.Param
    L0_3 = L0_3(L1_3, L2_3)
    if not L0_3 then
      L0_3 = A0_2
      L1_3 = L0_3
      L0_3 = L0_3._set_lock_view
      L2_3 = true
      L0_3(L1_3, L2_3)
      L0_3 = A0_2
      L1_3 = L0_3
      L0_3 = L0_3._setup_condition_tips
      L2_3 = L1_2
      L0_3(L1_3, L2_3)
      return
    end
    L0_3 = A0_2._group_data
    L0_3 = L0_3.IsGroupInSchedule
    if not L0_3 then
      L0_3 = A0_2
      L1_3 = L0_3
      L0_3 = L0_3._set_lock_view
      L2_3 = true
      L0_3(L1_3, L2_3)
      L0_3 = A0_2
      L1_3 = L0_3
      L0_3 = L0_3._setup_unlock_time_tips
      L0_3(L1_3)
      return
    end
    L0_3 = A0_2
    L1_3 = L0_3
    L0_3 = L0_3._set_lock_view
    L2_3 = false
    L0_3(L1_3, L2_3)
    L0_3 = A0_2._mission_sub_menu
    L1_3 = L0_3
    L0_3 = L0_3.setup_view
    L2_3 = A0_2._group_data
    L0_3(L1_3, L2_3)
    A0_2.locked = false
  end
  L2_2(L3_2, L4_2)
end
L0_1.refresh = L3_1
function L3_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_time
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = false
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_task
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = true
  L2_2(L3_2, L4_2)
  L2_2 = tonumber
  L3_2 = A1_2.Param
  L2_2 = L2_2(L3_2)
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.Client
  L3_2 = L3_2.GlobalVars
  L3_2 = L3_2.s_ModuleManager
  L3_2 = L3_2.MissionModule
  L4_2 = L3_2
  L3_2 = L3_2.GetMainMissionRow
  L5_2 = L2_2
  L3_2 = L3_2(L4_2, L5_2)
  if L3_2 then
    L4_2 = A0_2._binder
    L4_2 = L4_2.text_task_tips
    L5_2 = L4_2
    L4_2 = L4_2.SafeSetTextID
    L6_2 = "UIText_SilverWolf_SubTab_Lock_PreMission"
    L7_2 = CS
    L7_2 = L7_2.RPG
    L7_2 = L7_2.Client
    L7_2 = L7_2.TextmapStatic
    L7_2 = L7_2.GetText
    L8_2 = L3_2.Name
    L7_2, L8_2 = L7_2(L8_2)
    L4_2(L5_2, L6_2, L7_2, L8_2)
  end
  L5_2 = A0_2
  L4_2 = A0_2._bind_btn_callback
  L6_2 = A0_2._binder
  L6_2 = L6_2.btn_goto_mission
  L7_2 = A0_2._on_btn_goto_mission
  L8_2 = L2_2
  L4_2(L5_2, L6_2, L7_2, L8_2)
end
L0_1._setup_condition_tips = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_time
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = true
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_task
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = false
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.remain_timer
  L2_2 = L1_2
  L1_2 = L1_2.SetTargetTimeByTimeStamp
  L3_2 = A0_2._group_data
  L3_2 = L3_2.ScheduleData
  L3_2 = L3_2.BeginTimeStamp
  L4_2 = A0_2.refresh
  L5_2 = A0_2
  L6_2 = 2
  L1_2(L2_2, L3_2, L4_2, L5_2, L6_2)
end
L0_1._setup_unlock_time_tips = L3_1
function L3_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  if A1_2 then
    L2_2 = A0_2._mission_sub_menu
    L3_2 = L2_2
    L2_2 = L2_2.set_inactive
    L2_2(L3_2)
  end
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_tab_control
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = not A1_2
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_lock
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
end
L0_1._set_lock_view = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.text_tab_name_selected
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetTextID
  L3_2 = A0_2._group_data
  L3_2 = L3_2.GroupRow
  L3_2 = L3_2.Name
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.text_tab_name_unselected
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetTextID
  L3_2 = A0_2._group_data
  L3_2 = L3_2.GroupRow
  L3_2 = L3_2.Name
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2._async_load_sprite_to
  L3_2 = A0_2._binder
  L3_2 = L3_2.img_tab_selected
  L4_2 = A0_2._group_data
  L4_2 = L4_2.GroupRow
  L4_2 = L4_2.IconPath
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._async_load_sprite_to
  L3_2 = A0_2._binder
  L3_2 = L3_2.img_tab_unselected
  L4_2 = A0_2._group_data
  L4_2 = L4_2.GroupRow
  L4_2 = L4_2.IconPath
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = G
  L1_2 = L1_2.RedDotModule
  L1_2 = L1_2.Instance
  L2_2 = L1_2
  L1_2 = L1_2.bind_reddot
  L3_2 = "SilverWolfGroupTab"
  L4_2 = A0_2.group_id
  L5_2 = A0_2
  L6_2 = A0_2._binder
  L6_2 = L6_2.node_reddot
  L1_2(L2_2, L3_2, L4_2, L5_2, L6_2)
end
L0_1._on_added = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_selected
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = true
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_unselected
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = false
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2.refresh
  L1_2(L2_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.animation_root
  L2_2 = L1_2
  L1_2 = L1_2.Stop
  L1_2(L2_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.animation_root
  L2_2 = L1_2
  L1_2 = L1_2.Play
  L1_2(L2_2)
  L1_2 = A0_2.locked
  if not L1_2 then
    L1_2 = CS
    L1_2 = L1_2.RPG
    L1_2 = L1_2.Client
    L1_2 = L1_2.Prefs
    L1_2 = L1_2.User
    L1_2 = L1_2.SilverWolfSeenOpenGroup
    L2_2 = L1_2
    L1_2 = L1_2.Add
    L3_2 = A0_2.group_id
    L1_2(L2_2, L3_2)
  end
end
L0_1._on_select = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_selected
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = false
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_unselected
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = true
  L1_2(L2_2, L3_2)
end
L0_1._on_unselect = L3_1
function L3_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.Client
  L2_2 = L2_2.SDKLuaReportAdapter
  L2_2 = L2_2.ReportUIButtonClick
  L3_2 = A0_2._owner
  L3_2 = L3_2.__name
  L4_2 = A0_2.__name
  L5_2 = "GotoMission_"
  L6_2 = A1_2
  L5_2 = L5_2 .. L6_2
  L6_2 = A0_2._owner
  L6_2 = L6_2.guid
  L2_2(L3_2, L4_2, L5_2, L6_2)
  L2_2 = G
  L2_2 = L2_2.SilverWolfUtils
  L2_2 = L2_2.goto_companion_mission
  L2_2()
end
L0_1._on_btn_goto_mission = L3_1
return L0_1
