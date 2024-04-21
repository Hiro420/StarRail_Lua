local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1, L6_1, L7_1
L0_1 = CS
L0_1 = L0_1.RPG
L0_1 = L0_1.Client
L0_1 = L0_1.GlobalVars
L0_1 = L0_1.s_ModuleManager
L0_1 = L0_1.ActivityMonsterResearchModule
L1_1 = CS
L1_1 = L1_1.RPG
L1_1 = L1_1.GameCore
L1_1 = L1_1.ActivityMonsterResearchConstExcelTable
L1_1 = L1_1.GetData
L2_1 = "PenaconyGift_ContentID"
L1_1 = L1_1(L2_1)
L1_1 = L1_1.Value
L2_1 = "PenaconyGiftEnterPage_Transported"
L3_1 = "PenaconyGiftEnterPage_Unlock"
L4_1 = "PenaconyGiftEnterPage_Unlock_Last"
L5_1 = G
L5_1 = L5_1.Class
L6_1 = "PenaconyGiftItemPanel"
L7_1 = G
L7_1 = L7_1.BasePanel
L5_1 = L5_1(L6_1, L7_1)
function L6_1(A0_2, A1_2, A2_2)
  A0_2._callback = nil
  A0_2._callback_handler = nil
end
L5_1.ctor = L6_1
function L6_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_root
  L4_2 = A0_2._on_btn_root
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.btn_root
  function L2_2()
    local L0_3, L1_3, L2_3, L3_3, L4_3
    L0_3 = G
    L0_3 = L0_3.Utils
    L0_3 = L0_3.invoke_callback
    L1_3 = A0_2._select_callback
    L2_3 = A0_2._select_callback_handler
    L3_3 = A0_2._research_id
    L4_3 = false
    L0_3(L1_3, L2_3, L3_3, L4_3)
  end
  L1_2.onSelectTrigger = L2_2
end
L5_1._on_load = L6_1
function L6_1(A0_2)
  local L1_2
  A0_2._callback = nil
  A0_2._callback_handler = nil
  L1_2 = A0_2._binder
  L1_2 = L1_2.btn_root
  L1_2.onSelectTrigger = nil
end
L5_1._on_dispose = L6_1
function L6_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2
  A0_2._research_id = A1_2
  L3_2 = L0_1
  L4_2 = L3_2
  L3_2 = L3_2.TryGetResearchData
  L5_2 = A1_2
  L3_2 = L3_2(L4_2, L5_2)
  A0_2._research_data = L3_2
  L3_2 = A0_2._research_data
  L3_2 = L3_2.ResearchRow
  A0_2._research_row = L3_2
  L3_2 = A0_2._research_data
  L3_2 = L3_2.QuestionDataRow
  A0_2._question_row = L3_2
  L3_2 = A0_2._research_data
  L3_2 = L3_2.IsUnlock
  A0_2._is_unlock = L3_2
  L3_2 = A0_2._research_id
  L4_2 = L0_1
  L5_2 = L4_2
  L4_2 = L4_2.TryGetContentData
  L6_2 = L1_1
  L4_2 = L4_2(L5_2, L6_2)
  L4_2 = L4_2.LastResearchID
  L3_2 = L3_2 == L4_2
  A0_2._is_last_day = L3_2
  L3_2 = A0_2._is_last_day
  if not L3_2 then
    L3_2 = A0_2._binder
    L3_2 = L3_2.anim_root
    L4_2 = L3_2
    L3_2 = L3_2.GetClip
    L5_2 = L3_1
    L3_2 = L3_2(L4_2, L5_2)
    L3_2 = L3_2.length
    A0_2._unlock_anim_length = L3_2
    L4_2 = A0_2
    L3_2 = A0_2._add_count_down_timer
    L5_2 = A0_2._setup_state
    L6_2 = A0_2._unlock_anim_length
    L3_2 = L3_2(L4_2, L5_2, L6_2)
    A0_2._unlock_anim_timer = L3_2
  else
    L3_2 = A0_2._binder
    L3_2 = L3_2.anim_root
    L4_2 = L3_2
    L3_2 = L3_2.GetClip
    L5_2 = L4_1
    L3_2 = L3_2(L4_2, L5_2)
    L3_2 = L3_2.length
    A0_2._unlock_anim_length = L3_2
    L4_2 = A0_2
    L3_2 = A0_2._add_count_down_timer
    L5_2 = A0_2._setup_state
    L6_2 = A0_2._unlock_anim_length
    L3_2 = L3_2(L4_2, L5_2, L6_2)
    A0_2._unlock_anim_timer = L3_2
  end
  L4_2 = A0_2
  L3_2 = A0_2._bind_reddot
  L3_2(L4_2)
  L4_2 = A0_2
  L3_2 = A0_2._refresh_view
  L3_2(L4_2)
