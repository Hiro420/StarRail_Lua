local L0_1, L1_1, L2_1
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "MissionProgressPanel"
L2_1 = G
L2_1 = L2_1.BasePanel
L0_1 = L0_1(L1_1, L2_1)
function L1_1(A0_2)
  local L1_2
  A0_2._pre_progress = nil
end
L0_1.ctor = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  A0_2._fadeout_listner = nil
  A0_2._fadeout_callback = nil
  L1_2 = G
  L1_2 = L1_2.UtilEngineWrap
  L1_2 = L1_2.IsUnityObjectNotNull
  L2_2 = A0_2._binder
  L2_2 = L2_2.anim_event
  L1_2 = L1_2(L2_2)
  if L1_2 then
    L1_2 = A0_2._binder
    L1_2 = L1_2.anim_event
    L2_2 = L1_2
    L1_2 = L1_2.AddAnimationEvent
    L3_2 = "MissionProgress_FadeOut"
    function L4_2()
      local L0_3, L1_3, L2_3
      L0_3 = A0_2
      L1_3 = L0_3
      L0_3 = L0_3.safe_set_active
      L2_3 = false
      L0_3(L1_3, L2_3)
      L0_3 = A0_2._fadeout_callback
      if L0_3 ~= nil then
        L0_3 = A0_2._fadeout_callback
        L1_3 = A0_2._fadeout_listner
        L0_3(L1_3)
      end
      A0_2._fadeout_listner = nil
      A0_2._fadeout_callback = nil
    end
    L1_2(L2_2, L3_2, L4_2)
  end
end
L0_1._on_load = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  if A1_2 == nil then
    return
  end
  L2_2 = A1_2.TotalProgress
  if L2_2 == 0 then
    L3_2 = A0_2
    L2_2 = A0_2.safe_set_active
    L4_2 = false
    L2_2(L3_2, L4_2)
  else
    L3_2 = A0_2
    L2_2 = A0_2.safe_set_active
    L4_2 = true
    L2_2(L3_2, L4_2)
    L2_2 = G
    L2_2 = L2_2.UtilEngineWrap
    L2_2 = L2_2.IsUnityObjectNotNull
    L3_2 = A0_2._binder
    L3_2 = L3_2.canvas_bg
    L2_2 = L2_2(L3_2)
    if L2_2 then
      L2_2 = A0_2._binder
      L2_2 = L2_2.canvas_bg
      L2_2.alpha = 1
    end
    L2_2 = G
    L2_2 = L2_2.UtilEngineWrap
    L2_2 = L2_2.IsUnityObjectNotNull
    L3_2 = A0_2._binder
    L3_2 = L3_2.node_hint
    L2_2 = L2_2(L3_2)
    if L2_2 then
      L2_2 = A0_2._binder
      L2_2 = L2_2.node_hint
      L3_2 = L2_2
      L2_2 = L2_2.SafeSetActive
      L4_2 = false
      L2_2(L3_2, L4_2)
    end
    L3_2 = A0_2
    L2_2 = A0_2._setup_sub_mission_name
    L4_2 = A1_2
    L2_2(L3_2, L4_2)
    L3_2 = A0_2
    L2_2 = A0_2.setup_progress
    L4_2 = A1_2
    L2_2(L3_2, L4_2)
    L3_2 = A0_2
    L2_2 = A0_2._try_show_progress_update_hint
    L4_2 = A1_2
    L2_2(L3_2, L4_2)
    L3_2 = A0_2
    L2_2 = A0_2._setup_status
    L4_2 = A1_2
    L2_2(L3_2, L4_2)
    L2_2 = A0_2._binder
    L2_2 = L2_2.node_progress
    L3_2 = L2_2
    L2_2 = L2_2.SafeSetActive
    L4_2 = A1_2.IsShowProgress
    L2_2(L3_2, L4_2)
    L2_2 = A0_2._binder
    L2_2 = L2_2.root
    L2_2 = L2_2.gameObject
    L2_2 = L2_2.activeInHierarchy
    if L2_2 then
      L2_2 = CS
      L2_2 = L2_2.UnityEngine
      L2_2 = L2_2.UI
      L2_2 = L2_2.LayoutRebuilder
      L2_2 = L2_2.ForceRebuildLayoutImmediate
      L3_2 = A0_2._binder
      L3_2 = L3_2.root
      L2_2(L3_2)
    end
  end
