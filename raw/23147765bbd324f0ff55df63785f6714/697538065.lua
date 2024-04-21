local L0_1, L1_1, L2_1, L3_1
L0_1 = require
L1_1 = "Ui.PlayerInfo.Widget.ChallengeRecommendLineupPanelBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Friend.PlayerSupportAvatarPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Friend.PlayerSupportAvatarPanelBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Utilities.FriendUtils"
L0_1(L1_1)
L0_1 = require
L1_1 = "Utilities.BuffUtils"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "ChallengeRecommendLineupPanel"
L2_1 = G
L2_1 = L2_1.BasePanel
L0_1 = L0_1(L1_1, L2_1)
L1_1 = G
L1_1 = L1_1.UIColorUtils
L1_1 = L1_1.GetColor
L2_1 = "#121212e6"
L1_1 = L1_1(L2_1)
L2_1 = G
L2_1 = L2_1.UIColorUtils
L2_1 = L2_1.GetColor
L3_1 = "#9d8563ff"
L2_1 = L2_1(L3_1)
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.panel_photo
  L2_2 = L1_2
  L1_2 = L1_2.bind_click
  L3_2 = A0_2._on_click_head_icon
  L4_2 = A0_2
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.btn_root
  function L2_2()
    local L0_3, L1_3, L2_3, L3_3
    L0_3 = A0_2._binder
    if L0_3 == nil then
      return
    end
    L0_3 = A0_2
    L1_3 = L0_3
    L0_3 = L0_3.save_navigation_target
    L2_3 = A0_2._binder
    L2_3 = L2_3.btn_root
    L2_3 = L2_3.gameObject
    L0_3(L1_3, L2_3)
    L0_3 = A0_2
    L1_3 = L0_3
    L0_3 = L0_3._setup_incontrol_tips
    L2_3 = true
    L0_3(L1_3, L2_3)
    L0_3 = G
    L0_3 = L0_3.Utils
    L0_3 = L0_3.invoke_callback
    L1_3 = A0_2._select_callback
    L2_3 = A0_2._select_callback_self
    L3_3 = A0_2._data
    L0_3(L1_3, L2_3, L3_3)
  end
  L1_2.onSelectTrigger = L2_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.btn_root
  function L2_2()
    local L0_3, L1_3, L2_3
    L0_3 = A0_2._binder
    if L0_3 == nil then
      return
    end
    L0_3 = A0_2
    L1_3 = L0_3
    L0_3 = L0_3._setup_incontrol_tips
    L2_3 = false
    L0_3(L1_3, L2_3)
  end
  L1_2.onDeselectTrigger = L2_2
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_root
  L4_2 = A0_2._on_btn_root
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_buff1
  L4_2 = A0_2._on_btn_buff1
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_buff2
  L4_2 = A0_2._on_btn_buff2
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.FriendDataUpdated
  L4_2 = A0_2._on_friend_data_changed
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.lineup_list1
  L2_2 = L1_2
  L1_2 = L1_2.init
  L3_2 = A0_2
  L4_2 = 0
  L5_2 = A0_2._on_get_avatar_in_lineup_1
  L1_2(L2_2, L3_2, L4_2, L5_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.lineup_list2
  L2_2 = L1_2
  L1_2 = L1_2.init
  L3_2 = A0_2
  L4_2 = 0
  L5_2 = A0_2._on_get_avatar_in_lineup_2
  L1_2(L2_2, L3_2, L4_2, L5_2)
  L2_2 = A0_2
  L1_2 = A0_2._setup_incontrol_tips
  L3_2 = false
  L1_2(L2_2, L3_2)
end
L0_1._on_load = L3_1
function L3_1(A0_2, A1_2)
  local L2_2, L3_2
  A0_2._data = A1_2
  L3_2 = A0_2
  L2_2 = A0_2._refresh
  L2_2(L3_2)
end
L0_1.setup_view = L3_1
function L3_1(A0_2, A1_2, A2_2)
  A0_2._callback = A1_2
  A0_2._callback_self = A2_2
end
L0_1.register_click_callback = L3_1
function L3_1(A0_2, A1_2, A2_2)
  A0_2._select_callback = A1_2
  A0_2._select_callback_self = A2_2
end
L0_1.register_select_callback = L3_1
function L3_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2._refresh_player_info
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._refresh_stars
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._refresh_buffs
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._refresh_lineup_info
  L1_2(L2_2)
end
L0_1._refresh = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.panel_photo
  L2_2 = L1_2
  L1_2 = L1_2.setup_view_by_id
  L3_2 = A0_2._data
  L3_2 = L3_2.HeadIconID
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.panel_photo
  L2_2 = L1_2
  L1_2 = L1_2.set_level
  L3_2 = A0_2._data
  L3_2 = L3_2.Level
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.panel_platform
  L2_2 = L1_2
  L1_2 = L1_2.setup_view
  L3_2 = A0_2._data
  L3_2 = L3_2.PlatformInfo
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2._refresh_name
  L1_2(L2_2)
end
L0_1._refresh_player_info = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.text_name
  L2_2 = L1_2
  L1_2 = L1_2.SetCustomizedText
  L3_2 = A0_2._data
  L4_2 = L3_2
  L3_2 = L3_2.GetDisplayName
  L3_2, L4_2 = L3_2(L4_2)
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2._data
  L1_2 = L1_2.HasRemarkName
  if L1_2 then
    L1_2 = L2_1
    if L1_2 then
      goto lbl_16
    end
  end
  L1_2 = L1_1
  ::lbl_16::
  L2_2 = A0_2._binder
  L2_2 = L2_2.text_name
  L2_2.color = L1_2
end
L0_1._refresh_name = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L1_2 = A0_2._data
  L1_2 = L1_2.StarsNum
  L2_2 = 1
  L3_2 = A0_2._binder
  L3_2 = L3_2.node_active_stars
  L3_2 = #L3_2
  L4_2 = 1
  for L5_2 = L2_2, L3_2, L4_2 do
    L6_2 = L5_2 <= L1_2
    L7_2 = A0_2._binder
    L7_2 = L7_2.node_active_stars
    L7_2 = L7_2[L5_2]
    L8_2 = L7_2
    L7_2 = L7_2.SafeSetActive
    L9_2 = L6_2
    L7_2(L8_2, L9_2)
    L7_2 = A0_2._binder
    L7_2 = L7_2.node_unactive_stars
    L7_2 = L7_2[L5_2]
    L8_2 = L7_2
    L7_2 = L7_2.SafeSetActive
    L9_2 = not L6_2
    L7_2(L8_2, L9_2)
  end
end
L0_1._refresh_stars = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L1_2 = A0_2._data
  L1_2 = L1_2.Buff1ID
  L2_2 = A0_2._data
  L2_2 = L2_2.Buff2ID
  L3_2 = A0_2._binder
  L3_2 = L3_2.node_buff1
  L4_2 = L3_2
  L3_2 = L3_2.SafeSetActive
  L5_2 = L1_2 ~= 0
  L3_2(L4_2, L5_2)
  L3_2 = A0_2._binder
  L3_2 = L3_2.node_buff2
  L4_2 = L3_2
  L3_2 = L3_2.SafeSetActive
  L5_2 = L2_2 ~= 0
  L3_2(L4_2, L5_2)
  if L1_2 ~= 0 then
    L3_2 = G
    L3_2 = L3_2.BuffUtils
    L3_2 = L3_2.GetMazeBuffData
    L4_2 = L1_2
    L5_2 = 1
    L3_2 = L3_2(L4_2, L5_2)
    L5_2 = A0_2
    L4_2 = A0_2._async_load_sprite_to
    L6_2 = A0_2._binder
    L6_2 = L6_2.img_buff1
    L7_2 = L3_2.BuffIcon
    L4_2(L5_2, L6_2, L7_2)
  end
  if L2_2 ~= 0 then
    L3_2 = G
    L3_2 = L3_2.BuffUtils
    L3_2 = L3_2.GetMazeBuffData
    L4_2 = L2_2
    L5_2 = 1
    L3_2 = L3_2(L4_2, L5_2)
    L5_2 = A0_2
    L4_2 = A0_2._async_load_sprite_to
    L6_2 = A0_2._binder
    L6_2 = L6_2.img_buff2
    L7_2 = L3_2.BuffIcon
    L4_2(L5_2, L6_2, L7_2)
  end
end
L0_1._refresh_buffs = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.lineup_list1
  L2_2 = L1_2
  L1_2 = L1_2.SetListItemCount
  L3_2 = 4
  L4_2 = false
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2._data
  L1_2 = L1_2.LineupCount
  L1_2 = 1 < L1_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_team2
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = L1_2
  L2_2(L3_2, L4_2)
  if L1_2 then
    L2_2 = A0_2._binder
    L2_2 = L2_2.lineup_list2
    L3_2 = L2_2
    L2_2 = L2_2.SetListItemCount
    L4_2 = 4
    L5_2 = false
    L2_2(L3_2, L4_2, L5_2)
  end
end
L0_1._refresh_lineup_info = L3_1
function L3_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2
  L4_2 = A0_2
  L3_2 = A0_2._on_get_avatar_in_lineup
  L5_2 = A1_2
  L6_2 = A2_2
  L7_2 = 1
  return L3_2(L4_2, L5_2, L6_2, L7_2)
end
L0_1._on_get_avatar_in_lineup_1 = L3_1
function L3_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2
  L4_2 = A0_2
  L3_2 = A0_2._on_get_avatar_in_lineup
  L5_2 = A1_2
  L6_2 = A2_2
  L7_2 = 2
  return L3_2(L4_2, L5_2, L6_2, L7_2)
end
L0_1._on_get_avatar_in_lineup_2 = L3_1
function L3_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2
  L5_2 = A1_2
  L4_2 = A1_2.NewListViewItem
  L6_2 = 0
  L4_2 = L4_2(L5_2, L6_2)
  L5_2 = L4_2.UserObjectData
  if L5_2 == nil then
    L7_2 = A0_2
    L6_2 = A0_2.create_panel
    L8_2 = G
    L8_2 = L8_2.PlayerSupportAvatarPanel
    L9_2 = G
    L9_2 = L9_2.PlayerSupportAvatarPanelBinder
    L6_2 = L6_2(L7_2, L8_2, L9_2)
    L5_2 = L6_2
    L7_2 = L5_2
    L6_2 = L5_2.bind
    L8_2 = L4_2.ItemTransform
    L6_2(L7_2, L8_2)
    L7_2 = L5_2
    L6_2 = L5_2.register_click_callback
    L8_2 = A0_2._on_click_avatar
    L9_2 = A0_2
    L6_2(L7_2, L8_2, L9_2)
    L4_2.UserObjectData = L5_2
  end
  L6_2 = A0_2._data
  L7_2 = L6_2
  L6_2 = L6_2.GetLineupAvatarID
  L8_2 = A3_2
  L9_2 = A2_2
  L6_2 = L6_2(L7_2, L8_2, L9_2)
  L8_2 = L5_2
  L7_2 = L5_2.setup_view_by_id
  L9_2 = L6_2
  L10_2 = A0_2._data
  L11_2 = L10_2
  L10_2 = L10_2.GetLineupAvatarLevel
  L12_2 = A3_2
  L13_2 = A2_2
  L10_2, L11_2, L12_2, L13_2 = L10_2(L11_2, L12_2, L13_2)
  L7_2(L8_2, L9_2, L10_2, L11_2, L12_2, L13_2)
  return L4_2
end
L0_1._on_get_avatar_in_lineup = L3_1
function L3_1(A0_2)
  local L1_2
  A0_2._need_refresh_name = true
end
L0_1._on_friend_data_changed = L3_1
function L3_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._need_refresh_name
  if not L1_2 then
    return
  end
  A0_2._need_refresh_name = false
  L2_2 = A0_2
  L1_2 = A0_2._refresh_name
  L1_2(L2_2)
end
L0_1._on_return_to_top = L3_1
function L3_1(A0_2)
  local L1_2, L2_2
  L1_2 = G
  L1_2 = L1_2.Utils
  L1_2 = L1_2.is_gamepad_input
  L1_2 = L1_2()
  if L1_2 then
    L2_2 = A0_2
    L1_2 = A0_2._on_click_head_icon
    L1_2(L2_2)
  end
end
L0_1._on_btn_root = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = G
  L1_2 = L1_2.UIManager
  L1_2 = L1_2.load_and_async_show
  L2_2 = "Ui.PlayerInfo.RecommendLineupBuffDialog"
  L3_2 = A0_2._data
  L3_2 = L3_2.Buff1ID
  L4_2 = 1
  L5_2 = A0_2._binder
  L5_2 = L5_2.btn_buff1
  L5_2 = L5_2.transform
  L1_2(L2_2, L3_2, L4_2, L5_2)
end
L0_1._on_btn_buff1 = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = G
  L1_2 = L1_2.UIManager
  L1_2 = L1_2.load_and_async_show
  L2_2 = "Ui.PlayerInfo.RecommendLineupBuffDialog"
  L3_2 = A0_2._data
  L3_2 = L3_2.Buff2ID
  L4_2 = 1
  L5_2 = A0_2._binder
  L5_2 = L5_2.btn_buff2
  L5_2 = L5_2.transform
  L1_2(L2_2, L3_2, L4_2, L5_2)
end
L0_1._on_btn_buff2 = L3_1
function L3_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2
  L2_2 = G
  L2_2 = L2_2.Utils
  L2_2 = L2_2.invoke_callback
  L3_2 = A0_2._callback
  L4_2 = A0_2._callback_self
  L5_2 = A0_2._data
  L6_2 = A1_2
  L2_2(L3_2, L4_2, L5_2, L6_2)
end
L0_1._on_click_avatar = L3_1
function L3_1(A0_2)
  local L1_2, L2_2
  L1_2 = G
  L1_2 = L1_2.FriendUtils
  L1_2 = L1_2.show_friend_detail_info
  L2_2 = A0_2._data
  L2_2 = L2_2.UID
  L1_2(L2_2)
end
L0_1._on_click_head_icon = L3_1
function L3_1(A0_2, A1_2)
  local L2_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.incontrol_tip_buff1
  L2_2.IsShowTipBySelected = A1_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.incontrol_tip_buff2
  L2_2.IsShowTipBySelected = A1_2
end
L0_1._setup_incontrol_tips = L3_1
return L0_1