end
L5_1.setup_view = L6_1
function L6_1(A0_2)
  local L1_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.btn_root
  L1_2 = L1_2.gameObject
  return L1_2
end
L5_1.get_first_selected_object = L6_1
function L6_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = G
  L1_2 = L1_2.Utils
  L1_2 = L1_2.invoke_callback
  L2_2 = A0_2._callback
  L3_2 = A0_2._callback_handler
  L4_2 = A0_2._research_id
  L5_2 = A0_2._is_unlock
  L1_2(L2_2, L3_2, L4_2, L5_2)
end
L5_1._on_btn_root = L6_1
function L6_1(A0_2, A1_2, A2_2)
  A0_2._callback = A1_2
  A0_2._callback_handler = A2_2
end
L5_1.register_btn_callback = L6_1
function L6_1(A0_2)
  local L1_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.btn_root
  return L1_2
end
L5_1.get_root_btn = L6_1
function L6_1(A0_2, A1_2, A2_2)
  A0_2._select_callback = A1_2
  A0_2._select_callback_handler = A2_2
end
L5_1.register_btn_select_navigation_callback = L6_1
function L6_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2._setup_gift_info
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._setup_state_info
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._setup_timer
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._setup_state
  L1_2(L2_2)
end
L5_1._refresh_view = L6_1
function L6_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = G
  L1_2 = L1_2.RedDotModule
  L1_2 = L1_2.Instance
  L2_2 = L1_2
  L1_2 = L1_2.bind_reddot
  L3_2 = "PenaconyGiftItem"
  L4_2 = A0_2._research_id
  L5_2 = A0_2
  L6_2 = A0_2._binder
  L6_2 = L6_2.node_reddot
  L1_2(L2_2, L3_2, L4_2, L5_2, L6_2)
end
L5_1._bind_reddot = L6_1
function L6_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._is_unlock
  if L1_2 then
    L1_2 = A0_2._binder
    L1_2 = L1_2.text_name
    L2_2 = L1_2
    L1_2 = L1_2.SafeSetTextID
    L3_2 = A0_2._question_row
    L3_2 = L3_2.Name
    L1_2(L2_2, L3_2)
  else
    L1_2 = A0_2._binder
    L1_2 = L1_2.text_name
    L2_2 = L1_2
    L1_2 = L1_2.SafeSetTextID
    L3_2 = "UIText_PenaconyGift_NameUnknown"
    L1_2(L2_2, L3_2)
  end
  L2_2 = A0_2
  L1_2 = A0_2._async_load_sprite_to
  L3_2 = A0_2._binder
  L3_2 = L3_2.img_gift
  L4_2 = A0_2._question_row
  L4_2 = L4_2.ImgPath
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.text_number
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetText
  L3_2 = A0_2._research_id
  L3_2 = L3_2 - 101
  L3_2 = L3_2 + 1
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.text_title
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetTextID
  L3_2 = A0_2._question_row
  L3_2 = L3_2.Question
  L1_2(L2_2, L3_2)
