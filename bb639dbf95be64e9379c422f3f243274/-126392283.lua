local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1
L0_1 = require
L1_1 = "Ui.ActivityMonopoly.MiniGamePage.ActivityMonopolyMiniGameGachaCPageBinder"
L0_1(L1_1)
L0_1 = CS
L0_1 = L0_1.RPG
L0_1 = L0_1.Client
L0_1 = L0_1.GlobalVars
L0_1 = L0_1.s_ModuleManager
L0_1 = L0_1.MonopolyModule
L1_1 = "MonopolyMiniGameGachaCPage_Show"
L2_1 = "MonopolyMiniGameGachaCPage_ResultFinal"
L3_1 = G
L3_1 = L3_1.Class
L4_1 = "ActivityMonopolyMiniGameGachaCPage"
L5_1 = G
L5_1 = L5_1.UIController
L3_1 = L3_1(L4_1, L5_1)
function L4_1(A0_2)
  local L1_2, L2_2, L3_2
  L2_2 = A0_2
  L1_2 = A0_2._create_binder
  L3_2 = G
  L3_2 = L3_2.ActivityMonopolyMiniGameGachaCPageBinder
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
L3_1.ctor = L4_1
function L4_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  A0_2._game_data = A1_2
  L2_2 = G
  L2_2 = L2_2.Utils
  L2_2 = L2_2.create_lua_table_from_cs_list
  L3_2 = A0_2._game_data
  L3_2 = L3_2.ResourceIDList
  L2_2 = L2_2(L3_2)
  A0_2._all_resource_ids = L2_2
  L2_2 = G
  L2_2 = L2_2.Utils
  L2_2 = L2_2.create_lua_table_from_cs_list
  L3_2 = A0_2._game_data
  L4_2 = L3_2
  L3_2 = L3_2.GetOriginResourceIDs
  L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2 = L3_2(L4_2)
  L2_2 = L2_2(L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2)
  A0_2._origin_resource_ids = L2_2
  L2_2 = {}
  A0_2._origin_empty_indexs = L2_2
  L2_2 = ipairs
  L3_2 = A0_2._origin_resource_ids
  L2_2, L3_2, L4_2 = L2_2(L3_2)
  for L5_2, L6_2 in L2_2, L3_2, L4_2 do
    if L6_2 == 0 then
      L7_2 = table
      L7_2 = L7_2.insert
      L8_2 = A0_2._origin_empty_indexs
      L9_2 = L5_2
      L7_2(L8_2, L9_2)
    end
  end
  L2_2 = G
  L2_2 = L2_2.Utils
  L2_2 = L2_2.shallow_copy
  L3_2 = A0_2._origin_resource_ids
  L2_2 = L2_2(L3_2)
  A0_2._final_resource_ids = L2_2
end
L3_1.init = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.panel_bet
  L2_2 = L1_2
  L1_2 = L1_2.register_start_callback
  L3_2 = A0_2._on_btn_start
  L4_2 = A0_2
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.UIMonopolyGameGachaResult
  L4_2 = A0_2._on_monopoly_gacha_result
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.UIMonopolyGameSettleResult
  L4_2 = A0_2._on_game_settle
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_count_down_timer
  function L3_2()
    local L0_3, L1_3
    L0_3 = A0_2._shown_timer
    if L0_3 ~= nil then
      L0_3 = A0_2._shown_timer
      L1_3 = L0_3
      L0_3 = L0_3.reset
      L0_3(L1_3)
      L0_3 = A0_2._shown_timer
      L1_3 = L0_3
      L0_3 = L0_3.stop
      L0_3(L1_3)
    end
    L0_3 = A0_2._binder
    if L0_3 == nil then
      return
    end
    L0_3 = A0_2
    L1_3 = L0_3
    L0_3 = L0_3._on_result_shown
    L0_3(L1_3)
  end
  L4_2 = A0_2._binder
  L4_2 = L4_2.anim_root
  L5_2 = L4_2
  L4_2 = L4_2.GetClip
  L6_2 = L1_1
  L4_2 = L4_2(L5_2, L6_2)
  L4_2 = L4_2.length
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2._shown_timer = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._add_count_down_timer
  function L3_2()
    local L0_3, L1_3
    L0_3 = A0_2._ratio_timer
    if L0_3 ~= nil then
      L0_3 = A0_2._ratio_timer
      L1_3 = L0_3
      L0_3 = L0_3.reset
      L0_3(L1_3)
      L0_3 = A0_2._ratio_timer
      L1_3 = L0_3
      L0_3 = L0_3.stop
      L0_3(L1_3)
    end
    L0_3 = A0_2._binder
    if L0_3 == nil then
      return
    end
    L0_3 = A0_2
    L1_3 = L0_3
    L0_3 = L0_3._on_ratio_finished
    L0_3(L1_3)
  end
  L4_2 = A0_2._binder
  L4_2 = L4_2.anim_root
  L5_2 = L4_2
  L4_2 = L4_2.GetClip
  L6_2 = L2_1
  L4_2 = L4_2(L5_2, L6_2)
  L4_2 = L4_2.length
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2._ratio_timer = L1_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.panel_result
  L2_2 = L1_2
  L1_2 = L1_2.show_ratio
  L3_2 = false
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.panel_top_bar
  L2_2 = L1_2
  L1_2 = L1_2.setup_view
  L3_2 = "ActivityMonopolyMainPage"
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.panel_top_bar
  L2_2 = L1_2
  L1_2 = L1_2.enable_auto_refresh
  L3_2 = false
  L1_2(L2_2, L3_2)
