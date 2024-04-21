local L0_1, L1_1, L2_1, L3_1
L0_1 = require
L1_1 = "Ui.Activity.ActivityAvatarRewardPageBinder"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "ActivityAvatarRewardPage"
L2_1 = G
L2_1 = L2_1.UIController
L0_1 = L0_1(L1_1, L2_1)
L1_1 = CS
L1_1 = L1_1.RPG
L1_1 = L1_1.Client
L1_1 = L1_1.GlobalVars
L1_1 = L1_1.s_ModuleManager
L1_1 = L1_1.QuestModule
L2_1 = "SpriteOutput/AvatarDrawCard/"
function L3_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = G
  L1_2 = L1_2.ImportCsToLua
  L1_2 = L1_2.CS_RPG_Client_UILayer_Page
  A0_2._ui_layer = L1_2
  A0_2._pause_game = true
  L2_2 = A0_2
  L1_2 = A0_2._create_binder
  L3_2 = G
  L3_2 = L3_2.ActivityAvatarRewardPageBinder
  L1_2 = L1_2(L2_2, L3_2)
  A0_2._binder = L1_2
  L1_2 = G
  L1_2 = L1_2.ImportCsToLua
  L1_2 = L1_2.TransitionStyle_AboveAndBelowBlack
  A0_2._transition_style = L1_2
end
L0_1.ctor = L3_1
function L3_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2
  A0_2._activity_data = A1_2
  A0_2._avatar_quest_id = A2_2
  L3_2 = L1_1
  L4_2 = L3_2
  L3_2 = L3_2.TryGetQuestData
  L5_2 = A0_2._avatar_quest_id
  L3_2 = L3_2(L4_2, L5_2)
  A0_2._quest_data = L3_2
  L3_2 = A0_2._quest_data
  L3_2 = L3_2.RewardID
  L4_2 = G
  L4_2 = L4_2.Utils
  L4_2 = L4_2.create_lua_table_from_cs_list
  L5_2 = CS
  L5_2 = L5_2.RPG
  L5_2 = L5_2.Client
  L5_2 = L5_2.ItemFactory
  L5_2 = L5_2.CreateDisplayItemDataFromReward
  L6_2 = L3_2
  L5_2, L6_2 = L5_2(L6_2)
  L4_2 = L4_2(L5_2, L6_2)
  L5_2 = L4_2[1]
  L5_2 = L5_2.ConfigID
  A0_2._avatar_id = L5_2
end
L0_1.init = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L2_2 = A0_2
  L1_2 = A0_2.create_short_cut_hint_panel
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_exit_btn
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_close
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_go
  L4_2 = A0_2._on_btn_go
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_receive
  L4_2 = A0_2._on_btn_receive
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.QuestGetReward
  L4_2 = A0_2._on_quest_get_reward
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.text_activity_title
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetTextID
  L3_2 = A0_2._activity_data
  L3_2 = L3_2.TitleName
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.remain_timer
  L2_2 = L1_2
  L1_2 = L1_2.SetTargetTime
  L3_2 = A0_2._activity_data
  L3_2 = L3_2.EndTimeDate
  L4_2 = A0_2._expire_call_back
  L5_2 = A0_2
  L6_2 = 2
  L1_2(L2_2, L3_2, L4_2, L5_2, L6_2)
end
L0_1._on_load = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.panel_avatar_info
  L2_2 = L1_2
  L1_2 = L1_2.setup_view
  L3_2 = A0_2._avatar_id
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2.async_load_sprite_to
  L3_2 = A0_2._binder
  L3_2 = L3_2.img_avatar
  L4_2 = L2_1
  L5_2 = tostring
  L6_2 = A0_2._avatar_id
  L5_2 = L5_2(L6_2)
  L6_2 = ".png"
  L4_2 = L4_2 .. L5_2 .. L6_2
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._refresh_btn_receive_state
  L1_2(L2_2)
end
L0_1._setup_view = L3_1
function L3_1(A0_2)
  local L1_2
  A0_2._activity_data = nil
