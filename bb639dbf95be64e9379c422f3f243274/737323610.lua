local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1, L6_1, L7_1, L8_1, L9_1, L10_1, L11_1, L12_1, L13_1
L0_1 = require
L1_1 = "Ui.Rogue.MainPage.RogueSelectMainPageBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Rogue.RogueUtils"
L0_1(L1_1)
L0_1 = "StateRogue"
L1_1 = "RogueSelectMain2DPageV2_FadeIn"
L2_1 = 12
L3_1 = "UIText_Rogue_Title"
L4_1 = {}
L5_1 = CS
L5_1 = L5_1.RPG
L5_1 = L5_1.GameCore
L5_1 = L5_1.RogueSubMode
L5_1 = L5_1.ChessRogue
L4_1[L5_1] = "RogueSelectMain2DPageV2_Switch_Normal"
L5_1 = CS
L5_1 = L5_1.RPG
L5_1 = L5_1.GameCore
L5_1 = L5_1.RogueSubMode
L5_1 = L5_1.ChessRogueNous
L4_1[L5_1] = "RogueSelectMain2DPageV2_Switch_Normal_Nous"
L5_1 = "RogueSelectMainPage_SetupViewSimulated"
L6_1 = "UIText_Rogue_DLC_Main_Title"
L7_1 = {}
L8_1 = CS
L8_1 = L8_1.RPG
L8_1 = L8_1.GameCore
L8_1 = L8_1.RogueSubMode
L8_1 = L8_1.ChessRogue
L7_1[L8_1] = "RogueSelectMain2DPageV2_Switch_DLC"
L8_1 = CS
L8_1 = L8_1.RPG
L8_1 = L8_1.GameCore
L8_1 = L8_1.RogueSubMode
L8_1 = L8_1.ChessRogueNous
L7_1[L8_1] = "RogueSelectMain2DPageV2_Switch_DLC_Nous"
L8_1 = "RogueSelectMainPage_SetupViewDLC"
L9_1 = "RogueSelectMain2DPageToDialogV2_FadeIn"
L10_1 = "RogueSelectMain2DPageToDialogV2_FadeOut"
L11_1 = G
L11_1 = L11_1.Class
L12_1 = "RogueSelectMainPage"
L13_1 = G
L13_1 = L13_1.UIController
L11_1 = L11_1(L12_1, L13_1)
function L12_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = G
  L1_2 = L1_2.ImportCsToLua
  L1_2 = L1_2.CS_RPG_Client_UILayer_Page
  A0_2._ui_layer = L1_2
  L1_2 = G
  L1_2 = L1_2.ImportCsToLua
  L1_2 = L1_2.TransitionStyle_AboveAndBelowBlack
  L2_2 = G
  L2_2 = L2_2.ImportCsToLua
  L2_2 = L2_2.TransitionStyle_EnterWithCut
  L1_2 = L1_2 | L2_2
  L2_2 = G
  L2_2 = L2_2.ImportCsToLua
  L2_2 = L2_2.TransitionStyle_ExitWithCut
  L1_2 = L1_2 | L2_2
  A0_2._transition_style = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._create_binder
  L3_2 = G
  L3_2 = L3_2.RogueSelectMainPageBinder
  L1_2 = L1_2(L2_2, L3_2)
  A0_2._binder = L1_2
  L1_2 = {}
  L2_2 = NavigationZoneType
  L2_2 = L2_2.Zone1
  L1_2[1] = L2_2
  A0_2.listen_zooms = L1_2
  A0_2._pause_game = true
end
L11_1.ctor = L12_1
function L12_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2, L5_2
  A0_2._force_simulated_or_dlc = A1_2
  A0_2._force_item_param = A2_2
  L4_2 = A3_2 or L4_2
  if not A3_2 then
    L4_2 = false
  end
  A0_2._force_auto_open_select_level = L4_2
  L5_2 = A0_2
  L4_2 = A0_2._try_overwrite_force_param_by_guide
  L4_2(L5_2)
