local L0_1, L1_1, L2_1
L0_1 = require
L1_1 = "Ui.Expedition.Detail.ActivityExpeditionContentPanelBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Expedition.ExpeditionUtils"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "ActivityExpeditionContentPanel"
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
function L2_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.panel_reward_activity
  L2_2 = L1_2
  L1_2 = L1_2.get_first_selected_object
  return L1_2(L2_2)
end
L0_1.get_first_selected_object = L2_1
function L2_1(A0_2)
  local L1_2
end
L0_1._on_load = L2_1
function L2_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2
  L3_2 = A0_2._binder
  L3_2 = L3_2.panel_avatars_activity
  L4_2 = L3_2
  L3_2 = L3_2.register_member_clicked_callback
  L5_2 = A1_2
  L6_2 = A2_2
  L3_2(L4_2, L5_2, L6_2)
  L3_2 = A0_2._binder
  L3_2 = L3_2.panel_avatar_assist
  L4_2 = L3_2
  L3_2 = L3_2.register_click_callback
  L5_2 = A1_2
  L6_2 = A2_2
  L7_2 = true
  L3_2(L4_2, L5_2, L6_2, L7_2)
end
L0_1.register_member_clicked_callback = L2_1
function L2_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2
  L3_2 = A0_2._binder
  L3_2 = L3_2.panel_count_down_activity
  L4_2 = L3_2
  L3_2 = L3_2.register_finish_callback
  L5_2 = A1_2
  L6_2 = A2_2
  L3_2(L4_2, L5_2, L6_2)
end
L0_1.register_finish_callback = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  A0_2._expedition_data = A1_2
  L2_2 = A1_2.Duration
  A0_2._duration = L2_2
  L3_2 = A0_2
  L2_2 = A0_2._init_avatar_datas
  L2_2(L3_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.panel_avatars_activity
  L3_2 = L2_2
  L2_2 = L2_2.set_max_expedition_count
  L4_2 = A0_2._expedition_data
  L4_2 = L4_2.MaxSelection
  L4_2 = L4_2 - 1
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.txt_activity_duration
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetText
  L4_2 = A0_2._duration
  L2_2(L3_2, L4_2)
  L3_2 = A0_2
  L2_2 = A0_2._refresh
  L2_2(L3_2)
end
L0_1.setup_view = L2_1
function L2_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2._refresh
  L1_2(L2_2)
end
L0_1.refresh_view = L2_1
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
function L2_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2
  A0_2._avatar_datas = A1_2
  A0_2._avatar_real_ids = A2_2
  L4_2 = A0_2
  L3_2 = A0_2._refresh
  L3_2(L4_2)
end
L0_1.refresh_avatar_members = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2
  A0_2._friend_data = A1_2
  L3_2 = A0_2
  L2_2 = A0_2._refresh
  L2_2(L3_2)
end
L0_1.refresh_friend_members = L2_1
function L2_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._expedition_data
  if L1_2 == nil then
    return
  end
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
L0_1._refresh = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L2_2 = A0_2
  L1_2 = A0_2._is_display_only
  L1_2 = L1_2(L2_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.panel_avatars_activity
  L3_2 = L2_2
  L2_2 = L2_2.safe_set_active
  L4_2 = not L1_2
  L2_2(L3_2, L4_2)
  if L1_2 then
    return
  end
  L2_2 = A0_2._binder
  L2_2 = L2_2.panel_avatars_activity
  L3_2 = L2_2
  L2_2 = L2_2.setup_view
  L4_2 = A0_2._avatar_real_ids
  L6_2 = A0_2
  L5_2 = A0_2._is_in_progress
  L5_2 = L5_2(L6_2)
  L5_2 = not L5_2
  L2_2(L3_2, L4_2, L5_2)
  L2_2 = G
  L2_2 = L2_2.ExpeditionUtils
  L2_2 = L2_2.has_friend
  L3_2 = A0_2._friend_data
  L2_2 = L2_2(L3_2)
  if L2_2 then
    L2_2 = A0_2._binder
    L2_2 = L2_2.panel_avatar_assist
    L3_2 = L2_2
    L2_2 = L2_2.setup_view
    L4_2 = A0_2._friend_data
    L4_2 = L4_2.avatar_id
    L2_2(L3_2, L4_2)
  else
    L2_2 = A0_2._binder
    L2_2 = L2_2.panel_avatar_assist
    L3_2 = L2_2
    L2_2 = L2_2.set_empty
    L4_2 = true
    L2_2(L3_2, L4_2)
  end
  L2_2 = A0_2._binder
  L2_2 = L2_2.panel_avatar_assist
  L3_2 = L2_2
  L2_2 = L2_2.set_interactable
  L5_2 = A0_2
  L4_2 = A0_2._is_in_progress
  L4_2 = L4_2(L5_2)
  L4_2 = not L4_2
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_support_key_map
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L5_2 = A0_2
  L4_2 = A0_2._is_in_progress
  L4_2 = L4_2(L5_2)
  L4_2 = not L4_2
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_avatar_key_map
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L5_2 = A0_2
  L4_2 = A0_2._is_in_progress
  L4_2 = L4_2(L5_2)
  L4_2 = not L4_2
  L2_2(L3_2, L4_2)
end
L0_1._refresh_member_view = L2_1
function L2_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._expedition_data
  L1_2 = L1_2.Status
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.GameCore
  L2_2 = L2_2.ExpeditionStatus
  L2_2 = L2_2.InProgress
  L1_2 = L1_2 == L2_2
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
  L2_2 = L2_2.panel_count_down_activity
  L3_2 = L2_2
  L2_2 = L2_2.safe_set_active
  L4_2 = not L1_2
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_frame_activity
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = not L1_2
  L2_2(L3_2, L4_2)
  if L1_2 then
    return
  end
  L2_2 = A0_2._binder
  L2_2 = L2_2.panel_count_down_activity
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
  L2_2 = L2_2.node_activity_duration
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = L1_2
  L2_2(L3_2, L4_2)
  if not L1_2 then
    return
  end
end
L0_1._refresh_select_duration_view = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L2_2 = A0_2
  L1_2 = A0_2._is_display_only
  L1_2 = L1_2(L2_2)
  L1_2 = not L1_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.panel_reward_activity
  L3_2 = L2_2
  L2_2 = L2_2.safe_set_active
  L4_2 = L1_2
  L2_2(L3_2, L4_2)
  if not L1_2 then
    return
  end
  L2_2 = A0_2._binder
  L2_2 = L2_2.panel_reward_activity
  L3_2 = L2_2
  L2_2 = L2_2.enable_sort
  L4_2 = false
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.panel_reward_activity
  L3_2 = L2_2
  L2_2 = L2_2.setup_view
  L4_2 = A0_2._expedition_data
  L5_2 = A0_2._duration
  L6_2 = A0_2._avatar_datas
  L7_2 = A0_2._friend_data
  L2_2(L3_2, L4_2, L5_2, L6_2, L7_2)
end
L0_1._refresh_reward_view = L2_1
return L0_1
