local L0_1, L1_1, L2_1
L0_1 = require
L1_1 = "Ui.RogueDLC.RogueNous.DiceHandbook.RogueNousDiceHandbookPageBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.RogueDLC.RogueNous.DiceHandbook.Components.RogueNousDiceHandbookItemPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.RogueDLC.RogueNous.DiceHandbook.Components.RogueNousDiceHandbookItemPanelBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.RogueDLC.RogueNous.Tools.RogueNousUtils"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.RogueDLC.RogueNous.Tools.RogueNousDiceSurfaceTagFilter"
L0_1(L1_1)
L0_1 = require
L1_1 = "Logic.RedDotModule.RedDotModule"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "RogueNousDiceHandbookPage"
L2_1 = G
L2_1 = L2_1.UIController
L0_1 = L0_1(L1_1, L2_1)
function L1_1(A0_2)
  local L1_2, L2_2, L3_2
  L2_2 = A0_2
  L1_2 = A0_2._create_binder
  L3_2 = G
  L3_2 = L3_2.RogueNousDiceHandbookPageBinder
  L1_2 = L1_2(L2_2, L3_2)
  A0_2._binder = L1_2
  L1_2 = G
  L1_2 = L1_2.ImportCsToLua
  L1_2 = L1_2.CS_RPG_Client_UILayer_Page
  A0_2._ui_layer = L1_2
  L1_2 = G
  L1_2 = L1_2.ImportCsToLua
  L1_2 = L1_2.TransitionStyle_AboveAndBelowBlack
  A0_2._transition_style = L1_2
  A0_2._pause_game = true
  L1_2 = {}
  L2_2 = NavigationZoneType
  L2_2 = L2_2.Zone1
  L1_2[1] = L2_2
  A0_2.listen_zooms = L1_2
  L1_2 = G
  L1_2 = L1_2.new
  L2_2 = G
  L2_2 = L2_2.RogueNousDiceSurfaceTagFilter
  L1_2 = L1_2(L2_2)
  A0_2._filter = L1_2
end
L0_1.ctor = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L2_2 = A0_2
  L1_2 = A0_2._prepare_data
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_exit_btn
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_close
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_reward
  L4_2 = A0_2._on_btn_reward_click
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_reward_highlighted
  L4_2 = A0_2._on_btn_reward_click
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_filter
  L4_2 = A0_2._on_btn_filter_click
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.surface_list
  L2_2 = L1_2
  L1_2 = L1_2.SafeInitGridView
  L3_2 = 0
  L4_2 = A0_2._on_item_changed
  L5_2 = nil
  L6_2 = nil
  L7_2 = A0_2
  L1_2(L2_2, L3_2, L4_2, L5_2, L6_2, L7_2)
  L1_2 = G
  L1_2 = L1_2.RedDotModule
  L1_2 = L1_2.Instance
  L2_2 = L1_2
  L1_2 = L1_2.bind_reddot
  L3_2 = "RogueNousDiceHandbookReward"
  L4_2 = nil
  L5_2 = A0_2
  L6_2 = A0_2._binder
  L6_2 = L6_2.node_btn_reward_reddot
  L1_2(L2_2, L3_2, L4_2, L5_2, L6_2)
end
L0_1._on_load = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2
  A0_2._cur_selected_index = 0
  L2_2 = A0_2
  L1_2 = A0_2._set_surface_seen
  L3_2 = A0_2._cur_selected_index
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2._setup_unlocked_num
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._refresh_btn_reward
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._refresh_surface_list
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._refresh_btn_filter
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._refresh_detail_panel
  L1_2(L2_2)
  L1_2 = G
  L1_2 = L1_2.Utils
  L1_2 = L1_2.invoke_next_frame_callback
  L2_2 = A0_2._init_ui_navigation
  L3_2 = A0_2
  L1_2(L2_2, L3_2)
end
L0_1._setup_view = L1_1
function L1_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2._refresh_btn_reward
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._init_ui_navigation
  L1_2(L2_2)
