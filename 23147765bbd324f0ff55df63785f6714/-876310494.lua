local L0_1, L1_1, L2_1, L3_1, L4_1
L0_1 = CS
L0_1 = L0_1.RPG
L0_1 = L0_1.Client
L0_1 = L0_1.GlobalVars
L0_1 = L0_1.s_ModuleManager
L0_1 = L0_1.FriendModule
L1_1 = "UIText_PlayerCard_Avatar"
L2_1 = G
L2_1 = L2_1.Class
L3_1 = "PlayerInfoAvatarTabItem"
L4_1 = G
L4_1 = L4_1.TabItem
L2_1 = L2_1(L3_1, L4_1)
function L3_1(A0_2, A1_2)
  A0_2._data = A1_2
end
L2_1.update_data = L3_1
function L3_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2._setup_tab_btn_view
  L1_2(L2_2)
end
L2_1._on_added = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.txt_tab_btn_selected
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetTextID
  L3_2 = L1_1
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.txt_tab_btn_unselected
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetTextID
  L3_2 = L1_1
  L1_2(L2_2, L3_2)
end
L2_1._setup_tab_btn_view = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_assist_reward
  L4_2 = A0_2._on_btn_assist_reward_click
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.GetAssistReward
  L4_2 = A0_2._on_get_assist_reward
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.PlayerDisPlayAvatarChanged
  function L4_2()
    local L0_3, L1_3
    L0_3 = A0_2._data
    L0_3 = L0_3.IsLocalPlayer
    if L0_3 then
      L0_3 = CS
      L0_3 = L0_3.RPG
      L0_3 = L0_3.Client
      L0_3 = L0_3.GlobalVars
      L0_3 = L0_3.s_ModuleManager
      L0_3 = L0_3.PlayerModule
      L1_3 = L0_3
      L0_3 = L0_3.GetDisplayLocalPlayerBoardInfo
      L0_3 = L0_3(L1_3)
      A0_2._data = L0_3
      L0_3 = A0_2
      L1_3 = L0_3
      L0_3 = L0_3._setup_display_avatar
      L0_3(L1_3)
    end
  end
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.PlayerAssistAvatarChanged
  function L4_2()
    local L0_3, L1_3
    L0_3 = A0_2._data
    L0_3 = L0_3.IsLocalPlayer
    if L0_3 then
      L0_3 = CS
      L0_3 = L0_3.RPG
      L0_3 = L0_3.Client
      L0_3 = L0_3.GlobalVars
      L0_3 = L0_3.s_ModuleManager
      L0_3 = L0_3.PlayerModule
      L1_3 = L0_3
      L0_3 = L0_3.GetDisplayLocalPlayerBoardInfo
      L0_3 = L0_3(L1_3)
      A0_2._data = L0_3
      L0_3 = A0_2
      L1_3 = L0_3
      L0_3 = L0_3._setup_assist_avatar
      L0_3(L1_3)
    end
  end
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.panel_diplay_avatar_list
  L2_2 = L1_2
  L1_2 = L1_2.register_avatar_click_callback
  L3_2 = A0_2._on_click_display_avatar
  L4_2 = A0_2
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.panel_diplay_avatar_list
  L2_2 = L1_2
  L1_2 = L1_2.register_add_click_callback
  L3_2 = A0_2._on_add_display_avatar
  L4_2 = A0_2
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.panel_assist_avatar
  L2_2 = L1_2
  L1_2 = L1_2.register_click_callback
  L3_2 = A0_2._on_click_assist
  L4_2 = A0_2
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2._data
  L1_2 = L1_2.IsLocalPlayer
  if L1_2 then
    L1_2 = G
    L1_2 = L1_2.RedDotModule
    L1_2 = L1_2.Instance
    L2_2 = L1_2
    L1_2 = L1_2.bind_reddot
    L3_2 = "AssistEdit"
    L4_2 = 0
    L5_2 = A0_2
    L6_2 = A0_2._binder
    L6_2 = L6_2.node_reddot_assist
    L1_2(L2_2, L3_2, L4_2, L5_2, L6_2)
    L1_2 = G
    L1_2 = L1_2.RedDotModule
    L1_2 = L1_2.Instance
    L2_2 = L1_2
    L1_2 = L1_2.bind_reddot
    L3_2 = "AssistReward"
    L4_2 = 0
    L5_2 = A0_2
    L6_2 = A0_2._binder
    L6_2 = L6_2.node_reddot_reward
    L1_2(L2_2, L3_2, L4_2, L5_2, L6_2)
  end