end
L11_1.init = L12_1
function L12_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_close
  L4_2 = A0_2._on_btn_close
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_gamepad_confirm
  L4_2 = A0_2._on_btn_gamepad_confirm
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.panel_common_sys
  L2_2 = L1_2
  L1_2 = L1_2.register_type_switch_callback
  L3_2 = A0_2._on_type_switch
  L4_2 = A0_2
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = pairs
  L2_2 = L4_1
  L1_2, L2_2, L3_2 = L1_2(L2_2)
  for L4_2, L5_2 in L1_2, L2_2, L3_2 do
    L6_2 = A0_2._binder
    L6_2 = L6_2.rpg_animation_event
    L7_2 = L6_2
    L6_2 = L6_2.AddAnimationEvent
    L8_2 = L5_2
    function L9_2()
      local L0_3, L1_3
      L0_3 = A0_2
      L1_3 = L0_3
      L0_3 = L0_3._on_switch_to_simulated_anim_end
      L0_3(L1_3)
    end
    L6_2(L7_2, L8_2, L9_2)
  end
  L1_2 = pairs
  L2_2 = L7_1
  L1_2, L2_2, L3_2 = L1_2(L2_2)
  for L4_2, L5_2 in L1_2, L2_2, L3_2 do
    L6_2 = A0_2._binder
    L6_2 = L6_2.rpg_animation_event
    L7_2 = L6_2
    L6_2 = L6_2.AddAnimationEvent
    L8_2 = L5_2
    function L9_2()
      local L0_3, L1_3
      L0_3 = A0_2
      L1_3 = L0_3
      L0_3 = L0_3._on_switch_to_dlc_anim_end
      L0_3(L1_3)
    end
    L6_2(L7_2, L8_2, L9_2)
  end
  L2_2 = A0_2
  L1_2 = A0_2._send_reqs
  L1_2(L2_2)
end
L11_1._on_load = L12_1
function L12_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.UIAnimationEvent
  L4_2 = A0_2._on_ui_animation_event
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.RogueSelectMainPagePlayDialogTransfer
  L4_2 = A0_2._on_rogue_select_main_page_play_dialog_transfer
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_packet_handler
  L3_2 = CS
  L3_2 = L3_2.NIJNBICAPPA
  L3_2 = L3_2.LNKFDHPBILC
  L4_2 = A0_2._on_get_rogue_info_sc_rsp
  L1_2(L2_2, L3_2, L4_2)
end
L11_1._add_handlers = L12_1
function L12_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.panel_simulated_entrance_list
  L2_2 = L1_2
  L1_2 = L1_2.setup_view
  L3_2 = A0_2._binder
  L3_2 = L3_2.panel_item_dot_list
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.panel_dlc_entrance_list
  L2_2 = L1_2
  L1_2 = L1_2.setup_view
  L3_2 = A0_2._binder
  L3_2 = L3_2.panel_item_dot_list
  L1_2(L2_2, L3_2)
  L1_2 = G
  L1_2 = L1_2.RogueUtils
  L1_2 = L1_2.is_rogue_dlc_entrance_unlock
  L1_2 = L1_2()
  L2_2 = A0_2._force_simulated_or_dlc
  if L2_2 == false then
    L3_2 = A0_2
    L2_2 = A0_2._setup_simulated_view
    L4_2 = false
    L5_2 = A0_2._force_item_param
    L6_2 = A0_2._force_auto_open_select_level
    L2_2(L3_2, L4_2, L5_2, L6_2)
  else
    L2_2 = A0_2._force_simulated_or_dlc
    if L2_2 == true and L1_2 then
      L3_2 = A0_2
      L2_2 = A0_2._setup_dlc_view
      L4_2 = false
      L5_2 = A0_2._force_item_param
      L2_2(L3_2, L4_2, L5_2)
    else
      L2_2 = CS
      L2_2 = L2_2.RPG
      L2_2 = L2_2.Client
      L2_2 = L2_2.GlobalVars
      L2_2 = L2_2.s_ModuleManager
      L2_2 = L2_2.RogueAdventureModule
      L2_2 = L2_2.IsLastRogueSubModeDLC
      if L2_2 and L1_2 then
        L3_2 = A0_2
        L2_2 = A0_2._setup_dlc_view
        L2_2(L3_2)
      else
        L3_2 = A0_2
        L2_2 = A0_2._setup_simulated_view
        L2_2(L3_2)
      end
    end
  end
  L2_2 = A0_2._is_skip_hint
  if L2_2 then
    L3_2 = A0_2
    L2_2 = A0_2._skip_show_hint
    L2_2(L3_2)
  else
    L3_2 = A0_2
    L2_2 = A0_2._try_show_hint
    L2_2(L3_2)
  end
  L3_2 = A0_2
  L2_2 = A0_2._start_rogue_bgm
  L2_2(L3_2)