end
L0_1._on_return_to_top = L1_1
function L1_1(A0_2)
  local L1_2, L2_2
  L1_2 = G
  L1_2 = L1_2.delete
  L2_2 = A0_2._filter
  L1_2(L2_2)
  A0_2._filter = nil
end
L0_1._on_dispose = L1_1
function L1_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L4_2 = A1_2
  L3_2 = A1_2.NewListViewItem
  L5_2 = 0
  L3_2 = L3_2(L4_2, L5_2)
  L4_2 = L3_2.UserObjectData
  if L4_2 ~= nil then
    L5_2 = L4_2.is_destroyed
    if not L5_2 then
      goto lbl_25
    end
  end
  L6_2 = A0_2
  L5_2 = A0_2.create_panel
  L7_2 = G
  L7_2 = L7_2.RogueNousDiceHandbookItemPanel
  L8_2 = G
  L8_2 = L8_2.RogueNousDiceHandbookItemPanelBinder
  L5_2 = L5_2(L6_2, L7_2, L8_2)
  L4_2 = L5_2
  L6_2 = L4_2
  L5_2 = L4_2.bind
  L7_2 = L3_2.transform
  L5_2(L6_2, L7_2)
  L6_2 = L4_2
  L5_2 = L4_2.register_click_callback
  L7_2 = A0_2._on_surface_item_click
  L8_2 = A0_2
  L5_2(L6_2, L7_2, L8_2)
  L3_2.UserObjectData = L4_2
  ::lbl_25::
  L6_2 = L4_2
  L5_2 = L4_2.setup_view
  L7_2 = A0_2._shown_dice_surface_data_items
  L8_2 = A2_2 + 1
  L7_2 = L7_2[L8_2]
  L5_2(L6_2, L7_2)
  L6_2 = L4_2
  L5_2 = L4_2.set_selected
  L7_2 = A0_2._cur_selected_index
  L7_2 = A2_2 == L7_2
  L5_2(L6_2, L7_2)
  return L3_2
end
L0_1._on_item_changed = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L2_2 = A1_2.ItemIndex
  L3_2 = A0_2._cur_selected_index
  if L3_2 == L2_2 then
    return
  end
  L3_2 = A0_2._cur_selected_index
  if L3_2 ~= nil then
    L3_2 = A0_2._binder
    L3_2 = L3_2.surface_list
    L4_2 = L3_2
    L3_2 = L3_2.GetShownItemByItemIndex
    L5_2 = A0_2._cur_selected_index
    L3_2 = L3_2(L4_2, L5_2)
    if L3_2 ~= nil then
      L4_2 = L3_2.UserObjectData
      if L4_2 ~= nil then
        L4_2 = L3_2.UserObjectData
        L6_2 = L4_2
        L5_2 = L4_2.set_selected
        L7_2 = false
        L5_2(L6_2, L7_2)
        A0_2._cur_selected_index = nil
      end
    end
  end
  L3_2 = A1_2.UserObjectData
  if L3_2 ~= nil then
    L3_2 = A1_2.UserObjectData
    L5_2 = L3_2
    L4_2 = L3_2.set_selected
    L6_2 = true
    L4_2(L5_2, L6_2)
    A0_2._cur_selected_index = L2_2
    L5_2 = A0_2
    L4_2 = A0_2.save_navigation_target
    L7_2 = L3_2
    L6_2 = L3_2.get_first_selected_object
    L6_2, L7_2 = L6_2(L7_2)
    L4_2(L5_2, L6_2, L7_2)
  end
  L4_2 = A0_2
  L3_2 = A0_2._refresh_detail_panel
  L3_2(L4_2)
  L4_2 = A0_2
  L3_2 = A0_2._set_surface_seen
  L5_2 = L2_2
  L3_2(L4_2, L5_2)
end
L0_1._on_surface_item_click = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = G
  L1_2 = L1_2.UIManager
  L1_2 = L1_2.load_and_show
  L2_2 = "Ui.RogueDLC.RogueNous.DiceBuild.RogueNousDiceSurfaceFilterDialog"
  L3_2 = A0_2._dice_surface_data_items
  L4_2 = {}
  L5_2 = A0_2._filter
  L4_2[1] = L5_2
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  L3_2 = L1_2
  L2_2 = L1_2.set_finish_filter_callback
  L4_2 = A0_2._on_filter_changed
  L5_2 = A0_2
  L2_2(L3_2, L4_2, L5_2)
