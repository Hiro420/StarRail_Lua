local L0_1, L1_1, L2_1
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "TalkDebatePanel"
L2_1 = G
L2_1 = L2_1.BasePanel
L0_1 = L0_1(L1_1, L2_1)
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_prev
  L4_2 = A0_2._on_btn_prev
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_next
  L4_2 = A0_2._on_btn_next
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_ask
  L4_2 = A0_2._on_btn_ask
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_show
  L4_2 = A0_2._on_btn_show
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.UIAnimationEvent
  L4_2 = A0_2._on_anim_trigger_refresh
  L1_2(L2_2, L3_2, L4_2)
end
L0_1._on_load = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.root_count
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = false
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2._setup_ui_type
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._refresh_ui_active
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._refresh_count
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._refresh_shortcut_hint
  L1_2(L2_2)
end
L0_1._setup_view = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
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
    L2_2 = L1_2.GetPerformanceManager
    L2_2 = L2_2(L3_2)
    if L2_2 then
      L3_2 = L1_2
      L2_2 = L1_2.GetPerformanceManager
      L2_2 = L2_2(L3_2)
      L3_2 = L2_2
      L2_2 = L2_2.GetDebateManager
      L2_2 = L2_2(L3_2)
    end
  end
  if L2_2 ~= nil then
    L3_2 = L2_2.UIType
    L4_2 = CS
    L4_2 = L4_2.RPG
    L4_2 = L4_2.GameCore
    L4_2 = L4_2.DebateUIType
    L4_2 = L4_2.Question
    if L3_2 == L4_2 then
      L3_2 = A0_2._binder
      L3_2 = L3_2.txt_btn_ask
      L4_2 = L3_2
      L3_2 = L3_2.SafeSetTextID
      L5_2 = "UIText_Debute_ProbeIcon1"
      L3_2(L4_2, L5_2)
      L3_2 = A0_2._binder
      L3_2 = L3_2.txt_btn_show
      L4_2 = L3_2
      L3_2 = L3_2.SafeSetTextID
      L5_2 = "UIText_Debute_Refutation1"
      L3_2(L4_2, L5_2)
    else
      L3_2 = L2_2.UIType
      L4_2 = CS
      L4_2 = L4_2.RPG
      L4_2 = L4_2.GameCore
      L4_2 = L4_2.DebateUIType
      L4_2 = L4_2.Explain
      if L3_2 == L4_2 then
        L3_2 = A0_2._binder
        L3_2 = L3_2.txt_btn_ask
        L4_2 = L3_2
        L3_2 = L3_2.SafeSetTextID
        L5_2 = "UIText_Debute_ProbeIcon2"
        L3_2(L4_2, L5_2)
        L3_2 = A0_2._binder
        L3_2 = L3_2.txt_btn_show
        L4_2 = L3_2
        L3_2 = L3_2.SafeSetTextID
        L5_2 = "UIText_Debute_Refutation2"
        L3_2(L4_2, L5_2)
      end
    end
  end
end
L0_1._setup_ui_type = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2
  A0_2._ui_control_data = A1_2
  L3_2 = A0_2
  L2_2 = A0_2._refresh_ui_active
  L2_2(L3_2)
end
L0_1.on_talk_debate_ui_control = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2
  A0_2._count_info = A1_2
  L3_2 = A0_2
  L2_2 = A0_2._refresh_count
  L2_2(L3_2)
end
L0_1.on_debate_count_changed = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = G
  L1_2 = L1_2.NotifyManager
  L1_2 = L1_2.notify
  L2_2 = G
  L2_2 = L2_2.CS
  L2_2 = L2_2.NotifyType
  L2_2 = L2_2.TalkDebateButtonClick
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.Client
  L3_2 = L3_2.TalkDebateBtn
  L3_2 = L3_2.PrevBtn
  L1_2(L2_2, L3_2)
end
L0_1._on_btn_prev = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = G
  L1_2 = L1_2.NotifyManager
  L1_2 = L1_2.notify
  L2_2 = G
  L2_2 = L2_2.CS
  L2_2 = L2_2.NotifyType
  L2_2 = L2_2.TalkDebateButtonClick
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.Client
  L3_2 = L3_2.TalkDebateBtn
  L3_2 = L3_2.NextBtn
  L1_2(L2_2, L3_2)