end
L11_1._setup_view = L12_1
function L12_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2._start_rogue_bgm
  L1_2(L2_2)
end
L11_1._on_return_to_top = L12_1
function L12_1(A0_2, A1_2)
  A0_2._is_skip_hint = A1_2
end
L11_1.set_skip_hint = L12_1
function L12_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2._close
  L1_2(L2_2)
end
L11_1._on_btn_close = L12_1
function L12_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.panel_simulated_entrance_list
  L2_2 = L1_2
  L1_2 = L1_2.is_active_in_hierarchy
  L1_2 = L1_2(L2_2)
  if L1_2 then
    L1_2 = A0_2._binder
    L1_2 = L1_2.panel_simulated_entrance_list
    L2_2 = L1_2
    L1_2 = L1_2.do_gamepad_confirm_click
    L1_2(L2_2)
  else
    L1_2 = A0_2._binder
    L1_2 = L1_2.panel_dlc_entrance_list
    L2_2 = L1_2
    L1_2 = L1_2.is_active_in_hierarchy
    L1_2 = L1_2(L2_2)
    if L1_2 then
      L1_2 = A0_2._binder
      L1_2 = L1_2.panel_dlc_entrance_list
      L2_2 = L1_2
      L1_2 = L1_2.do_gamepad_confirm_click
      L1_2(L2_2)
    end
  end
end
L11_1._on_btn_gamepad_confirm = L12_1
function L12_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._is_cur_dlc
  if not L1_2 then
    L2_2 = A0_2
    L1_2 = A0_2._switch_to_dlc
    L1_2(L2_2)
  else
    L2_2 = A0_2
    L1_2 = A0_2._switch_to_simulated
    L1_2(L2_2)
  end
end
L11_1._on_type_switch = L12_1
function L12_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = L5_1
  if A1_2 == L2_2 then
    L2_2 = A0_2._binder
    L2_2 = L2_2.panel_dlc_entrance_list
    L3_2 = L2_2
    L2_2 = L2_2.play_fade_anim
    L4_2 = false
    L2_2(L3_2, L4_2)
    L3_2 = A0_2
    L2_2 = A0_2._setup_simulated_view
    L4_2 = true
    L2_2(L3_2, L4_2)
    L2_2 = A0_2._binder
    L2_2 = L2_2.panel_simulated_entrance_list
    L3_2 = L2_2
    L2_2 = L2_2.play_fade_anim
    L4_2 = true
    L2_2(L3_2, L4_2)
  else
    L2_2 = L8_1
    if A1_2 == L2_2 then
      L2_2 = A0_2._binder
      L2_2 = L2_2.panel_simulated_entrance_list
      L3_2 = L2_2
      L2_2 = L2_2.play_fade_anim
      L4_2 = false
      L2_2(L3_2, L4_2)
      L3_2 = A0_2
      L2_2 = A0_2._setup_dlc_view
      L4_2 = true
      L2_2(L3_2, L4_2)
      L2_2 = A0_2._binder
      L2_2 = L2_2.panel_dlc_entrance_list
      L3_2 = L2_2
      L2_2 = L2_2.play_fade_anim
      L4_2 = true
      L2_2(L3_2, L4_2)
    end
  end
end
L11_1._on_ui_animation_event = L12_1
function L12_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2._set_dlc_panel_inactive
  L1_2(L2_2)
end
L11_1._on_switch_to_simulated_anim_end = L12_1
function L12_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2._set_simulated_panel_inactive
  L1_2(L2_2)
end
L11_1._on_switch_to_dlc_anim_end = L12_1
function L12_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  if A1_2 then
    L3_2 = A0_2
    L2_2 = A0_2._play_anim_with_full_screen_block
    L4_2 = L9_1
    L2_2(L3_2, L4_2)
  else
    L3_2 = A0_2
    L2_2 = A0_2._play_anim_with_full_screen_block
    L4_2 = L10_1
    L2_2(L3_2, L4_2)
  end