end
L0_1._on_btn_filter_click = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2
  A0_2._shown_dice_surface_data_items = A1_2
  A0_2._cur_selected_index = 0
  L3_2 = A0_2
  L2_2 = A0_2._refresh_surface_list
  L2_2(L3_2)
  L3_2 = A0_2
  L2_2 = A0_2._refresh_btn_filter
  L2_2(L3_2)
  L3_2 = A0_2
  L2_2 = A0_2._refresh_detail_panel
  L2_2(L3_2)
  L3_2 = A0_2
  L2_2 = A0_2._init_ui_navigation
  L2_2(L3_2)
end
L0_1._on_filter_changed = L1_1
function L1_1(A0_2)
  local L1_2
  L1_2 = G
  L1_2 = L1_2.RogueNousUtils
  L1_2 = L1_2.show_dice_surface_collection_reward_dialog
  L1_2()
end
L0_1._on_btn_reward_click = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.GlobalVars
  L1_2 = L1_2.s_ModuleManager
  L1_2 = L1_2.ChessRogueModule
  L1_2 = L1_2.ChessRogueData
  L2_2 = L1_2.DiceInfo
  L2_2 = L2_2.RogueNousDiceData
  L2_2 = L2_2.SurfaceDict
  L3_2 = G
  L3_2 = L3_2.Utils
  L3_2 = L3_2.create_lua_table_from_cs_enumerable
  L4_2 = L2_2.Values
  L3_2 = L3_2(L4_2)
  A0_2._dice_surface_data_items = L3_2
  L3_2 = table
  L3_2 = L3_2.sort
  L4_2 = A0_2._dice_surface_data_items
  function L5_2(A0_3, A1_3)
    local L2_3, L3_3
    L2_3 = A0_3.IsUnlocked
    L3_3 = A1_3.IsUnlocked
    if L2_3 ~= L3_3 then
      L2_3 = A0_3.IsUnlocked
      return L2_3
    end
    L2_3 = A0_3.Rarity
    L3_3 = A1_3.Rarity
    if L2_3 ~= L3_3 then
      L2_3 = A0_3.Rarity
      L3_3 = A1_3.Rarity
      L2_3 = L2_3 > L3_3
      return L2_3
    end
    L2_3 = A0_3.Sort
    L3_3 = A1_3.Sort
    L2_3 = L2_3 < L3_3
    return L2_3
  end
  L3_2(L4_2, L5_2)
  L3_2 = A0_2._dice_surface_data_items
  A0_2._shown_dice_surface_data_items = L3_2
  A0_2._unlocked_num = 0
  L3_2 = pairs
  L4_2 = A0_2._dice_surface_data_items
  L3_2, L4_2, L5_2 = L3_2(L4_2)
  for L6_2, L7_2 in L3_2, L4_2, L5_2 do
    L8_2 = L7_2.IsUnlocked
    if L8_2 then
      L8_2 = A0_2._unlocked_num
      L8_2 = L8_2 + 1
      A0_2._unlocked_num = L8_2
    end
  end
end
L0_1._prepare_data = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.txt_unlocked_num
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetText
  L3_2 = A0_2._unlocked_num
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.txt_total_num
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetText
  L3_2 = A0_2._dice_surface_data_items
  L3_2 = #L3_2
  L1_2(L2_2, L3_2)
