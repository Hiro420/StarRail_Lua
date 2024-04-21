local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1, L6_1, L7_1, L8_1, L9_1
L0_1 = require
L1_1 = "Ui.DrinkMaker.WorkBook.DrinkMakerWorkBookPageBinder"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "DrinkMakerWorkBookPage"
L2_1 = G
L2_1 = L2_1.UIController
L0_1 = L0_1(L1_1, L2_1)
L1_1 = 1
L2_1 = CS
L2_1 = L2_1.RPG
L2_1 = L2_1.Client
L2_1 = L2_1.GlobalVars
L2_1 = L2_1.s_ModuleManager
L2_1 = L2_1.DrinkMakerModule
L3_1 = CS
L3_1 = L3_1.RPG
L3_1 = L3_1.Client
L3_1 = L3_1.Prefs
L3_1 = L3_1.User
L4_1 = 0.75
L5_1 = 1
L6_1 = 1.5
L7_1 = 1.72
L8_1 = "5157"
function L9_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = G
  L1_2 = L1_2.ImportCsToLua
  L1_2 = L1_2.CS_RPG_Client_UILayer_Page
  A0_2._ui_layer = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._create_binder
  L3_2 = G
  L3_2 = L3_2.DrinkMakerWorkBookPageBinder
  L1_2 = L1_2(L2_2, L3_2)
  A0_2._binder = L1_2
  A0_2._pause_game = true
  L1_2 = G
  L1_2 = L1_2.ImportCsToLua
  L1_2 = L1_2.TransitionStyle_AboveAndBelowBlack
  A0_2._transition_style = L1_2
  L1_2 = {}
  L2_2 = NavigationZoneType
  L2_2 = L2_2.Zone1
  L1_2[1] = L2_2
  A0_2.listen_zooms = L1_2
end
L0_1.ctor = L9_1
function L9_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2
  L3_2 = tonumber
  L4_2 = A1_2
  L3_2 = L3_2(L4_2)
  A0_2._init_guest_id = L3_2
  L3_2 = G
  L3_2 = L3_2.Utils
  L3_2 = L3_2.create_lua_table_from_cs_list
  L4_2 = L2_1
  L5_2 = L4_2
  L4_2 = L4_2.GetAllGuestsData
  L4_2, L5_2 = L4_2(L5_2)
  L3_2 = L3_2(L4_2, L5_2)
  A0_2._guests = L3_2
  A0_2._is_unlock_tutorial = A2_2
end
L0_1.init = L9_1
function L9_1(A0_2)
  local L1_2
end
L0_1._add_handlers = L9_1
function L9_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2._bind_exit_btn
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_exit
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_count_down_timer
  L3_2 = A0_2._on_fade_in_anim_finish
  L4_2 = L4_1
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2._fade_in_anim_timer = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._add_count_down_timer
  L3_2 = A0_2._on_note_unlock_anim_finish
  L4_2 = L5_1
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2._note_unlock_anim_timer = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._add_count_down_timer
  L3_2 = A0_2._on_trust_anim_finish
  L4_2 = L6_1
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2._trust_anim_timer = L1_2
end
L0_1._on_load = L9_1
function L9_1(A0_2)
  local L1_2, L2_2
  L1_2 = L3_1
  L2_2 = L1_2
  L1_2 = L1_2.GetDrinkMakerNewGuests
  L1_2 = L1_2(L2_2)
  L2_2 = L1_2
  L1_2 = L1_2.Clear
  L1_2(L2_2)
  L1_2 = L3_1
  L2_2 = L1_2
  L1_2 = L1_2.GetDrinkMakerGuestNewNotes
  L1_2 = L1_2(L2_2)
  L2_2 = L1_2
  L1_2 = L1_2.Clear
  L1_2(L2_2)