end
L2_1._on_load = L3_1
function L3_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2._edit_assist_avatar
  L1_2(L2_2)
end
L2_1.show_edit_assist = L3_1
function L3_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2._setup_display_avatar
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._setup_assist_avatar
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._init_ui_navigation
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2.force_set_first_navigation_target
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2.refresh_short_cut_hint
  L1_2(L2_2)
end
L2_1._on_select = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.panel_diplay_avatar_list
  L2_2 = L1_2
  L1_2 = L1_2.setup_view
  L4_2 = A0_2
  L3_2 = A0_2._get_display_avatar_datas
  L3_2 = L3_2(L4_2)
  L4_2 = A0_2._data
  L1_2(L2_2, L3_2, L4_2)
end
L2_1._setup_display_avatar = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L1_2 = {}
  L2_2 = A0_2._data
  L3_2 = L2_2
  L2_2 = L2_2.GetDisplayAvatarDatas
  L2_2 = L2_2(L3_2)
  L3_2 = 0
  L4_2 = L2_2.Count
  L4_2 = L4_2 - 1
  L5_2 = 1
  for L6_2 = L3_2, L4_2, L5_2 do
    L7_2 = L6_2 + 1
    L8_2 = L2_2[L6_2]
    L1_2[L7_2] = L8_2
  end
  return L1_2
end
L2_1._get_display_avatar_datas = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.panel_assist_avatar
  L2_2 = L1_2
  L1_2 = L1_2.setup_view
  L4_2 = A0_2
  L3_2 = A0_2._get_assist_avatar_datas
  L3_2 = L3_2(L4_2)
  L4_2 = A0_2._data
  L4_2 = L4_2.IsLocalPlayer
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2._data
  L1_2 = L1_2.IsLocalPlayer
  if L1_2 then
    L1_2 = L0_1.AssistRewardCount
    L1_2 = 0 < L1_2
  end
  L2_2 = A0_2._binder
  L2_2 = L2_2.btn_assist_reward
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = L1_2
  L2_2(L3_2, L4_2)
end
L2_1._setup_assist_avatar = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L1_2 = A0_2._data
  L2_2 = L1_2
  L1_2 = L1_2.GetAssistAvatarDatas
  L1_2 = L1_2(L2_2)
  L2_2 = {}
  L3_2 = 0
  L4_2 = L1_2.Count
  L4_2 = L4_2 - 1
  L5_2 = 1
  for L6_2 = L3_2, L4_2, L5_2 do
    L7_2 = L6_2 + 1
    L8_2 = L1_2[L6_2]
    L2_2[L7_2] = L8_2
  end
  return L2_2
end
L2_1._get_assist_avatar_datas = L3_1
function L3_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2._data
  L2_2 = L2_2.IsLocalPlayer
  if L2_2 then
    L3_2 = A0_2
    L2_2 = A0_2._edit_display_avatars
    L2_2(L3_2)
  else
    L3_2 = A0_2
    L2_2 = A0_2._show_avatar_detail_info
    L4_2 = A1_2
    L2_2(L3_2, L4_2)
  end
end
L2_1._on_click_display_avatar = L3_1
function L3_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._data
  L1_2 = L1_2.IsLocalPlayer
  if not L1_2 then
    return
  end
  L2_2 = A0_2
  L1_2 = A0_2._edit_display_avatars
  L1_2(L2_2)
end
L2_1._on_add_display_avatar = L3_1
function L3_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2._data
  L2_2 = L2_2.IsLocalPlayer
  if L2_2 then
    L3_2 = A0_2
    L2_2 = A0_2._edit_assist_avatar
    L2_2(L3_2)
  elseif A1_2 ~= nil then
    L3_2 = A0_2
    L2_2 = A0_2._show_avatar_detail_info
    L4_2 = A1_2
    L2_2(L3_2, L4_2)
  end
