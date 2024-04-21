local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1, L6_1, L7_1
L0_1 = require
L1_1 = "Ui.ActivityMonopoly.MiniGamePage.ActivityMonopolyMiniGameGachaAPageBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.ActivityMonopoly.MiniGamePage.Components.ActivityMonopolyMiniGameGachaIconPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.ActivityMonopoly.MiniGamePage.Components.ActivityMonopolyMiniGameGachaIconPanelBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.ActivityMonopoly.ActivityMonopolyUtils"
L0_1(L1_1)
L0_1 = CS
L0_1 = L0_1.RPG
L0_1 = L0_1.Client
L0_1 = L0_1.GlobalVars
L0_1 = L0_1.s_ModuleManager
L0_1 = L0_1.MonopolyModule
L1_1 = "MonopolyMiniGameGachaAPage_Show"
L2_1 = "MonopolyMiniGameGachaAPage_ResultFinal"
L3_1 = "MonopolyMiniGameGachaDiagramActiveHint"
L4_1 = 16
L5_1 = G
L5_1 = L5_1.Class
L6_1 = "ActivityMonopolyMiniGameGachaAPage"
L7_1 = G
L7_1 = L7_1.UIController
L5_1 = L5_1(L6_1, L7_1)
function L6_1(A0_2)
  local L1_2, L2_2, L3_2
  L2_2 = A0_2
  L1_2 = A0_2._create_binder
  L3_2 = G
  L3_2 = L3_2.ActivityMonopolyMiniGameGachaAPageBinder
  L1_2 = L1_2(L2_2, L3_2)
  A0_2._binder = L1_2
  L1_2 = G
  L1_2 = L1_2.ImportCsToLua
  L1_2 = L1_2.CS_RPG_Client_UILayer_Page
  A0_2._ui_layer = L1_2
  A0_2._pause_game = true
  L1_2 = {}
  L2_2 = NavigationZoneType
  L2_2 = L2_2.Zone1
  L1_2[1] = L2_2
  A0_2.listen_zooms = L1_2
end
L5_1.ctor = L6_1
function L6_1(A0_2, A1_2)
  local L2_2, L3_2
  L2_2 = A1_2.GameType
  A0_2._game_type = L2_2
  A0_2._game_data = A1_2
  L2_2 = G
  L2_2 = L2_2.Utils
  L2_2 = L2_2.create_lua_table_from_cs_list
  L3_2 = A0_2._game_data
  L3_2 = L3_2.ResourceIDList
  L2_2 = L2_2(L3_2)
  A0_2._resource_id_list = L2_2
  L3_2 = A0_2
  L2_2 = A0_2._create_random_resource_sequence
  L2_2(L3_2)