end
L0_1._on_dispose = L3_1
function L3_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2
  L3_2 = A0_2._binder
  L3_2 = L3_2.node_text_title
  L4_2 = L3_2
  L3_2 = L3_2.SafeSetActive
  L5_2 = A1_2
  L3_2(L4_2, L5_2)
  if A2_2 ~= nil then
    L3_2 = A0_2._binder
    L3_2 = L3_2.text_title
    L4_2 = L3_2
    L3_2 = L3_2.SafeSetTextID
    L5_2 = A2_2
    L3_2(L4_2, L5_2)
  end
end
L0_1.setup_title_text = L3_1
function L3_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2
  L3_2 = A0_2._binder
  L3_2 = L3_2.node_text_title_tip
  L4_2 = L3_2
  L3_2 = L3_2.SafeSetActive
  L5_2 = A1_2
  L3_2(L4_2, L5_2)
  if A2_2 ~= nil then
    L3_2 = A0_2._binder
    L3_2 = L3_2.text_title_tip
    L4_2 = L3_2
    L3_2 = L3_2.SafeSetTextID
    L5_2 = A2_2
    L3_2(L4_2, L5_2)
  end
end
L0_1.setup_title_tip_text = L3_1
function L3_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2
  L3_2 = A0_2._binder
  L3_2 = L3_2.node_text_receive_tip
  L4_2 = L3_2
  L3_2 = L3_2.SafeSetActive
  L5_2 = A1_2
  L3_2(L4_2, L5_2)
  if A2_2 ~= nil then
    L3_2 = A0_2._binder
    L3_2 = L3_2.text_receive_tip
    L4_2 = L3_2
    L3_2 = L3_2.SafeSetTextID
    L5_2 = A2_2
    L6_2 = A0_2._quest_data
    L6_2 = L6_2.FinishWayRow
    L6_2 = L6_2.Progress
    L3_2(L4_2, L5_2, L6_2)
  end
end
L0_1.setup_btn_receive_hint_panel = L3_1
function L3_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2
  L3_2 = A0_2._binder
  L3_2 = L3_2.node_btn_go
  L4_2 = L3_2
  L3_2 = L3_2.SafeSetActive
  L5_2 = A1_2
  L3_2(L4_2, L5_2)
  if A2_2 ~= nil then
    L3_2 = A0_2._binder
    L3_2 = L3_2.text_btn_go
    L4_2 = L3_2
    L3_2 = L3_2.SafeSetTextID
    L5_2 = A2_2
    L3_2(L4_2, L5_2)
  end
end
L0_1.setup_btn_go_view = L3_1
function L3_1(A0_2, A1_2, A2_2)
  A0_2._receive_text_id = A1_2
  A0_2._received_text_id = A2_2
end
L0_1.setup_btn_receive_view = L3_1
function L3_1(A0_2, A1_2, A2_2)
  A0_2._btn_go_callback = A1_2
  A0_2._btn_go_callback_owner = A2_2
end
L0_1.register_on_click_btn_go_callback = L3_1
function L3_1(A0_2, A1_2, A2_2)
  A0_2._back_to_top_page_callback = A1_2
  A0_2._back_to_top_page_callback_owner = A2_2
end
L0_1.register_on_back_to_top_page_callback = L3_1
function L3_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L3_2 = G
  L3_2 = L3_2.RedDotModule
  L3_2 = L3_2.Instance
  L4_2 = L3_2
  L3_2 = L3_2.bind_reddot
  L5_2 = A1_2
  L6_2 = A2_2
  L7_2 = A0_2
  L8_2 = A0_2._binder
  L8_2 = L8_2.node_go_reddot
  L3_2(L4_2, L5_2, L6_2, L7_2, L8_2)
end
L0_1.bind_go_btn_reddot = L3_1
function L3_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L3_2 = G
  L3_2 = L3_2.RedDotModule
  L3_2 = L3_2.Instance
  L4_2 = L3_2
  L3_2 = L3_2.bind_reddot
  L5_2 = A1_2
  L6_2 = A2_2
  L7_2 = A0_2
  L8_2 = A0_2._binder
  L8_2 = L8_2.node_receive_reddot
  L3_2(L4_2, L5_2, L6_2, L7_2, L8_2)
