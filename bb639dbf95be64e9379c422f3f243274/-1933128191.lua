local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1
L0_1 = require
L1_1 = "Ui.Friend.FriendMainPageBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Utilities.FriendUtils"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Friend.FriendListTabItem"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Friend.FriendListTabItemBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Friend.FriendAddTabItem"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Friend.FriendAddTabItemBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Friend.FriendRecommendTabItem"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Friend.FriendRecommendTabItemBinder"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "FriendMainPage"
L2_1 = G
L2_1 = L2_1.UIController
L0_1 = L0_1(L1_1, L2_1)
L1_1 = CS
L1_1 = L1_1.RPG
L1_1 = L1_1.Client
L1_1 = L1_1.GlobalVars
L1_1 = L1_1.s_ModuleManager
L1_1 = L1_1.FriendModule
L2_1 = "SpriteOutput/UI/Friend/PlatForm/IconTypeHoyoVerse_White.png"
L3_1 = "SpriteOutput/UI/Friend/PlatForm/IconTypeHoyoVerse_Black.png"
L4_1 = CS
L4_1 = L4_1.RPG
L4_1 = L4_1.GameCore
L4_1 = L4_1.ConstValueClientExcelTable
L4_1 = L4_1.GetData
L5_1 = "Friend_Refresh_CoolDown"
L4_1 = L4_1(L5_1)
L4_1 = L4_1.Value
L4_1 = L4_1.IntValue
function L5_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = G
  L1_2 = L1_2.ImportCsToLua
  L1_2 = L1_2.CS_RPG_Client_UILayer_Page
  A0_2._ui_layer = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._create_binder
  L3_2 = G
  L3_2 = L3_2.FriendMainPageBinder
  L1_2 = L1_2(L2_2, L3_2)
  A0_2._binder = L1_2
  A0_2._pause_game = true
  A0_2._enable_inner_goto = true
  A0_2._is_dirty = false
  L1_2 = {}
  L2_2 = NavigationZoneType
  L2_2 = L2_2.Zone1
  L1_2[1] = L2_2
  A0_2.listen_zooms = L1_2
end
L0_1.ctor = L5_1
function L5_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L3_2 = A0_2
  L2_2 = A0_2.create_panel_without_binder
  L4_2 = G
  L4_2 = L4_2.TabControl
  L2_2 = L2_2(L3_2, L4_2)
  A0_2._tab_control = L2_2
  A0_2._init_tab_id = A1_2
end
L0_1.init = L5_1
function L5_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.FriendDataUpdated
  L4_2 = A0_2._on_data_updated
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_packet_handler
  L3_2 = CS
  L3_2 = L3_2.NIJNBICAPPA
  L3_2 = L3_2.JMLOOBPIHIP
  L4_2 = A0_2._on_get_apply_info
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2._tab_control
  L2_2 = L1_2
  L1_2 = L1_2.set_tab_btns_root
  L3_2 = A0_2._binder
  L3_2 = L3_2.node_tab_control
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._tab_control
  L2_2 = L1_2
  L1_2 = L1_2.set_tab_select_callback
  L3_2 = A0_2
  L4_2 = A0_2._on_tab_select_change
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._init_friend_list_tab
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._init_friend_add_tab
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_all_btn_callback
  L1_2(L2_2)
  L1_2 = G
  L1_2 = L1_2.FriendUtils
  L1_2 = L1_2.refresh_friend_data
  L1_2()
  L1_2 = G
  L1_2 = L1_2.RedDotModule
  L1_2 = L1_2.Instance
  L2_2 = L1_2
  L1_2 = L1_2.bind_reddot
  L3_2 = "FriendApplyTab"
  L4_2 = nil
  L5_2 = A0_2
  L6_2 = A0_2._binder
  L6_2 = L6_2.node_apply_reddot
  L6_2 = L6_2.transform
  L1_2(L2_2, L3_2, L4_2, L5_2, L6_2)
  L1_2 = L1_1.EnablePSFriendCmpt
  if L1_2 then
    L1_2 = OVERSEA_BUILD
    if L1_2 then
      L2_2 = A0_2
      L1_2 = A0_2.async_load_sprite_to
      L3_2 = A0_2._binder
      L3_2 = L3_2.img_icon_white
      L4_2 = L2_1
      L1_2(L2_2, L3_2, L4_2)
      L2_2 = A0_2
      L1_2 = A0_2.async_load_sprite_to
      L3_2 = A0_2._binder
      L3_2 = L3_2.img_icon_black
      L4_2 = L3_1
      L1_2(L2_2, L3_2, L4_2)
    end
  end
  L1_2 = A0_2._binder
  L1_2 = L1_2.panel_refresh_btn
  L2_2 = L1_2
  L1_2 = L1_2.setup_view
  L3_2 = L4_1
  L4_2 = A0_2._on_btn_refresh
  L5_2 = A0_2
  L1_2(L2_2, L3_2, L4_2, L5_2)