end
L11_1._on_rogue_select_main_page_play_dialog_transfer = L12_1
function L12_1(A0_2)
  local L1_2, L2_2, L3_2
  A0_2._is_rogue_info_synced = true
  L1_2 = A0_2._promise_wait_rogue_info
  if L1_2 ~= nil then
    L1_2 = A0_2._promise_wait_rogue_info
    A0_2._promise_wait_rogue_info = nil
    L3_2 = L1_2
    L2_2 = L1_2.Resolve
    L2_2(L3_2)
  end
end
L11_1._on_get_rogue_info_sc_rsp = L12_1
function L12_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.GlobalVars
  L1_2 = L1_2.s_ModuleManager
  L1_2 = L1_2.RogueHandbookModule
  L2_2 = L1_2.AeonsMap
  if L2_2 ~= nil then
    L2_2 = L1_2.AeonsMap
    L2_2 = L2_2.Count
    if L2_2 ~= 0 then
      goto lbl_16
    end
  end
  L3_2 = L1_2
  L2_2 = L1_2.TryGetCurrentRogueVersionData
  L2_2(L3_2)
  ::lbl_16::
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.Client
  L2_2 = L2_2.GlobalVars
  L2_2 = L2_2.s_NetworkManager
  L4_2 = L2_2
  L3_2 = L2_2.HLCFAFECKAC
  L3_2(L4_2)
  L4_2 = L2_2
  L3_2 = L2_2.KMKOGBFJBOG
  L3_2(L4_2)
  L4_2 = A0_2
  L3_2 = A0_2.show_full_screen_block_for_packet
  L5_2 = CS
  L5_2 = L5_2.NIJNBICAPPA
  L5_2 = L5_2.LNKFDHPBILC
  L3_2(L4_2, L5_2)
  L4_2 = L2_2
  L3_2 = L2_2.AOFFGNBCIPP
  L3_2(L4_2)
end
L11_1._send_reqs = L12_1
function L12_1(A0_2)
  local L1_2
  L1_2 = A0_2._is_rogue_info_synced
  if L1_2 then
    L1_2 = CS
    L1_2 = L1_2.RPG
    L1_2 = L1_2.Client
    L1_2 = L1_2.Promises
    L1_2 = L1_2.Promise
    L1_2 = L1_2.Resolved
    return L1_2()
  end
  L1_2 = A0_2._promise_wait_rogue_info
  if L1_2 ~= nil then
    L1_2 = A0_2._promise_wait_rogue_info
    return L1_2
  end
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.Promises
  L1_2 = L1_2.Promise
  L1_2 = L1_2()
  A0_2._promise_wait_rogue_info = L1_2
  L1_2 = A0_2._promise_wait_rogue_info
  return L1_2
end
L11_1._get_rogue_info_promise = L12_1
function L12_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  A0_2._is_cur_dlc = false
  L4_2 = A0_2._binder
  L4_2 = L4_2.txt_title
  L5_2 = L4_2
  L4_2 = L4_2.SafeSetTextID
  L6_2 = L3_1
  L4_2(L5_2, L6_2)
  L4_2 = A0_2._binder
  L4_2 = L4_2.panel_common_sys
  L5_2 = L4_2
  L4_2 = L4_2.setup_simulated_view
  L4_2(L5_2)
  L4_2 = A0_2._binder
  L4_2 = L4_2.panel_simulated_entrance_list
  L5_2 = L4_2
  L4_2 = L4_2.safe_set_active
  L6_2 = A0_2._is_rogue_info_synced
  L4_2(L5_2, L6_2)
  L5_2 = A0_2
  L4_2 = A0_2._get_rogue_info_promise
  L4_2 = L4_2(L5_2)
  L5_2 = L4_2
  L4_2 = L4_2.ThenLuaAction
  function L6_2()
    local L0_3, L1_3, L2_3, L3_3
    L0_3 = A0_2._binder
    L0_3 = L0_3.panel_simulated_entrance_list
    L1_3 = L0_3
    L0_3 = L0_3.safe_set_active
    L2_3 = A0_2._is_rogue_info_synced
    L0_3(L1_3, L2_3)
    L0_3 = A0_2._binder
    L0_3 = L0_3.panel_simulated_entrance_list
    L1_3 = L0_3
    L0_3 = L0_3.refresh_view
    L2_3 = A2_2
    L3_3 = A3_2
    L0_3(L1_3, L2_3, L3_3)
  end
  L4_2(L5_2, L6_2)
  L4_2 = A0_2._binder
  L4_2 = L4_2.btn_intro
  L5_2 = L4_2
  L4_2 = L4_2.SafeSetActive
  L6_2 = true
  L4_2(L5_2, L6_2)
  L4_2 = A0_2._binder
  L4_2 = L4_2.btn_intro
  L5_2 = L2_1
  L4_2.IntroduceID = L5_2
  L5_2 = A0_2
  L4_2 = A0_2.setup_short_cut_hint_panel
  L6_2 = {}
  L7_2 = "ActionGroup_RogueChangeWorld"
  L8_2 = "Menu_Confirm"
  L9_2 = "ActionGroup_Return"
  L6_2[1] = L7_2
  L6_2[2] = L8_2
  L6_2[3] = L9_2
  L4_2(L5_2, L6_2)
  if not A1_2 then
    L5_2 = A0_2
    L4_2 = A0_2._set_dlc_panel_inactive
    L4_2(L5_2)
  end
