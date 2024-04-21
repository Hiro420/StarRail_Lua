local L0_1, L1_1, L2_1, L3_1, L4_1
L0_1 = require
L1_1 = "Ui.Activity.RoleTrial.TrialIntroductionRowPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Activity.RoleTrial.TrialMissionRowPanelBinder"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "RoleTrialMissionPanel"
L2_1 = G
L2_1 = L2_1.BasePanel
L0_1 = L0_1(L1_1, L2_1)
L1_1 = CS
L1_1 = L1_1.RPG
L1_1 = L1_1.Client
L1_1 = L1_1.GlobalVars
L1_1 = L1_1.s_ModuleManager
L1_1 = L1_1.RoleTrialModule
L2_1 = 0.7
L3_1 = 0.2
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_mission_list
  if L1_2 then
    L2_2 = A0_2
    L1_2 = A0_2.create_panel
    L3_2 = G
    L3_2 = L3_2.NodeListView
    L4_2 = G
    L4_2 = L4_2.NodeListViewBinder
    L5_2 = G
    L5_2 = L5_2.TrialIntroductionRowPanel
    L6_2 = G
    L6_2 = L6_2.TrialMissionRowPanelBinder
    L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2, L6_2)
    A0_2.mission_list = L1_2
    L1_2 = A0_2.mission_list
    L2_2 = L1_2
    L1_2 = L1_2.bind
    L3_2 = A0_2._binder
    L3_2 = L3_2.node_mission_list
    L1_2(L2_2, L3_2)
  end
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_icon
  L4_2 = A0_2._on_btn_click
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.AdventurePhaseEntered
  L4_2 = L0_1._try_show_detail_dialog
  L1_2(L2_2, L3_2, L4_2)
end
L0_1._on_load = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_mission_list
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = false
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.txt_info
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetTextID
  L3_2 = "UIText_AvatarDemo_Introdution_Buttom"
  L1_2(L2_2, L3_2)
end
L0_1.setup_view = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L1_2 = L1_1.RoleTrialInstance
  if L1_2 == nil then
    return
  end
  L2_2 = L1_2.IsFirstEnterTrial
  if L2_2 == false then
    L3_2 = A0_2
    L2_2 = A0_2.safe_set_active
    L4_2 = true
    L2_2(L3_2, L4_2)
    L2_2 = A0_2._binder
    L2_2 = L2_2.node_mission_list
    L3_2 = L2_2
    L2_2 = L2_2.SafeSetActive
    L4_2 = true
    L2_2(L3_2, L4_2)
    return
  end
  L1_2.IsFirstEnterTrial = false
  L2_2 = L1_1.StageID
  if L2_2 ~= 0 then
    L4_2 = A0_2
    L3_2 = A0_2._add_count_down_timer
    function L5_2()
      local L0_3, L1_3, L2_3, L3_3
      L0_3 = G
      L0_3 = L0_3.UIManager
      L0_3 = L0_3.load_and_async_show
      L1_3 = "Ui.Activity.RoleTrial.RoleTrialDialog"
      L2_3 = L2_2
      function L3_3()
        local L0_4, L1_4
        L0_4 = G
        L0_4 = L0_4.NotifyManager
        L0_4 = L0_4.notify
        L1_4 = G
        L1_4 = L1_4.CS
        L1_4 = L1_4.NotifyType
        L1_4 = L1_4.RoleTrailDetailPageExit
        L0_4(L1_4)
        L0_4 = A0_2
        L1_4 = L0_4
        L0_4 = L0_4.play_fade_in
        L0_4(L1_4)
      end
      L0_3(L1_3, L2_3, L3_3)
    end
    L6_2 = L2_1
    L7_2 = L2_1
    L3_2 = L3_2(L4_2, L5_2, L6_2, L7_2)
    A0_2._start_timer = L3_2
    L3_2 = A0_2._start_timer
    L4_2 = L3_2
    L3_2 = L3_2.reset
    L3_2(L4_2)
    L3_2 = A0_2._start_timer
    L4_2 = L3_2
    L3_2 = L3_2.start
    L3_2(L4_2)
  end
end
L0_1._try_show_detail_dialog = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  if A0_2 ~= nil then
    L1_2 = A0_2._binder
    if L1_2 ~= nil then
      goto lbl_7
    end
  end
  do return end
  ::lbl_7::
  L1_2 = A0_2._binder
  L1_2 = L1_2.anim_event
  L2_2 = L1_2
  L1_2 = L1_2.AddAnimationEvent
  L3_2 = "RoleInfoMaze_FadeIn"
  function L4_2()
    local L0_3, L1_3
    L0_3 = A0_2
    L1_3 = L0_3
    L0_3 = L0_3._on_anim_end
    L0_3(L1_3)
  end
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2.safe_set_active
  L3_2 = true
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.ani_root
  L2_2 = L1_2
  L1_2 = L1_2.Play
  L3_2 = "RoleInfoMaze_FadeIn"
  L1_2(L2_2, L3_2)
end
L0_1.play_fade_in = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = A0_2._first_trigger
  if L1_2 then
    return
  end
  A0_2._first_trigger = true
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_mission_list
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = true
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_count_down_timer
  L3_2 = A0_2._trigger_pile_toast
  L4_2 = L3_1
  L5_2 = L3_1
  L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2)
  A0_2._count_down_timer = L1_2
  L1_2 = A0_2._count_down_timer
  L2_2 = L1_2
  L1_2 = L1_2.reset
  L1_2(L2_2)
  L1_2 = A0_2._count_down_timer
  L2_2 = L1_2
  L1_2 = L1_2.start
  L1_2(L2_2)
end
L0_1._on_anim_end = L4_1
function L4_1(A0_2)
  local L1_2, L2_2
  L1_2 = G
  L1_2 = L1_2.Utils
  L1_2 = L1_2.trigger_custom_string
  L2_2 = "TrialActivity_HintStart"
  L1_2(L2_2)
end
L0_1._trigger_pile_toast = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = L1_1.StageID
  if L1_2 ~= 0 then
    L2_2 = G
    L2_2 = L2_2.UIManager
    L2_2 = L2_2.load_and_async_show
    L3_2 = "Ui.Activity.RoleTrial.RoleTrialDetailPage"
    L4_2 = L1_2
    L5_2 = false
    L2_2(L3_2, L4_2, L5_2)
  end
end
L0_1._on_btn_click = L4_1
return L0_1