end
L0_1._on_load = L5_1
function L5_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2._short_cut_hint_panel
  L3_2 = L2_2
  L2_2 = L2_2.safe_set_active
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
end
L0_1.show_short_cut_hint = L5_1
function L5_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2.is_out_most_zoom
  L1_2 = L1_2(L2_2)
  if L1_2 then
    L2_2 = A0_2
    L1_2 = A0_2.is_in_special_zoom
    L1_2 = L1_2(L2_2)
    if not L1_2 then
      L1_2 = A0_2._tab_control
      L2_2 = L1_2
      L1_2 = L1_2.select_prev
      L1_2(L2_2)
    end
  end
end
L0_1._select_prev = L5_1
function L5_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2.is_out_most_zoom
  L1_2 = L1_2(L2_2)
  if L1_2 then
    L2_2 = A0_2
    L1_2 = A0_2.is_in_special_zoom
    L1_2 = L1_2(L2_2)
    if not L1_2 then
      L1_2 = A0_2._tab_control
      L2_2 = L1_2
      L1_2 = L1_2.select_next
      L1_2(L2_2)
    end
  end
end
L0_1._select_next = L5_1
function L5_1(A0_2)
  local L1_2, L2_2
  L1_2 = L1_1
  L2_2 = L1_2
  L1_2 = L1_2.ClearCache
  L1_2(L2_2)
end
L0_1._on_dispose = L5_1
function L5_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_close
  L4_2 = A0_2._on_btn_exit
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_select_left
  L4_2 = A0_2._select_prev
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_select_right
  L4_2 = A0_2._select_next
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_application
  L4_2 = A0_2._on_btn_apply
  L1_2(L2_2, L3_2, L4_2)
end
L0_1._bind_all_btn_callback = L5_1
function L5_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2.create_panel
  L3_2 = G
  L3_2 = L3_2.FriendListTabItem
  L4_2 = G
  L4_2 = L4_2.FriendListTabItemBinder
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2._friend_list_tab_item = L1_2
  L1_2 = A0_2._friend_list_tab_item
  L1_2.button_prefab_index = 0
  L1_2 = A0_2._friend_list_tab_item
  L2_2 = L1_2
  L1_2 = L1_2.set_async_bind_parent
  L3_2 = A0_2._binder
  L3_2 = L3_2.node_friend_list_panel
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._friend_list_tab_item
  L2_2 = L1_2
  L1_2 = L1_2.set_switch_animator
  L3_2 = A0_2._binder
  L3_2 = L3_2.anim_btn_switch
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._friend_list_tab_item
  L2_2 = L1_2
  L1_2 = L1_2.set_btns
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_switch
  L4_2 = A0_2._binder
  L4_2 = L4_2.btn_black_list
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2._friend_list_tab_item
  L2_2 = L1_2
  L1_2 = L1_2.set_sort_panel
  L3_2 = A0_2._binder
  L3_2 = L3_2.panel_sort
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._friend_list_tab_item
  L2_2 = L1_2
  L1_2 = L1_2.register_tab_changed_callback
  L3_2 = A0_2._on_friend_list_tab_changed
  L4_2 = A0_2
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2._tab_control
  L2_2 = L1_2
  L1_2 = L1_2.add_item
  L3_2 = A0_2._friend_list_tab_item
  L1_2(L2_2, L3_2)
end
L0_1._init_friend_list_tab = L5_1
function L5_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2.create_panel
  L3_2 = G
  L3_2 = L3_2.FriendAddTabItem
  L4_2 = G
  L4_2 = L4_2.FriendAddTabItemBinder
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2._friend_add_tab_item = L1_2
  L1_2 = A0_2._friend_add_tab_item
  L1_2.button_prefab_index = 0
  L1_2 = A0_2._friend_add_tab_item
  L2_2 = L1_2
  L1_2 = L1_2.set_async_bind_parent
  L3_2 = A0_2._binder
  L3_2 = L3_2.node_friend_add_panel
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._tab_control
  L2_2 = L1_2
  L1_2 = L1_2.add_item
  L3_2 = A0_2._friend_add_tab_item
  L1_2(L2_2, L3_2)