end
L11_1._setup_simulated_view = L12_1
function L12_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  A0_2._is_cur_dlc = true
  L3_2 = A0_2._binder
  L3_2 = L3_2.txt_title
  L4_2 = L3_2
  L3_2 = L3_2.SafeSetTextID
  L5_2 = L6_1
  L3_2(L4_2, L5_2)
  L3_2 = A0_2._binder
  L3_2 = L3_2.panel_common_sys
  L4_2 = L3_2
  L3_2 = L3_2.setup_dlc_view
  L3_2(L4_2)
  L3_2 = A0_2._binder
  L3_2 = L3_2.panel_dlc_entrance_list
  L4_2 = L3_2
  L3_2 = L3_2.safe_set_active
  L5_2 = true
  L3_2(L4_2, L5_2)
  L3_2 = A0_2._binder
  L3_2 = L3_2.panel_dlc_entrance_list
  L4_2 = L3_2
  L3_2 = L3_2.refresh_view
  L5_2 = A2_2
  L3_2(L4_2, L5_2)
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_intro
  L4_2 = L3_2
  L3_2 = L3_2.SafeSetActive
  L5_2 = false
  L3_2(L4_2, L5_2)
  L4_2 = A0_2
  L3_2 = A0_2.setup_short_cut_hint_panel
  L5_2 = {}
  L6_2 = "ActionGroup_RogueDLCChangeWorld"
  L7_2 = "Menu_Confirm"
  L8_2 = "ActionGroup_Return"
  L5_2[1] = L6_2
  L5_2[2] = L7_2
  L5_2[3] = L8_2
  L3_2(L4_2, L5_2)
  if not A1_2 then
    L4_2 = A0_2
    L3_2 = A0_2._set_simulated_panel_inactive
    L3_2(L4_2)
  end
end
L11_1._setup_dlc_view = L12_1
function L12_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.panel_simulated_entrance_list
  L2_2 = L1_2
  L1_2 = L1_2.safe_set_active
  L3_2 = false
  L1_2(L2_2, L3_2)
end
L11_1._set_simulated_panel_inactive = L12_1
function L12_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.panel_dlc_entrance_list
  L2_2 = L1_2
  L1_2 = L1_2.safe_set_active
  L3_2 = false
  L1_2(L2_2, L3_2)
end
L11_1._set_dlc_panel_inactive = L12_1
function L12_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.panel_dlc_entrance_list
  L2_2 = L1_2
  L1_2 = L1_2.get_cur_dlc_sub_mode
  L1_2 = L1_2(L2_2)
  L2_2 = L4_1[L1_2]
  if L2_2 ~= nil and L2_2 ~= "" then
    L4_2 = A0_2
    L3_2 = A0_2._play_anim_with_full_screen_block
    L5_2 = L2_2
    L3_2(L4_2, L5_2)
  end
end
L11_1._switch_to_simulated = L12_1
function L12_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.panel_dlc_entrance_list
  L2_2 = L1_2
  L1_2 = L1_2.get_cur_dlc_sub_mode
  L1_2 = L1_2(L2_2)
  L2_2 = L7_1[L1_2]
  if L2_2 ~= nil and L2_2 ~= "" then
    L4_2 = A0_2
    L3_2 = A0_2._play_anim_with_full_screen_block
    L5_2 = L2_2
    L3_2(L4_2, L5_2)
  end