end
L0_1._setup_unlocked_num = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2
  L1_2 = G
  L1_2 = L1_2.RogueNousUtils
  L1_2 = L1_2.get_dice_surface_collection_reward_quest_ids
  L1_2 = L1_2()
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.Client
  L2_2 = L2_2.GlobalVars
  L2_2 = L2_2.s_ModuleManager
  L2_2 = L2_2.QuestModule
  L3_2 = false
  L4_2 = pairs
  L5_2 = L1_2
  L4_2, L5_2, L6_2 = L4_2(L5_2)
  for L7_2, L8_2 in L4_2, L5_2, L6_2 do
    L10_2 = L2_2
    L9_2 = L2_2.TryGetQuestData
    L11_2 = L8_2
    L9_2 = L9_2(L10_2, L11_2)
    if L9_2 ~= nil then
      L10_2 = L9_2.Status
      L11_2 = CS
      L11_2 = L11_2.LEOGBBOPKKO
      L11_2 = L11_2.JKFPIINHGPD
      if L10_2 == L11_2 then
        L3_2 = true
        break
      end
    end
  end
  L4_2 = A0_2._binder
  L4_2 = L4_2.btn_reward
  L5_2 = L4_2
  L4_2 = L4_2.SafeSetActive
  L6_2 = not L3_2
  L4_2(L5_2, L6_2)
  L4_2 = A0_2._binder
  L4_2 = L4_2.btn_reward_highlighted
  L5_2 = L4_2
  L4_2 = L4_2.SafeSetActive
  L6_2 = L3_2
  L4_2(L5_2, L6_2)
end
L0_1._refresh_btn_reward = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.surface_list
  L2_2 = L1_2
  L1_2 = L1_2.SetListItemCount
  L3_2 = A0_2._shown_dice_surface_data_items
  L3_2 = #L3_2
  L4_2 = true
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.surface_list
  L2_2 = L1_2
  L1_2 = L1_2.RefreshAllShownItem
  L1_2(L2_2)
end
L0_1._refresh_surface_list = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._filter
  L2_2 = L1_2
  L1_2 = L1_2.get_active_filter_table
  L1_2 = L1_2(L2_2)
  L1_2 = #L1_2
  L1_2 = 0 < L1_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_filter_off
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = not L1_2
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_filter_on
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = L1_2
  L2_2(L3_2, L4_2)
  if L1_2 then
    L2_2 = A0_2._binder
    L2_2 = L2_2.txt_btn_filter
    L3_2 = L2_2
    L2_2 = L2_2.SafeSetTextID
    L4_2 = "UIText_RogueNous_SurfaceEditor_Filter_ING_Button"
    L2_2(L3_2, L4_2)
  else
    L2_2 = A0_2._binder
    L2_2 = L2_2.txt_btn_filter
    L3_2 = L2_2
    L2_2 = L2_2.SafeSetTextID
    L4_2 = "UIText_RogueNous_SurfaceEditor_Filter_Button"
    L2_2(L3_2, L4_2)
  end
end
L0_1._refresh_btn_filter = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._shown_dice_surface_data_items
  L2_2 = A0_2._cur_selected_index
  L2_2 = L2_2 + 1
  L1_2 = L1_2[L2_2]
  if L1_2 == nil then
    L2_2 = A0_2._binder
    L2_2 = L2_2.detail_panel
    L3_2 = L2_2
    L2_2 = L2_2.safe_set_active
    L4_2 = false
    L2_2(L3_2, L4_2)
    return
  end
  L2_2 = A0_2._binder
  L2_2 = L2_2.detail_panel
  L3_2 = L2_2
  L2_2 = L2_2.safe_set_active
  L4_2 = true
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.detail_panel
  L3_2 = L2_2
  L2_2 = L2_2.setup_view
  L4_2 = L1_2
  L2_2(L3_2, L4_2)
  L2_2 = G
  L2_2 = L2_2.Utils
  L2_2 = L2_2.invoke_next_frame_callback
  L3_2 = A0_2._refresh_short_cut_hint_panel
  L4_2 = A0_2
  L2_2(L3_2, L4_2)
end
L0_1._refresh_detail_panel = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = A0_2._shown_dice_surface_data_items
  L3_2 = A1_2 + 1
  L2_2 = L2_2[L3_2]
  if L2_2 == nil then
    return
  end
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.Client
  L3_2 = L3_2.Prefs
  L3_2 = L3_2.User
  L3_2 = L3_2.RogueNousSeenDiceSurfaceRedDot
  L4_2 = L3_2
  L3_2 = L3_2.Add
  L5_2 = L2_2.SurfaceID
  L3_2(L4_2, L5_2)
  L4_2 = L2_2
  L3_2 = L2_2.UpdateNewStatus
  L3_2(L4_2)
