local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1, L6_1, L7_1, L8_1, L9_1
L0_1 = require
L1_1 = "Ui.DrinkMaker.Bartend.Components.DrinkMakerBartendTagPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.DrinkMaker.Bartend.Components.DrinkMakerBartendTagPanelBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.DrinkMaker.WorkBook.DrinkMakerNotePanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.DrinkMaker.WorkBook.DrinkMakerNotePanelBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.DrinkMaker.DrinkMakerBarUtils"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "DrinkMakerGuestWorkInfoPanel"
L2_1 = G
L2_1 = L2_1.BasePanel
L0_1 = L0_1(L1_1, L2_1)
L1_1 = 33
L2_1 = 1
L3_1 = 100
L4_1 = "%"
L5_1 = "DrinkMakerTrustHeartAni_02"
L6_1 = "DrinkMakerWorkBookDialog_MonstorActive"
L7_1 = "DrinkMakerWorkBookDialog_ClockEventTip_Finish"
L8_1 = CS
L8_1 = L8_1.RPG
L8_1 = L8_1.Client
L8_1 = L8_1.GlobalVars
L8_1 = L8_1.s_ModuleManager
L8_1 = L8_1.DrinkMakerModule
function L9_1(A0_2)
  local L1_2
  L1_2 = {}
  A0_2._tag_list = L1_2
