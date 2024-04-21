local L0_1, L1_1, L2_1, L3_1, L4_1
L0_1 = CS
L0_1 = L0_1.RPG
L0_1 = L0_1.Client
L0_1 = L0_1.GlobalVars
L0_1 = L0_1.s_ModuleManager
L0_1 = L0_1.SpaceZooModule
L1_1 = "CommonTabSwtich_From_B"
L2_1 = G
L2_1 = L2_1.Class
L3_1 = "SpaceZooSSRCatHandbookPanel"
L4_1 = G
L4_1 = L4_1.TabItem
L2_1 = L2_1(L3_1, L4_1)
function L3_1(A0_2, A1_2, A2_2)
  local L3_2
  L3_2 = {}
  A0_2._event_data_list = L3_2
  A0_2._default_index = 1
  A0_2._first_select = true
end
L2_1.ctor = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_reward
  L4_2 = A0_2._on_btn_reward
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_reddot
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._setup_tab_btn_info
  L1_2(L2_2)
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.GlobalVars
  L1_2 = L1_2.s_ModuleManager
  L1_2 = L1_2.TutorialSupportModule
  L2_2 = L1_2
  L1_2 = L1_2.SetNodeDynamicKey
  L3_2 = A0_2._binder
  L3_2 = L3_2.tab_btn
  L3_2 = L3_2.gameObject
  L4_2 = A0_2.uid
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.anim_root
  L2_2 = L1_2
  L1_2 = L1_2.GetClip
  L3_2 = L1_1
  L1_2 = L1_2(L2_2, L3_2)
  L1_2 = L1_2.length
  A0_2._anim_length = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._add_count_down_timer
  L3_2 = A0_2._play_unlock_anim
  L4_2 = A0_2._anim_length
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2._anim_timer = L1_2
end
L2_1._on_added = L3_1
function L3_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.panel_collect_cat
  L2_2 = L1_2
  L1_2 = L1_2.check_anim_play
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._set_scroll_rect_transform
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._refresh
  L1_2(L2_2)
  L1_2 = A0_2._anim_timer
  L2_2 = L1_2
  L1_2 = L1_2.reset
  L1_2(L2_2)
  L1_2 = A0_2._anim_timer
  L2_2 = L1_2
  L1_2 = L1_2.start
  L1_2(L2_2)
end
L2_1._on_select = L3_1
function L3_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.panel_collect_cat
  L2_2 = L1_2
  L1_2 = L1_2.get_collect_cat_id
  L1_2 = L1_2(L2_2)
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.Client
  L2_2 = L2_2.Prefs
  L2_2 = L2_2.User
  L2_2 = L2_2.SpaceZooCollectCat
  if L1_2 ~= L2_2 then
    L2_2 = A0_2
    L1_2 = A0_2.refresh_collect_cat
    L1_2(L2_2)
  end
end
L2_1._on_return_to_top = L3_1
function L3_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.panel_collect_cat
  L2_2 = L1_2
  L1_2 = L1_2.stop_anim_timer
  L1_2(L2_2)
end
L2_1._on_unselect = L3_1
function L3_1(A0_2)
  local L1_2
  L1_2 = {}
  A0_2._event_data_list = L1_2
end
L2_1._on_dispose = L3_1
function L3_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L3_2 = 1
  L4_2 = #A1_2
  L5_2 = 1
  for L6_2 = L3_2, L4_2, L5_2 do
    L7_2 = A1_2[L6_2]
    L7_2 = L7_2.SpecialCatRow
    L7_2 = L7_2.IsHide
    if not L7_2 then
      L7_2 = table
      L7_2 = L7_2.insert
      L8_2 = A0_2._event_data_list
      L9_2 = A1_2[L6_2]
      L7_2(L8_2, L9_2)
    else
      L7_2 = A1_2[L6_2]
      L7_2 = L7_2.State
      L8_2 = CS
      L8_2 = L8_2.RPG
      L8_2 = L8_2.GameCore
      L8_2 = L8_2.SpaceZooSpicalEventState
      L8_2 = L8_2.Get
      if L7_2 == L8_2 then
        L7_2 = table
        L7_2 = L7_2.insert
        L8_2 = A0_2._event_data_list
        L9_2 = A1_2[L6_2]
        L7_2(L8_2, L9_2)
      end
    end
  end
  A0_2._get_cat_cnt = A2_2
  L4_2 = A0_2
  L3_2 = A0_2._setup_text
  L3_2(L4_2)
  L4_2 = A0_2
  L3_2 = A0_2._setup_scroll_view
  L3_2(L4_2)
  L3_2 = A0_2._binder
  L3_2 = L3_2.panel_collect_cat
  L4_2 = L3_2
  L3_2 = L3_2.register_btn_callback
  L5_2 = A0_2._on_collect_panel_change
  L6_2 = A0_2
  L3_2(L4_2, L5_2, L6_2)
  L3_2 = A0_2._binder
  L3_2 = L3_2.panel_collect_cat
  L4_2 = L3_2
  L3_2 = L3_2.refresh
  L3_2(L4_2)