end
L11_1._switch_to_dlc = L12_1
function L12_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2.exit
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._stop_rogue_bgm
  L1_2(L2_2)
end
L11_1._close = L12_1
function L12_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.GlobalVars
  L1_2 = L1_2.s_GamePhaseManager
  L2_2 = L1_2
  L1_2 = L1_2.GetCurrentPhase
  L1_2 = L1_2(L2_2)
  L2_2 = L1_2 or L2_2
  if L1_2 then
    L3_2 = L1_2
    L2_2 = L1_2.GetAdventureAudioManager
    L2_2 = L2_2(L3_2)
  end
  if L2_2 ~= nil then
    L3_2 = CS
    L3_2 = L3_2.RPG
    L3_2 = L3_2.Client
    L3_2 = L3_2.GlobalVars
    L3_2 = L3_2.s_AudioManager
    L3_2 = L3_2.AudioConfig
    L3_2 = L3_2.MenuBGMStates
    L4_2 = L3_2
    L3_2 = L3_2.get_Item
    L5_2 = L0_1
    L3_2 = L3_2(L4_2, L5_2)
    L5_2 = L2_2
    L4_2 = L2_2.SwitchUIMenuBGM
    L6_2 = L3_2
    L4_2(L5_2, L6_2)
  end
end
L11_1._start_rogue_bgm = L12_1
function L12_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.GlobalVars
  L1_2 = L1_2.s_GamePhaseManager
  L2_2 = L1_2
  L1_2 = L1_2.GetCurrentPhase
  L1_2 = L1_2(L2_2)
  L2_2 = L1_2 or L2_2
  if L1_2 then
    L3_2 = L1_2
    L2_2 = L1_2.GetAdventureAudioManager
    L2_2 = L2_2(L3_2)
  end
  if L2_2 ~= nil then
    L4_2 = L2_2
    L3_2 = L2_2.StopUIMenuBGM
    L3_2(L4_2)
  end
end
L11_1._stop_rogue_bgm = L12_1
function L12_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.animation
  L3_2 = L2_2
  L2_2 = L2_2.get_Item
  L4_2 = L1_1
  L2_2 = L2_2(L3_2, L4_2)
  if L2_2 ~= nil then
    L3_2 = L2_2.enabled
    if L3_2 then
      L2_2.normalizedTime = 1
      L3_2 = A0_2._binder
      L3_2 = L3_2.animation
      L4_2 = L3_2
      L3_2 = L3_2.Sample
      L3_2(L4_2)
    end
  end
  L3_2 = A0_2._binder
  L3_2 = L3_2.animation
  L4_2 = L3_2
  L3_2 = L3_2.Play
  L5_2 = A1_2
  L3_2(L4_2, L5_2)
  L4_2 = A0_2
  L3_2 = A0_2._get_animation_length
  L5_2 = A1_2
  L3_2 = L3_2(L4_2, L5_2)
  L5_2 = A0_2
  L4_2 = A0_2.show_full_screen_block
  L6_2 = L3_2
  L4_2(L5_2, L6_2)
end
L11_1._play_anim_with_full_screen_block = L12_1
function L12_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.animation
  L3_2 = L2_2
  L2_2 = L2_2.GetClip
  L4_2 = A1_2
  L2_2 = L2_2(L3_2, L4_2)
  L2_2 = L2_2.length
  return L2_2
end
L11_1._get_animation_length = L12_1
function L12_1(A0_2)
  local L1_2
  A0_2._force_simulated_or_dlc = nil
  A0_2._force_item_param = nil
  A0_2._force_auto_open_select_level = false
end
L11_1._clear_force_params = L12_1
function L12_1(A0_2)
  local L1_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.RogueUtils
  L1_2 = L1_2.TryGetFirstUnlockAreaData
  L1_2()
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.RogueUtils
  L1_2 = L1_2.SaveRogueRewardTipSeen
  L1_2()