end
L0_1._on_dispose = L9_1
function L9_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = L2_1.IsDataPrepared
  if not L1_2 then
    L2_2 = A0_2
    L1_2 = A0_2.show_full_screen_block_for_packet
    L3_2 = CS
    L3_2 = L3_2.PBIBDHBOIGI
    L3_2 = L3_2.CBFMICELIOG
    L1_2(L2_2, L3_2)
    L2_2 = A0_2
    L1_2 = A0_2._add_packet_handler
    L3_2 = CS
    L3_2 = L3_2.PBIBDHBOIGI
    L3_2 = L3_2.CBFMICELIOG
    L4_2 = L0_1._on_get_drink_maker_data_rsp
    L1_2(L2_2, L3_2, L4_2)
    L2_2 = A0_2
    L1_2 = A0_2.set_view_active
    L3_2 = false
    L1_2(L2_2, L3_2)
  else
    L2_2 = A0_2
    L1_2 = A0_2._custom_setup_view
    L1_2(L2_2)
  end
  L2_2 = A0_2
  L1_2 = A0_2._try_unlock_tutorial
  L1_2(L2_2)
end
L0_1._setup_view = L9_1
function L9_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._is_unlock_tutorial
  if L1_2 then
    L1_2 = G
    L1_2 = L1_2.NotifyManager
    L1_2 = L1_2.notify
    L2_2 = G
    L2_2 = L2_2.CS
    L2_2 = L2_2.NotifyType
    L2_2 = L2_2.TutorialTaskUnlock
    L3_2 = L8_1
    L1_2(L2_2, L3_2)
  end
end
L0_1._try_unlock_tutorial = L9_1
function L9_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2._setup_guest_list
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._setup_guest_finish_progress
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._try_play_init_guest_anim
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._init_ui_navigation
  L1_2(L2_2)
end
L0_1._custom_setup_view = L9_1
function L9_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2
  L1_2 = L1_1
  L2_2 = ipairs
  L3_2 = A0_2._guests
  L2_2, L3_2, L4_2 = L2_2(L3_2)
  for L5_2, L6_2 in L2_2, L3_2, L4_2 do
    L7_2 = A0_2._binder
    L7_2 = L7_2.guest_list
    L7_2 = L7_2[L5_2]
    L8_2 = A0_2._init_guest_id
    L9_2 = L6_2.GuestID
    L8_2 = L8_2 == L9_2
    L10_2 = L7_2
    L9_2 = L7_2.set_wait_unlock_anim_play
    L11_2 = L8_2 or L11_2
    if L8_2 then
      L12_2 = L6_2
      L11_2 = L6_2.IsFinish
      L11_2 = L11_2(L12_2)
      L11_2 = not L11_2
    end
    L9_2(L10_2, L11_2)
    L10_2 = L7_2
    L9_2 = L7_2.setup_view
    L11_2 = L6_2
    L12_2 = A0_2._on_guest_click
    L13_2 = A0_2
    L9_2(L10_2, L11_2, L12_2, L13_2)
    if L8_2 then
      A0_2._init_guest_index = L5_2
      L1_2 = L5_2
    end
  end
  L3_2 = A0_2
  L2_2 = A0_2._on_guest_click
  L4_2 = A0_2._guests
  L4_2 = L4_2[L1_2]
  L2_2(L3_2, L4_2)
end
L0_1._setup_guest_list = L9_1
function L9_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = A0_2._init_guest_id
  if L1_2 == nil then
    return
  end
  L1_2 = A0_2._fade_in_anim_timer
  L2_2 = L1_2
  L1_2 = L1_2.reset
  L1_2(L2_2)
  L1_2 = A0_2._fade_in_anim_timer
  L2_2 = L1_2
  L1_2 = L1_2.start
  L1_2(L2_2)
  L1_2 = 0
  L3_2 = A0_2
  L2_2 = A0_2._is_init_monster_finish
  L2_2 = L2_2(L3_2)
  if L2_2 then
    L2_2 = L4_1
    L3_2 = L5_1
    L2_2 = L2_2 + L3_2
    L3_2 = L6_1
    L1_2 = L2_2 + L3_2
  else
    L2_2 = L4_1
    L3_2 = L7_1
    L1_2 = L2_2 + L3_2
  end
  L3_2 = A0_2
  L2_2 = A0_2.show_full_screen_block
  L4_2 = L1_2
  L5_2 = L1_2
  L2_2(L3_2, L4_2, L5_2)
