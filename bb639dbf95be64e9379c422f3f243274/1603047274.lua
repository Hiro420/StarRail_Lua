local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1, L6_1, L7_1, L8_1, L9_1, L10_1, L11_1, L12_1
L0_1 = require
L1_1 = "Ui.ActivityMonopoly.MiniGamePage.ActivityMonopolyMiniGameGachaBPageBinder"
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
L1_1 = {}
L2_1 = "MonopolyShowSlot1"
L3_1 = "MonopolyShowSlot2"
L4_1 = "MonopolyShowSlot3"
L1_1[1] = L2_1
L1_1[2] = L3_1
L1_1[3] = L4_1
L2_1 = "MonopolyShowBonus"
L3_1 = "MonopolyMiniGameGachaBPage_Show"
L4_1 = "MonopolyMiniGameGachaBPage_Show_Max"
L5_1 = "MonopolyMiniGameGachaBPage_ResultFinal"
L6_1 = "MonopolyMiniGameGachaBPage_ResultFinal_Max"
L7_1 = "MonopolyMiniGameGacha_ActiveHint"
L8_1 = 0.5
L9_1 = 3
L10_1 = G
L10_1 = L10_1.Class
L11_1 = "ActivityMonopolyMiniGameGachaBPage"
L12_1 = G
L12_1 = L12_1.UIController
L10_1 = L10_1(L11_1, L12_1)
function L11_1(A0_2)
  local L1_2, L2_2, L3_2
  L2_2 = A0_2
  L1_2 = A0_2._create_binder
  L3_2 = G
  L3_2 = L3_2.ActivityMonopolyMiniGameGachaBPageBinder
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
L10_1.ctor = L11_1
function L11_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  A0_2._game_data = A1_2
  L2_2 = G
  L2_2 = L2_2.Utils
  L2_2 = L2_2.create_lua_table_from_cs_list
  L3_2 = A0_2._game_data
  L3_2 = L3_2.ResourceIDList
  L2_2 = L2_2(L3_2)
  A0_2._candidate_resource_ids = L2_2
  L2_2 = G
  L2_2 = L2_2.Utils
  L2_2 = L2_2.create_lua_table_from_cs_list
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.Client
  L3_2 = L3_2.MonopolyUtils
  L3_2 = L3_2.GetValueListFromDictString
  L4_2 = A0_2._game_data
  L4_2 = L4_2.Row
  L4_2 = L4_2.ParamStr2
  L3_2, L4_2 = L3_2(L4_2)
  L2_2 = L2_2(L3_2, L4_2)
  A0_2._count_to_bonus = L2_2
  L2_2 = {}
  A0_2._result_resource_ids = L2_2
  L2_2 = {}
  A0_2._reward_table = L2_2