end
L11_1._skip_show_hint = L12_1
function L12_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2._if_need_skip_hint
  L1_2 = L1_2(L2_2)
  if L1_2 then
    L1_2 = CS
    L1_2 = L1_2.RPG
    L1_2 = L1_2.Client
    L1_2 = L1_2.RogueUtils
    L1_2 = L1_2.TryGetFirstUnlockAreaData
    L1_2()
    L1_2 = CS
    L1_2 = L1_2.RPG
    L1_2 = L1_2.Client
    L1_2 = L1_2.RogueUtils
    L1_2 = L1_2.SaveRogueRewardTipSeen
    L1_2()
  end
  L2_2 = A0_2
  L1_2 = A0_2._try_show_first_unlock_area_hint
  L1_2 = L1_2(L2_2)
  if L1_2 ~= nil then
    L2_2 = L1_2.LuaTable
    L3_2 = L2_2
    L2_2 = L2_2.set_exit_callback
    function L4_2()
      local L0_3, L1_3
      L0_3 = A0_2
      L1_3 = L0_3
      L0_3 = L0_3._try_show_reward_hint
      L0_3(L1_3)
    end
    L2_2(L3_2, L4_2)
  else
    L3_2 = A0_2
    L2_2 = A0_2._try_show_reward_hint
    L2_2(L3_2)
  end
end
L11_1._try_show_hint = L12_1
function L12_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = G
  L1_2 = L1_2.TutorialModule
  L1_2 = L1_2.Instance
  L2_2 = L1_2
  L1_2 = L1_2.get_running_tutorial_data
  L1_2 = L1_2(L2_2)
  if L1_2 ~= nil then
    L3_2 = L1_2
    L2_2 = L1_2.has_uicontext_trigger
    L4_2 = A0_2.__name
    L2_2 = L2_2(L3_2, L4_2)
    if L2_2 then
      L2_2 = true
      return L2_2
    end
  end
  L2_2 = false
  return L2_2
end
L11_1._if_need_skip_hint = L12_1
function L12_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = A0_2._binder
  if L1_2 == nil then
    return
  end
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.RogueUtils
  L1_2 = L1_2.HasRewardResetTip
  L1_2 = L1_2()
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.Client
  L2_2 = L2_2.RogueUtils
  L2_2 = L2_2.SaveRogueRewardTipSeen
  L2_2()
  if L1_2 then
    L2_2 = G
    L2_2 = L2_2.UIManager
    L2_2 = L2_2.load_and_async_show
    L3_2 = "Ui.Rogue.MainPage.RogueScheduleHintDialog"
    L2_2 = L2_2(L3_2)
    L3_2 = L2_2.LuaTable
    L4_2 = L3_2
    L3_2 = L3_2.set_exit_callback
    function L5_2()
      local L0_3, L1_3, L2_3, L3_3
      L0_3 = G
      L0_3 = L0_3.UIManager
      L0_3 = L0_3.load_and_async_show
      L1_3 = "Ui.Rogue.Reward.RogueScoreRewardDialog"
      L2_3 = CS
      L2_3 = L2_3.RPG
      L2_3 = L2_3.Client
      L2_3 = L2_3.GlobalVars
      L2_3 = L2_3.s_ModuleManager
      L2_3 = L2_3.RogueModule
      L3_3 = L2_3
      L2_3 = L2_3.GetRogueScoreRewardData
      L2_3 = L2_3(L3_3)
      L3_3 = true
      L0_3(L1_3, L2_3, L3_3)
    end
    L3_2(L4_2, L5_2)
  end
end
L11_1._try_show_reward_hint = L12_1
function L12_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.RogueUtils
  L1_2 = L1_2.TryGetFirstUnlockAreaData
  L1_2 = L1_2()
  if L1_2 == nil then
    L2_2 = nil
    return L2_2
  end
  L2_2 = G
  L2_2 = L2_2.UIManager
  L2_2 = L2_2.load_and_async_show
  L3_2 = "Ui.Rogue.MainPage.RogueAreaUnlockDialog"
  L4_2 = L1_2
  return L2_2(L3_2, L4_2)
end
L11_1._try_show_first_unlock_area_hint = L12_1
function L12_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2._overwrite_force_param_chess_rogue_guide
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._overwrite_force_param_rogue_nous_guide
  L1_2(L2_2)
