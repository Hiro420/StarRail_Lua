local L0_1, L1_1, L2_1
L0_1 = require
L1_1 = "Ui.Expedition.Detail.ExpeditionDetailPanelBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Expedition.Detail.ActivityExpeditionContentPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Expedition.Detail.ActivityExpeditionContentPanelBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Expedition.ExpeditionUtils"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "ExpeditionDetailPanel"
L2_1 = G
L2_1 = L2_1.BasePanel
L0_1 = L0_1(L1_1, L2_1)
L1_1 = CS
L1_1 = L1_1.RPG
L1_1 = L1_1.Client
L1_1 = L1_1.GlobalVars
L1_1 = L1_1.s_ModuleManager
L1_1 = L1_1.ExpeditionModule
function L2_1(A0_2)
  local L1_2
  L1_2 = {}
  A0_2._avatar_real_ids = L1_2
  L1_2 = {}
  A0_2._avatar_datas = L1_2
  L1_2 = {}
  A0_2._friend_data = L1_2
  A0_2._duration = nil
  A0_2._in_selection = false
end
L0_1.ctor = L2_1
function L2_1(A0_2, A1_2, A2_2)
  A0_2._member_clicked_callback = A1_2
  A0_2._member_clicked_handler = A2_2
end
L0_1.register_member_clicked_callback = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.panel_btn
  L2_2 = L1_2
  L1_2 = L1_2.register_on_btn_accept_callback
  L3_2 = A0_2._on_click_accept
  L4_2 = A0_2
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.panel_count_down
  L2_2 = L1_2
  L1_2 = L1_2.register_finish_callback
  L3_2 = A0_2._refresh
  L4_2 = A0_2
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.panel_select_duration
  L2_2 = L1_2
  L1_2 = L1_2.register_duration_change_callback
  L3_2 = A0_2._on_duration_change
  L4_2 = A0_2
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.panel_avatars
  L2_2 = L1_2
  L1_2 = L1_2.register_member_clicked_callback
  L3_2 = A0_2._on_member_clicked
  L4_2 = A0_2
  L1_2(L2_2, L3_2, L4_2)
end
L0_1._on_load = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2
  A0_2._expedition_data = nil
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_normal
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = false
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_activity
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = false
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.panel_btn
  L2_2 = L1_2
  L1_2 = L1_2.set_panel_active
  L3_2 = false
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.panel_info
  L2_2 = L1_2
  L1_2 = L1_2.safe_set_active
  L3_2 = false
  L1_2(L2_2, L3_2)