end
L2_1._on_click_assist = L3_1
function L3_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  if A1_2 == nil then
    return
  end
  L2_2 = G
  L2_2 = L2_2.UIManager
  L2_2 = L2_2.load_and_show
  L3_2 = "Ui.Avatar.AvatarMainPage"
  L4_2 = nil
  L5_2 = nil
  L6_2 = nil
  L7_2 = A1_2
  L2_2 = L2_2(L3_2, L4_2, L5_2, L6_2, L7_2)
  L4_2 = L2_2
  L3_2 = L2_2.hide_avatar_list
  L3_2(L4_2)
end
L2_1._show_avatar_detail_info = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L2_2 = A0_2
  L1_2 = A0_2._get_display_avatar_datas
  L1_2 = L1_2(L2_2)
  L2_2 = G
  L2_2 = L2_2.UIManager
  L2_2 = L2_2.load_and_async_show
  L3_2 = "Ui.PlayerInfo.DisplayAvatarSelectDialog"
  L4_2 = L1_2
  L5_2 = A0_2._data
  L2_2(L3_2, L4_2, L5_2)
end
L2_1._edit_display_avatars = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = G
  L1_2 = L1_2.UIManager
  L1_2 = L1_2.load_and_async_show
  L2_2 = "Ui.PlayerInfo.AssistAvatarSelectDialog"
  L4_2 = A0_2
  L3_2 = A0_2._get_assist_avatar_datas
  L3_2 = L3_2(L4_2)
  L4_2 = A0_2._data
  L1_2(L2_2, L3_2, L4_2)
end
L2_1._edit_assist_avatar = L3_1
function L3_1(A0_2)
  local L1_2, L2_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.NetworkManager
  L1_2 = L1_2.FFOMLPONIFB
  L2_2 = L1_2
  L1_2 = L1_2.NHFEHBNCLOL
  L1_2(L2_2)
end
L2_1._on_btn_assist_reward_click = L3_1
function L3_1(A0_2, A1_2)
  local L2_2, L3_2
  L3_2 = A0_2
  L2_2 = A0_2._setup_assist_avatar
  L2_2(L3_2)
  L3_2 = A0_2
  L2_2 = A0_2.is_top_page_or_dialog
  L2_2 = L2_2(L3_2)
  if not L2_2 then
    return
  end
  L2_2 = G
  L2_2 = L2_2.FriendUtils
  L2_2 = L2_2.show_assist_reward_dialog
  L3_2 = A1_2
  L2_2(L3_2)
end
L2_1._on_get_assist_reward = L3_1
function L3_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.panel_assist_avatar
  L2_2 = L1_2
  L1_2 = L1_2.get_first_selected_object
  L1_2 = L1_2(L2_2)
  if not L1_2 then
    L1_2 = A0_2._binder
    L1_2 = L1_2.panel_diplay_avatar_list
    L2_2 = L1_2
    L1_2 = L1_2.get_first_selected_object
    L1_2 = L1_2(L2_2)
  end
  return L1_2
end
L2_1.get_first_selected_object = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.panel_assist_avatar
  L2_2 = L1_2
  L1_2 = L1_2.get_selected_btns
  L1_2 = L1_2(L2_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.panel_diplay_avatar_list
  L3_2 = L2_2
  L2_2 = L2_2.get_selected_btns
  L2_2 = L2_2(L3_2)
  if L1_2 ~= nil then
    L3_2 = #L1_2
    if L3_2 ~= 0 and L2_2 ~= nil then
      L3_2 = #L2_2
      if L3_2 ~= nil then
        goto lbl_20
      end
    end
  end
  do return end
  ::lbl_20::
  L3_2 = {}
  L4_2 = table
  L4_2 = L4_2.insert
  L5_2 = L3_2
  L6_2 = L1_2
  L4_2(L5_2, L6_2)
  L4_2 = table
  L4_2 = L4_2.insert
  L5_2 = L3_2
  L6_2 = L2_2
  L4_2(L5_2, L6_2)
  L4_2 = G
  L4_2 = L4_2.UIUtils
  L4_2 = L4_2.setup_multi_line_navigation
  L5_2 = L3_2
  L4_2(L5_2)
end
L2_1._init_ui_navigation = L3_1
function L3_1(A0_2)
  local L1_2
end
L2_1.refresh_short_cut_hint = L3_1
return L2_1