end
L0_1._init_friend_add_tab = L5_1
function L5_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2.create_panel
  L3_2 = G
  L3_2 = L3_2.FriendRecommendTabItem
  L4_2 = G
  L4_2 = L4_2.FriendRecommendTabItemBinder
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2._friend_recommend_tab_item = L1_2
  L1_2 = A0_2._friend_recommend_tab_item
  L1_2.button_prefab_index = 0
  L1_2 = A0_2._friend_recommend_tab_item
  L2_2 = L1_2
  L1_2 = L1_2.set_async_bind_parent
  L3_2 = A0_2._binder
  L3_2 = L3_2.node_friend_recommend_panel
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._tab_control
  L2_2 = L1_2
  L1_2 = L1_2.add_item
  L3_2 = A0_2._friend_recommend_tab_item
  L1_2(L2_2, L3_2)
end
L0_1._init_friend_recommend_tab = L5_1
function L5_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._tab_control
  L2_2 = L1_2
  L1_2 = L1_2.click_item_by_uid
  L4_2 = A0_2
  L3_2 = A0_2._get_default_tab_id
  L3_2, L4_2 = L3_2(L4_2)
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._refresh
  L1_2(L2_2)
end
L0_1._setup_view = L5_1
function L5_1(A0_2, A1_2, ...)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = A0_2._tab_control
  L3_2 = L2_2
  L2_2 = L2_2.find_item
  L4_2 = A1_2
  L2_2 = L2_2(L3_2, L4_2)
  if L2_2 ~= nil then
    L3_2 = L2_2.set_init_param
    if L3_2 ~= nil then
      L4_2 = L2_2
      L3_2 = L2_2.set_init_param
      L5_2 = ...
      L3_2(L4_2, L5_2)
    end
  end
  L3_2 = A0_2._tab_control
  L4_2 = L3_2
  L3_2 = L3_2.click_item_by_uid
  L5_2 = A1_2
  L3_2(L4_2, L5_2)
end
L0_1._do_inner_goto = L5_1
function L5_1(A0_2)
  local L1_2
  L1_2 = A0_2._init_tab_id
  if L1_2 ~= nil then
    L1_2 = A0_2._init_tab_id
    return L1_2
  end
  L1_2 = L1_1.CurFriendCount
  if L1_2 == 0 then
    L1_2 = L1_1.ReceiveApplicationCount
    if L1_2 == 0 then
      L1_2 = L1_1.ShouldDisplayRedDot
      if not L1_2 then
        L1_2 = A0_2._friend_add_tab_item
        L1_2 = L1_2.uid
        return L1_2
    end
  end
  else
    L1_2 = A0_2._friend_list_tab_item
    L1_2 = L1_2.uid
    return L1_2
  end
end
L0_1._get_default_tab_id = L5_1
function L5_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2._refresh_friend_num
  L1_2(L2_2)
end
L0_1._refresh = L5_1
function L5_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.text_friend_cur_num
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetText
  L3_2 = L1_1.CurFriendCount
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.text_friend_max_num
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetText
  L3_2 = L1_1.MaxFriendCount
  L1_2(L2_2, L3_2)
end
L0_1._refresh_friend_num = L5_1
function L5_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._tab_control
  L1_2 = L1_2.current_select_item
  L2_2 = A0_2._friend_list_tab_item
  if L1_2 ~= L2_2 then
    L2_2 = A0_2._binder
    L2_2 = L2_2.btn_application
    L3_2 = L2_2
    L2_2 = L2_2.SafeSetActive
    L4_2 = false
    L2_2(L3_2, L4_2)
    L2_2 = A0_2._binder
    L2_2 = L2_2.node_friend_num
    L3_2 = L2_2
    L2_2 = L2_2.SafeSetActive
    L4_2 = false
    L2_2(L3_2, L4_2)
    L2_2 = A0_2._binder
    L2_2 = L2_2.node_psn_tips
    L3_2 = L2_2
    L2_2 = L2_2.SafeSetActive
    L4_2 = false
    L2_2(L3_2, L4_2)
    L2_2 = A0_2._binder
    L2_2 = L2_2.node_loading_wheel
    L3_2 = L2_2
    L2_2 = L2_2.SafeSetActive
    L4_2 = false
    L2_2(L3_2, L4_2)
    L2_2 = A0_2._binder
    L2_2 = L2_2.filter_sort_select_panel
    L3_2 = L2_2
    L2_2 = L2_2.safe_set_active
    L4_2 = false
    L2_2(L3_2, L4_2)
  end
  L2_2 = A0_2._binder
  L2_2 = L2_2.btn_black_list
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = A0_2._friend_list_tab_item
  L4_2 = L1_2 == L4_2
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.panel_refresh_btn
  L3_2 = L2_2
  L2_2 = L2_2.safe_set_active
  L4_2 = A0_2._friend_add_tab_item
  L4_2 = L1_2 == L4_2
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.btn_switch
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = A0_2._friend_list_tab_item
  L4_2 = L1_2 == L4_2 and L4_2
  L2_2(L3_2, L4_2)
  L3_2 = A0_2
  L2_2 = A0_2._refresh_sub_title
  L2_2(L3_2)