end
L5_1._setup_gift_info = L6_1
function L6_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._is_unlock
  if L1_2 then
    L1_2 = CS
    L1_2 = L1_2.RPG
    L1_2 = L1_2.Client
    L1_2 = L1_2.Prefs
    L1_2 = L1_2.User
    L1_2 = L1_2.SeenPenaconyGiftNewUnlockAnims
    L2_2 = L1_2
    L1_2 = L1_2.Contains
    L3_2 = A0_2._research_id
    L1_2 = L1_2(L2_2, L3_2)
    if not L1_2 then
      L1_2 = A0_2._research_data
      L1_2 = L1_2.IsComplete
      if not L1_2 then
        L2_2 = A0_2
        L1_2 = A0_2._setup_lock
        L1_2(L2_2)
        A0_2._is_play_unlock_anim = true
        L1_2 = A0_2._is_last_day
        if not L1_2 then
          L1_2 = CS
          L1_2 = L1_2.RPG
          L1_2 = L1_2.Client
          L1_2 = L1_2.UIAnimationUtils
          L1_2 = L1_2.PlayFromBegin
          L2_2 = A0_2._binder
          L2_2 = L2_2.anim_root
          L3_2 = L3_1
          L1_2(L2_2, L3_2)
        else
          L1_2 = CS
          L1_2 = L1_2.RPG
          L1_2 = L1_2.Client
          L1_2 = L1_2.UIAnimationUtils
          L1_2 = L1_2.PlayFromBegin
          L2_2 = A0_2._binder
          L2_2 = L2_2.anim_root
          L3_2 = L4_1
          L1_2(L2_2, L3_2)
        end
        L1_2 = A0_2._unlock_anim_timer
        L2_2 = L1_2
        L1_2 = L1_2.reset
        L1_2(L2_2)
        L1_2 = A0_2._unlock_anim_timer
        L2_2 = L1_2
        L1_2 = L1_2.start
        L1_2(L2_2)
        L1_2 = CS
        L1_2 = L1_2.RPG
        L1_2 = L1_2.Client
        L1_2 = L1_2.Prefs
        L1_2 = L1_2.User
        L1_2 = L1_2.SeenPenaconyGiftNewUnlockAnims
        L2_2 = L1_2
        L1_2 = L1_2.Add
        L3_2 = A0_2._research_id
        L1_2(L2_2, L3_2)
    end
  end
  else
    L2_2 = A0_2
    L1_2 = A0_2._setup_state
    L1_2(L2_2)
  end
end
L5_1._check_play_unlock_anim = L6_1
function L6_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_lock
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = true
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_lock_text
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = true
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_get
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = false
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_transport
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = false
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_last_day_transport
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = false
  L1_2(L2_2, L3_2)
end
L5_1._setup_lock = L6_1
function L6_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.text_lock
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetTextID
  L3_2 = "UIText_PenaconyGift_Locked"
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.text_get
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetTextID
  L3_2 = "UIText_PenaconyGift_Finished"
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.text_transport
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetTextID
  L3_2 = "UIText_PenaconyGift_Current"
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.text_last_day_transport
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetTextID
  L3_2 = "UIText_PenaconyGift_Current"
  L1_2(L2_2, L3_2)