end
L0_1.bind_receive_btn_reddot = L3_1
function L3_1(A0_2, A1_2)
  A0_2._custom_unfinished_toast_text_id = A1_2
end
L0_1.setup_custom_unfinished_toast_text_id = L3_1
function L3_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2
  L3_2 = A0_2._binder
  L3_2 = L3_2.node_level_panel
  L4_2 = L3_2
  L3_2 = L3_2.SafeSetActive
  L5_2 = A1_2
  L3_2(L4_2, L5_2)
  if A2_2 ~= nil then
    L3_2 = A0_2._binder
    L3_2 = L3_2.text_level
    L4_2 = L3_2
    L3_2 = L3_2.SafeSetText
    L5_2 = A2_2
    L3_2(L4_2, L5_2)
  end
end
L0_1.setup_level_panel = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._quest_data
  L1_2 = L1_2.Status
  L2_2 = CS
  L2_2 = L2_2.LEOGBBOPKKO
  L2_2 = L2_2.CMOFEAFMGAK
  L1_2 = L1_2 == L2_2
  if L1_2 then
    L2_2 = A0_2._binder
    L2_2 = L2_2.btn_receive
    L3_2 = L2_2
    L2_2 = L2_2.SafeSetInteractable
    L4_2 = false
    L2_2(L3_2, L4_2)
    L2_2 = A0_2._binder
    L2_2 = L2_2.text_btn_receive
    L3_2 = L2_2
    L2_2 = L2_2.SafeSetTextID
    L4_2 = A0_2._received_text_id
    L2_2(L3_2, L4_2)
  else
    L2_2 = A0_2._binder
    L2_2 = L2_2.btn_receive
    L3_2 = L2_2
    L2_2 = L2_2.SafeSetInteractable
    L4_2 = true
    L2_2(L3_2, L4_2)
    L2_2 = A0_2._binder
    L2_2 = L2_2.text_btn_receive
    L3_2 = L2_2
    L2_2 = L2_2.SafeSetTextID
    L4_2 = A0_2._receive_text_id
    L2_2(L3_2, L4_2)
  end
end
L0_1._refresh_btn_receive_state = L3_1
function L3_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._btn_go_callback
  if L1_2 then
    L1_2 = A0_2._btn_go_callback
    L2_2 = A0_2._btn_go_callback_owner
    L1_2(L2_2)
  end
end
L0_1._on_btn_go = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._quest_data
  L1_2 = L1_2.Status
  L2_2 = CS
  L2_2 = L2_2.LEOGBBOPKKO
  L2_2 = L2_2.JKFPIINHGPD
  if L1_2 ~= L2_2 then
    L1_2 = A0_2._custom_unfinished_toast_text_id
    if L1_2 then
      L1_2 = G
      L1_2 = L1_2.NotifyManager
      L1_2 = L1_2.notify
      L2_2 = G
      L2_2 = L2_2.CS
      L2_2 = L2_2.NotifyType
      L2_2 = L2_2.UIPileToastMessageTextID
      L3_2 = A0_2._custom_unfinished_toast_text_id
      L1_2(L2_2, L3_2)
      return
    end
  end
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.GlobalVars
  L1_2 = L1_2.s_NetworkManager
  L2_2 = L1_2
  L1_2 = L1_2.JCCHEMBPEEE
  L3_2 = A0_2._avatar_quest_id
  L1_2(L2_2, L3_2)
end
L0_1._on_btn_receive = L3_1
function L3_1(A0_2, A1_2)
  local L2_2, L3_2
  L3_2 = A0_2
  L2_2 = A0_2.is_top_page
  L2_2 = L2_2(L3_2)
  if not L2_2 then
    return
  end
  L3_2 = A0_2
  L2_2 = A0_2._refresh_btn_receive_state
  L2_2(L3_2)
end
L0_1._on_quest_get_reward = L3_1
function L3_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2.exit
  L1_2(L2_2)
end
L0_1._expire_call_back = L3_1
function L3_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._back_to_top_page_callback
  if L1_2 then
    L1_2 = A0_2._back_to_top_page_callback
    L2_2 = A0_2._back_to_top_page_callback_owner
    L1_2(L2_2)
  end
end
L0_1._on_return_to_top = L3_1
return L0_1