end
L0_1._on_btn_next = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = G
  L1_2 = L1_2.NotifyManager
  L1_2 = L1_2.notify
  L2_2 = G
  L2_2 = L2_2.CS
  L2_2 = L2_2.NotifyType
  L2_2 = L2_2.TalkDebateButtonClick
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.Client
  L3_2 = L3_2.TalkDebateBtn
  L3_2 = L3_2.AskBtn
  L1_2(L2_2, L3_2)
end
L0_1._on_btn_ask = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
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
    L2_2 = L1_2.GetPerformanceManager
    L2_2 = L2_2(L3_2)
    if L2_2 then
      L3_2 = L1_2
      L2_2 = L1_2.GetPerformanceManager
      L2_2 = L2_2(L3_2)
      L3_2 = L2_2
      L2_2 = L2_2.GetDebateManager
      L2_2 = L2_2(L3_2)
    end
  end
  L4_2 = L2_2
  L3_2 = L2_2.IsAllItemSubmitted
  L3_2 = L3_2(L4_2)
  if L3_2 then
    L3_2 = G
    L3_2 = L3_2.NotifyManager
    L3_2 = L3_2.notify
    L4_2 = G
    L4_2 = L4_2.CS
    L4_2 = L4_2.NotifyType
    L4_2 = L4_2.UIPileToastMessageTextID
    L5_2 = "UIText_Debute_Hint1"
    L3_2(L4_2, L5_2)
    return
  end
  L3_2 = G
  L3_2 = L3_2.NotifyManager
  L3_2 = L3_2.notify
  L4_2 = G
  L4_2 = L4_2.CS
  L4_2 = L4_2.NotifyType
  L4_2 = L4_2.TalkDebateButtonClick
  L5_2 = CS
  L5_2 = L5_2.RPG
  L5_2 = L5_2.Client
  L5_2 = L5_2.TalkDebateBtn
  L5_2 = L5_2.ShowBtn
  L3_2(L4_2, L5_2)
end
L0_1._on_btn_show = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L2_2 = A0_2
  L1_2 = A0_2.is_loaded
  L1_2 = L1_2(L2_2)
  if not L1_2 then
    return
  end
  L1_2 = A0_2._count_info
  if L1_2 == nil then
    return
  end
  L1_2 = A0_2._count_info
  L1_2 = L1_2.MaxCount
  L2_2 = A0_2._count_info
  L2_2 = L2_2.CurrentCount
  L3_2 = A0_2._count_info
  L3_2 = L3_2.LastCount
  L4_2 = A0_2._binder
  L4_2 = L4_2.root_count
  L5_2 = L4_2
  L4_2 = L4_2.SafeSetActive
  L6_2 = 0 < L1_2
  L4_2(L5_2, L6_2)
  if 0 < L1_2 then
    if L2_2 < L3_2 then
      L4_2 = A0_2._binder
      L4_2 = L4_2.img_count
      L5_2 = L2_2 / L1_2
      L4_2.fillAmount = L5_2
      L4_2 = A0_2._binder
      L4_2 = L4_2.img_effect_start
      L5_2 = L3_2 / L1_2
      L4_2.fillAmount = L5_2
      L4_2 = A0_2._binder
      L4_2 = L4_2.img_effect_end
      L5_2 = L2_2 / L1_2
      L5_2 = 1 - L5_2
      L4_2.fillAmount = L5_2
      L4_2 = 360 / L1_2
      L5_2 = L1_2 - L2_2
      L4_2 = L4_2 * L5_2
      L5_2 = A0_2._binder
      L5_2 = L5_2.node_effect
      L5_2 = L5_2.transform
      L6_2 = CS
      L6_2 = L6_2.UnityEngine
      L6_2 = L6_2.Quaternion
      L6_2 = L6_2.Euler
      L7_2 = CS
      L7_2 = L7_2.UnityEngine
      L7_2 = L7_2.Vector3
      L8_2 = 0
      L9_2 = 180
      L10_2 = L4_2
      L7_2, L8_2, L9_2, L10_2 = L7_2(L8_2, L9_2, L10_2)
      L6_2 = L6_2(L7_2, L8_2, L9_2, L10_2)
      L5_2.rotation = L6_2
      L5_2 = CS
      L5_2 = L5_2.RPG
      L5_2 = L5_2.Client
      L5_2 = L5_2.UIAnimationUtils
      L5_2 = L5_2.PlayFromBegin
      L6_2 = A0_2._binder
      L6_2 = L6_2.anim_count
      L7_2 = "OutlineProgress_FadeIn"
      L5_2(L6_2, L7_2)
    else
      L5_2 = A0_2
      L4_2 = A0_2._do_setup_count
      L4_2(L5_2)
      L4_2 = CS
      L4_2 = L4_2.RPG
      L4_2 = L4_2.Client
      L4_2 = L4_2.UIAnimationUtils
      L4_2 = L4_2.PlayToBegin
      L5_2 = A0_2._binder
      L5_2 = L5_2.anim_count
      L6_2 = "OutlineProgress_FadeIn"
      L4_2(L5_2, L6_2)
    end
  end