end
L0_1.setup_empty_view = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  A0_2._expedition_data = A1_2
  L3_2 = A0_2
  L2_2 = A0_2._init_avatar_datas
  L2_2(L3_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.panel_info
  L3_2 = L2_2
  L2_2 = L2_2.safe_set_active
  L4_2 = true
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.panel_info
  L3_2 = L2_2
  L2_2 = L2_2.setup_view
  L4_2 = A0_2._expedition_data
  L2_2(L3_2, L4_2)
  L3_2 = A0_2
  L2_2 = A0_2._is_activity
  L2_2 = L2_2(L3_2)
  L3_2 = A0_2._binder
  L3_2 = L3_2.node_normal
  L4_2 = L3_2
  L3_2 = L3_2.SafeSetActive
  L5_2 = not L2_2
  L3_2(L4_2, L5_2)
  L3_2 = A0_2._binder
  L3_2 = L3_2.node_activity
  L4_2 = L3_2
  L3_2 = L3_2.SafeSetActive
  L5_2 = L2_2
  L3_2(L4_2, L5_2)
  L4_2 = A0_2
  L3_2 = A0_2._setup_duration_view
  L3_2(L4_2)
  if L2_2 then
    L4_2 = A0_2
    L3_2 = A0_2._get_activity_content_panel
    L3_2 = L3_2(L4_2)
    L4_2 = L3_2
    L3_2 = L3_2.setup_view
    L5_2 = A0_2._expedition_data
    L3_2(L4_2, L5_2)
  else
    L3_2 = A0_2._binder
    L3_2 = L3_2.panel_avatars
    L4_2 = L3_2
    L3_2 = L3_2.set_max_expedition_count
    L5_2 = A0_2._expedition_data
    L5_2 = L5_2.MaxSelection
    L3_2(L4_2, L5_2)
  end
  L4_2 = A0_2
  L3_2 = A0_2._refresh
  L3_2(L4_2)
end
L0_1.setup_view = L2_1
function L2_1(A0_2)
  local L1_2
  L1_2 = A0_2._expedition_data
  L1_2 = L1_2 ~= nil
  return L1_2
end
L0_1._is_activity = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L1_2 = G
  L1_2 = L1_2.Utils
  L1_2 = L1_2.create_lua_table_from_cs_list
  L2_2 = A0_2._expedition_data
  L2_2 = L2_2.AvatarIdList
  L1_2 = L1_2(L2_2)
  A0_2._avatar_real_ids = L1_2
  L1_2 = {}
  A0_2._avatar_datas = L1_2
  L1_2 = ipairs
  L2_2 = A0_2._avatar_real_ids
  L1_2, L2_2, L3_2 = L1_2(L2_2)
  for L4_2, L5_2 in L1_2, L2_2, L3_2 do
    L6_2 = table
    L6_2 = L6_2.insert
    L7_2 = A0_2._avatar_datas
    L9_2 = A0_2
    L8_2 = A0_2._get_avatar_data
    L10_2 = L5_2
    L8_2, L9_2, L10_2 = L8_2(L9_2, L10_2)
    L6_2(L7_2, L8_2, L9_2, L10_2)
  end
  L1_2 = G
  L1_2 = L1_2.ExpeditionUtils
  L1_2 = L1_2.create_friend_data_by_expedition
  L2_2 = A0_2._expedition_data
  L1_2 = L1_2(L2_2)
  A0_2._friend_data = L1_2
end
L0_1._init_avatar_datas = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.Client
  L2_2 = L2_2.GlobalVars
  L2_2 = L2_2.s_ModuleManager
  L2_2 = L2_2.AvatarModule
  L3_2 = L2_2
  L2_2 = L2_2.GetAvatar
  L4_2 = A1_2
  return L2_2(L3_2, L4_2)
end
L0_1._get_avatar_data = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._panel_activity_content
  if L1_2 == nil then
    L2_2 = A0_2
    L1_2 = A0_2.create_panel
    L3_2 = G
    L3_2 = L3_2.ActivityExpeditionContentPanel
    L4_2 = G
    L4_2 = L4_2.ActivityExpeditionContentPanelBinder
    L1_2 = L1_2(L2_2, L3_2, L4_2)
    A0_2._panel_activity_content = L1_2
    L1_2 = A0_2._panel_activity_content
    L2_2 = L1_2
    L1_2 = L1_2.sync_loadto
    L3_2 = A0_2._binder
    L3_2 = L3_2.node_activity
    L1_2(L2_2, L3_2)
    L1_2 = A0_2._panel_activity_content
    L2_2 = L1_2
    L1_2 = L1_2.register_member_clicked_callback
    L3_2 = A0_2._on_member_clicked
    L4_2 = A0_2
    L1_2(L2_2, L3_2, L4_2)
    L1_2 = A0_2._panel_activity_content
    L2_2 = L1_2
    L1_2 = L1_2.register_finish_callback
    L3_2 = A0_2._refresh
    L4_2 = A0_2
    L1_2(L2_2, L3_2, L4_2)
  end
  L1_2 = A0_2._panel_activity_content
  return L1_2
end
L0_1._get_activity_content_panel = L2_1
function L2_1(A0_2)
  local L1_2
  L1_2 = A0_2._expedition_data
  return L1_2
end
L0_1.get_expedition_data = L2_1
function L2_1(A0_2)
  local L1_2
  L1_2 = A0_2._avatar_datas
  return L1_2
end
L0_1.get_avatars = L2_1
function L2_1(A0_2)
  local L1_2
  L1_2 = A0_2._friend_data
  return L1_2
end
L0_1.get_friend_data = L2_1
function L2_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2._is_empty
  L1_2 = L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._is_in_progress
  L1_2 = L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._is_display_only
  L1_2 = L1_2(L2_2)
  L1_2 = not L1_2 and L1_2
  return L1_2
end
L0_1.is_acceptable = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2._expedition_data
  if L2_2 == nil then
    return
  end
  if A1_2 then
    L3_2 = A0_2
    L2_2 = A0_2._update_expedition_data
    L2_2(L3_2)
    L3_2 = A0_2
    L2_2 = A0_2._init_avatar_datas
    L2_2(L3_2)
    L3_2 = A0_2
    L2_2 = A0_2._is_activity
    L2_2 = L2_2(L3_2)
    if L2_2 then
      L3_2 = A0_2
      L2_2 = A0_2._get_activity_content_panel
      L2_2 = L2_2(L3_2)
      L3_2 = L2_2
      L2_2 = L2_2.setup_view
      L4_2 = A0_2._expedition_data
      L2_2(L3_2, L4_2)
    end
  end
  L3_2 = A0_2
  L2_2 = A0_2._refresh
  L2_2(L3_2)
end
L0_1.refresh = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._expedition_data
  if L1_2 == nil then
    return
  end
  L2_2 = A0_2
  L1_2 = A0_2._is_activity
  L1_2 = L1_2(L2_2)
  if L1_2 then
    L1_2 = CS
    L1_2 = L1_2.RPG
    L1_2 = L1_2.Client
    L1_2 = L1_2.GlobalVars
    L1_2 = L1_2.s_ModuleManager
    L1_2 = L1_2.ExpeditionModule
    L2_2 = L1_2
    L1_2 = L1_2.GetActivityExpedition
    L3_2 = A0_2._expedition_data
    L3_2 = L3_2.ID
    L1_2 = L1_2(L2_2, L3_2)
    A0_2._expedition_data = L1_2
  else
    L1_2 = CS
    L1_2 = L1_2.RPG
    L1_2 = L1_2.Client
    L1_2 = L1_2.GlobalVars
    L1_2 = L1_2.s_ModuleManager
    L1_2 = L1_2.ExpeditionModule
    L2_2 = L1_2
    L1_2 = L1_2.GetExpeditionData
    L3_2 = A0_2._expedition_data
    L3_2 = L3_2.ID
    L1_2 = L1_2(L2_2, L3_2)
    A0_2._expedition_data = L1_2
  end
end
L0_1._update_expedition_data = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  A0_2._avatar_datas = A1_2
  L2_2 = {}
  A0_2._avatar_real_ids = L2_2
  L2_2 = 1
  L3_2 = A0_2._expedition_data
  L3_2 = L3_2.MaxSelection
  L4_2 = 1
  for L5_2 = L2_2, L3_2, L4_2 do
    L6_2 = A0_2._avatar_datas
    L6_2 = L6_2[L5_2]
    if L6_2 ~= nil then
      L7_2 = A0_2._avatar_real_ids
      L8_2 = L6_2.RealID
      L7_2[L5_2] = L8_2
    end
  end
  L3_2 = A0_2
  L2_2 = A0_2._get_activity_content_panel
  L2_2 = L2_2(L3_2)
  L3_2 = L2_2
  L2_2 = L2_2.refresh_avatar_members
  L4_2 = A0_2._avatar_datas
  L5_2 = A0_2._avatar_real_ids
  L2_2(L3_2, L4_2, L5_2)
  L3_2 = A0_2
  L2_2 = A0_2._refresh
  L2_2(L3_2)
end
L0_1.refresh_avatar_members = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  A0_2._friend_data = A1_2
  L3_2 = A0_2
  L2_2 = A0_2._get_activity_content_panel
  L2_2 = L2_2(L3_2)
  L3_2 = L2_2
  L2_2 = L2_2.refresh_friend_members
  L4_2 = A0_2._friend_data
  L2_2(L3_2, L4_2)
  L3_2 = A0_2
  L2_2 = A0_2._refresh
  L2_2(L3_2)
end
L0_1.refresh_friend_members = L2_1
function L2_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2._is_activity
  L1_2 = L1_2(L2_2)
  if L1_2 then
    L2_2 = A0_2
    L1_2 = A0_2._get_activity_content_panel
    L1_2 = L1_2(L2_2)
    L2_2 = L1_2
    L1_2 = L1_2.get_first_selected_object
    return L1_2(L2_2)
  else
    L1_2 = A0_2._binder
    L1_2 = L1_2.panel_reward
    L2_2 = L1_2
    L1_2 = L1_2.get_first_selected_object
    return L1_2(L2_2)
  end
end
L0_1.get_first_selected_object = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.panel_select_duration
  L2_2 = L1_2
  L1_2 = L1_2.setup_view
  L3_2 = A0_2._expedition_data
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.panel_select_duration
  L2_2 = L1_2
  L1_2 = L1_2.get_duration
  L1_2 = L1_2(L2_2)
  A0_2._duration = L1_2
end
L0_1._setup_duration_view = L2_1
function L2_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2
  L3_2 = G
  L3_2 = L3_2.Utils
  L3_2 = L3_2.invoke_callback
  L4_2 = A0_2._member_clicked_callback
  L5_2 = A0_2._member_clicked_handler
  L6_2 = A1_2
  L7_2 = A2_2
  L3_2(L4_2, L5_2, L6_2, L7_2)
end
L0_1._on_member_clicked = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L1_2 = 0
  L2_2 = pairs
  L3_2 = A0_2._avatar_datas
  L2_2, L3_2, L4_2 = L2_2(L3_2)
  for L5_2, L6_2 in L2_2, L3_2, L4_2 do
    L1_2 = L1_2 + 1
  end
  return L1_2
end
L0_1._get_avatar_count = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L2_2 = A0_2
  L1_2 = A0_2._is_empty
  L1_2 = L1_2(L2_2)
  if L1_2 then
    return
  end
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_seal
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = A0_2._expedition_data
  L3_2 = L3_2.IsComplete
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2._is_activity
  L1_2 = L1_2(L2_2)
  if L1_2 then
    L2_2 = A0_2
    L1_2 = A0_2._get_activity_content_panel
    L1_2 = L1_2(L2_2)
    L2_2 = L1_2
    L1_2 = L1_2.refresh_view
    L1_2 = L1_2(L2_2)
  else
    L2_2 = A0_2
    L1_2 = A0_2._refresh_member_view
    L1_2(L2_2)
    L2_2 = A0_2
    L1_2 = A0_2._refresh_count_down_view
    L1_2(L2_2)
    L2_2 = A0_2
    L1_2 = A0_2._refresh_select_duration_view
    L1_2(L2_2)
    L2_2 = A0_2
    L1_2 = A0_2._refresh_reward_view
    L1_2(L2_2)
  end
  L1_2 = A0_2._binder
  L1_2 = L1_2.panel_btn
  L2_2 = L1_2
  L1_2 = L1_2.set_panel_active
  L4_2 = A0_2
  L3_2 = A0_2._is_empty
  L3_2 = L3_2(L4_2)
  L4_2 = A0_2
  L3_2 = A0_2._is_display_only
  L3_2 = L3_2(L4_2)
  L3_2 = not L3_2 and L3_2
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.panel_btn
  L2_2 = L1_2
  L1_2 = L1_2.setup_view
  L3_2 = A0_2._expedition_data
  L5_2 = A0_2
  L4_2 = A0_2._get_avatar_count
  L4_2 = L4_2(L5_2)
  L5_2 = G
  L5_2 = L5_2.ExpeditionUtils
  L5_2 = L5_2.has_friend
  L6_2 = A0_2._friend_data
  L5_2 = L5_2(L6_2)
  if L5_2 then
    L5_2 = 1
    if L5_2 then
      goto lbl_60
    end
  end
  L5_2 = 0
  ::lbl_60::
  L4_2 = L4_2 + L5_2
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._setup_type_view
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._refresh_lock_view
  L1_2(L2_2)
end
L0_1._refresh = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.GlobalVars
  L1_2 = L1_2.s_ModuleManager
  L1_2 = L1_2.ExpeditionModule
  L2_2 = L1_2
  L1_2 = L1_2.GetExpeditionSchedule
  L3_2 = A0_2._expedition_data
  L3_2 = L3_2.ID
  L1_2 = L1_2(L2_2, L3_2)
  L3_2 = L1_2
  L2_2 = L1_2.IsInSchedule
  L2_2 = L2_2(L3_2)
  L2_2 = L1_2 ~= nil and L2_2
  L3_2 = A0_2._binder
  L3_2 = L3_2.node_timer_lock
  L4_2 = L3_2
  L3_2 = L3_2.SafeSetActive
  L5_2 = L2_2
  L3_2(L4_2, L5_2)
  if L2_2 then
    L3_2 = A0_2._binder
    L3_2 = L3_2.timer_lock
    L4_2 = L3_2
    L3_2 = L3_2.SetTargetTimeByTimeStamp
    L5_2 = L1_2.BeginTimeStamp
    L6_2 = A0_2._refresh
    L7_2 = A0_2
    L8_2 = 2
    L3_2(L4_2, L5_2, L6_2, L7_2, L8_2)
  end
end
L0_1._refresh_lock_view = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L2_2 = A0_2
  L1_2 = A0_2._is_display_only
  L1_2 = L1_2(L2_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.panel_avatars
  L3_2 = L2_2
  L2_2 = L2_2.safe_set_active
  L4_2 = not L1_2
  L2_2(L3_2, L4_2)
  if L1_2 then
    return
  end
  L3_2 = A0_2
  L2_2 = A0_2._is_activity
  L2_2 = L2_2(L3_2)
  if L2_2 then
  else
    L2_2 = A0_2._binder
    L2_2 = L2_2.panel_avatars
    L3_2 = L2_2
    L2_2 = L2_2.setup_view
    L4_2 = A0_2._avatar_real_ids
    L6_2 = A0_2
    L5_2 = A0_2._is_in_progress
    L5_2 = L5_2(L6_2)
    L5_2 = not L5_2
    L2_2(L3_2, L4_2, L5_2)
  end
end
L0_1._refresh_member_view = L2_1
function L2_1(A0_2)
  local L1_2
  L1_2 = A0_2._expedition_data
  L1_2 = L1_2 == nil
  return L1_2
end
L0_1._is_empty = L2_1
function L2_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._expedition_data
  L1_2 = L1_2 ~= nil
  return L1_2
end
L0_1._is_in_progress = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.GlobalVars
  L1_2 = L1_2.s_ModuleManager
  L1_2 = L1_2.ExpeditionModule
  L2_2 = L1_2
  L1_2 = L1_2.GetExpeditionSchedule
  L3_2 = A0_2._expedition_data
  L3_2 = L3_2.ID
  L1_2 = L1_2(L2_2, L3_2)
  L3_2 = L1_2
  L2_2 = L1_2.IsInSchedule
  L2_2 = L2_2(L3_2)
  L2_2 = L1_2 ~= nil and L2_2
  return L2_2
end
L0_1._is_display_only = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2._is_display_only
  L1_2 = L1_2(L2_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.panel_count_down
  L3_2 = L2_2
  L2_2 = L2_2.safe_set_active
  L4_2 = not L1_2
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_frame
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = not L1_2
  L2_2(L3_2, L4_2)
  if L1_2 then
    return
  end
  L2_2 = A0_2._binder
  L2_2 = L2_2.panel_count_down
  L3_2 = L2_2
  L2_2 = L2_2.setup_view
  L4_2 = A0_2._expedition_data
  L2_2(L3_2, L4_2)
end
L0_1._refresh_count_down_view = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2._is_display_only
  L1_2 = L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._is_in_progress
  L1_2 = L1_2(L2_2)
  L1_2 = not L1_2 and L1_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.panel_select_duration
  L3_2 = L2_2
  L2_2 = L2_2.safe_set_active
  L4_2 = L1_2
  L2_2(L3_2, L4_2)
  if not L1_2 then
    return
  end
  L2_2 = A0_2._binder
  L2_2 = L2_2.panel_select_duration
  L3_2 = L2_2
  L2_2 = L2_2.refresh_view
  L2_2(L3_2)
end
L0_1._refresh_select_duration_view = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L2_2 = A0_2
  L1_2 = A0_2._is_display_only
  L1_2 = L1_2(L2_2)
  L1_2 = not L1_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.panel_reward
  L3_2 = L2_2
  L2_2 = L2_2.safe_set_active
  L4_2 = L1_2
  L2_2(L3_2, L4_2)
  if not L1_2 then
    return
  end
  L2_2 = A0_2._binder
  L2_2 = L2_2.panel_reward
  L3_2 = L2_2
  L2_2 = L2_2.setup_view
  L4_2 = A0_2._expedition_data
  L5_2 = A0_2._duration
  L6_2 = A0_2._avatar_datas
  L2_2(L3_2, L4_2, L5_2, L6_2)
end
L0_1._refresh_reward_view = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L1_2 = G
  L1_2 = L1_2.Utils
  L1_2 = L1_2.create_lua_table_from_cs_array
  L2_2 = A0_2._expedition_data
  L2_2 = L2_2.BonusProfessionTypes
  L1_2 = L1_2(L2_2)
  L2_2 = {}
  L3_2 = pairs
  L4_2 = A0_2._avatar_datas
  L3_2, L4_2, L5_2 = L3_2(L4_2)
  for L6_2, L7_2 in L3_2, L4_2, L5_2 do
    L8_2 = table
    L8_2 = L8_2.insert
    L9_2 = L2_2
    L10_2 = L7_2.ProfessionType
    L8_2(L9_2, L10_2)
  end
  L3_2 = G
  L3_2 = L3_2.ExpeditionUtils
  L3_2 = L3_2.has_friend
  L4_2 = A0_2._friend_data
  L3_2 = L3_2(L4_2)
  if L3_2 then
    L3_2 = CS
    L3_2 = L3_2.RPG
    L3_2 = L3_2.GameCore
    L3_2 = L3_2.AvatarExcelTable
    L3_2 = L3_2.GetData
    L4_2 = A0_2._friend_data
    L4_2 = L4_2.avatar_id
    L3_2 = L3_2(L4_2)
    if L3_2 ~= nil then
      L4_2 = table
      L4_2 = L4_2.insert
      L5_2 = L2_2
      L6_2 = L3_2.AvatarBaseType
      L4_2(L5_2, L6_2)
    end
  end
  L3_2 = A0_2._binder
  L3_2 = L3_2.panel_types
  L4_2 = L3_2
  L3_2 = L3_2.setup_view
  L5_2 = L1_2
  L6_2 = L2_2
  L3_2(L4_2, L5_2, L6_2)
end
L0_1._setup_type_view = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2
  A0_2._duration = A1_2
  L3_2 = A0_2
  L2_2 = A0_2._refresh
  L2_2(L3_2)
end
L0_1._on_duration_change = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.TimeUtils
  L1_2 = L1_2.DateTimeToTimeStampInSeconds
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.Client
  L2_2 = L2_2.GlobalVars
  L2_2 = L2_2.s_TimeManager
  L2_2 = L2_2.NowDateTime
  L1_2 = L1_2(L2_2)
  L2_2 = CS
  L2_2 = L2_2.System
  L2_2 = L2_2.Collections
  L2_2 = L2_2.Generic
  L2_2 = L2_2.List
  L3_2 = CS
  L3_2 = L3_2.System
  L3_2 = L3_2.UInt32
  L2_2 = L2_2(L3_2)
  L2_2 = L2_2()
  L3_2 = 1
  L4_2 = A0_2._expedition_data
  L4_2 = L4_2.MaxSelection
  L5_2 = 1
  for L6_2 = L3_2, L4_2, L5_2 do
    L7_2 = A0_2._avatar_datas
    L7_2 = L7_2[L6_2]
    if L7_2 ~= nil then
      L8_2 = L2_2
      L7_2 = L2_2.Add
      L9_2 = A0_2._avatar_datas
      L9_2 = L9_2[L6_2]
      L9_2 = L9_2.ID
      L7_2(L8_2, L9_2)
    end
  end
  L4_2 = A0_2
  L3_2 = A0_2._is_activity
  L3_2 = L3_2(L4_2)
  if L3_2 then
    L4_2 = A0_2
    L3_2 = A0_2.show_full_screen_block_for_packet
    L5_2 = CS
    L5_2 = L5_2.PBIBDHBOIGI
    L5_2 = L5_2.LENPPMBAGJJ
    L3_2(L4_2, L5_2)
    L3_2 = L1_1
    L4_2 = L3_2
    L3_2 = L3_2.AcceptActivityExpedition
    L5_2 = A0_2._expedition_data
    L5_2 = L5_2.ID
    L6_2 = L1_2
    L7_2 = L2_2
    L8_2 = A0_2._friend_data
    L8_2 = L8_2.raw_data
    L9_2 = A0_2._friend_data
    L9_2 = L9_2.avatar_id
    L3_2(L4_2, L5_2, L6_2, L7_2, L8_2, L9_2)
  else
    L3_2 = L1_1
    L4_2 = L3_2
    L3_2 = L3_2.SendAcceptExpeditionCsReq
    L5_2 = A0_2._expedition_data
    L5_2 = L5_2.ID
    L6_2 = L1_2
    L7_2 = A0_2._duration
    L8_2 = L2_2
    L3_2(L4_2, L5_2, L6_2, L7_2, L8_2)
  end
end
L0_1._on_click_accept = L2_1
return L0_1