end
L10_1.init = L11_1
function L11_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
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
  L3_2 = L3_2.UIAnimationEvent
  L4_2 = A0_2._on_ui_animation_event
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
  L1_2 = L1_2(L2_2, L3_2)
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
  L1_2 = L1_2(L2_2, L3_2)
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
L10_1._on_load = L11_1
function L11_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L2_2 = A0_2
  L1_2 = A0_2._setup_bonus_view
  L1_2(L2_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.panel_rule_tip
  L2_2 = L1_2
  L1_2 = L1_2.setup_view_by_game_data
  L3_2 = A0_2._game_data
  L1_2(L2_2, L3_2)
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
  L3_2 = A0_2._candidate_resource_ids
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
L10_1._setup_view = L11_1
function L11_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L1_2 = A0_2._count_to_bonus
  L2_2 = L9_1
  L1_2 = L1_2[L2_2]
  L2_2 = pairs
  L3_2 = A0_2._binder
  L3_2 = L3_2.txts_max_bonus
  L2_2, L3_2, L4_2 = L2_2(L3_2)
  for L5_2, L6_2 in L2_2, L3_2, L4_2 do
    L8_2 = L6_2
    L7_2 = L6_2.SafeSetText
    L9_2 = L1_2
    L7_2(L8_2, L9_2)
  end
end
L10_1._setup_bonus_view = L11_1
function L11_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L2_2 = 0
  L3_2 = ipairs
  L4_2 = A1_2
  L3_2, L4_2, L5_2 = L3_2(L4_2)
  for L6_2, L7_2 in L3_2, L4_2, L5_2 do
    L8_2 = A0_2._game_data
    L9_2 = L8_2
    L8_2 = L8_2.GetResourceValue
    L10_2 = L7_2
    L8_2 = L8_2(L9_2, L10_2)
    L2_2 = L2_2 + L8_2
  end
  return L2_2
end
L10_1._get_resource_value = L11_1
function L11_1(A0_2)
  local L1_2
end
L10_1._in_control_exit_click = L11_1
function L11_1(A0_2)
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
L10_1._on_btn_start = L11_1
function L11_1(A0_2, A1_2)
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
  A0_2._result_resource_ids = L3_2
  L3_2 = G
  L3_2 = L3_2.ActivityMonopolyUtils
  L3_2 = L3_2.get_numbers_max_same
  L4_2 = A0_2._result_resource_ids
  L3_2, L4_2 = L3_2(L4_2)
  A0_2._bonus_id = L4_2
  A0_2._bonus_count = L3_2
  L3_2 = A0_2._count_to_bonus
  L4_2 = A0_2._bonus_count
  L3_2 = L3_2[L4_2]
  L5_2 = A0_2
  L4_2 = A0_2._get_resource_value
  L6_2 = A0_2._result_resource_ids
  L4_2 = L4_2(L5_2, L6_2)
  A0_2._base_value = L4_2
  L4_2 = A0_2._base_value
  L4_2 = L4_2 * L3_2
  A0_2._post_bonus_value = L4_2
  L4_2 = A0_2._post_bonus_value
  L5_2 = A0_2._binder
  L5_2 = L5_2.panel_bet
  L6_2 = L5_2
  L5_2 = L5_2.get_ratio
  L5_2 = L5_2(L6_2)
  L4_2 = L4_2 * L5_2
  A0_2._post_ratio_value = L4_2
  L4_2 = A0_2._binder
  L4_2 = L4_2.panel_slots
  L5_2 = L4_2
  L4_2 = L4_2.refresh_view_by_result
  L6_2 = A0_2._result_resource_ids
  L4_2(L5_2, L6_2)
  L4_2 = A0_2._binder
  L4_2 = L4_2.panel_result
  L5_2 = L4_2
  L4_2 = L4_2.setup_value_view
  L6_2 = A0_2._post_bonus_value
  L7_2 = A0_2._post_bonus_value
  L4_2(L5_2, L6_2, L7_2)
  L5_2 = A0_2
  L4_2 = A0_2._has_bonus
  L4_2 = L4_2(L5_2)
  if L4_2 then
    L4_2 = L4_1
    if L4_2 then
      goto lbl_68
    end
  end
  L4_2 = L3_1
  ::lbl_68::
  L5_2 = CS
  L5_2 = L5_2.RPG
  L5_2 = L5_2.Client
  L5_2 = L5_2.UIAnimationUtils
  L5_2 = L5_2.PlayFromBegin
  L6_2 = A0_2._binder
  L6_2 = L6_2.anim_root
  L7_2 = L4_2
  L5_2(L6_2, L7_2)
  L5_2 = A0_2._shown_timer
  L6_2 = L5_2
  L5_2 = L5_2.set_interval
  L7_2 = A0_2._binder
  L7_2 = L7_2.anim_root
  L8_2 = L7_2
  L7_2 = L7_2.GetClip
  L9_2 = L4_2
  L7_2 = L7_2(L8_2, L9_2)
  L7_2 = L7_2.length
  L5_2(L6_2, L7_2)
  L5_2 = A0_2._shown_timer
  L6_2 = L5_2
  L5_2 = L5_2.reset
  L5_2(L6_2)
  L5_2 = A0_2._shown_timer
  L6_2 = L5_2
  L5_2 = L5_2.start
  L5_2(L6_2)
end
L10_1._on_monopoly_gacha_result = L11_1
function L11_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._count_to_bonus
  L2_2 = A0_2._bonus_count
  L1_2 = L1_2[L2_2]
  L1_2 = 1 < L1_2
  return L1_2
end
L10_1._has_bonus = L11_1
function L11_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L2_2 = L2_1
  if A1_2 == L2_2 then
    L3_2 = A0_2
    L2_2 = A0_2._on_bonus_shown
    L2_2(L3_2)
  else
    L2_2 = ipairs
    L3_2 = L1_1
    L2_2, L3_2, L4_2 = L2_2(L3_2)
    for L5_2, L6_2 in L2_2, L3_2, L4_2 do
      if A1_2 == L6_2 then
        L8_2 = A0_2
        L7_2 = A0_2._on_slot_shown
        L9_2 = L5_2
        L7_2(L8_2, L9_2)
      end
    end
  end
end
L10_1._on_ui_animation_event = L11_1
function L11_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.panel_slots
  L3_2 = L2_2
  L2_2 = L2_2.play_slot_result_show
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
end
L10_1._on_slot_shown = L11_1
function L11_1(A0_2)
  local L1_2, L2_2, L3_2
  L2_2 = A0_2
  L1_2 = A0_2._has_bonus
  L1_2 = L1_2(L2_2)
  if L1_2 then
    L1_2 = CS
    L1_2 = L1_2.RPG
    L1_2 = L1_2.Client
    L1_2 = L1_2.UIAnimationUtils
    L1_2 = L1_2.PlayFromBegin
    L2_2 = A0_2._binder
    L2_2 = L2_2.anim_bonus
    L3_2 = L7_1
    L1_2(L2_2, L3_2)
  end
end
L10_1._on_bonus_shown = L11_1
function L11_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.panel_result
  L2_2 = L1_2
  L1_2 = L1_2.setup_value_view
  L3_2 = A0_2._post_bonus_value
  L4_2 = A0_2._post_ratio_value
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.panel_bet
  L2_2 = L1_2
  L1_2 = L1_2.get_ratio
  L1_2 = L1_2(L2_2)
  if 1 < L1_2 then
    L2_2 = A0_2
    L1_2 = A0_2._has_bonus
    L1_2 = L1_2(L2_2)
    if L1_2 then
      L1_2 = L6_1
      if L1_2 then
        goto lbl_21
      end
    end
    L1_2 = L5_1
    ::lbl_21::
    L2_2 = CS
    L2_2 = L2_2.RPG
    L2_2 = L2_2.Client
    L2_2 = L2_2.UIAnimationUtils
    L2_2 = L2_2.PlayFromBegin
    L3_2 = A0_2._binder
    L3_2 = L3_2.anim_root
    L4_2 = L1_2
    L2_2(L3_2, L4_2)
    L2_2 = A0_2._ratio_timer
    L3_2 = L2_2
    L2_2 = L2_2.set_interval
    L4_2 = A0_2._binder
    L4_2 = L4_2.anim_root
    L5_2 = L4_2
    L4_2 = L4_2.GetClip
    L6_2 = L1_2
    L4_2 = L4_2(L5_2, L6_2)
    L4_2 = L4_2.length
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
    L1_2 = CS
    L1_2 = L1_2.RPG
    L1_2 = L1_2.Client
    L1_2 = L1_2.CoroutineUtils
    L1_2 = L1_2.InvokeAfterSeconds
    L2_2 = L8_1
    function L3_2()
      local L0_3, L1_3
      L0_3 = A0_2._binder
      if L0_3 == nil then
        return
      end
      L0_3 = A0_2
      L1_3 = L0_3
      L0_3 = L0_3._on_ratio_finished
      L0_3(L1_3)
    end
    L1_2(L2_2, L3_2)
  end
end
L10_1._on_result_shown = L11_1
function L11_1(A0_2)
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
L10_1._on_ratio_finished = L11_1
function L11_1(A0_2, A1_2)
  A0_2._reward_param = A1_2
end
L10_1._on_game_settle = L11_1
function L11_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2._refresh_short_cut_hint
  L1_2(L2_2)
end
L10_1._on_enter_special_zoom = L11_1
function L11_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2._refresh_short_cut_hint
  L1_2(L2_2)
end
L10_1._on_leave_special_zoom = L11_1
function L11_1(A0_2)
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
L10_1._refresh_short_cut_hint = L11_1
return L10_1
