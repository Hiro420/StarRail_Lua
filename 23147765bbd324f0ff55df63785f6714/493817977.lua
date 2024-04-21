local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1, L6_1, L7_1, L8_1
L0_1 = require
L1_1 = "Utilities.FriendUtils"
L0_1(L1_1)
L0_1 = CS
L0_1 = L0_1.RPG
L0_1 = L0_1.Client
L0_1 = L0_1.GlobalVars
L0_1 = L0_1.s_ModuleManager
L0_1 = L0_1.MonopolyModule
L1_1 = CS
L1_1 = L1_1.RPG
L1_1 = L1_1.Client
L1_1 = L1_1.GlobalVars
L1_1 = L1_1.s_ModuleManager
L1_1 = L1_1.FriendModule
L2_1 = {}
L2_1.READY = 1
L2_1.ROLL = 2
L2_1.REROLL = 3
L2_1.FINISH = 4
L3_1 = "MonopolyEventRollDialog_EventPic_FadeIn"
L4_1 = "CommonAlphaFadeIn_20f"
L5_1 = "CommonAlphaFadeOut_15f"
L6_1 = G
L6_1 = L6_1.Class
L7_1 = "ActivityMonopolyEventRollDicePanel"
L8_1 = G
L8_1 = L8_1.BasePanel
L6_1 = L6_1(L7_1, L8_1)
function L7_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2
  L4_2 = A0_2
  L3_2 = A0_2.fetch_ui3d
  L3_2 = L3_2(L4_2)
  A0_2._ui_3d_page = L3_2