end
L0_1._set_surface_seen = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2
  L2_2 = A0_2
  L1_2 = A0_2._on_enter_zoom
  L3_2 = NavigationZoneType
  L3_2 = L3_2.Zone1
  L1_2(L2_2, L3_2)
end
L0_1._init_ui_navigation = L1_1
function L1_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2
  L3_2 = NavigationZoneType
  L3_2 = L3_2.Zone1
  if A1_2 == L3_2 then
    L3_2 = A0_2._cur_selected_index
    if not L3_2 then
      L3_2 = 0
    end
    L4_2 = A0_2._binder
    L4_2 = L4_2.surface_list
    L5_2 = L4_2
    L4_2 = L4_2.GetShownItemByItemIndex
    L6_2 = L3_2
    L4_2 = L4_2(L5_2, L6_2)
    if L4_2 == nil then
      L4_2 = A0_2._binder
      L4_2 = L4_2.surface_list
      L5_2 = L4_2
      L4_2 = L4_2.MovePanelToItemByIndex
      L6_2 = L3_2
      L4_2(L5_2, L6_2)
    end
    L4_2 = CS
    L4_2 = L4_2.RPG
    L4_2 = L4_2.Client
    L4_2 = L4_2.CoroutineUtils
    L4_2 = L4_2.InvokeNextFrame
    function L5_2()
      local L0_3, L1_3, L2_3, L3_3
      L0_3 = A0_2
      L1_3 = L0_3
      L0_3 = L0_3.set_navigation_target
      L2_3 = A0_2
      L3_3 = L2_3
      L2_3 = L2_3.get_first_selected_object
      L2_3, L3_3 = L2_3(L3_3)
      L0_3(L1_3, L2_3, L3_3)
    end
    L4_2(L5_2)
  end
end
L0_1._on_enter_zoom = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.surface_list
  L2_2 = L1_2
  L1_2 = L1_2.GetShownItemByItemIndex
  L3_2 = A0_2._cur_selected_index
  if not L3_2 then
    L3_2 = 0
  end
  L1_2 = L1_2(L2_2, L3_2)
  if L1_2 ~= nil then
    L2_2 = L1_2.UserObjectData
    if L2_2 ~= nil then
      L2_2 = L1_2.UserObjectData
      L3_2 = L2_2
      L2_2 = L2_2.get_first_selected_object
      return L2_2(L3_2)
    end
  end
  L2_2 = nil
  return L2_2
end
L0_1.get_first_selected_object = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.detail_panel
  L2_2 = L1_2
  L1_2 = L1_2.get_desc_scroll_rect
  L1_2 = L1_2(L2_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.detail_panel
  L3_2 = L2_2
  L2_2 = L2_2.is_extra_effect_available
  L2_2 = L2_2(L3_2)
  if L2_2 then
    L4_2 = A0_2
    L3_2 = A0_2.setup_short_cut_hint_panel
    L5_2 = {}
    L6_2 = "ActionGroup_Scroll"
    L7_2 = "ActionGroup_BuffDetail"
    L8_2 = "ActionGroup_Return"
    L5_2[1] = L6_2
    L5_2[2] = L7_2
    L5_2[3] = L8_2
    L6_2 = L1_2
    L3_2(L4_2, L5_2, L6_2)
  else
    L4_2 = A0_2
    L3_2 = A0_2.setup_short_cut_hint_panel
    L5_2 = {}
    L6_2 = "ActionGroup_Scroll"
    L7_2 = "ActionGroup_Return"
    L5_2[1] = L6_2
    L5_2[2] = L7_2
    L6_2 = L1_2
    L3_2(L4_2, L5_2, L6_2)
  end
end
L0_1._refresh_short_cut_hint_panel = L1_1
return L0_1