end
L0_1._try_play_init_guest_anim = L9_1
function L9_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._init_guest_id
  if L1_2 == nil then
    L1_2 = false
    return L1_2
  end
  L1_2 = A0_2._guests
  L2_2 = A0_2._init_guest_index
  L1_2 = L1_2[L2_2]
  L3_2 = L1_2
  L2_2 = L1_2.IsFinish
  return L2_2(L3_2)
end
L0_1._is_init_monster_finish = L9_1
function L9_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._fade_in_anim_timer
  L2_2 = L1_2
  L1_2 = L1_2.stop
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._is_init_monster_finish
  L1_2 = L1_2(L2_2)
  if L1_2 then
    L1_2 = A0_2._binder
    L1_2 = L1_2.info_panel
    L2_2 = L1_2
    L1_2 = L1_2.play_finish_anim
    L1_2(L2_2)
    A0_2._init_guest_id = nil
  else
    L1_2 = A0_2._note_unlock_anim_timer
    L2_2 = L1_2
    L1_2 = L1_2.reset
    L1_2(L2_2)
    L1_2 = A0_2._note_unlock_anim_timer
    L2_2 = L1_2
    L1_2 = L1_2.start
    L1_2(L2_2)
    L1_2 = A0_2._binder
    L1_2 = L1_2.info_panel
    L2_2 = L1_2
    L1_2 = L1_2.play_note_unlock_anim
    L1_2(L2_2)
  end