end
L0_1.ctor = L9_1
function L9_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.scroll_history_list
  L2_2 = L1_2
  L1_2 = L1_2.init
  L3_2 = A0_2
  L4_2 = 0
  L5_2 = A0_2._on_scroll_history_change
  L1_2(L2_2, L3_2, L4_2, L5_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.UIAnimationEvent
  L4_2 = A0_2._on_anim_trust_num_refresh
  L1_2(L2_2, L3_2, L4_2)
end
L0_1._on_load = L9_1
function L9_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  A0_2._guest_data = A1_2
  L2_2 = A0_2._guest_data
  L3_2 = L2_2
  L2_2 = L2_2.IsFinish
  L2_2 = L2_2(L3_2)
  A0_2._is_finish = L2_2
  L3_2 = A0_2
  L2_2 = A0_2._setup_lock
  L2_2(L3_2)
  L2_2 = A0_2._guest_data
  L2_2 = L2_2.IsLock
  if L2_2 then
    L3_2 = A0_2
    L2_2 = A0_2.setup_short_cut_hint_panel
    L4_2 = L2_1
    L2_2(L3_2, L4_2)
    return
  end
  L3_2 = A0_2
  L2_2 = A0_2._setup_guest_name
  L2_2(L3_2)
  L3_2 = A0_2
  L2_2 = A0_2._setup_guest_icon
  L2_2(L3_2)
  L3_2 = A0_2
  L2_2 = A0_2._setup_guest_emotion
  L2_2(L3_2)
  L3_2 = A0_2
  L2_2 = A0_2._setup_guest_reward
  L2_2(L3_2)
  L3_2 = A0_2
  L2_2 = A0_2._setup_finish
  L2_2(L3_2)
  L3_2 = A0_2
  L2_2 = A0_2._setup_faith_img
  L2_2(L3_2)
  L3_2 = A0_2
  L2_2 = A0_2._setup_faith_text
  L2_2(L3_2)
  L3_2 = A0_2
  L2_2 = A0_2._setup_history
  L2_2(L3_2)
  L2_2 = G
  L2_2 = L2_2.Utils
  L2_2 = L2_2.invoke_next_frame_callback
  L3_2 = A0_2._setup_scroll_hint
  L4_2 = A0_2
  L2_2(L3_2, L4_2)
end
L0_1.setup_view = L9_1
function L9_1(A0_2, A1_2)
  A0_2._wait_unlock_anim_play = A1_2
end
L0_1.set_wait_unlock_anim_play = L9_1
function L9_1(A0_2, A1_2)
  A0_2._wait_finish_anim_play = A1_2
end
L0_1.set_wait_finish_anim_play = L9_1
function L9_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  A0_2._wait_unlock_anim_play = false
  L1_2 = A0_2._guest_data
  L1_2 = L1_2.DayCount
  if L1_2 == 0 then
    return
  end
  L1_2 = A0_2._binder
  L1_2 = L1_2.scroll_history_list
  L2_2 = L1_2
  L1_2 = L1_2.GetShownItemByItemIndex
  L3_2 = A0_2._guest_data
  L3_2 = L3_2.DayCount
  L3_2 = L3_2 - 1
  L1_2 = L1_2(L2_2, L3_2)
  if L1_2 ~= nil then
    L2_2 = L1_2.UserObjectData
    if L2_2 ~= nil then
      L2_2 = L1_2.UserObjectData
      L4_2 = L2_2
      L3_2 = L2_2.play_unlock_anim
      L3_2(L4_2)
    end
  end
end
L0_1.play_note_unlock_anim = L9_1
function L9_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.anim_trust
  L2_2 = L1_2
  L1_2 = L1_2.Play
  L3_2 = L5_1
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2._setup_faith_img
  L1_2(L2_2)
end
L0_1.play_trust_anim = L9_1
function L9_1(A0_2)
  local L1_2, L2_2, L3_2
  A0_2._wait_finish_anim_play = false
  L2_2 = A0_2
  L1_2 = A0_2._setup_guest_icon
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._setup_finish
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._setup_guest_reward
  L1_2(L2_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.anim_finish
  L2_2 = L1_2
  L1_2 = L1_2.Play
  L3_2 = L7_1
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.panel_guest
  L2_2 = L1_2
  L1_2 = L1_2.play_anim
  L3_2 = L6_1
  L1_2(L2_2, L3_2)
end
L0_1.play_finish_anim = L9_1
function L9_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.panel_reward
  L2_2 = L1_2
  L1_2 = L1_2.try_get_reward
  L1_2(L2_2)
end
L0_1.try_get_reward = L9_1
function L9_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_empty
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = A0_2._guest_data
  L3_2 = L3_2.IsLock
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_detail
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = A0_2._guest_data
  L3_2 = L3_2.IsLock
  L3_2 = not L3_2
  L1_2(L2_2, L3_2)
end
L0_1._setup_lock = L9_1
function L9_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.txt_name
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetTextID
  L3_2 = A0_2._guest_data
  L3_2 = L3_2.GuestRow
  L3_2 = L3_2.BartenderGuestName
  L1_2(L2_2, L3_2)
end
L0_1._setup_guest_name = L9_1
function L9_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = A0_2._wait_finish_anim_play
  L1_2 = not L1_2 and L1_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.panel_guest
  L3_2 = L2_2
  L2_2 = L2_2.setup_view
  L4_2 = A0_2._guest_data
  L4_2 = L4_2.GuestRow
  L5_2 = L1_2
  L2_2(L3_2, L4_2, L5_2)
end
L0_1._setup_guest_icon = L9_1
function L9_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2
  L1_2 = A0_2._guest_data
  L1_2 = L1_2.GuestRow
  L1_2 = L1_2.EmotionProblemList
  L2_2 = 0
  L3_2 = L1_2.Length
  L3_2 = L3_2 - 1
  L4_2 = 1
  for L5_2 = L2_2, L3_2, L4_2 do
    L6_2 = L1_2[L5_2]
    L7_2 = A0_2._binder
    L7_2 = L7_2.emotion_panel_list
    L8_2 = L5_2 + 1
    L7_2 = L7_2[L8_2]
    if L7_2 ~= nil then
      L9_2 = L7_2
      L8_2 = L7_2.setup_view
      L10_2 = L6_2
      L11_2 = A0_2._is_finish
      L8_2(L9_2, L10_2, L11_2)
    end
  end
end
L0_1._setup_guest_emotion = L9_1
function L9_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.panel_reward
  L2_2 = L1_2
  L1_2 = L1_2.setup_view
  L3_2 = A0_2._guest_data
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._wait_unlock_anim_play
  if L1_2 then
    L1_2 = A0_2._binder
    L1_2 = L1_2.panel_reward
    L2_2 = L1_2
    L1_2 = L1_2.wait_unlock_anim
    L1_2(L2_2)
  end
  L1_2 = A0_2._binder
  L1_2 = L1_2.panel_finish_reward
  L2_2 = L1_2
  L1_2 = L1_2.setup_view
  L3_2 = A0_2._guest_data
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._wait_finish_anim_play
  if L1_2 then
    L1_2 = A0_2._binder
    L1_2 = L1_2.panel_finish_reward
    L2_2 = L1_2
    L1_2 = L1_2.wait_finish_anim
    L1_2(L2_2)
  end
end
L0_1._setup_guest_reward = L9_1
function L9_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._wait_finish_anim_play
  L1_2 = not L1_2 and L1_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_finish
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = L1_2
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_unfinish
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = not L1_2
  L2_2(L3_2, L4_2)
end
L0_1._setup_finish = L9_1
function L9_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2._get_faith_progress
  L1_2 = L1_2(L2_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.img_trust_progress
  L2_2.fillAmount = L1_2
end
L0_1._setup_faith_img = L9_1
function L9_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L2_2 = A0_2
  L1_2 = A0_2._get_faith_progress
  L1_2 = L1_2(L2_2)
  L2_2 = math
  L2_2 = L2_2.floor
  L3_2 = L3_1
  L3_2 = L1_2 * L3_2
  L2_2 = L2_2(L3_2)
  L3_2 = L4_1
  L2_2 = L2_2 .. L3_2
  L3_2 = A0_2._binder
  L3_2 = L3_2.txt_trust
  L4_2 = L3_2
  L3_2 = L3_2.SafeSetText
  L5_2 = L2_2
  L3_2(L4_2, L5_2)
end
L0_1._setup_faith_text = L9_1
function L9_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = A0_2._guest_data
  L1_2 = L1_2.GuestRow
  L1_2 = L1_2.MaxFaith
  L2_2 = A0_2._guest_data
  L2_2 = L2_2.Faith
  L3_2 = A0_2._wait_unlock_anim_play
  if L3_2 then
    L3_2 = math
    L3_2 = L3_2.max
    L4_2 = 0
    L5_2 = L2_2 - 1
    L3_2 = L3_2(L4_2, L5_2)
    L2_2 = L3_2
  end
  if L1_2 == 0 then
    L3_2 = 0
    if L3_2 then
      goto lbl_21
    end
  end
  L3_2 = L2_2 / L1_2
  ::lbl_21::
  return L3_2
end
L0_1._get_faith_progress = L9_1
function L9_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L1_2 = A0_2._guest_data
  L1_2 = L1_2.MaxDayCount
  L2_2 = A0_2._binder
  L2_2 = L2_2.scroll_history_list
  L3_2 = L2_2
  L2_2 = L2_2.SetListItemCount
  L4_2 = L1_2
  L5_2 = true
  L2_2(L3_2, L4_2, L5_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.scroll_history_list
  L3_2 = L2_2
  L2_2 = L2_2.RefreshAllShownItem
  L2_2(L3_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.scroll_rect
  L2_2.verticalNormalizedPosition = 1
  L2_2 = A0_2._wait_unlock_anim_play
  if L2_2 then
    L2_2 = A0_2._guest_data
    L2_2 = L2_2.DayCount
    if L2_2 ~= 0 then
      L2_2 = A0_2._binder
      L2_2 = L2_2.scroll_history_list
      L3_2 = L2_2
      L2_2 = L2_2.GetShownItemByItemIndex
      L4_2 = A0_2._guest_data
      L4_2 = L4_2.DayCount
      L4_2 = L4_2 - 1
      L2_2 = L2_2(L3_2, L4_2)
      if L2_2 ~= nil then
        L3_2 = L2_2.UserObjectData
        if L3_2 ~= nil then
          L3_2 = L2_2.UserObjectData
          L4_2 = A0_2._binder
          L4_2 = L4_2.scroll_rect
          L5_2 = L4_2
          L4_2 = L4_2.ScrollToTransform
          L7_2 = L3_2
          L6_2 = L3_2.get_root_transform
          L6_2, L7_2 = L6_2(L7_2)
          L4_2(L5_2, L6_2, L7_2)
          L5_2 = L3_2
          L4_2 = L3_2.wait_unlock_anim
          L4_2(L5_2)
        end
      end
    end
  end
end
L0_1._setup_history = L9_1
function L9_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._binder
  if L1_2 == nil then
    return
  end
  L2_2 = A0_2
  L1_2 = A0_2.setup_short_cut_hint_panel
  L3_2 = L1_1
  L4_2 = A0_2._binder
  L4_2 = L4_2.scroll_rect
  L1_2(L2_2, L3_2, L4_2)
end
L0_1._setup_scroll_hint = L9_1
function L9_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L3_2 = nil
  L5_2 = A1_2
  L4_2 = A1_2.NewListViewItem
  L6_2 = 0
  L4_2 = L4_2(L5_2, L6_2)
  L3_2 = L4_2
  L4_2 = L3_2.UserObjectData
  if L4_2 == nil then
    L6_2 = A0_2
    L5_2 = A0_2.create_panel
    L7_2 = G
    L7_2 = L7_2.DrinkMakerNotePanel
    L8_2 = G
    L8_2 = L8_2.DrinkMakerNotePanelBinder
    L5_2 = L5_2(L6_2, L7_2, L8_2)
    L4_2 = L5_2
    L6_2 = L4_2
    L5_2 = L4_2.bind
    L7_2 = L3_2.transform
    L5_2(L6_2, L7_2)
    L3_2.UserObjectData = L4_2
  end
  L5_2 = A2_2 + 1
  L7_2 = L4_2
  L6_2 = L4_2.setup_view
  L8_2 = A0_2._guest_data
  L9_2 = L5_2
  L6_2(L7_2, L8_2, L9_2)
  return L3_2
end
L0_1._on_scroll_history_change = L9_1
function L9_1(A0_2, A1_2)
  local L2_2, L3_2
  if A1_2 ~= "TrustNumIncrease" then
    return
  end
  L3_2 = A0_2
  L2_2 = A0_2._setup_faith_text
  L2_2(L3_2)
end
L0_1._on_anim_trust_num_refresh = L9_1
return L0_1