end
L5_1.init = L6_1
function L6_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.panel_bet
  L2_2 = L1_2
  L1_2 = L1_2.register_start_callback
  L3_2 = A0_2._on_btn_go
  L4_2 = A0_2
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.scroll_view
  L2_2 = L1_2
  L1_2 = L1_2.SafeInitListView
  L3_2 = 0
  L4_2 = A0_2._on_item_change
  L5_2 = nil
  L6_2 = A0_2
  L1_2(L2_2, L3_2, L4_2, L5_2, L6_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.panel_result
  L2_2 = L1_2
  L1_2 = L1_2.safe_set_active
  L3_2 = false
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.UIAnimationEvent
  L4_2 = A0_2._on_ui_animation_event
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.anim_gacha_scroll_root
  L2_2 = L1_2
  L1_2 = L1_2.GetClip
  L3_2 = L1_1
  L1_2 = L1_2(L2_2, L3_2)
  L1_2 = L1_2.length
  L3_2 = A0_2
  L2_2 = A0_2._add_count_down_timer
  L4_2 = A0_2._on_result_anim_finish
  L5_2 = L1_2
  L2_2 = L2_2(L3_2, L4_2, L5_2)
  A0_2._result_anim_timer = L2_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.anim_gacha_scroll_root
  L3_2 = L2_2
  L2_2 = L2_2.GetClip
  L4_2 = L2_1
  L2_2 = L2_2(L3_2, L4_2)
  L1_2 = L2_2.length
  L3_2 = A0_2
  L2_2 = A0_2._add_count_down_timer
  L4_2 = A0_2._on_ratio_anim_finish
  L5_2 = L1_2
  L2_2 = L2_2(L3_2, L4_2, L5_2)
  A0_2._ratio_anim_timer = L2_2
end
L5_1._on_load = L6_1
function L6_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.panel_bet
  L2_2 = L1_2
  L1_2 = L1_2.setup_view
  L3_2 = L0_1.GameInfo
  L3_2 = L3_2.Ratio
  L4_2 = A0_2._game_data
  L4_2 = L4_2.RaiseCurveID
  L5_2 = A0_2._game_data
  L5_2 = L5_2.BaseRaiseMaxValue
  L1_2(L2_2, L3_2, L4_2, L5_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.panel_buff_overview
  L2_2 = L1_2
  L1_2 = L1_2.setup_view
  L1_2(L2_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.panel_buff_overview
  L2_2 = L1_2
  L1_2 = L1_2.enable_unlock_refresh
  L3_2 = false
  L1_2(L2_2, L3_2)
  L1_2 = 1
  L2_2 = A0_2._resource_id_list
  L2_2 = #L2_2
  L3_2 = 1
  for L4_2 = L1_2, L2_2, L3_2 do
    L5_2 = A0_2._game_data
    L6_2 = L5_2
    L5_2 = L5_2.GetResourceValue
    L7_2 = A0_2._resource_id_list
    L7_2 = L7_2[L4_2]
    L5_2 = L5_2(L6_2, L7_2)
    L6_2 = A0_2._binder
    L6_2 = L6_2.panel_bingo_reward_rank
    L6_2 = L6_2[L4_2]
    L7_2 = L6_2
    L6_2 = L6_2.setup_view
    L8_2 = A0_2._resource_id_list
    L8_2 = L8_2[L4_2]
    L9_2 = L5_2
    L6_2(L7_2, L8_2, L9_2)
  end
  L2_2 = A0_2
  L1_2 = A0_2._refresh_scroll_view
  L1_2(L2_2)
  L1_2 = G
  L1_2 = L1_2.ResBarAreaFactory
  L1_2 = L1_2.CreateResBarArea
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_res_bar
  L3_2 = "ActivityMonopolyMainPage"
  L4_2 = A0_2
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2._panel_res_bar = L1_2
end
L5_1._setup_view = L6_1
function L6_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2._remove_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.UIMonopolyGameSettleResult
  L4_2 = A0_2._on_game_settle
  L1_2(L2_2, L3_2, L4_2)
end
L5_1._on_dispose = L6_1
function L6_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.UIMonopolyGameGachaResult
  L4_2 = A0_2._on_gacha_result
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.UIMonopolyGameSettleResult
  L4_2 = A0_2._on_game_settle
  L1_2(L2_2, L3_2, L4_2)
end
L5_1._add_handlers = L6_1
function L6_1(A0_2)
  local L1_2
  return
end
L5_1._in_control_exit_click = L6_1
function L6_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.scroll_view
  L2_2 = L1_2
  L1_2 = L1_2.GetShownItemByItemIndex
  L3_2 = L4_1
  L3_2 = L3_2 - 2
  L1_2 = L1_2(L2_2, L3_2)
  if L1_2 ~= nil then
    L2_2 = L1_2.UserObjectData
    L4_2 = L2_2
    L3_2 = L2_2.play_result
    L3_2(L4_2)
  end
end
L5_1._on_ui_animation_event = L6_1
function L6_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.panel_bet
  L2_2 = L1_2
  L1_2 = L1_2.set_bet_btn_interactable
  L3_2 = false
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.panel_bet
  L2_2 = L1_2
  L1_2 = L1_2.set_start_btn_active
  L3_2 = false
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._panel_res_bar
  L2_2 = L1_2
  L1_2 = L1_2.safe_set_active
  L3_2 = false
  L1_2(L2_2, L3_2)
  L1_2 = L0_1
  L2_2 = L1_2
  L1_2 = L1_2.SendMonopolyGameGachaCsReq
  L1_2(L2_2)
end
L5_1._on_btn_go = L6_1
function L6_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L4_2 = A1_2
  L3_2 = A1_2.NewListViewItem
  L5_2 = 0
  L3_2 = L3_2(L4_2, L5_2)
  L4_2 = L3_2.UserObjectData
  if L4_2 == nil then
    L6_2 = A0_2
    L5_2 = A0_2.create_panel
    L7_2 = G
    L7_2 = L7_2.ActivityMonopolyMiniGameGachaIconPanel
    L8_2 = G
    L8_2 = L8_2.ActivityMonopolyMiniGameGachaIconPanelBinder
    L5_2 = L5_2(L6_2, L7_2, L8_2)
    L4_2 = L5_2
    L6_2 = L4_2
    L5_2 = L4_2.bind
    L7_2 = L3_2.transform
    L5_2(L6_2, L7_2)
    L3_2.UserObjectData = L4_2
  end
  L6_2 = L4_2
  L5_2 = L4_2.setup_view
  L7_2 = A0_2._random_resource_id
  L8_2 = A2_2 + 1
  L7_2 = L7_2[L8_2]
  L5_2(L6_2, L7_2)
  return L3_2
end
L5_1._on_item_change = L6_1
function L6_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L2_2 = G
  L2_2 = L2_2.Utils
  L2_2 = L2_2.create_lua_table_from_cs_list
  L3_2 = A1_2
  L2_2 = L2_2(L3_2)
  L3_2 = A0_2._game_data
  L4_2 = L3_2
  L3_2 = L3_2.GetResourceIDByResult
  L5_2 = L2_2[1]
  L3_2 = L3_2(L4_2, L5_2)
  A0_2._resource_id = L3_2
  L3_2 = A0_2._random_resource_id
  L4_2 = L4_1
  L4_2 = L4_2 - 1
  L5_2 = A0_2._resource_id
  L3_2[L4_2] = L5_2
  L4_2 = A0_2
  L3_2 = A0_2._refresh_scroll_view
  L3_2(L4_2)
  L3_2 = A0_2._binder
  L3_2 = L3_2.panel_result
  L4_2 = L3_2
  L3_2 = L3_2.safe_set_active
  L5_2 = true
  L3_2(L4_2, L5_2)
  L3_2 = A0_2._binder
  L3_2 = L3_2.panel_result
  L4_2 = L3_2
  L3_2 = L3_2.setup_view
  L5_2 = A0_2._game_data
  L6_2 = L5_2
  L5_2 = L5_2.GetResourceValue
  L7_2 = A0_2._resource_id
  L5_2 = L5_2(L6_2, L7_2)
  L6_2 = A0_2._binder
  L6_2 = L6_2.panel_bet
  L7_2 = L6_2
  L6_2 = L6_2.get_ratio
  L6_2, L7_2 = L6_2(L7_2)
  L3_2(L4_2, L5_2, L6_2, L7_2)
  L4_2 = A0_2
  L3_2 = A0_2._active_reward_rank
  L3_2(L4_2)
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.Client
  L3_2 = L3_2.UIAnimationUtils
  L3_2 = L3_2.PlayFromBegin
  L4_2 = A0_2._binder
  L4_2 = L4_2.anim_gacha_scroll_root
  L5_2 = L1_1
  L3_2(L4_2, L5_2)
  L3_2 = A0_2._result_anim_timer
  L4_2 = L3_2
  L3_2 = L3_2.reset
  L3_2(L4_2)
  L3_2 = A0_2._result_anim_timer
  L4_2 = L3_2
  L3_2 = L3_2.start
  L3_2(L4_2)
end
L5_1._on_gacha_result = L6_1
function L6_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._result_anim_timer
  L2_2 = L1_2
  L1_2 = L1_2.stop
  L1_2(L2_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.panel_bet
  L2_2 = L1_2
  L1_2 = L1_2.get_ratio
  L1_2 = L1_2(L2_2)
  if L1_2 ~= 1 then
    L1_2 = CS
    L1_2 = L1_2.RPG
    L1_2 = L1_2.Client
    L1_2 = L1_2.UIAnimationUtils
    L1_2 = L1_2.PlayFromBegin
    L2_2 = A0_2._binder
    L2_2 = L2_2.anim_gacha_scroll_root
    L3_2 = L2_1
    L1_2(L2_2, L3_2)
    L1_2 = A0_2._ratio_anim_timer
    L2_2 = L1_2
    L1_2 = L1_2.reset
    L1_2(L2_2)
    L1_2 = A0_2._ratio_anim_timer
    L2_2 = L1_2
    L1_2 = L1_2.start
    L1_2(L2_2)
  else
    L2_2 = A0_2
    L1_2 = A0_2._show_finish_reward_dialog
    L1_2(L2_2)
  end
end
L5_1._on_result_anim_finish = L6_1
function L6_1(A0_2, A1_2)
  A0_2._reward_param = A1_2
end
L5_1._on_game_settle = L6_1
function L6_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._ratio_anim_timer
  L2_2 = L1_2
  L1_2 = L1_2.stop
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._show_finish_reward_dialog
  L1_2(L2_2)
end
L5_1._on_ratio_anim_finish = L6_1
function L6_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = G
  L1_2 = L1_2.ActivityMonopolyUtils
  L1_2 = L1_2.create_gacha_random_sequence
  L2_2 = L4_1
  L3_2 = A0_2._resource_id_list
  L1_2 = L1_2(L2_2, L3_2)
  A0_2._random_resource_id = L1_2
  L1_2 = A0_2._random_resource_id
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.Client
  L2_2 = L2_2.MonopolyUtils
  L2_2 = L2_2.GetGachaQuestionResourceID
  L2_2 = L2_2()
  L1_2[2] = L2_2
end
L5_1._create_random_resource_sequence = L6_1
function L6_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.scroll_view
  L2_2 = L1_2
  L1_2 = L1_2.SetListItemCount
  L3_2 = A0_2._random_resource_id
  L3_2 = #L3_2
  L4_2 = true
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.scroll_view
  L2_2 = L1_2
  L1_2 = L1_2.RefreshAllShownItem
  L1_2(L2_2)
end
L5_1._refresh_scroll_view = L6_1
function L6_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L1_2 = 1
  L2_2 = A0_2._resource_id_list
  L2_2 = #L2_2
  L3_2 = 1
  for L4_2 = L1_2, L2_2, L3_2 do
    L5_2 = A0_2._resource_id
    L6_2 = A0_2._resource_id_list
    L6_2 = L6_2[L4_2]
    if L5_2 == L6_2 then
      L5_2 = A0_2._binder
      L5_2 = L5_2.panel_bingo_reward_rank
      L5_2 = L5_2[L4_2]
      L6_2 = L5_2
      L5_2 = L5_2.set_rank_active
      L7_2 = L3_1
      L8_2 = false
      L5_2(L6_2, L7_2, L8_2)
      return
    end
  end
end
L5_1._active_reward_rank = L6_1
function L6_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = A0_2._reward_param
  if L1_2 == nil then
    L2_2 = A0_2
    L1_2 = A0_2.exit
    L1_2(L2_2)
    return
  end
  L1_2 = G
  L1_2 = L1_2.UIManager
  L1_2 = L1_2.load_and_show
  L2_2 = "Ui.ActivityMonopoly.MiniGamePage.ActivityMonopolyMiniGameRewardDialog"
  L3_2 = G
  L3_2 = L3_2.Utils
  L3_2 = L3_2.create_lua_table_from_cs_list
  L4_2 = A0_2._reward_param
  L4_2 = L4_2.ItemDisplayDatas
  L3_2 = L3_2(L4_2)
  L4_2 = G
  L4_2 = L4_2.Utils
  L4_2 = L4_2.create_lua_table_from_cs_list
  L5_2 = A0_2._reward_param
  L5_2 = L5_2.ExtraItemDisplayDatas
  L4_2, L5_2 = L4_2(L5_2)
  L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2)
  L3_2 = L1_2
  L2_2 = L1_2.set_exit_callback
  function L4_2()
    local L0_3, L1_3
    L0_3 = A0_2
    L1_3 = L0_3
    L0_3 = L0_3.exit
    L0_3(L1_3)
  end
  L2_2(L3_2, L4_2)
end
L5_1._show_finish_reward_dialog = L6_1
function L6_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2._refresh_short_cut_hint
  L1_2(L2_2)
end
L5_1._on_enter_special_zoom = L6_1
function L6_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2._refresh_short_cut_hint
  L1_2(L2_2)
end
L5_1._on_leave_special_zoom = L6_1
function L6_1(A0_2)
  local L1_2, L2_2, L3_2
  L2_2 = A0_2
  L1_2 = A0_2.is_in_special_zoom
  L1_2 = L1_2(L2_2)
  if L1_2 then
    L2_2 = A0_2
    L1_2 = A0_2.setup_short_cut_hint_panel
    L3_2 = 31
    L1_2(L2_2, L3_2)
    return
  end
  L2_2 = A0_2
  L1_2 = A0_2.enable_default_short_cut_hint
  L3_2 = false
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2.setup_short_cut_hint_panel
  L3_2 = {}
  L1_2(L2_2, L3_2)
end
L5_1._refresh_short_cut_hint = L6_1
return L5_1