end
L11_1._try_overwrite_force_param_by_guide = L12_1
function L12_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._get_const_value_uint_arr
  L2_2 = "RogueDLC_Tutorial_ForceJump_SubMissionID"
  L1_2 = L1_2(L2_2)
  L2_2 = A0_2._has_in_progress_sub_mission
  L3_2 = L1_2
  L2_2 = L2_2(L3_2)
  if not L2_2 then
    return
  end
  L3_2 = A0_2
  L2_2 = A0_2._clear_force_params
  L2_2(L3_2)
  A0_2._force_simulated_or_dlc = false
end
L11_1._overwrite_force_param_chess_rogue_guide = L12_1
function L12_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._get_const_value_uint_arr
  L2_2 = "RogueNous_Tutorial_ForceJump_SubMissionID"
  L1_2 = L1_2(L2_2)
  L2_2 = A0_2._has_in_progress_sub_mission
  L3_2 = L1_2
  L2_2 = L2_2(L3_2)
  if not L2_2 then
    return
  end
  L3_2 = A0_2
  L2_2 = A0_2._clear_force_params
  L2_2(L3_2)
  A0_2._force_simulated_or_dlc = false
end
L11_1._overwrite_force_param_rogue_nous_guide = L12_1
function L12_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  if A0_2 ~= nil then
    L1_2 = #A0_2
    if L1_2 ~= 0 then
      goto lbl_8
    end
  end
  L1_2 = false
  do return L1_2 end
  ::lbl_8::
  L1_2 = false
  L2_2 = pairs
  L3_2 = A0_2
  L2_2, L3_2, L4_2 = L2_2(L3_2)
  for L5_2, L6_2 in L2_2, L3_2, L4_2 do
    L7_2 = CS
    L7_2 = L7_2.RPG
    L7_2 = L7_2.Client
    L7_2 = L7_2.GlobalVars
    L7_2 = L7_2.s_ModuleManager
    L7_2 = L7_2.MissionModule
    L8_2 = L7_2
    L7_2 = L7_2.GetSubMissionState
    L9_2 = L6_2
    L7_2 = L7_2(L8_2, L9_2)
    L8_2 = CS
    L8_2 = L8_2.RPG
    L8_2 = L8_2.GameCore
    L8_2 = L8_2.SubMissionState
    L8_2 = L8_2.Started
    if L7_2 == L8_2 then
      L1_2 = true
      break
    end
  end
  return L1_2
end
L11_1._has_in_progress_sub_mission = L12_1
function L12_1(A0_2)
  local L1_2, L2_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.GameCore
  L1_2 = L1_2.ConstValueClientExcelTable
  L1_2 = L1_2.GetData
  L2_2 = A0_2
  L1_2 = L1_2(L2_2)
  if L1_2 ~= nil then
    L2_2 = L1_2.Value
    L2_2 = L2_2.IsInt
    if L2_2 then
      goto lbl_16
    end
  end
  L2_2 = 0
  do return L2_2 end
  ::lbl_16::
  L2_2 = L1_2.Value
  L2_2 = L2_2.UintValue
  return L2_2
end
L11_1._get_const_value_uint = L12_1
function L12_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L1_2 = {}
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.GameCore
  L2_2 = L2_2.ConstValueClientExcelTable
  L2_2 = L2_2.GetData
  L3_2 = A0_2
  L2_2 = L2_2(L3_2)
  if L2_2 ~= nil then
    L3_2 = L2_2.Value
    L3_2 = L3_2.IsArray
    if L3_2 then
      goto lbl_16
    end
  end
  do return L1_2 end
  ::lbl_16::
  L3_2 = L2_2.Value
  L3_2 = L3_2.ArrayValue
  L4_2 = 0
  L5_2 = L3_2.Length
  L5_2 = L5_2 - 1
  L6_2 = 1
  for L7_2 = L4_2, L5_2, L6_2 do
    L8_2 = L3_2[L7_2]
    L8_2 = L8_2.IsInt
    if L8_2 then
      L8_2 = table
      L8_2 = L8_2.insert
      L9_2 = L1_2
      L10_2 = L3_2[L7_2]
      L10_2 = L10_2.UintValue
      L8_2(L9_2, L10_2)
    end
  end
  return L1_2
end
L11_1._get_const_value_uint_arr = L12_1
function L12_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2._close
  L1_2(L2_2)
end
L11_1._in_control_exit_click = L12_1
return L11_1