end
L3_1._on_load = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L2_2 = A0_2
  L1_2 = A0_2._setup_cheque_origin_view
  L1_2(L2_2)
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
  L1_2 = L1_2.panel_slots
  L2_2 = L1_2
  L1_2 = L1_2.setup_view
  L3_2 = A0_2._all_resource_ids
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.panel_result
  L2_2 = L1_2
  L1_2 = L1_2.setup_item_view
  L1_2(L2_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.panel_buff
  L2_2 = L1_2
  L1_2 = L1_2.setup_view
  L1_2(L2_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.panel_buff
  L2_2 = L1_2
  L1_2 = L1_2.enable_unlock_refresh
  L3_2 = false
  L1_2(L2_2, L3_2)
end
L3_1._setup_view = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L1_2 = 1
  L2_2 = ipairs
  L3_2 = A0_2._origin_resource_ids
  L2_2, L3_2, L4_2 = L2_2(L3_2)
  for L5_2, L6_2 in L2_2, L3_2, L4_2 do
    if L6_2 ~= 0 then
      L7_2 = CS
      L7_2 = L7_2.RPG
      L7_2 = L7_2.GameCore
      L7_2 = L7_2.MonopolyGameResourceExcelTable
      L7_2 = L7_2.GetData
      L8_2 = L6_2
      L7_2 = L7_2(L8_2)
      L8_2 = A0_2._binder
      L8_2 = L8_2.txts_origin_num
      L8_2 = L8_2[L1_2]
      L9_2 = L8_2
      L8_2 = L8_2.SafeSetText
      L10_2 = L7_2.ResourceNum
      L8_2(L9_2, L10_2)
      L1_2 = L1_2 + 1
    end
  end
end
L3_1._setup_cheque_origin_view = L4_1
function L4_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L2_2 = 0
  L3_2 = ipairs
  L4_2 = A1_2
  L3_2, L4_2, L5_2 = L3_2(L4_2)
  for L6_2, L7_2 in L3_2, L4_2, L5_2 do
    L8_2 = CS
    L8_2 = L8_2.RPG
    L8_2 = L8_2.GameCore
    L8_2 = L8_2.MonopolyGameResourceExcelTable
    L8_2 = L8_2.GetData
    L9_2 = L7_2
    L8_2 = L8_2(L9_2)
    L9_2 = L2_2 * 10
    L10_2 = L8_2.ResourceNum
    L2_2 = L9_2 + L10_2
  end
  return L2_2
end
L3_1._get_value = L4_1
function L4_1(A0_2)
  local L1_2
end
L3_1._in_control_exit_click = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2
  L2_2 = A0_2
  L1_2 = A0_2.show_full_screen_block_for_packet
  L3_2 = CS
  L3_2 = L3_2.NIJNBICAPPA
  L3_2 = L3_2.DGONNJEBHPP
  L1_2(L2_2, L3_2)
  L1_2 = L0_1
  L2_2 = L1_2
  L1_2 = L1_2.SendMonopolyGameGachaCsReq
  L1_2(L2_2)
end
L3_1._on_btn_start = L4_1
function L4_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.panel_bet
  L3_2 = L2_2
  L2_2 = L2_2.set_bet_btn_interactable
  L4_2 = false
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.panel_bet
  L3_2 = L2_2
  L2_2 = L2_2.set_start_btn_active
  L4_2 = false
  L2_2(L3_2, L4_2)
  L2_2 = G
  L2_2 = L2_2.Utils
  L2_2 = L2_2.create_lua_table_from_cs_list
  L3_2 = A1_2
  L2_2 = L2_2(L3_2)
  L3_2 = G
  L3_2 = L3_2.Utils
  L3_2 = L3_2.create_lua_table_from_cs_list
  L4_2 = A0_2._game_data
  L5_2 = L4_2
  L4_2 = L4_2.GetResultResourceIDs
  L6_2 = L2_2
  L4_2, L5_2, L6_2, L7_2, L8_2, L9_2 = L4_2(L5_2, L6_2)
  L3_2 = L3_2(L4_2, L5_2, L6_2, L7_2, L8_2, L9_2)
  A0_2._got_resource_ids = L3_2
  L3_2 = ipairs
  L4_2 = A0_2._got_resource_ids
  L3_2, L4_2, L5_2 = L3_2(L4_2)
  for L6_2, L7_2 in L3_2, L4_2, L5_2 do
    L8_2 = A0_2._origin_empty_indexs
    L8_2 = L8_2[L6_2]
    L9_2 = A0_2._final_resource_ids
    L9_2[L8_2] = L7_2
  end
  L4_2 = A0_2
  L3_2 = A0_2._get_value
  L5_2 = A0_2._final_resource_ids
  L3_2 = L3_2(L4_2, L5_2)
  A0_2._base_value = L3_2
  L3_2 = A0_2._base_value
  L4_2 = A0_2._binder
  L4_2 = L4_2.panel_bet
  L5_2 = L4_2
  L4_2 = L4_2.get_ratio
  L4_2 = L4_2(L5_2)
  L3_2 = L3_2 * L4_2
  A0_2._post_ratio_value = L3_2
  L3_2 = A0_2._binder
  L3_2 = L3_2.panel_slots
  L4_2 = L3_2
  L3_2 = L3_2.refresh_view_by_result
  L5_2 = A0_2._got_resource_ids
  L3_2(L4_2, L5_2)
  L3_2 = A0_2._binder
  L3_2 = L3_2.panel_result
  L4_2 = L3_2
  L3_2 = L3_2.setup_value_view
  L5_2 = A0_2._base_value
  L6_2 = A0_2._post_ratio_value
  L3_2(L4_2, L5_2, L6_2)
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.Client
  L3_2 = L3_2.UIAnimationUtils
  L3_2 = L3_2.PlayFromBegin
  L4_2 = A0_2._binder
  L4_2 = L4_2.anim_root
  L5_2 = L1_1
  L3_2(L4_2, L5_2)
  L3_2 = A0_2._shown_timer
  L4_2 = L3_2
  L3_2 = L3_2.reset
  L3_2(L4_2)
  L3_2 = A0_2._shown_timer
  L4_2 = L3_2
  L3_2 = L3_2.start
  L3_2(L4_2)
end
L3_1._on_monopoly_gacha_result = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.panel_bet
  L2_2 = L1_2
  L1_2 = L1_2.get_ratio
  L1_2 = L1_2(L2_2)
  if 1 < L1_2 then
    L2_2 = CS
    L2_2 = L2_2.RPG
    L2_2 = L2_2.Client
    L2_2 = L2_2.UIAnimationUtils
    L2_2 = L2_2.PlayFromBegin
    L3_2 = A0_2._binder
    L3_2 = L3_2.anim_root
    L4_2 = L2_1
    L2_2(L3_2, L4_2)
    L2_2 = A0_2._ratio_timer
    L3_2 = L2_2
    L2_2 = L2_2.reset
    L2_2(L3_2)
    L2_2 = A0_2._ratio_timer
    L3_2 = L2_2
    L2_2 = L2_2.start
    L2_2(L3_2)
  else
    L3_2 = A0_2
    L2_2 = A0_2._on_ratio_finished
    L2_2(L3_2)
  end
end
L3_1._on_result_shown = L4_1
function L4_1(A0_2)
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
L3_1._on_ratio_finished = L4_1
function L4_1(A0_2, A1_2)
  A0_2._reward_param = A1_2
end
L3_1._on_game_settle = L4_1
function L4_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2._refresh_short_cut_hint
  L1_2(L2_2)
end
L3_1._on_enter_special_zoom = L4_1
function L4_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2._refresh_short_cut_hint
  L1_2(L2_2)
end
L3_1._on_leave_special_zoom = L4_1
function L4_1(A0_2)
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
L3_1._refresh_short_cut_hint = L4_1
return L3_1