end
L0_1._on_fade_in_anim_finish = L9_1
function L9_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._note_unlock_anim_timer
  L2_2 = L1_2
  L1_2 = L1_2.stop
  L1_2(L2_2)
  L1_2 = A0_2._trust_anim_timer
  L2_2 = L1_2
  L1_2 = L1_2.reset
  L1_2(L2_2)
  L1_2 = A0_2._trust_anim_timer
  L2_2 = L1_2
  L1_2 = L1_2.start
  L1_2(L2_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.info_panel
  L2_2 = L1_2
  L1_2 = L1_2.play_trust_anim
  L1_2(L2_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.guest_list
  L2_2 = A0_2._init_guest_index
  L1_2 = L1_2[L2_2]
  L3_2 = L1_2
  L2_2 = L1_2.play_trust_anim
  L2_2(L3_2)
end
L0_1._on_note_unlock_anim_finish = L9_1
function L9_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._trust_anim_timer
  L2_2 = L1_2
  L1_2 = L1_2.stop
  L1_2(L2_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.info_panel
  L2_2 = L1_2
  L1_2 = L1_2.try_get_reward
  L1_2(L2_2)
  A0_2._init_guest_id = nil
end
L0_1._on_trust_anim_finish = L9_1
function L9_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L1_2 = A0_2._guests
  L1_2 = #L1_2
  L2_2 = 0
  L3_2 = ipairs
  L4_2 = A0_2._guests
  L3_2, L4_2, L5_2 = L3_2(L4_2)
  for L6_2, L7_2 in L3_2, L4_2, L5_2 do
    L9_2 = L7_2
    L8_2 = L7_2.IsFinish
    L8_2 = L8_2(L9_2)
    if L8_2 then
      L2_2 = L2_2 + 1
    end
  end
  L3_2 = A0_2._binder
  L3_2 = L3_2.txt_total_guest
  L4_2 = L3_2
  L3_2 = L3_2.SafeSetText
  L5_2 = L1_2
  L3_2(L4_2, L5_2)
  L3_2 = A0_2._binder
  L3_2 = L3_2.txt_finished_guest
  L4_2 = L3_2
  L3_2 = L3_2.SafeSetText
  L5_2 = L2_2
  L3_2(L4_2, L5_2)
end
L0_1._setup_guest_finish_progress = L9_1
function L9_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2
  L2_2 = A0_2._cur_guest
  if L2_2 == A1_2 then
    return
  end
  L2_2 = A0_2._cur_guest
  if L2_2 ~= nil then
    L2_2 = L3_1
    L3_2 = L2_2
    L2_2 = L2_2.GetDrinkMakerGuestNewNotes
    L2_2 = L2_2(L3_2)
    L3_2 = L2_2
    L2_2 = L2_2.Remove
    L4_2 = A0_2._cur_guest
    L4_2 = L4_2.GuestID
    L2_2(L3_2, L4_2)
  end
  A0_2._cur_guest = A1_2
  L2_2 = L3_1
  L3_2 = L2_2
  L2_2 = L2_2.GetDrinkMakerNewGuests
  L2_2 = L2_2(L3_2)
  L4_2 = L2_2
  L3_2 = L2_2.Remove
  L5_2 = A0_2._cur_guest
  L5_2 = L5_2.GuestID
  L3_2(L4_2, L5_2)
  L3_2 = ipairs
  L4_2 = A0_2._guests
  L3_2, L4_2, L5_2 = L3_2(L4_2)
  for L6_2, L7_2 in L3_2, L4_2, L5_2 do
    L8_2 = A0_2._binder
    L8_2 = L8_2.guest_list
    L8_2 = L8_2[L6_2]
    L9_2 = A0_2._cur_guest
    L9_2 = L9_2 == L7_2
    if L9_2 then
      A0_2._cur_guest_index = L6_2
    end
    L11_2 = L8_2
    L10_2 = L8_2.set_selected
    L12_2 = L9_2
    L10_2(L11_2, L12_2)
  end
  L3_2 = A0_2._init_guest_id
  L4_2 = A0_2._cur_guest
  L4_2 = L4_2.GuestID
  if L3_2 == L4_2 then
    L4_2 = A0_2
    L3_2 = A0_2._is_init_monster_finish
    L3_2 = L3_2(L4_2)
    L4_2 = A0_2._binder
    L4_2 = L4_2.info_panel
    L5_2 = L4_2
    L4_2 = L4_2.set_wait_unlock_anim_play
    L6_2 = not L3_2
    L4_2(L5_2, L6_2)
    L4_2 = A0_2._binder
    L4_2 = L4_2.info_panel
    L5_2 = L4_2
    L4_2 = L4_2.set_wait_finish_anim_play
    L6_2 = L3_2
    L4_2(L5_2, L6_2)
  else
    L3_2 = A0_2._binder
    L3_2 = L3_2.info_panel
    L4_2 = L3_2
    L3_2 = L3_2.set_wait_unlock_anim_play
    L5_2 = false
    L3_2(L4_2, L5_2)
    L3_2 = A0_2._binder
    L3_2 = L3_2.info_panel
    L4_2 = L3_2
    L3_2 = L3_2.set_wait_finish_anim_play
    L5_2 = false
    L3_2(L4_2, L5_2)
  end
  L3_2 = A0_2._binder
  L3_2 = L3_2.info_panel
  L4_2 = L3_2
  L3_2 = L3_2.setup_view
  L5_2 = A0_2._cur_guest
  L3_2(L4_2, L5_2)
end
L0_1._on_guest_click = L9_1
function L9_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L3_2 = A0_2
  L2_2 = A0_2.set_view_active
  L4_2 = true
  L2_2(L3_2, L4_2)
  L3_2 = A0_2
  L2_2 = A0_2._custom_setup_view
  L2_2(L3_2)
end
L0_1._on_get_drink_maker_data_rsp = L9_1
function L9_1(A0_2)
  local L1_2, L2_2, L3_2
  L2_2 = A0_2
  L1_2 = A0_2._on_enter_zoom
  L3_2 = NavigationZoneType
  L3_2 = L3_2.Zone1
  L1_2(L2_2, L3_2)
end
L0_1._init_ui_navigation = L9_1
function L9_1(A0_2, A1_2)
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
L0_1._on_enter_zoom = L9_1
function L9_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._cur_guest_index
  if not L1_2 then
    L1_2 = 1
  end
  L2_2 = A0_2._binder
  L2_2 = L2_2.guest_list
  L2_2 = L2_2[L1_2]
  L3_2 = L2_2
  L2_2 = L2_2.get_root_transform
  L2_2 = L2_2(L3_2)
  L2_2 = L2_2.gameObject
  return L2_2
end
L0_1.get_first_selected_object = L9_1
return L0_1