end
L5_1._setup_state_info = L6_1
function L6_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._is_play_unlock_anim
  if L1_2 then
    L1_2 = A0_2._unlock_anim_timer
    L2_2 = L1_2
    L1_2 = L1_2.stop
    L1_2(L2_2)
    A0_2._is_play_unlock_anim = false
    L1_2 = CS
    L1_2 = L1_2.RPG
    L1_2 = L1_2.Client
    L1_2 = L1_2.UIAnimationUtils
    L1_2 = L1_2.PlayToEnd
    L2_2 = A0_2._binder
    L2_2 = L2_2.anim_root
    L3_2 = L3_1
    L1_2(L2_2, L3_2)
  end
  L1_2 = A0_2._is_play_transport_anim
  if L1_2 then
    L1_2 = A0_2._is_unlock
    if L1_2 then
      L1_2 = A0_2._research_data
      L1_2 = L1_2.IsComplete
      if not L1_2 then
        goto lbl_42
      end
    end
    L1_2 = CS
    L1_2 = L1_2.RPG
    L1_2 = L1_2.Client
    L1_2 = L1_2.UIAnimationUtils
    L1_2 = L1_2.PlayToEnd
    L2_2 = A0_2._binder
    L2_2 = L2_2.anim_root
    L3_2 = L2_1
    L1_2(L2_2, L3_2)
    L1_2 = A0_2._binder
    L1_2 = L1_2.node_effect_transport
    L2_2 = L1_2
    L1_2 = L1_2.SafeSetActive
    L3_2 = false
    L1_2(L2_2, L3_2)
    A0_2._is_play_transport_anim = false
  end
  ::lbl_42::
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_transport
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = false
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_last_day_transport
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = false
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_lock
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = A0_2._is_unlock
  L3_2 = not L3_2
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_lock_text
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = A0_2._is_unlock
  L3_2 = not L3_2
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_get
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = A0_2._research_data
  L3_2 = L3_2.IsComplete
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_img
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = A0_2._is_unlock
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._is_last_day
  if not L1_2 then
    L1_2 = A0_2._binder
    L1_2 = L1_2.node_transport
    L2_2 = L1_2
    L1_2 = L1_2.SafeSetActive
    L3_2 = A0_2._is_unlock
    if L3_2 then
      L3_2 = A0_2._research_data
      L3_2 = L3_2.IsComplete
      L3_2 = not L3_2
    end
    L1_2(L2_2, L3_2)
  else
    L1_2 = A0_2._binder
    L1_2 = L1_2.node_last_day_transport
    L2_2 = L1_2
    L1_2 = L1_2.SafeSetActive
    L3_2 = A0_2._is_unlock
    if L3_2 then
      L3_2 = A0_2._research_data
      L3_2 = L3_2.IsComplete
      L3_2 = not L3_2
    end
    L1_2(L2_2, L3_2)
  end
  L1_2 = A0_2._is_unlock
  if L1_2 then
    L1_2 = A0_2._research_data
    L1_2 = L1_2.IsComplete
    if not L1_2 then
      A0_2._is_play_transport_anim = true
      L1_2 = CS
      L1_2 = L1_2.RPG
      L1_2 = L1_2.Client
      L1_2 = L1_2.UIAnimationUtils
      L1_2 = L1_2.PlayFromBegin
      L2_2 = A0_2._binder
      L2_2 = L2_2.anim_root
      L3_2 = L2_1
      L1_2(L2_2, L3_2)
    end
  end
end
L5_1._setup_state = L6_1
function L6_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_lock_detail
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = A0_2._is_unlock
  L3_2 = not L3_2
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_lock_detail_text
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = A0_2._is_unlock
  L3_2 = not L3_2
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._research_data
  L1_2 = L1_2.IsInSchedule
  if not L1_2 then
    L1_2 = A0_2._binder
    L1_2 = L1_2.text_lock_detail
    L2_2 = L1_2
    L1_2 = L1_2.SafeSetTextID
    L3_2 = "UIText_PenaconyGift_Unlock_1"
    L1_2(L2_2, L3_2)
    L1_2 = A0_2._binder
    L1_2 = L1_2.remain_timer
    L2_2 = L1_2
    L1_2 = L1_2.SetTargetTimeByTimeStamp
    L3_2 = A0_2._research_data
    L3_2 = L3_2.BeginTimeStamp
    L4_2 = A0_2._expire_call_back
    L5_2 = A0_2
    L6_2 = 2
    L1_2(L2_2, L3_2, L4_2, L5_2, L6_2)
    L1_2 = A0_2._binder
    L1_2 = L1_2.node_remain_timer
    L2_2 = L1_2
    L1_2 = L1_2.SafeSetActive
    L3_2 = true
    L1_2(L2_2, L3_2)
  else
    L1_2 = A0_2._research_data
    L1_2 = L1_2.IsInSchedule
    if L1_2 then
      L1_2 = A0_2._is_unlock
      if not L1_2 then
        L1_2 = A0_2._binder
        L1_2 = L1_2.text_lock_detail
        L2_2 = L1_2
        L1_2 = L1_2.SafeSetTextID
        L3_2 = "UIText_PenaconyGift_Unlock_2"
        L1_2(L2_2, L3_2)
        L1_2 = A0_2._binder
        L1_2 = L1_2.node_remain_timer
        L2_2 = L1_2
        L1_2 = L1_2.SafeSetActive
        L3_2 = false
        L1_2(L2_2, L3_2)
      end
    end
  end
end
L5_1._setup_timer = L6_1
function L6_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2._check_play_unlock_anim
  L1_2(L2_2)
end
L5_1.parent_fade_in_finish = L6_1
return L5_1