end
L0_1._on_tab_select_change = L5_1
function L5_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.btn_application
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = not A1_2
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.filter_sort_select_panel
  L3_2 = L2_2
  L2_2 = L2_2.safe_set_active
  L4_2 = not A1_2
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_friend_num
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = not A1_2
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_psn_tips
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_loading_wheel
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = A1_2 or L4_2
  if A1_2 then
    L4_2 = L1_1.IsPSDataReady
    L4_2 = not L4_2
  end
  L2_2(L3_2, L4_2)
end
L0_1._on_friend_list_tab_changed = L5_1
function L5_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = A0_2._tab_control
  L1_2 = L1_2.current_select_item
  L2_2 = A0_2._binder
  L2_2 = L2_2.text_sub_title
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetTextID
  L5_2 = L1_2
  L4_2 = L1_2.get_sub_title
  L4_2, L5_2 = L4_2(L5_2)
  L2_2(L3_2, L4_2, L5_2)
end
L0_1._refresh_sub_title = L5_1
function L5_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2.is_top_page
  L1_2 = L1_2(L2_2)
  if not L1_2 then
    A0_2._is_dirty = true
    return
  end
  L2_2 = A0_2
  L1_2 = A0_2._refresh_friend_num
  L1_2(L2_2)
  L1_2 = A0_2._tab_control
  L1_2 = L1_2.current_select_item
  L2_2 = L1_2
  L1_2 = L1_2.refresh
  L1_2(L2_2)
end
L0_1._on_data_updated = L5_1
function L5_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._need_open_application_dialog
  if not L1_2 then
    return
  end
  A0_2._need_open_application_dialog = false
  L1_2 = G
  L1_2 = L1_2.UIManager
  L1_2 = L1_2.load_and_async_show
  L2_2 = "Ui.Friend.FriendApplicationDialog"
  L1_2(L2_2)
end
L0_1._on_get_apply_info = L5_1
function L5_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._is_dirty
  if not L1_2 then
    return
  end
  A0_2._is_dirty = false
  L2_2 = A0_2
  L1_2 = A0_2._on_data_updated
  L1_2(L2_2)
end
L0_1._on_return_to_top = L5_1
function L5_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2.exit
  L1_2(L2_2)
end
L0_1._on_btn_exit = L5_1
function L5_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._tab_control
  L1_2 = L1_2.current_select_item
  L2_2 = A0_2._friend_add_tab_item
  if L1_2 ~= L2_2 then
    return
  end
  L3_2 = L1_2
  L2_2 = L1_2.on_btn_refresh
  L2_2(L3_2)
end
L0_1._on_btn_refresh = L5_1
function L5_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._is_btn_apply_clicked
  if L1_2 ~= true then
    A0_2._is_btn_apply_clicked = true
    A0_2._need_open_application_dialog = true
    L1_2 = G
    L1_2 = L1_2.FriendUtils
    L1_2 = L1_2.refresh_friend_apply_data
    L1_2()
    L2_2 = A0_2
    L1_2 = A0_2.show_full_screen_block_for_packet
    L3_2 = CS
    L3_2 = L3_2.NIJNBICAPPA
    L3_2 = L3_2.JMLOOBPIHIP
    L1_2(L2_2, L3_2)
    return
  end
  L1_2 = G
  L1_2 = L1_2.UIManager
  L1_2 = L1_2.load_and_async_show
  L2_2 = "Ui.Friend.FriendApplicationDialog"
  L1_2(L2_2)
end
L0_1._on_btn_apply = L5_1
function L5_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = NavigationZoneType
  L2_2 = L2_2.Zone1
  if A1_2 == L2_2 then
    L3_2 = A0_2
    L2_2 = A0_2.set_navigation_target
    L5_2 = A0_2
    L4_2 = A0_2.get_navigation_target
    L4_2, L5_2 = L4_2(L5_2)
    L2_2(L3_2, L4_2, L5_2)
  end
end
L0_1._on_enter_zoom = L5_1
function L5_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._tab_control
  L1_2 = L1_2.current_select_item
  L2_2 = L1_2
  L1_2 = L1_2.get_navigation_target
  return L1_2(L2_2)
end
L0_1.get_first_selected_object = L5_1
return L0_1
