local L0_1, L1_1, L2_1, L3_1
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "GuideHintBtnPanel"
L2_1 = G
L2_1 = L2_1.BasePanel
L0_1 = L0_1(L1_1, L2_1)
L1_1 = "GuideBtnIconProgress5s"
L2_1 = "Maze_TutorialOverView"
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  A0_2._showing_guide_data = nil
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_root
  L4_2 = A0_2._on_btn_root_click
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.ShowTutorialGuideNode
  L4_2 = L0_1._on_show_tutorial_guide
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.UIToastQueueEmpty
  L4_2 = L0_1._try_show_guide_hint
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.RPGAnimationEvent
  L1_2 = L1_2.Get
  L2_2 = A0_2._binder
  L2_2 = L2_2.anim_icon
  L2_2 = L2_2.transform
  L1_2 = L1_2(L2_2)
  L3_2 = L1_2
  L2_2 = L1_2.AddAnimationEvent
  L4_2 = L1_1
  function L5_2()
    local L0_3, L1_3
    L0_3 = A0_2
    L1_3 = L0_3
    L0_3 = L0_3._on_play_end
    L0_3(L1_3)
  end
  L2_2(L3_2, L4_2, L5_2)
  L3_2 = A0_2
  L2_2 = A0_2.safe_set_active
  L4_2 = false
  L2_2(L3_2, L4_2)
  L3_2 = A0_2
  L2_2 = A0_2._try_show_guide_hint
  L2_2(L3_2)
end
L0_1._on_load = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L1_2 = A0_2._showing_guide_data
  if L1_2 ~= nil then
    return
  end
  L1_2 = G
  L1_2 = L1_2.TutorialModule
  L1_2 = L1_2.Instance
  L2_2 = L1_2
  L1_2 = L1_2.try_get_guide_data
  L1_2 = L1_2(L2_2)
  A0_2._showing_guide_data = L1_2
  L1_2 = A0_2._showing_guide_data
  L1_2 = L1_2 ~= nil
  L3_2 = A0_2
  L2_2 = A0_2.safe_set_active
  L4_2 = L1_2
  L2_2(L3_2, L4_2)
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.Client
  L2_2 = L2_2.InControlActionsManager
  L2_2 = L2_2.Instance
  L3_2 = L2_2
  L2_2 = L2_2.TrySetAdventureActionEnable
  L4_2 = L2_1
  L5_2 = not L1_2
  L2_2(L3_2, L4_2, L5_2)
  L2_2 = A0_2._showing_guide_data
  if L2_2 == nil then
    return
  end
  L2_2 = A0_2._showing_guide_data
  L3_2 = L2_2
  L2_2 = L2_2.get_row
  L2_2 = L2_2(L3_2)
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.GameCore
  L3_2 = L3_2.TutorialGuideGroupTypeExcelTable
  L3_2 = L3_2.GetData
  L4_2 = L2_2.TutorialType
  L3_2 = L3_2(L4_2)
  L5_2 = A0_2
  L4_2 = A0_2._async_load_sprite_to
  L6_2 = A0_2._binder
  L6_2 = L6_2.img_icon
  L7_2 = L3_2.MessageIconPath
  L4_2(L5_2, L6_2, L7_2)
  L4_2 = A0_2._binder
  L4_2 = L4_2.text_title
  L5_2 = L4_2
  L4_2 = L4_2.SafeSetTextID
  L6_2 = L2_2.MessageText
  L4_2(L5_2, L6_2)
  L4_2 = CS
  L4_2 = L4_2.RPG
  L4_2 = L4_2.Client
  L4_2 = L4_2.UIAnimationUtils
  L4_2 = L4_2.PlayFromBegin
  L5_2 = A0_2._binder
  L5_2 = L5_2.anim_icon
  L6_2 = L1_1
  L4_2(L5_2, L6_2)