end
L6_1.ctor = L7_1
function L7_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_roll
  L4_2 = A0_2._on_btn_roll
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_continue
  L4_2 = A0_2._on_btn_continue
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_leave
  L4_2 = A0_2._on_btn_leave
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_reroll
  L4_2 = A0_2._on_btn_reroll
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.panel_option_list
  L2_2 = L1_2
  L1_2 = L1_2.register_option_active_anim_callback
  L3_2 = A0_2._on_option_active_anim_finish
  L4_2 = A0_2
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.panel_dice
  L2_2 = L1_2
  L1_2 = L1_2.register_dice_anim_finish_callback
  L3_2 = A0_2._on_dice_result_performance_finish
  L4_2 = A0_2
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_handlers
  L1_2(L2_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.rpg_anim_event
  L2_2 = L1_2
  L1_2 = L1_2.AddAnimationEvent
  L3_2 = L5_1
  function L4_2()
    local L0_3, L1_3
    L0_3 = A0_2
    L1_3 = L0_3
    L0_3 = L0_3._on_fade_out_finish
    L0_3(L1_3)
  end
  L1_2(L2_2, L3_2, L4_2)
end
L6_1._on_load = L7_1
function L7_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2, L5_2, L6_2, L7_2, L8_2
  A0_2._event_id = A1_2
  L4_2 = G
  L4_2 = L4_2.Utils
  L4_2 = L4_2.create_lua_table_from_cs_list
  L5_2 = A2_2
  L4_2 = L4_2(L5_2)
  A0_2._option_data_table = L4_2
  A0_2._can_skip = A3_2
  L4_2 = A0_2._binder
  L4_2 = L4_2.panel_option_list
  L5_2 = L4_2
  L4_2 = L4_2.setup_view
  L6_2 = A1_2
  L7_2 = A2_2
  L4_2(L5_2, L6_2, L7_2)
  A0_2._is_can_reroll = false
  L5_2 = A0_2
  L4_2 = A0_2._set_reroll_btn_text
  L4_2(L5_2)
  L4_2 = CS
  L4_2 = L4_2.RPG
  L4_2 = L4_2.GameCore
  L4_2 = L4_2.ItemExcelTable
  L4_2 = L4_2.GetData
  L5_2 = CS
  L5_2 = L5_2.RPG
  L5_2 = L5_2.Client
  L5_2 = L5_2.MonopolyUtils
  L5_2 = L5_2.GetMonopolyReRollItemID
  L5_2, L6_2, L7_2, L8_2 = L5_2()
  L4_2 = L4_2(L5_2, L6_2, L7_2, L8_2)
  L6_2 = A0_2
  L5_2 = A0_2._async_load_sprite_to
  L7_2 = A0_2._binder
  L7_2 = L7_2.img_reroll
  L8_2 = L4_2.ItemIconPath
  L5_2(L6_2, L7_2, L8_2)
  L6_2 = A0_2
  L5_2 = A0_2._set_event_state
  L7_2 = L2_1.READY
  L5_2(L6_2, L7_2)
end
L6_1.setup_view = L7_1
function L7_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.text_desc
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetTextID
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.text_desc_sp
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetTextID
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
  L2_2 = L0_1.EventInfo
  L3_2 = L2_2
  L2_2 = L2_2.TryGetMonopolyEventDataItem
  L4_2 = A0_2._event_id
  L2_2 = L2_2(L3_2, L4_2)
  L3_2 = A0_2._binder
  L3_2 = L3_2.text_desc
  L4_2 = L3_2
  L3_2 = L3_2.SafeSetActive
  L5_2 = L2_2.IsSpecial
  L5_2 = not L5_2
  L3_2(L4_2, L5_2)
  L3_2 = A0_2._binder
  L3_2 = L3_2.text_desc_sp
  L4_2 = L3_2
  L3_2 = L3_2.SafeSetActive
  L5_2 = L2_2.IsSpecial
  L3_2(L4_2, L5_2)
end
L6_1.setup_text_desc = L7_1
function L7_1(A0_2)
  local L1_2
end
L6_1._on_dispose = L7_1
function L7_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.UIMonopolyRollRandomEventResult
  L4_2 = A0_2._on_roll_result
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.UIMonopolyGiveUpCurEventSuccess
  L4_2 = A0_2._on_event_finish
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.FriendListRefreshed
  L4_2 = A0_2._on_friend_list_refreshed
  L1_2(L2_2, L3_2, L4_2)
end
L6_1._add_handlers = L7_1
function L7_1(A0_2)
  local L1_2, L2_2, L3_2
  L2_2 = A0_2
  L1_2 = A0_2.show_full_screen_block_for_packet
  L3_2 = CS
  L3_2 = L3_2.PBIBDHBOIGI
  L3_2 = L3_2.FGEKGFOLHHE
  L1_2(L2_2, L3_2)
  L1_2 = L0_1
  L2_2 = L1_2
  L1_2 = L1_2.SendMonopolyRollRandomCsReq
  L3_2 = A0_2._event_id
  L1_2(L2_2, L3_2)
end
L6_1._on_btn_roll = L7_1
function L7_1(A0_2)
  local L1_2, L2_2, L3_2
  L2_2 = A0_2
  L1_2 = A0_2.show_full_screen_block_for_packet
  L3_2 = CS
  L3_2 = L3_2.PBIBDHBOIGI
  L3_2 = L3_2.IMPLFNNOJMD
  L1_2(L2_2, L3_2)
  L1_2 = L0_1
  L2_2 = L1_2
  L1_2 = L1_2.SendMonopolyConfirmRandomCsReq
  L3_2 = A0_2._event_id
  L1_2(L2_2, L3_2)
end
L6_1._on_btn_continue = L7_1
function L7_1(A0_2)
  local L1_2, L2_2, L3_2
  L2_2 = A0_2
  L1_2 = A0_2.show_full_screen_block_for_packet
  L3_2 = CS
  L3_2 = L3_2.PBIBDHBOIGI
  L3_2 = L3_2.PAFHAIEMHBD
  L1_2(L2_2, L3_2)
  L1_2 = L0_1
  L2_2 = L1_2
  L1_2 = L1_2.SendMonopolyGiveUpCurContentCsReq
  L3_2 = A0_2._event_id
  L1_2(L2_2, L3_2)
end
L6_1._on_btn_leave = L7_1
function L7_1(A0_2)
  local L1_2, L2_2, L3_2
  L2_2 = A0_2
  L1_2 = A0_2.show_full_screen_block_for_packet
  L3_2 = CS
  L3_2 = L3_2.PBIBDHBOIGI
  L3_2 = L3_2.KOICEDALEFB
  L1_2(L2_2, L3_2)
  L1_2 = L0_1
  L2_2 = L1_2
  L1_2 = L1_2.SendMonopolyReRollRandomCsReq
  L3_2 = A0_2._event_id
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.panel_option_list
  L2_2 = L1_2
  L1_2 = L1_2.reset_all_option_state
  L1_2(L2_2)
end
L6_1._on_btn_reroll = L7_1
function L7_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L2_2 = A1_2.RollRandomList
  L2_2 = L2_2[0]
  L3_2 = A1_2.RollRandomList
  L3_2 = L3_2[1]
  L5_2 = A0_2
  L4_2 = A0_2.set_roll_result
  L6_2 = L2_2
  L7_2 = L3_2
  L8_2 = A1_2.ExtraRollResult
  L9_2 = A1_2.OptionID
  L4_2(L5_2, L6_2, L7_2, L8_2, L9_2)
end
L6_1._on_roll_result = L7_1
function L7_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._extra_roll_result
  if 0 < L1_2 then
    L1_2 = A0_2._binder
    L1_2 = L1_2.panel_option_list
    L2_2 = L1_2
    L1_2 = L1_2.set_option_take_effect_by_result
    L3_2 = A0_2._roll_result
    L1_2(L2_2, L3_2)
  else
    L1_2 = A0_2._binder
    L1_2 = L1_2.panel_option_list
    L2_2 = L1_2
    L1_2 = L1_2.set_option_take_effect_by_option_id
    L3_2 = A0_2._take_effect_option_id
    L1_2(L2_2, L3_2)
  end
end
L6_1._on_dice_result_performance_finish = L7_1
function L7_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2
  A0_2._active_option_data = A2_2
  L3_2 = A0_2._extra_roll_result
  if 0 < L3_2 then
    A0_2._extra_roll_result = 0
    L3_2 = A0_2._binder
    L3_2 = L3_2.panel_dice
    L4_2 = L3_2
    L3_2 = L3_2.play_dice_add_anim
    L5_2 = A0_2._roll_result
    L6_2 = A0_2._extra_roll_result
    L3_2(L4_2, L5_2, L6_2)
    return
  end
  L3_2 = A1_2 or L3_2
  if A1_2 then
    L3_2 = L0_1.SystemInfo
    L3_2 = L3_2.ReRollNum
    L3_2 = 0 < L3_2
  end
  A0_2._is_can_reroll = L3_2
  L4_2 = A0_2
  L3_2 = A0_2._set_reroll_btn_text
  L3_2(L4_2)
  L4_2 = A0_2
  L3_2 = A0_2._set_event_state
  L5_2 = L2_1.FINISH
  L3_2(L4_2, L5_2)
end
L6_1._on_option_active_anim_finish = L7_1
function L7_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._owner
  L2_2 = L1_2
  L1_2 = L1_2.exit
  L1_2(L2_2)
end
L6_1._on_event_finish = L7_1
function L7_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2._check_btn_roll_active
  L1_2(L2_2)
end
L6_1._on_friend_list_refreshed = L7_1
function L7_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.UIAnimationUtils
  L1_2 = L1_2.PlayFromBegin
  L2_2 = A0_2._binder
  L2_2 = L2_2.anim_btn
  L3_2 = L4_1
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2._set_event_state
  L3_2 = L2_1.FINISH
  L1_2(L2_2, L3_2)
end
L6_1._on_fade_out_finish = L7_1
function L7_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = A0_2._event_state
  L3_2 = L2_1.ROLL
  if L2_2 == L3_2 then
    L2_2 = L2_1.FINISH
    if A1_2 == L2_2 then
      A0_2._event_state = A1_2
      L2_2 = CS
      L2_2 = L2_2.RPG
      L2_2 = L2_2.Client
      L2_2 = L2_2.UIAnimationUtils
      L2_2 = L2_2.PlayFromBegin
      L3_2 = A0_2._binder
      L3_2 = L3_2.anim_btn
      L4_2 = L5_1
      L2_2(L3_2, L4_2)
      return
    end
  end
  A0_2._event_state = A1_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.btn_roll
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = A0_2._event_state
  L5_2 = L2_1.READY
  L4_2 = L4_2 == L5_2
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.btn_roll
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetInteractable
  L4_2 = A0_2._event_state
  L5_2 = L2_1.READY
  L4_2 = L4_2 == L5_2
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.btn_reroll
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = A0_2._event_state
  L5_2 = L2_1.REROLL
  L4_2 = L4_2 == L5_2
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.btn_reroll
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetInteractable
  L4_2 = A0_2._event_state
  L5_2 = L2_1.FINISH
  L4_2 = L4_2 == L5_2 and L4_2
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.btn_continue
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = A0_2._event_state
  L5_2 = L2_1.REROLL
  L4_2 = L4_2 == L5_2
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.btn_continue
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetInteractable
  L4_2 = A0_2._event_state
  L5_2 = L2_1.FINISH
  L4_2 = L4_2 == L5_2
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.btn_leave
  if L2_2 ~= nil then
    L2_2 = A0_2._binder
    L2_2 = L2_2.btn_leave
    L3_2 = L2_2
    L2_2 = L2_2.SafeSetActive
    L4_2 = A0_2._event_state
    L5_2 = L2_1.FINISH
    L4_2 = L4_2 ~= L5_2 and L4_2
    L2_2(L3_2, L4_2)
    L2_2 = A0_2._binder
    L2_2 = L2_2.btn_leave
    L3_2 = L2_2
    L2_2 = L2_2.SafeSetInteractable
    L4_2 = A0_2._event_state
    L5_2 = L2_1.READY
    L4_2 = L4_2 == L5_2
    L2_2(L3_2, L4_2)
  end
  L2_2 = A0_2._event_state
  L3_2 = L2_1.READY
  if L2_2 == L3_2 then
    L3_2 = A0_2
    L2_2 = A0_2._check_btn_roll_active
    L2_2(L3_2)
  end
end
L6_1._set_event_state = L7_1
function L7_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L1_2 = L1_1.IsBriefFriendInfoGot
  if not L1_2 then
    L2_2 = A0_2
    L1_2 = A0_2.show_full_screen_block_for_packet
    L3_2 = CS
    L3_2 = L3_2.PBIBDHBOIGI
    L3_2 = L3_2.BPJBLBIIEPJ
    L1_2(L2_2, L3_2)
    L1_2 = G
    L1_2 = L1_2.FriendUtils
    L1_2 = L1_2.refresh_friend_data
    L1_2()
    return
  end
  L1_2 = A0_2._option_data_table
  if L1_2 == nil then
    return
  end
  L1_2 = 1
  L2_2 = A0_2._option_data_table
  L2_2 = #L2_2
  L3_2 = 1
  for L4_2 = L1_2, L2_2, L3_2 do
    L5_2 = A0_2._option_data_table
    L5_2 = L5_2[L4_2]
    L6_2 = L5_2
    L5_2 = L5_2.IsOptionNeedSelectFriend
    L5_2 = L5_2(L6_2)
    if L5_2 then
      L5_2 = A0_2._binder
      L5_2 = L5_2.btn_roll
      L6_2 = L5_2
      L5_2 = L5_2.SafeSetInteractable
      L7_2 = L1_1
      L8_2 = L7_2
      L7_2 = L7_2.GetFriendList
      L7_2 = L7_2(L8_2)
      L7_2 = L7_2.Count
      L7_2 = 0 < L7_2
      L5_2(L6_2, L7_2)
      return
    end
  end
end
L6_1._check_btn_roll_active = L7_1
function L7_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = G
  L1_2 = L1_2.TextmapStatic
  L1_2 = L1_2.GetText
  L2_2 = "UIText_ActivityMonopoly_Event_Random_ReRoll_BtnTimes"
  L3_2 = L0_1.SystemInfo
  L3_2 = L3_2.ReRollNum
  L1_2 = L1_2(L2_2, L3_2)
  L2_2 = nil
  L3_2 = L0_1.SystemInfo
  L3_2 = L3_2.ReRollNum
  if L3_2 == 0 then
    L3_2 = string
    L3_2 = L3_2.format
    L4_2 = "<color=\"#EB4D3D\">%s</color>"
    L5_2 = L1_2
    L3_2 = L3_2(L4_2, L5_2)
    L2_2 = L3_2
  else
    L2_2 = L1_2
  end
  L3_2 = A0_2._binder
  L3_2 = L3_2.text_reroll_num
  L4_2 = L3_2
  L3_2 = L3_2.SafeSetText
  L5_2 = L2_2
  L3_2(L4_2, L5_2)
end
L6_1._set_reroll_btn_text = L7_1
function L7_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._can_skip
  if L1_2 then
    L1_2 = A0_2._event_state
    L2_2 = L2_1.READY
    if L1_2 == L2_2 then
      L2_2 = A0_2
      L1_2 = A0_2.show_full_screen_block_for_packet
      L3_2 = CS
      L3_2 = L3_2.PBIBDHBOIGI
      L3_2 = L3_2.PAFHAIEMHBD
      L1_2(L2_2, L3_2)
      L1_2 = L0_1
      L2_2 = L1_2
      L1_2 = L1_2.SendMonopolyGiveUpCurContentCsReq
      L3_2 = A0_2._event_id
      L1_2(L2_2, L3_2)
    end
  end
end
L6_1.check_in_control_exit = L7_1
function L7_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.panel_dice
  L3_2 = L2_2
  L2_2 = L2_2.safe_set_active
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._ui_3d_page
  L3_2 = L2_2
  L2_2 = L2_2.set_random_event_dice_active
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
end
L6_1.set_dice_panel_active = L7_1
function L7_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_roll
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
end
L6_1.set_roll_event_info_active = L7_1
function L7_1(A0_2, A1_2, A2_2)
  A0_2._roll_finish_callback = A1_2
  A0_2._roll_finish_handler = A2_2
end
L6_1.register_roll_finish_callback = L7_1
function L7_1(A0_2, A1_2, A2_2, A3_2, A4_2)
  local L5_2, L6_2, L7_2, L8_2
  L5_2 = A1_2 + A2_2
  A0_2._roll_result = L5_2
  A0_2._extra_roll_result = A3_2
  A0_2._take_effect_option_id = A4_2
  L5_2 = A0_2._binder
  L5_2 = L5_2.panel_dice
  L6_2 = L5_2
  L5_2 = L5_2.play_dice_anim
  L7_2 = A1_2
  L8_2 = A2_2
  L5_2(L6_2, L7_2, L8_2)
  L5_2 = CS
  L5_2 = L5_2.RPG
  L5_2 = L5_2.Client
  L5_2 = L5_2.UIAnimationUtils
  L5_2 = L5_2.PlayFromBegin
  L6_2 = A0_2._binder
  L6_2 = L6_2.anim_pic
  L7_2 = L3_1
  L5_2(L6_2, L7_2)
  L5_2 = A0_2._event_state
  L6_2 = L2_1.READY
  if L5_2 == L6_2 then
    L6_2 = A0_2
    L5_2 = A0_2._set_event_state
    L7_2 = L2_1.ROLL
    L5_2(L6_2, L7_2)
  else
    L6_2 = A0_2
    L5_2 = A0_2._set_event_state
    L7_2 = L2_1.REROLL
    L5_2(L6_2, L7_2)
  end
end
L6_1.set_roll_result = L7_1
return L6_1