end
L2_1.setup_view = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.scroll_view
  L2_2 = L1_2
  L1_2 = L1_2.MovePanelToItemIndex
  L3_2 = 0
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.scroll_view
  L2_2 = L1_2
  L1_2 = L1_2.GetShownItemByItemIndex
  L3_2 = A0_2._default_index
  L3_2 = L3_2 - 1
  L1_2 = L1_2(L2_2, L3_2)
  if L1_2 ~= nil then
    L2_2 = L1_2.UserObjectData
    L3_2 = L2_2
    L2_2 = L2_2.get_first_selected_object
    return L2_2(L3_2)
  end
end
L2_1.get_first_selected_object = L3_1
function L3_1(A0_2)
  local L1_2, L2_2
  L1_2 = G
  L1_2 = L1_2.UIManager
  L1_2 = L1_2.load_and_async_show
  L2_2 = "Ui.SpaceZoo.SpaceZooRewardListDialog"
  L1_2(L2_2)
end
L2_1._on_btn_reward = L3_1
function L3_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = G
  L2_2 = L2_2.UIManager
  L2_2 = L2_2.load_and_async_show
  L3_2 = "Ui.SpaceZoo.SpaceZooBreedEventDialog"
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.Client
  L2_2 = L2_2.Prefs
  L2_2 = L2_2.User
  L2_2 = L2_2.SpaceZooNewSpecialCats
  L3_2 = L2_2
  L2_2 = L2_2.Remove
  L4_2 = A1_2.SpecialCatID
  L2_2(L3_2, L4_2)
end
L2_1._on_list_view_select = L3_1
function L3_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.Client
  L2_2 = L2_2.Prefs
  L2_2 = L2_2.User
  L2_2 = L2_2.SpaceZooNewSpecialCats
  L3_2 = L2_2
  L2_2 = L2_2.Remove
  L4_2 = A1_2.SpecialCatID
  L2_2(L3_2, L4_2)
  L3_2 = A0_2
  L2_2 = A0_2._is_collect_event_data
  L4_2 = A1_2
  L2_2 = L2_2(L3_2, L4_2)
  if L2_2 then
    L2_2 = G
    L2_2 = L2_2.NotifyManager
    L2_2 = L2_2.notify
    L3_2 = G
    L3_2 = L3_2.CS
    L3_2 = L3_2.NotifyType
    L3_2 = L3_2.UIPileToastMessageTextID
    L4_2 = "UIText_ActivitySpaceZoo_MuseumPage_IsPinned"
    L2_2(L3_2, L4_2)
    return
  end
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.Client
  L2_2 = L2_2.Prefs
  L2_2 = L2_2.User
  L3_2 = A1_2.SpecialCatID
  L2_2.SpaceZooCollectCat = L3_2
  L3_2 = A0_2
  L2_2 = A0_2.refresh_collect_cat
  L2_2(L3_2)
end
L2_1._on_list_view_collect = L3_1
function L3_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2.refresh_collect_cat
  L1_2(L2_2)
end
L2_1._on_collect_panel_change = L3_1
function L3_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L4_2 = A1_2
  L3_2 = A1_2.NewListViewItem
  L5_2 = 0
  L3_2 = L3_2(L4_2, L5_2)
  L4_2 = L3_2.UserObjectData
  if L4_2 == nil then
    L6_2 = A0_2
    L5_2 = A0_2.create_panel
    L7_2 = G
    L7_2 = L7_2.SpaceZooHandbookListBtnPanel
    L8_2 = G
    L8_2 = L8_2.SpaceZooHandbookListBtnPanelBinder
    L5_2 = L5_2(L6_2, L7_2, L8_2)
    L4_2 = L5_2
    L6_2 = L4_2
    L5_2 = L4_2.bind
    L7_2 = L3_2.transform
    L5_2(L6_2, L7_2)
    L3_2.UserObjectData = L4_2
  end
  L6_2 = L4_2
  L5_2 = L4_2.register_btn_root_callback
  L7_2 = A0_2._on_list_view_select
  L8_2 = A0_2
  L5_2(L6_2, L7_2, L8_2)
  L6_2 = L4_2
  L5_2 = L4_2.register_btn_target_callback
  L7_2 = A0_2._on_list_view_collect
  L8_2 = A0_2
  L5_2(L6_2, L7_2, L8_2)
  L5_2 = A0_2._event_data_list
  L6_2 = A2_2 + 1
  L5_2 = L5_2[L6_2]
  L7_2 = L4_2
  L6_2 = L4_2.setup_view
  L8_2 = L5_2
  L6_2(L7_2, L8_2)
  L7_2 = L4_2
  L6_2 = L4_2.set_selected
  L9_2 = A0_2
  L8_2 = A0_2._is_collect_event_data
  L10_2 = L5_2
  L8_2, L9_2, L10_2 = L8_2(L9_2, L10_2)
  L6_2(L7_2, L8_2, L9_2, L10_2)
  return L3_2