end
L0_1.setup_view = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.Client
  L2_2 = L2_2.TextmapStatic
  L2_2 = L2_2.GetText
  L3_2 = A1_2.HintText
  L2_2 = L2_2(L3_2)
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.Client
  L3_2 = L3_2.TextmapStatic
  L3_2 = L3_2.GetText
  L4_2 = "UIText_PS_PlayGo_Tips_MissionTips"
  L3_2 = L3_2(L4_2)
  L4_2 = A0_2._binder
  L4_2 = L4_2.text_mission_name
  L5_2 = L4_2
  L4_2 = L4_2.SetCustomizedText
  L6_2 = L2_2
  L7_2 = "\n"
  L8_2 = L3_2
  L6_2 = L6_2 .. L7_2 .. L8_2
  L4_2(L5_2, L6_2)
end
L0_1.setup_ps_go_sub_mission_name = L1_1
function L1_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2
  L3_2 = G
  L3_2 = L3_2.UtilEngineWrap
  L3_2 = L3_2.IsUnityObjectNotNull
  L4_2 = A0_2._binder
  L4_2 = L4_2.anim_progress_update
  L3_2 = L3_2(L4_2)
  if L3_2 then
    A0_2._fadeout_listner = A1_2
    A0_2._fadeout_callback = A2_2
    L3_2 = G
    L3_2 = L3_2.UtilEngineWrap
    L3_2 = L3_2.IsUnityObjectNotNull
    L4_2 = A0_2._binder
    L4_2 = L4_2.node_hint
    L3_2 = L3_2(L4_2)
    if L3_2 then
      L3_2 = A0_2._binder
      L3_2 = L3_2.node_hint
      L4_2 = L3_2
      L3_2 = L3_2.SafeSetActive
      L5_2 = true
      L3_2(L4_2, L5_2)
    end
    L3_2 = A0_2._binder
    L3_2 = L3_2.anim_progress_update
    L4_2 = L3_2
    L3_2 = L3_2.Play
    L5_2 = "MissionProgress_FadeOut"
    L3_2(L4_2, L5_2)
  end
end
L0_1.play_fadeout = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.text_cur_progress
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetText
  L4_2 = A1_2.CurrentProgress
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.text_total_progress
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetText
  L4_2 = A1_2.TotalProgress
  L2_2(L3_2, L4_2)
end
L0_1.setup_progress = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.img_status_finish
  if L2_2 ~= nil then
    L2_2 = A0_2._binder
    L2_2 = L2_2.img_status_finish
    L3_2 = L2_2
    L2_2 = L2_2.SafeSetActive
    L4_2 = A1_2.IsFinish
    L2_2(L3_2, L4_2)
  end
  L2_2 = A0_2._binder
  L2_2 = L2_2.img_status_in_progress
  if L2_2 ~= nil then
    L2_2 = A0_2._binder
    L2_2 = L2_2.img_status_in_progress
    L3_2 = L2_2
    L2_2 = L2_2.SafeSetActive
    L4_2 = A1_2.IsFinish
    L4_2 = not L4_2
    L2_2(L3_2, L4_2)
  end
end
L0_1._setup_status = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.text_mission_name
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetTextID
  L4_2 = A1_2.HintText
  L2_2(L3_2, L4_2)
end
L0_1._setup_sub_mission_name = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = G
  L2_2 = L2_2.UtilEngineWrap
  L2_2 = L2_2.IsUnityObjectNotNull
  L3_2 = A0_2._binder
  L3_2 = L3_2.anim_progress_update
  L2_2 = L2_2(L3_2)
  if not L2_2 then
    return
  end
  if A1_2 == nil then
    return
  end
  L2_2 = A0_2._pre_progress
  if L2_2 == nil then
    L2_2 = A1_2.CurrentProgress
    A0_2._pre_progress = L2_2
    return
  end
  L2_2 = A0_2._pre_progress
  L3_2 = A1_2.CurrentProgress
  if L2_2 < L3_2 then
    L2_2 = A1_2.CurrentProgress
    L3_2 = A1_2.TotalProgress
    if L2_2 < L3_2 then
      L2_2 = A0_2._binder
      L2_2 = L2_2.anim_progress_update
      L3_2 = L2_2
      L2_2 = L2_2.Play
      L4_2 = "MissionProgressHint"
      L2_2(L3_2, L4_2)
      L2_2 = A1_2.CurrentProgress
      A0_2._pre_progress = L2_2
      L2_2 = G
      L2_2 = L2_2.UtilEngineWrap
      L2_2 = L2_2.IsUnityObjectNotNull
      L3_2 = A0_2._binder
      L3_2 = L3_2.node_hint
      L2_2 = L2_2(L3_2)
      if L2_2 then
        L2_2 = A0_2._binder
        L2_2 = L2_2.node_hint
        L3_2 = L2_2
        L2_2 = L2_2.SafeSetActive
        L4_2 = true
        L2_2(L3_2, L4_2)
      end
    end
  end
end
L0_1._try_show_progress_update_hint = L1_1
return L0_1