end
L0_1._try_show_next_guide = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = G
  L1_2 = L1_2.NotifyManager
  L1_2 = L1_2.notify
  L2_2 = G
  L2_2 = L2_2.CS
  L2_2 = L2_2.NotifyType
  L2_2 = L2_2.FinishRewardToast
  L1_2(L2_2)
  L1_2 = G
  L1_2 = L1_2.UIManager
  L1_2 = L1_2.load_and_show
  L2_2 = "Ui.Tutorial.GuideDetailDialog"
  L3_2 = A0_2._showing_guide_data
  L3_2 = L3_2.id
  L1_2(L2_2, L3_2)
  A0_2._showing_guide_data = nil
  L2_2 = A0_2
  L1_2 = A0_2.safe_set_active
  L3_2 = false
  L1_2(L2_2, L3_2)
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.InControlActionsManager
  L1_2 = L1_2.Instance
  L2_2 = L1_2
  L1_2 = L1_2.TrySetAdventureActionEnable
  L3_2 = L2_1
  L4_2 = true
  L1_2(L2_2, L3_2, L4_2)
end
L0_1._on_btn_root_click = L3_1
function L3_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2._try_show_guide_hint
  L1_2(L2_2)
end
L0_1._on_show_tutorial_guide = L3_1
function L3_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2._can_show_guide_hint
  L1_2 = L1_2(L2_2)
  if not L1_2 then
    return
  end
  L2_2 = A0_2
  L1_2 = A0_2._try_show_next_guide
  L1_2(L2_2)
end
L0_1._try_show_guide_hint = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2
  L2_2 = A0_2
  L1_2 = A0_2._owner_is_top_page
  L1_2 = L1_2(L2_2)
  if not L1_2 then
    L1_2 = false
    return L1_2
  end
  L1_2 = G
  L1_2 = L1_2.ToastModule
  L1_2 = L1_2.Instance
  L2_2 = L1_2
  L1_2 = L1_2.tutorial_check_has_toast_in_queue
  L3_2 = "FullScreenToast"
  L1_2 = L1_2(L2_2, L3_2)
  if L1_2 then
    L1_2 = false
    return L1_2
  end
  L1_2 = G
  L1_2 = L1_2.ToastModule
  L1_2 = L1_2.Instance
  L2_2 = L1_2
  L1_2 = L1_2.tutorial_check_has_toast_in_queue
  L3_2 = "RogueToast"
  L1_2 = L1_2(L2_2, L3_2)
  if L1_2 then
    L1_2 = false
    return L1_2
  end
  L1_2 = G
  L1_2 = L1_2.ToastModule
  L1_2 = L1_2.Instance
  L2_2 = L1_2
  L1_2 = L1_2.tutorial_check_has_toast_in_queue
  L3_2 = "BottomToast"
  L1_2 = L1_2(L2_2, L3_2)
  if L1_2 then
    L1_2 = false
    return L1_2
  end
  L1_2 = true
  return L1_2
end
L0_1._can_show_guide_hint = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2
  A0_2._showing_guide_data = nil
  L2_2 = A0_2
  L1_2 = A0_2.safe_set_active
  L3_2 = false
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2._try_show_guide_hint
  L1_2(L2_2)
end
L0_1._on_play_end = L3_1
function L3_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.anim_icon
  if L2_2 == nil or A1_2 then
    return
  end
  L2_2 = A0_2._showing_guide_data
  if L2_2 ~= nil then
    L2_2 = A0_2._binder
    L2_2 = L2_2.anim_icon
    L3_2 = L2_2
    L2_2 = L2_2.Stop
    L2_2(L3_2)
    A0_2._showing_guide_data = nil
    L3_2 = A0_2
    L2_2 = A0_2.safe_set_active
    L4_2 = false
    L2_2(L3_2, L4_2)
  end
end
L0_1._on_owner_active_change = L3_1
function L3_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2._try_show_guide_hint
  L1_2(L2_2)
end
L0_1._on_return_to_top = L3_1
return L0_1