end
L2_1._on_get_item = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.Prefs
  L1_2 = L1_2.User
  L1_2 = L1_2.SpaceZooNewGetSpecialCats
  L2_2 = 1
  L3_2 = A0_2._event_data_list
  L3_2 = #L3_2
  L4_2 = 1
  for L5_2 = L2_2, L3_2, L4_2 do
    L6_2 = A0_2._event_data_list
    L6_2 = L6_2[L5_2]
    L6_2 = L6_2.SpecialCatID
    L8_2 = L1_2
    L7_2 = L1_2.Contains
    L9_2 = L6_2
    L7_2 = L7_2(L8_2, L9_2)
    if L7_2 then
      L7_2 = A0_2._binder
      L7_2 = L7_2.scroll_view
      L8_2 = L7_2
      L7_2 = L7_2.MovePanelToItemIndex
      L9_2 = L5_2 - 1
      L7_2(L8_2, L9_2)
      return
    end
  end
end
L2_1._set_scroll_rect_transform = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L1_2 = A0_2._anim_timer
  L2_2 = L1_2
  L1_2 = L1_2.stop
  L1_2(L2_2)
  L1_2 = 1
  L2_2 = A0_2._event_data_list
  L2_2 = #L2_2
  L3_2 = 1
  for L4_2 = L1_2, L2_2, L3_2 do
    L5_2 = A0_2._event_data_list
    L5_2 = L5_2[L4_2]
    L5_2 = L5_2.SpecialCatID
    L6_2 = A0_2._binder
    L6_2 = L6_2.scroll_view
    L7_2 = L6_2
    L6_2 = L6_2.GetShownItemByItemIndex
    L8_2 = L4_2 - 1
    L6_2 = L6_2(L7_2, L8_2)
    L7_2 = CS
    L7_2 = L7_2.RPG
    L7_2 = L7_2.Client
    L7_2 = L7_2.Prefs
    L7_2 = L7_2.User
    L7_2 = L7_2.SpaceZooNewGetSpecialCats
    L8_2 = L7_2
    L7_2 = L7_2.Contains
    L9_2 = L5_2
    L7_2 = L7_2(L8_2, L9_2)
    if L7_2 then
      if L6_2 ~= nil then
        L7_2 = L6_2.UserObjectData
        L8_2 = L7_2
        L7_2 = L7_2.play_get_anim
        L7_2(L8_2)
      end
      L7_2 = CS
      L7_2 = L7_2.RPG
      L7_2 = L7_2.Client
      L7_2 = L7_2.Prefs
      L7_2 = L7_2.User
      L7_2 = L7_2.SpaceZooNewGetSpecialCats
      L8_2 = L7_2
      L7_2 = L7_2.Remove
      L9_2 = L5_2
      L7_2(L8_2, L9_2)
    end
  end
end
L2_1._play_unlock_anim = L3_1
function L3_1(A0_2, A1_2)
  local L2_2, L3_2
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.Client
  L2_2 = L2_2.Prefs
  L2_2 = L2_2.User
  L2_2 = L2_2.SpaceZooCollectCat
  L3_2 = A1_2.SpecialCatID
  L2_2 = L2_2 == L3_2
  return L2_2
end
L2_1._is_collect_event_data = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = G
  L1_2 = L1_2.RedDotModule
  L1_2 = L1_2.Instance
  L2_2 = L1_2
  L1_2 = L1_2.bind_reddot
  L3_2 = "SpaceZooSpecialCat"
  L4_2 = nil
  L5_2 = A0_2
  L6_2 = A0_2._binder
  L6_2 = L6_2.node_red_dot
  L1_2(L2_2, L3_2, L4_2, L5_2, L6_2)