end
L0_1._refresh_count = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2
  L1_2 = A0_2._count_info
  if L1_2 == nil then
    return
  end
  L1_2 = A0_2._count_info
  L1_2 = L1_2.MaxCount
  L2_2 = A0_2._count_info
  L2_2 = L2_2.CurrentCount
  L3_2 = A0_2._count_info
  L3_2 = L3_2.LastCount
  L4_2 = pairs
  L5_2 = A0_2._binder
  L5_2 = L5_2.nodes_line
  L4_2, L5_2, L6_2 = L4_2(L5_2)
  for L7_2, L8_2 in L4_2, L5_2, L6_2 do
    L10_2 = L8_2
    L9_2 = L8_2.SafeSetActive
    L11_2 = L7_2 == L1_2
    L9_2(L10_2, L11_2)
  end
  L4_2 = A0_2._binder
  L4_2 = L4_2.txt_count
  L5_2 = L4_2
  L4_2 = L4_2.SafeSetText
  L6_2 = L2_2
  L4_2(L5_2, L6_2)
  L4_2 = A0_2._binder
  L4_2 = L4_2.img_count
  L5_2 = L2_2 / L1_2
  L4_2.fillAmount = L5_2
end
L0_1._do_setup_count = L1_1
function L1_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2._do_setup_count
  L1_2(L2_2)
end
L0_1._on_anim_trigger_refresh = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2
  L2_2 = A0_2
  L1_2 = A0_2.is_loaded
  L1_2 = L1_2(L2_2)
  if not L1_2 then
    return
  end
  L1_2 = A0_2._ui_control_data
  if L1_2 == nil then
    return
  end
  L1_2 = A0_2._binder
  L1_2 = L1_2.btn_prev
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = A0_2._ui_control_data
  L3_2 = L3_2.PrevBtnActive
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.btn_next
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = A0_2._ui_control_data
  L3_2 = L3_2.NextBtnActive
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.btn_ask
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = A0_2._ui_control_data
  L3_2 = L3_2.AskBtnActive
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.btn_show
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = A0_2._ui_control_data
  L3_2 = L3_2.ShowBtnActive
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.canvas_group_ask
  L2_2 = A0_2._ui_control_data
  L2_2 = L2_2.AskBtnGray
  if L2_2 then
    L2_2 = 0.5
    if L2_2 then
      goto lbl_44
    end
  end
  L2_2 = 1
  ::lbl_44::
  L1_2.alpha = L2_2
  L2_2 = A0_2
  L1_2 = A0_2._refresh_shortcut_hint
  L1_2(L2_2)
end
L0_1._refresh_ui_active = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2
  L2_2 = A0_2
  L1_2 = A0_2.is_loaded
  L1_2 = L1_2(L2_2)
  if not L1_2 then
    return
  end
  L1_2 = A0_2._ui_control_data
  if L1_2 == nil then
    return
  end
  L1_2 = A0_2._ui_control_data
  L1_2 = L1_2.PrevBtnActive
  if not L1_2 then
    L1_2 = A0_2._ui_control_data
    L1_2 = L1_2.NextBtnActive
    if not L1_2 then
      L2_2 = A0_2
      L1_2 = A0_2.setup_short_cut_hint_panel
      L3_2 = 6
      L1_2(L2_2, L3_2)
  end
  else
    L2_2 = A0_2
    L1_2 = A0_2.setup_short_cut_hint_panel
    L3_2 = {}
    L1_2(L2_2, L3_2)
  end
end
L0_1._refresh_shortcut_hint = L1_1
return L0_1