end
L2_1._bind_reddot = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.text_title
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetTextID
  L3_2 = "UIText_ActivitySpaceZoo_MuseumPage_SSR"
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2._async_load_sprite_to
  L3_2 = A0_2._binder
  L3_2 = L3_2.img_icon
  L4_2 = "SpriteOutput/Quest/SpaceZoo/SpaceZooIcon/SpaceZooTabCakeIcon.png"
  L1_2(L2_2, L3_2, L4_2)
end
L2_1._setup_tab_btn_info = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.text_current_num
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetText
  L3_2 = A0_2._get_cat_cnt
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.text_total_num
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetText
  L3_2 = A0_2._event_data_list
  L3_2 = #L3_2
  L1_2(L2_2, L3_2)
end
L2_1._setup_text = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.scroll_view
  L2_2 = L1_2
  L1_2 = L1_2.SafeInitListView
  L3_2 = A0_2._event_data_list
  L3_2 = #L3_2
  L4_2 = A0_2._on_get_item
  L5_2 = nil
  L6_2 = A0_2
  L1_2(L2_2, L3_2, L4_2, L5_2, L6_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.scroll_view
  L2_2 = L1_2
  L1_2 = L1_2.RefreshAllShownItem
  L1_2(L2_2)
end
L2_1._setup_scroll_view = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L1_2 = 1
  L2_2 = A0_2._event_data_list
  L2_2 = #L2_2
  L3_2 = 1
  for L4_2 = L1_2, L2_2, L3_2 do
    L5_2 = A0_2._binder
    L5_2 = L5_2.scroll_view
    L6_2 = L5_2
    L5_2 = L5_2.GetShownItemByItemIndex
    L7_2 = L4_2 - 1
    L5_2 = L5_2(L6_2, L7_2)
    if L5_2 ~= nil then
      L6_2 = L5_2.UserObjectData
      L8_2 = L6_2
      L7_2 = L6_2.refresh
      L7_2(L8_2)
    end
  end
  L2_2 = A0_2
  L1_2 = A0_2.refresh_collect_cat
  L1_2(L2_2)
end
L2_1._refresh = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.Prefs
  L1_2 = L1_2.User
  L1_2 = L1_2.SpaceZooNewSpecialCats
  L2_2 = 1
  L3_2 = A0_2._event_data_list
  L3_2 = #L3_2
  L4_2 = 1
  for L5_2 = L2_2, L3_2, L4_2 do
    L7_2 = L1_2
    L6_2 = L1_2.Contains
    L8_2 = A0_2._event_data_list
    L8_2 = L8_2[L5_2]
    L8_2 = L8_2.SpecialCatID
    L6_2 = L6_2(L7_2, L8_2)
    if L6_2 then
      L6_2 = A0_2._binder
      L6_2 = L6_2.scroll_view
      L7_2 = L6_2
      L6_2 = L6_2.GetShownItemByItemIndex
      L8_2 = L5_2 - 1
      return L6_2(L7_2, L8_2)
    end
  end
  L2_2 = nil
  return L2_2
end
L2_1.get_first_new_cat_index = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2
  L1_2 = 1
  L2_2 = A0_2._event_data_list
  L2_2 = #L2_2
  L3_2 = 1
  for L4_2 = L1_2, L2_2, L3_2 do
    L5_2 = A0_2._binder
    L5_2 = L5_2.scroll_view
    L6_2 = L5_2
    L5_2 = L5_2.GetShownItemByItemIndex
    L7_2 = L4_2 - 1
    L5_2 = L5_2(L6_2, L7_2)
    if L5_2 ~= nil then
      L6_2 = L5_2.UserObjectData
      L8_2 = L6_2
      L7_2 = L6_2.set_selected
      L10_2 = A0_2
      L9_2 = A0_2._is_collect_event_data
      L11_2 = A0_2._event_data_list
      L11_2 = L11_2[L4_2]
      L9_2, L10_2, L11_2 = L9_2(L10_2, L11_2)
      L7_2(L8_2, L9_2, L10_2, L11_2)
    end
  end
  L1_2 = A0_2._binder
  L1_2 = L1_2.panel_collect_cat
  L2_2 = L1_2
  L1_2 = L1_2.set_target_collection_cat
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.Client
  L3_2 = L3_2.Prefs
  L3_2 = L3_2.User
  L3_2 = L3_2.SpaceZooCollectCat
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.panel_collect_cat
  L2_2 = L1_2
  L1_2 = L1_2.refresh
  L1_2(L2_2)
end
L2_1.refresh_collect_cat = L3_1
function L3_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.panel_collect_cat
  L2_2 = L1_2
  L1_2 = L1_2.reset_is_refreshed
  L1_2(L2_2)
end
L2_1.reset_collect_panel_refreshed = L3_1
return L2_1
