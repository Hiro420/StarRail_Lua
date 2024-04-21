local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1
L0_1 = require
L1_1 = "Ui.Tutorial.TutorialDialogBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Tutorial.GuideTextPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Tutorial.GuideTalkPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Tutorial.GuideTalkPanelBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Tutorial.GuidePanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Tutorial.GuidePanelBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Utilities.MathUtils"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Tutorial.GuideUtils"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Tutorial.GuideTalkDialog"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Tutorial.Panels.TutorialGuideHintPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Tutorial.Panels.TutorialGuideHintPanelBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Tutorial.Panels.TutorialGuideTextPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Tutorial.Panels.TutorialGuideTextPanelBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Tutorial.Panels.TutorialGuideTalkPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Tutorial.Panels.TutorialGuideTalkPanelBinder"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "TutorialDialog"
L2_1 = G
L2_1 = L2_1.UIController
L0_1 = L0_1(L1_1, L2_1)
L1_1 = G
L1_1 = L1_1.ComponentExtensions
L2_1 = CS
L2_1 = L2_1.RPG
L2_1 = L2_1.GameCore
L2_1 = L2_1.FixPoint
L2_1 = L2_1.MaxValue
L3_1 = L2_1
L2_1 = L2_1.ToFloat
L2_1 = L2_1(L3_1)
L3_1 = CS
L3_1 = L3_1.RPG
L3_1 = L3_1.Client
L3_1 = L3_1.GlobalVars
L3_1 = L3_1.s_ModuleManager
L3_1 = L3_1.TutorialSupportModule
L4_1 = G
L4_1 = L4_1.GuideUtils
function L5_1(A0_2)
  local L1_2
  L1_2 = G
  L1_2 = L1_2.ImportCsToLua
  L1_2 = L1_2.CS_RPG_Client_UILayer_AboveDialog
  A0_2._ui_layer = L1_2
  L1_2 = {}
  A0_2._guide_node_async_panel_table = L1_2
  L1_2 = {}
  A0_2._replicated_node_table = L1_2
  L1_2 = {}
  A0_2._follow_node_table = L1_2
  L1_2 = {}
  A0_2._anim_node_table = L1_2
  L1_2 = {}
  A0_2._wait_destroy_panel_table = L1_2
  A0_2._is_resp_esc = false
end
L0_1.ctor = L5_1
function L5_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L3_2 = A0_2
  L2_2 = A0_2._create_binder
  L4_2 = G
  L4_2 = L4_2.TutorialDialogBinder
  L2_2 = L2_2(L3_2, L4_2)
  A0_2._binder = L2_2
  A0_2._associated_ui_controller_name = A1_2
end
L0_1.init = L5_1
function L5_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2._add_old_handlers
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.UIShowTutorialDialog
  L4_2 = L0_1._on_show_tutorial_dialog
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.TutorialLockController
  L4_2 = L0_1._on_tutorial_lock_controller
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.InputDeviceClassSwitched
  L4_2 = L0_1._on_incontrol_changed
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.ShowTutorialGuideTalk
  L4_2 = A0_2._on_show_tutorial_guide_talk
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.TutorialBlockClick
  L4_2 = A0_2._on_block_click
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.ShowTutorialGuideHint
  L4_2 = A0_2._on_show_new_tutorial_guide
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.HideTutorialGuideHint
  L4_2 = A0_2._on_hide_new_tutorial_guide
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.ShowTutorialGuideTalkDialog
  L4_2 = A0_2._on_show_tutorial_guide_talk_dialog
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.ShowGuideEvolveTalk
  L4_2 = A0_2._on_show_guide_evolve_talk
  L1_2(L2_2, L3_2, L4_2)
end
L0_1._add_handlers = L5_1
function L5_1(A0_2)
  local L1_2, L2_2, L3_2
  L2_2 = A0_2
  L1_2 = A0_2.add_tick
  L1_2(L2_2)
  L1_2 = L3_1
  L2_2 = L1_2
  L1_2 = L1_2.SetTutorialDialogRoot
  L3_2 = A0_2._binder
  L3_2 = L3_2.root
  L3_2 = L3_2.transform
  L1_2(L2_2, L3_2)
  A0_2._is_bind_mono_tick = false
  L1_2 = L3_1
  L2_2 = L1_2
  L1_2 = L1_2.BindTick
  L3_2 = A0_2._binder
  L3_2 = L3_2.ticker
  L1_2(L2_2, L3_2)
end
L0_1._on_load = L5_1
function L5_1(A0_2)
  local L1_2, L2_2, L3_2
  L2_2 = A0_2
  L1_2 = A0_2._on_tutorial_lock_controller
  L3_2 = L3_1.IsLockControllerHotSwitch
  L1_2(L2_2, L3_2)
end
L0_1._setup_view = L5_1
function L5_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._is_bind_mono_tick
  if L1_2 then
    return
  end
  A0_2._is_bind_mono_tick = true
  L1_2 = A0_2._binder
  L1_2 = L1_2.ticker
  L2_2 = L1_2
  L1_2 = L1_2.SetTickCallback
  L3_2 = A0_2._on_mono_tick
  L4_2 = A0_2
  L1_2(L2_2, L3_2, L4_2)
end
L0_1._try_bind_mono_tick = L5_1
function L5_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._is_bind_mono_tick
  if not L1_2 then
    return
  end
  A0_2._is_bind_mono_tick = false
  L1_2 = A0_2._binder
  L1_2 = L1_2.ticker
  L2_2 = L1_2
  L1_2 = L1_2.SetTickCallback
  L3_2 = nil
  L4_2 = nil
  L1_2(L2_2, L3_2, L4_2)
end
L0_1._try_remove_mono_tick = L5_1
function L5_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2._refresh_visibility
  L1_2(L2_2)
end
L0_1._on_tick = L5_1
function L5_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L3_2 = A0_2
  L2_2 = A0_2._old_mono_tick
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
end
L0_1._on_mono_tick = L5_1
function L5_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  A0_2._guide_node_async_panel_table = nil
  L1_2 = pairs
  L2_2 = A0_2._replicated_node_table
  L1_2, L2_2, L3_2 = L1_2(L2_2)
  for L4_2, L5_2 in L1_2, L2_2, L3_2 do
    L7_2 = A0_2
    L6_2 = A0_2.destroy_object
    L8_2 = L5_2.gameObject
    L6_2(L7_2, L8_2)
  end
  A0_2._replicated_node_table = nil
  L1_2 = G
  L1_2 = L1_2.NotifyManager
  L1_2 = L1_2.notify
  L2_2 = G
  L2_2 = L2_2.CS
  L2_2 = L2_2.NotifyType
  L2_2 = L2_2.TutorialCleanUI
  L3_2 = false
  L1_2(L2_2, L3_2)
  L1_2 = L3_1
  L2_2 = L1_2
  L1_2 = L1_2.SetTutorialDialogRoot
  L3_2 = nil
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2._show_block
  L3_2 = false
  L1_2(L2_2, L3_2)
end
L0_1._on_dispose = L5_1
function L5_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = G
  L1_2 = L1_2.StrExt
  L1_2 = L1_2.IsNullOrEmpty
  L2_2 = A0_2._associated_ui_controller_name
  L1_2 = L1_2(L2_2)
  if L1_2 then
    return
  end
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.GlobalVars
  L1_2 = L1_2.s_UIManager
  L2_2 = L1_2
  L1_2 = L1_2.TopPage
  L1_2 = L1_2(L2_2)
  L2_2 = L1_2.IsFocused
  if L2_2 then
    L2_2 = L1_2.Name
    L3_2 = A0_2._associated_ui_controller_name
    L2_2 = L2_2 == L3_2
  end
  if L2_2 then
    L4_2 = L1_2
    L3_2 = L1_2.IsPlayingEntranceAnim
    L3_2 = L3_2(L4_2)
    L4_2 = L1_2
    L3_2 = L1_2.IsPlayingExitAnim
    L3_2 = L3_2(L4_2)
    L2_2 = not L3_2 and L2_2
  end
  L4_2 = A0_2
  L3_2 = A0_2._show_tutorial_hint
  L5_2 = L2_2 or L5_2
  if L2_2 then
    L5_2 = A0_2._block_uid
    L5_2 = L5_2 == nil
  end
  L3_2(L4_2, L5_2)
end
L0_1._refresh_visibility = L5_1
function L5_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = A1_2 == nil
  if not L2_2 then
    A0_2._associated_ui_controller_name = A1_2
    L3_2 = G
    L3_2 = L3_2.StrExt
    L3_2 = L3_2.IsNullOrEmpty
    L4_2 = A1_2
    L3_2 = L3_2(L4_2)
    if L3_2 then
      L4_2 = A0_2
      L3_2 = A0_2._show_tutorial_hint
      L5_2 = A0_2._block_uid
      L5_2 = L5_2 == nil
      L3_2(L4_2, L5_2)
    end
    return
  end
  L4_2 = A0_2
  L3_2 = A0_2.exit
  L3_2(L4_2)
end
L0_1._on_show_tutorial_dialog = L5_1
function L5_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = G
  L2_2 = L2_2.new
  L3_2 = G
  L3_2 = L3_2.GuideTalkDialog
  L4_2 = A1_2.GuideResID
  L2_2 = L2_2(L3_2, L4_2)
  L4_2 = L2_2
  L3_2 = L2_2.set_content_root
  L5_2 = A1_2
  L3_2(L4_2, L5_2)
  L4_2 = L2_2
  L3_2 = L2_2.init
  L5_2 = A1_2.GuideTalkIDList
  L3_2(L4_2, L5_2)
  L3_2 = G
  L3_2 = L3_2.UIManager
  L3_2 = L3_2.show
  L4_2 = L2_2
  L5_2 = true
  L3_2(L4_2, L5_2)
end
L0_1._on_show_tutorial_guide_talk = L5_1
function L5_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_mask_ray_cast
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
end
L0_1._on_block_click = L5_1
function L5_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L1_2 = A0_2._guide_node_async_panel_table
  if L1_2 == nil then
    return
  end
  L1_2 = pairs
  L2_2 = A0_2._guide_node_async_panel_table
  L1_2, L2_2, L3_2 = L1_2(L2_2)
  for L4_2, L5_2 in L1_2, L2_2, L3_2 do
    L7_2 = A0_2
    L6_2 = A0_2._hide_guide
    L8_2 = L4_2
    L6_2(L7_2, L8_2)
  end
end
L0_1._on_clear_all = L5_1
function L5_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = A0_2._replicated_node_table
  if L2_2 == nil then
    L2_2 = G
    L2_2 = L2_2.SuperDebug
    L2_2 = L2_2.LogErrorFormat
    L3_2 = "_replicated_node_table is null"
    L2_2(L3_2)
  end
  L2_2 = A0_2._replicated_node_table
  L2_2 = L2_2[A1_2]
  if L2_2 ~= nil then
    L3_2 = L4_1.trigger_exit_event
    L4_2 = L2_2
    L3_2(L4_2)
    L4_2 = A0_2
    L3_2 = A0_2.destroy_object
    L5_2 = L2_2.gameObject
    L3_2(L4_2, L5_2)
    L3_2 = A0_2._replicated_node_table
    L3_2[A1_2] = nil
    L3_2 = A0_2._follow_node_table
    L3_2[A1_2] = nil
  end
end
L0_1._reset_ui_node_from_mask = L5_1
function L5_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2
  L2_2 = A1_2.Path
  L3_2 = G
  L3_2 = L3_2.StrExt
  L3_2 = L3_2.IsNullOrEmpty
  L4_2 = A1_2.NodeID
  L3_2 = L3_2(L4_2)
  L3_2 = not L3_2
  L4_2 = G
  L4_2 = L4_2.TutorialModule
  L4_2 = L4_2.Instance
  L5_2 = L4_2
  L4_2 = L4_2.try_get_tutorial_node
  L6_2 = A1_2.NodeID
  L7_2 = L2_2
  L4_2 = L4_2(L5_2, L6_2, L7_2)
  if L4_2 == nil then
    L5_2 = G
    L5_2 = L5_2.StrExt
    L5_2 = L5_2.IsNullOrEmpty
    L6_2 = A1_2.NodeID
    L5_2 = L5_2(L6_2)
    if not L5_2 then
      L5_2 = L3_1
      L6_2 = L5_2
      L5_2 = L5_2.ForceFinishCurrentTutorial
      L7_2 = string
      L7_2 = L7_2.format
      L8_2 = "find node %s fail"
      L9_2 = A1_2.NodeID
      L7_2, L8_2, L9_2, L10_2, L11_2 = L7_2(L8_2, L9_2)
      L5_2(L6_2, L7_2, L8_2, L9_2, L10_2, L11_2)
      return
    end
  end
  if L3_2 then
    L5_2 = A1_2.NodeID
    if L5_2 then
      goto lbl_39
    end
  end
  L5_2 = L2_2
  ::lbl_39::
  if L4_2 == nil then
    return
  end
  L6_2 = A0_2._replicated_node_table
  L6_2 = L6_2[L5_2]
  if L6_2 == nil then
    L8_2 = A0_2
    L7_2 = A0_2.instantiate_object
    L9_2 = L4_2.gameObject
    L10_2 = A0_2._binder
    L10_2 = L10_2.node_copynode_root
    L11_2 = true
    L7_2 = L7_2(L8_2, L9_2, L10_2, L11_2)
    L6_2 = L7_2.transform
    L8_2 = L4_2
    L7_2 = L4_2.RecursiveCopyLightWeightActiveTo
    L9_2 = L6_2
    L7_2(L8_2, L9_2)
  end
  if L3_2 then
    L7_2 = A1_2.NodeID
    L6_2.name = L7_2
  end
  L7_2 = L4_1.copy_node
  L8_2 = L4_2
  L9_2 = L6_2
  L7_2(L8_2, L9_2)
  L7_2 = A0_2._replicated_node_table
  L7_2[L5_2] = L6_2
  L7_2 = A1_2.Follow
  if L7_2 then
    L7_2 = {}
    L7_2.oriNode = L4_2
    L7_2.showNode = L6_2
    L8_2 = {}
    L8_2.OffsetX = 0
    L8_2.OffsetY = 0
    L7_2.offset = L8_2
    L9_2 = A0_2._follow_node_table
    L9_2[L5_2] = L7_2
    L10_2 = A0_2
    L9_2 = A0_2._try_bind_mono_tick
    L9_2(L10_2)
  end
  L7_2 = CS
  L7_2 = L7_2.RPG
  L7_2 = L7_2.Client
  L7_2 = L7_2.TutorialGuideUtils
  L7_2 = L7_2.DisableTutorialNodeCmpt
  L8_2 = L6_2.gameObject
  L7_2(L8_2)
  L7_2 = L1_1.SafeSetActive
  L8_2 = L6_2
  L9_2 = true
  L7_2(L8_2, L9_2)
end
L0_1._replicate_ui_node_to_mask = L5_1
function L5_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = G
  L2_2 = L2_2.StrExt
  L2_2 = L2_2.IsNullOrEmpty
  L3_2 = A1_2.NodeID
  L2_2 = L2_2(L3_2)
  if L2_2 then
    L2_2 = A1_2.Path
    if L2_2 then
      goto lbl_12
    end
  end
  L2_2 = A1_2.NodeID
  ::lbl_12::
  L4_2 = A0_2
  L3_2 = A0_2._reset_ui_node_from_mask
  L5_2 = L2_2
  L3_2(L4_2, L5_2)
end
L0_1._on_reset_ui_node_from_mask = L5_1
function L5_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L3_2 = A0_2
  L2_2 = A0_2._replicate_ui_node_to_mask
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
end
L0_1._on_move_ui_node_to_mask = L5_1
function L5_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  if A1_2 then
    L2_2 = A0_2._lock_controller
    if L2_2 == nil then
      L2_2 = L3_1.IsControllerInput
      A0_2._lock_controller = L2_2
  end
  elseif A1_2 == false then
    A0_2._lock_controller = nil
  end
  L2_2 = A0_2._lock_controller
  if L2_2 == true then
    L2_2 = A0_2._binder
    L2_2 = L2_2.node_mask_ray_cast
    L3_2 = L2_2
    L2_2 = L2_2.SafeSetActive
    L4_2 = true
    L2_2(L3_2, L4_2)
  end
  L3_2 = A0_2
  L2_2 = A0_2._on_incontrol_changed
  L2_2(L3_2)
end
L0_1._on_tutorial_lock_controller = L5_1
function L5_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._lock_controller
  if L1_2 == nil then
    L2_2 = A0_2
    L1_2 = A0_2._show_lock_controller_hint
    L3_2 = false
    L1_2(L2_2, L3_2)
    return
  end
  L2_2 = A0_2
  L1_2 = A0_2._show_lock_controller_hint
  L3_2 = A0_2._lock_controller
  L4_2 = CS
  L4_2 = L4_2.RPG
  L4_2 = L4_2.Client
  L4_2 = L4_2.UIUtils
  L4_2 = L4_2.IsGamePadInput
  L3_2 = L3_2 ~= L4_2
  L1_2(L2_2, L3_2)
end
L0_1._on_incontrol_changed = L5_1
function L5_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_hot_switch_hint
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
  L3_2 = A0_2
  L2_2 = A0_2._show_tutorial_hint
  L4_2 = not A1_2
  L2_2(L3_2, L4_2)
  if A1_2 then
    L3_2 = A0_2
    L2_2 = A0_2._setup_hot_switch_hint
    L2_2(L3_2)
  end
  L3_2 = A0_2
  L2_2 = A0_2._show_block
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
end
L0_1._show_lock_controller_hint = L5_1
function L5_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L1_2 = ipairs
  L2_2 = A0_2._wait_destroy_panel_table
  L1_2, L2_2, L3_2 = L1_2(L2_2)
  for L4_2, L5_2 in L1_2, L2_2, L3_2 do
    L7_2 = A0_2
    L6_2 = A0_2._on_panel_play_fade_out_end
    L8_2 = L5_2
    L6_2(L7_2, L8_2)
  end
end
L0_1._destory_all_wait_panel = L5_1
function L5_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_copynode_root
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_guide_root
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_mask_hint
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActiveByScale
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
  if not A1_2 then
    L3_2 = A0_2
    L2_2 = A0_2._destory_all_wait_panel
    L2_2(L3_2)
  end
end
L0_1._show_tutorial_hint = L5_1
function L5_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._lock_controller
  if L1_2 == nil then
    return
  end
  L1_2 = A0_2._lock_controller
  if L1_2 then
    L1_2 = "TutorialGuideModeControl_Hint"
    if L1_2 then
      goto lbl_12
    end
  end
  L1_2 = "TutorialGuideModePc_Hint"
  ::lbl_12::
  L2_2 = A0_2._binder
  L2_2 = L2_2.text_hot_switch_hint
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetTextID
  L4_2 = L1_2
  L2_2(L3_2, L4_2)
end
L0_1._setup_hot_switch_hint = L5_1
function L5_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  if A1_2 then
    L2_2 = A0_2._block_uid
    if L2_2 == nil then
      L2_2 = CS
      L2_2 = L2_2.RPG
      L2_2 = L2_2.Client
      L2_2 = L2_2.GlobalVars
      L2_2 = L2_2.s_UIManager
      L3_2 = L2_2
      L2_2 = L2_2.BlockFixedTime
      L4_2 = L2_1
      L5_2 = L2_1
      L6_2 = nil
      L7_2 = false
      L2_2 = L2_2(L3_2, L4_2, L5_2, L6_2, L7_2)
      A0_2._block_uid = L2_2
    end
  else
    L2_2 = A0_2._block_uid
    if L2_2 ~= nil then
      L2_2 = CS
      L2_2 = L2_2.RPG
      L2_2 = L2_2.Client
      L2_2 = L2_2.GlobalVars
      L2_2 = L2_2.s_UIManager
      L3_2 = L2_2
      L2_2 = L2_2.TryUnblockFixedTime
      L4_2 = A0_2._block_uid
      L2_2(L3_2, L4_2)
      A0_2._block_uid = nil
      L2_2 = L3_1.ForceNavigationTarget
      if L2_2 ~= nil then
        L3_2 = G
        L3_2 = L3_2.CS
        L3_2 = L3_2.EventSystem
        L3_2 = L3_2.current
        L4_2 = L3_2
        L3_2 = L3_2.SetSelectedGameObject
        L5_2 = L2_2
        L3_2(L4_2, L5_2)
      end
    end
  end
end
L0_1._show_block = L5_1
function L5_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L2_2 = A0_2._new_guide_panel_list
  if L2_2 == nil then
    L2_2 = {}
    A0_2._new_guide_panel_list = L2_2
  end
  L2_2 = A0_2._new_guide_panel_list
  L3_2 = A1_2.InstanceID
  L2_2 = L2_2[L3_2]
  if L2_2 ~= nil then
    return
  end
  L2_2 = nil
  L4_2 = A0_2
  L3_2 = A0_2.sync_load_prefab
  L6_2 = A1_2
  L5_2 = A1_2.GetPrefabPath
  L5_2 = L5_2(L6_2)
  L6_2 = A0_2._binder
  L6_2 = L6_2.node_guide_root
  L3_2 = L3_2(L4_2, L5_2, L6_2)
  L4_2 = A1_2.ConfigType
  L5_2 = CS
  L5_2 = L5_2.RPG
  L5_2 = L5_2.Client
  L5_2 = L5_2.TutorialGuideConfigType
  L5_2 = L5_2.GuideText
  if L4_2 == L5_2 then
    L6_2 = A0_2
    L5_2 = A0_2.create_panel
    L7_2 = G
    L7_2 = L7_2.TutorialGuideTextPanel
    L8_2 = G
    L8_2 = L8_2.TutorialGuideTextPanelBinder
    L5_2 = L5_2(L6_2, L7_2, L8_2)
    L2_2 = L5_2
  else
    L5_2 = CS
    L5_2 = L5_2.RPG
    L5_2 = L5_2.Client
    L5_2 = L5_2.TutorialGuideConfigType
    L5_2 = L5_2.GuideTalk
    if L4_2 == L5_2 then
      L6_2 = A0_2
      L5_2 = A0_2.create_panel
      L7_2 = G
      L7_2 = L7_2.TutorialGuideTalkPanel
      L8_2 = G
      L8_2 = L8_2.TutorialGuideTalkPanelBinder
      L5_2 = L5_2(L6_2, L7_2, L8_2)
      L2_2 = L5_2
    else
      L5_2 = CS
      L5_2 = L5_2.RPG
      L5_2 = L5_2.Client
      L5_2 = L5_2.TutorialGuideConfigType
      L5_2 = L5_2.GuideSwipeAToB
      if L4_2 == L5_2 then
        L6_2 = A0_2
        L5_2 = A0_2.create_panel
        L7_2 = "Ui.Tutorial.Panels.TutorialGuideSwipePanel"
        L8_2 = "Ui.Tutorial.Panels.TutorialGuideSwipePanelBinder"
        L5_2 = L5_2(L6_2, L7_2, L8_2)
        L2_2 = L5_2
      else
        L6_2 = A0_2
        L5_2 = A0_2.create_panel
        L7_2 = G
        L7_2 = L7_2.TutorialGuideHintPanel
        L8_2 = G
        L8_2 = L8_2.TutorialGuideHintPanelBinder
        L5_2 = L5_2(L6_2, L7_2, L8_2)
        L2_2 = L5_2
      end
    end
  end
  L6_2 = A1_2
  L5_2 = A1_2.GetRuntimeTutorialNode
  L5_2 = L5_2(L6_2)
  L6_2 = G
  L6_2 = L6_2.StrExt
  L6_2 = L6_2.IsNullOrEmpty
  L7_2 = A1_2.NodeID
  L6_2 = L6_2(L7_2)
  L6_2 = not L6_2
  if L5_2 == nil then
    L7_2 = L3_1
    L8_2 = L7_2
    L7_2 = L7_2.ForceFinishCurrentTutorial
    L9_2 = "\230\151\160\230\179\149\231\161\174\229\174\154\230\140\135\229\188\149\230\137\128\229\156\168\231\149\140\233\157\162,\232\175\183\231\161\174\232\174\164NodeID\230\136\150GuideUIContextConfig\230\152\175\229\144\166\230\173\163\231\161\174\229\161\171\229\134\153"
    L7_2(L8_2, L9_2)
    return
  end
  L8_2 = L2_2
  L7_2 = L2_2.init
  L9_2 = A1_2
  L10_2 = L5_2
  L7_2(L8_2, L9_2, L10_2)
  L8_2 = L2_2
  L7_2 = L2_2.set_need_sync
  L9_2 = L6_2
  L7_2(L8_2, L9_2)
  L8_2 = L2_2
  L7_2 = L2_2.set_parent_trans
  L9_2 = A0_2._binder
  L9_2 = L9_2.root
  L9_2 = L9_2.transform
  L7_2(L8_2, L9_2)
  L8_2 = L2_2
  L7_2 = L2_2.bind
  L9_2 = L3_2
  L7_2(L8_2, L9_2)
  L8_2 = L2_2
  L7_2 = L2_2.setup_view
  L7_2(L8_2)
  L7_2 = A0_2._new_guide_panel_list
  if L7_2 ~= nil then
    L7_2 = A0_2._new_guide_panel_list
    L8_2 = A1_2.InstanceID
    L7_2[L8_2] = L2_2
  end
end
L0_1._on_show_new_tutorial_guide = L5_1
function L5_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2
  L2_2 = A0_2._new_guide_panel_list
  if L2_2 ~= nil then
    L2_2 = A0_2._new_guide_panel_list
    L2_2 = L2_2[A1_2]
    if L2_2 ~= nil then
      goto lbl_9
    end
  end
  do return end
  ::lbl_9::
  L2_2 = A0_2._new_guide_panel_list
  L2_2 = L2_2[A1_2]
  L4_2 = A0_2
  L3_2 = A0_2.destroy_object
  L6_2 = L2_2
  L5_2 = L2_2.get_root
  L5_2, L6_2 = L5_2(L6_2)
  L3_2(L4_2, L5_2, L6_2)
  L4_2 = L2_2
  L3_2 = L2_2._exit
  L3_2(L4_2)
  L3_2 = A0_2._new_guide_panel_list
  L3_2[A1_2] = nil
end
L0_1._on_hide_new_tutorial_guide = L5_1
function L5_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = G
  L2_2 = L2_2.New
  L3_2 = "Ui.Tutorial.TutorialGuideTalkDialog"
  L2_2 = L2_2(L3_2)
  L4_2 = L2_2
  L3_2 = L2_2.init
  L5_2 = A1_2
  L3_2(L4_2, L5_2)
  L4_2 = L2_2
  L3_2 = L2_2.async_show
  L3_2(L4_2)
end
L0_1._on_show_tutorial_guide_talk_dialog = L5_1
function L5_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = G
  L2_2 = L2_2.New
  L3_2 = "Ui.Tutorial.TutorialEvolveTalkDialog"
  L2_2 = L2_2(L3_2)
  L4_2 = L2_2
  L3_2 = L2_2.init
  L5_2 = A1_2
  L3_2(L4_2, L5_2)
  L4_2 = L2_2
  L3_2 = L2_2.async_show
  L3_2(L4_2)
end
L0_1._on_show_guide_evolve_talk = L5_1
function L5_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.ShowGuide
  L4_2 = L0_1._on_show_guide
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.ShowGuideText
  L4_2 = L0_1._on_show_guide_text
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.ShowGuideFollow3D
  L4_2 = L0_1._on_show_guide_follow_3d
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.ShowGuideTextFollow3D
  L4_2 = L0_1._on_show_guide_text_follow_3d
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.ShowSwipeGuide
  L4_2 = L0_1._on_show_swipe_guide
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.HideGuide
  L4_2 = L0_1._on_hide_guide
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.HideGuideText
  L4_2 = L0_1._on_hide_guide_text
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.ShowGuideTalk
  L4_2 = L0_1._on_show_guide_talk
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.HideGuideTalk
  L4_2 = L0_1._on_hide_guide_talk
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.MoveUINodeToMask
  L4_2 = L0_1._on_move_ui_node_to_mask
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.ResetUINodeFromMask
  L4_2 = L0_1._on_reset_ui_node_from_mask
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.TutorialClearAll
  L4_2 = A0_2._on_clear_all
  L1_2(L2_2, L3_2, L4_2)
end
L0_1._add_old_handlers = L5_1
function L5_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2
  L2_2 = false
  L3_2 = pairs
  L4_2 = A0_2._follow_node_table
  L3_2, L4_2, L5_2 = L3_2(L4_2)
  for L6_2, L7_2 in L3_2, L4_2, L5_2 do
    L2_2 = true
    L8_2 = L7_2.is_3d
    if L8_2 then
      L8_2 = L4_1.do_follow_3d_node
      L9_2 = L7_2
      L8_2(L9_2)
    else
      L8_2 = L4_1.do_follow_2d_node
      L9_2 = L7_2
      L8_2(L9_2)
    end
  end
  L3_2 = pairs
  L4_2 = A0_2._anim_node_table
  L3_2, L4_2, L5_2 = L3_2(L4_2)
  for L6_2, L7_2 in L3_2, L4_2, L5_2 do
    L2_2 = true
    L8_2 = L7_2.cumulative_time
    L9_2 = L7_2.total_time
    if L8_2 < L9_2 then
      L8_2 = L7_2.showNode
      L9_2 = L8_2
      L8_2 = L8_2.SetCenterPivot
      L8_2(L9_2)
      L8_2 = math
      L8_2 = L8_2.min
      L9_2 = 1
      L10_2 = L7_2.cumulative_time
      L11_2 = L7_2.total_time
      L10_2 = L10_2 / L11_2
      L8_2 = L8_2(L9_2, L10_2)
      L9_2 = L4_1.get_true_scale
      L10_2 = L7_2.oriNode
      L9_2 = L9_2(L10_2)
      L10_2 = L7_2.showNode
      L11_2 = G
      L11_2 = L11_2.MathUtils
      L11_2 = L11_2.lerp
      L12_2 = L7_2.init_scale
      L13_2 = L7_2.final_scale
      L14_2 = L8_2
      L11_2 = L11_2(L12_2, L13_2, L14_2)
      L11_2 = L9_2 * L11_2
      L10_2.localScale = L11_2
      L10_2 = L7_2.cumulative_time
      L10_2 = L10_2 + A1_2
      L7_2.cumulative_time = L10_2
    end
  end
  L3_2 = A0_2._mono_tick_panel_list
  if L3_2 ~= nil then
    L2_2 = true
    L3_2 = ipairs
    L4_2 = A0_2._mono_tick_panel_list
    L3_2, L4_2, L5_2 = L3_2(L4_2)
    for L6_2, L7_2 in L3_2, L4_2, L5_2 do
      L9_2 = L7_2
      L8_2 = L7_2.on_mono_tick
      L10_2 = A1_2
      L8_2(L9_2, L10_2)
    end
  end
  if not L2_2 then
    L4_2 = A0_2
    L3_2 = A0_2._try_remove_mono_tick
    L3_2(L4_2)
  end
end
L0_1._old_mono_tick = L5_1
function L5_1(A0_2, A1_2)
  local L2_2, L3_2
  L2_2 = A0_2._mono_tick_panel_list
  if L2_2 == nil then
    L2_2 = {}
    A0_2._mono_tick_panel_list = L2_2
    L3_2 = A0_2
    L2_2 = A0_2._try_bind_mono_tick
    L2_2(L3_2)
  end
  L2_2 = A0_2._mono_tick_panel_list
  L3_2 = A0_2._mono_tick_panel_list
  L3_2 = #L3_2
  L3_2 = L3_2 + 1
  L2_2[L3_2] = A1_2
end
L0_1.add_mono_tick = L5_1
function L5_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = A0_2._mono_tick_panel_list
  if L2_2 == nil then
    return
  end
  L2_2 = G
  L2_2 = L2_2.Utils
  L2_2 = L2_2.index_of_item
  L3_2 = A0_2._mono_tick_panel_list
  L4_2 = A1_2
  L2_2 = L2_2(L3_2, L4_2)
  if L2_2 ~= nil then
    L3_2 = table
    L3_2 = L3_2.remove
    L4_2 = A0_2._mono_tick_panel_list
    L5_2 = L2_2
    L3_2(L4_2, L5_2)
  end
end
L0_1.remove_mono_tick = L5_1
function L5_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L3_2 = G
  L3_2 = L3_2.TutorialModule
  L3_2 = L3_2.Instance
  L4_2 = L3_2
  L3_2 = L3_2.try_get_tutorial_node
  L5_2 = A2_2.NodeID
  L6_2 = A2_2.Path
  L3_2 = L3_2(L4_2, L5_2, L6_2)
  if L3_2 == nil then
    L4_2 = G
    L4_2 = L4_2.StrExt
    L4_2 = L4_2.IsNullOrEmpty
    L5_2 = A2_2.NodeID
    L4_2 = L4_2(L5_2)
    if not L4_2 then
      L4_2 = L3_1
      L5_2 = L4_2
      L4_2 = L4_2.ForceFinishCurrentTutorial
      L6_2 = string
      L6_2 = L6_2.format
      L7_2 = "find node %s fail"
      L8_2 = A2_2.NodeID
      L6_2, L7_2, L8_2 = L6_2(L7_2, L8_2)
      L4_2(L5_2, L6_2, L7_2, L8_2)
      return
    end
  end
  L5_2 = A0_2
  L4_2 = A0_2._add_to_follow_table
  L6_2 = L3_2
  L7_2 = A1_2
  L8_2 = A2_2
  L4_2(L5_2, L6_2, L7_2, L8_2)
  L5_2 = A0_2
  L4_2 = A0_2._add_to_anim_table
  L6_2 = L3_2
  L7_2 = A1_2
  L8_2 = A2_2
  L4_2(L5_2, L6_2, L7_2, L8_2)
  L4_2 = A2_2.Is3DObject
  if L4_2 then
    L4_2 = L4_1.sync_3d_node
    L5_2 = L3_2
    L6_2 = A1_2
    L7_2 = A2_2
    L4_2(L5_2, L6_2, L7_2)
  else
    L4_2 = L4_1.sync_2d_node
    L5_2 = L3_2
    L6_2 = A1_2
    L7_2 = A2_2
    L4_2(L5_2, L6_2, L7_2)
  end
end
L0_1._set_guide_transform = L5_1
function L5_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2, L5_2, L6_2, L7_2
  if A1_2 ~= nil then
    L4_2 = A3_2.Follow
    if L4_2 then
      goto lbl_7
    end
  end
  do return end
  ::lbl_7::
  L4_2 = {}
  L4_2.oriNode = A1_2
  L4_2.showNode = A2_2
  L5_2 = A3_2.Is3DObject
  L4_2.is_3d = L5_2
  L5_2 = {}
  L6_2 = A3_2.OffsetX
  L5_2.OffsetX = L6_2
  L6_2 = A3_2.OffsetY
  L5_2.OffsetY = L6_2
  L4_2.offset = L5_2
  L6_2 = A3_2.Text
  L6_2 = L6_2 == nil and L6_2
  L4_2.should_scale = L6_2
  L6_2 = A3_2.UseOriginRatio
  if L6_2 then
    L6_2 = A3_2.CopyAnchorAndSale
  end
  L4_2.use_origin_ratio = L6_2
  L6_2 = A3_2.Scale
  L4_2.scale = L6_2
  L6_2 = A0_2._follow_node_table
  L7_2 = A3_2.ID
  L6_2[L7_2] = L4_2
  L7_2 = A0_2
  L6_2 = A0_2._try_bind_mono_tick
  L6_2(L7_2)
end
L0_1._add_to_follow_table = L5_1
function L5_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2, L5_2, L6_2
  L4_2 = A3_2.AnimConfig
  if L4_2 ~= nil then
    L4_2 = A3_2.AnimConfig
    L4_2 = L4_2.UseAnim
    if L4_2 ~= false then
      goto lbl_9
    end
  end
  do return end
  ::lbl_9::
  L4_2 = A3_2.AnimConfig
  L4_2 = L4_2.InitScale
  L5_2 = A3_2.Scale
  if L4_2 <= L5_2 then
    return
  end
  L4_2 = {}
  L4_2.oriNode = A1_2
  L4_2.showNode = A2_2
  L5_2 = A3_2.Is3DObject
  L4_2.is_3d = L5_2
  L4_2.cumulative_time = 0
  L5_2 = A3_2.AnimConfig
  L5_2 = L5_2.TotalTime
  L4_2.total_time = L5_2
  L5_2 = A3_2.AnimConfig
  L5_2 = L5_2.InitScale
  L4_2.init_scale = L5_2
  L5_2 = A3_2.Scale
  L4_2.final_scale = L5_2
  L5_2 = A0_2._anim_node_table
  L6_2 = A3_2.ID
  L5_2[L6_2] = L4_2
end
L0_1._add_to_anim_table = L5_1
function L5_1(A0_2, A1_2, A2_2, A3_2, A4_2)
  local L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2
  L5_2 = A0_2._guide_node_async_panel_table
  L5_2 = L5_2[A1_2]
  if L5_2 ~= nil then
    L5_2 = nil
    return L5_2
  end
  L6_2 = A0_2
  L5_2 = A0_2.create_panel
  L7_2 = A3_2
  L8_2 = A4_2
  L5_2 = L5_2(L6_2, L7_2, L8_2)
  L6_2 = CS
  L6_2 = L6_2.RPG
  L6_2 = L6_2.GameCore
  L6_2 = L6_2.TutorialResExcelTable
  L6_2 = L6_2.GetData
  L7_2 = A2_2
  L6_2 = L6_2(L7_2)
  if L6_2 ~= nil then
    L7_2 = L6_2.PrefabPath
    if L7_2 ~= nil then
      goto lbl_36
    end
  end
  L7_2 = CS
  L7_2 = L7_2.RPG
  L7_2 = L7_2.StrUtils
  L7_2 = L7_2.Format
  L8_2 = "Find GuideResId {0} in TutorialRes Error"
  L9_2 = A2_2
  L7_2 = L7_2(L8_2, L9_2)
  L8_2 = G
  L8_2 = L8_2.SuperDebug
  L8_2 = L8_2.LogErrorFormat
  L9_2 = L7_2
  L8_2(L9_2)
  do return end
  ::lbl_36::
  L8_2 = A0_2
  L7_2 = A0_2.sync_load_prefab
  L9_2 = L6_2.PrefabPath
  L10_2 = A0_2._binder
  L10_2 = L10_2.node_guide_root
  L7_2 = L7_2(L8_2, L9_2, L10_2)
  L9_2 = L5_2
  L8_2 = L5_2.bind
  L10_2 = L7_2
  L8_2(L9_2, L10_2)
  L8_2 = L5_2.set_guide_res_config
  if L8_2 ~= nil then
    L9_2 = L5_2
    L8_2 = L5_2.set_guide_res_config
    L10_2 = L6_2
    L11_2 = A0_2._binder
    L11_2 = L11_2.root
    L11_2 = L11_2.transform
    L8_2(L9_2, L10_2, L11_2)
  end
  L8_2 = A0_2._guide_node_async_panel_table
  L8_2[A1_2] = L5_2
  return L5_2
end
L0_1._show_guide = L5_1
function L5_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2
  L2_2 = A0_2._guide_node_async_panel_table
  if L2_2 ~= nil then
    L2_2 = A0_2._guide_node_async_panel_table
    L2_2 = L2_2[A1_2]
    if L2_2 ~= nil then
      goto lbl_9
    end
  end
  do return end
  ::lbl_9::
  L2_2 = A0_2._guide_node_async_panel_table
  L2_2 = L2_2[A1_2]
  L3_2 = L2_2.try_play_fade_out
  if L3_2 == nil then
    L4_2 = A0_2
    L3_2 = A0_2._destory_guide_node_imme
    L5_2 = L2_2
    L6_2 = A1_2
    L3_2(L4_2, L5_2, L6_2)
  else
    L4_2 = A0_2
    L3_2 = A0_2._play_guide_node_fade_out
    L5_2 = L2_2
    L6_2 = A1_2
    L3_2(L4_2, L5_2, L6_2)
  end
  L3_2 = A0_2._guide_node_async_panel_table
  L3_2[A1_2] = nil
  L3_2 = A0_2._follow_node_table
  L3_2[A1_2] = nil
  L3_2 = A0_2._anim_node_table
  L3_2[A1_2] = nil
end
L0_1._hide_guide = L5_1
function L5_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2._binder
  if L2_2 == nil then
    return
  end
  L3_2 = A0_2
  L2_2 = A0_2.destroy_object
  L4_2 = A1_2._binder
  L4_2 = L4_2.root
  L2_2(L3_2, L4_2)
  L3_2 = A1_2
  L2_2 = A1_2.dispose
  L2_2(L3_2)
end
L0_1._destory_guide_node_imme = L5_1
function L5_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = G
  L2_2 = L2_2.Utils
  L2_2 = L2_2.index_of_item
  L3_2 = A0_2._wait_destroy_panel_table
  L4_2 = A1_2
  L2_2 = L2_2(L3_2, L4_2)
  if L2_2 ~= nil then
    L3_2 = table
    L3_2 = L3_2.remove
    L4_2 = A0_2._wait_destroy_panel_table
    L5_2 = L2_2
    L3_2(L4_2, L5_2)
    L4_2 = A0_2
    L3_2 = A0_2._destory_guide_node_imme
    L5_2 = A1_2
    L3_2(L4_2, L5_2)
  end
end
L0_1._on_panel_play_fade_out_end = L5_1
function L5_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = A0_2._wait_destroy_panel_table
  L3_2 = A0_2._wait_destroy_panel_table
  L3_2 = #L3_2
  L3_2 = L3_2 + 1
  L2_2[L3_2] = A1_2
  L3_2 = A1_2
  L2_2 = A1_2.try_play_fade_out
  L4_2 = A0_2._on_panel_play_fade_out_end
  L5_2 = A0_2
  L2_2(L3_2, L4_2, L5_2)
end
L0_1._play_guide_node_fade_out = L5_1
function L5_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = A0_2._guide_node_async_panel_table
  if L2_2 ~= nil then
    L2_2 = A0_2._guide_node_async_panel_table
    L3_2 = A1_2.ID
    L2_2 = L2_2[L3_2]
    if L2_2 ~= nil then
      goto lbl_21
    end
  end
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.StrUtils
  L2_2 = L2_2.Format
  L3_2 = "Find GuideResId {0} in _guide_node_async_panel_table Error"
  L4_2 = A1_2.ID
  L2_2 = L2_2(L3_2, L4_2)
  L3_2 = G
  L3_2 = L3_2.SuperDebug
  L3_2 = L3_2.LogErrorFormat
  L4_2 = L2_2
  L3_2(L4_2)
  ::lbl_21::
  L3_2 = A0_2
  L2_2 = A0_2._set_guide_transform
  L4_2 = A0_2._guide_node_async_panel_table
  L5_2 = A1_2.ID
  L4_2 = L4_2[L5_2]
  L4_2 = L4_2._binder
  L4_2 = L4_2.root
  L4_2 = L4_2.transform
  L5_2 = A1_2
  L2_2(L3_2, L4_2, L5_2)
end
L0_1._set_guide_prefab = L5_1
function L5_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2
  L2_2 = A0_2._guide_node_async_panel_table
  if L2_2 ~= nil then
    L2_2 = A0_2._guide_node_async_panel_table
    L3_2 = A1_2.ID
    L2_2 = L2_2[L3_2]
    if L2_2 ~= nil then
      goto lbl_21
    end
  end
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.StrUtils
  L2_2 = L2_2.Format
  L3_2 = "Find GuideResId {0} in _guide_node_async_panel_table Error"
  L4_2 = A1_2.ID
  L2_2 = L2_2(L3_2, L4_2)
  L3_2 = G
  L3_2 = L3_2.SuperDebug
  L3_2 = L3_2.LogErrorFormat
  L4_2 = L2_2
  L3_2(L4_2)
  ::lbl_21::
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.Client
  L2_2 = L2_2.UIFollow3DTarget
  L2_2 = L2_2.Get
  L3_2 = A0_2._guide_node_async_panel_table
  L4_2 = A1_2.ID
  L3_2 = L3_2[L4_2]
  L3_2 = L3_2._binder
  L3_2 = L3_2.root
  L3_2 = L3_2.transform
  L2_2 = L2_2(L3_2)
  L3_2 = A1_2.FollowTarget
  L2_2.FollowTarget = L3_2
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.Vector3
  L4_2 = A1_2.OffsetX
  L5_2 = A1_2.OffsetY
  L6_2 = 0
  L3_2 = L3_2(L4_2, L5_2, L6_2)
  L2_2.UseLocalOffset = true
  L2_2.LocalOffset = L3_2
end
L0_1._set_guide_3d_follow = L5_1
function L5_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L3_2 = A0_2
  L2_2 = A0_2._show_guide
  L4_2 = A1_2.ID
  L5_2 = A1_2.GuideResID
  L6_2 = G
  L6_2 = L6_2.BasePanel
  L7_2 = G
  L7_2 = L7_2.UIBinder
  L2_2 = L2_2(L3_2, L4_2, L5_2, L6_2, L7_2)
  if L2_2 == nil then
    return
  end
  L4_2 = A0_2
  L3_2 = A0_2._set_guide_prefab
  L5_2 = A1_2
  L3_2(L4_2, L5_2)
  L3_2 = A1_2.Animation
  if L3_2 ~= "" then
    L3_2 = A1_2.Animation
    if L3_2 ~= nil then
      L3_2 = L1_1.SafeGetCmpt
      L4_2 = typeof
      L5_2 = CS
      L5_2 = L5_2.UnityEngine
      L5_2 = L5_2.Animation
      L4_2 = L4_2(L5_2)
      L5_2 = L2_2._binder
      L5_2 = L5_2.root
      L6_2 = ""
      L3_2 = L3_2(L4_2, L5_2, L6_2)
      L5_2 = L3_2
      L4_2 = L3_2.Play
      L6_2 = A1_2.Animation
      L4_2(L5_2, L6_2)
    end
  end
end
L0_1._on_show_guide = L5_1
function L5_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L3_2 = A0_2
  L2_2 = A0_2._show_guide
  L4_2 = A1_2.ID
  L5_2 = A1_2.GuideResID
  L6_2 = G
  L6_2 = L6_2.BasePanel
  L7_2 = G
  L7_2 = L7_2.UIBinder
  L2_2 = L2_2(L3_2, L4_2, L5_2, L6_2, L7_2)
  if L2_2 == nil then
    return
  end
  L4_2 = A0_2
  L3_2 = A0_2._set_guide_3d_follow
  L5_2 = A1_2
  L3_2(L4_2, L5_2)
end
L0_1._on_show_guide_follow_3d = L5_1
function L5_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L3_2 = A0_2
  L2_2 = A0_2._show_guide
  L4_2 = A1_2.ID
  L5_2 = A1_2.GuideResID
  L6_2 = G
  L6_2 = L6_2.GuideTextPanel
  L7_2 = G
  L7_2 = L7_2.UIBinder
  L2_2 = L2_2(L3_2, L4_2, L5_2, L6_2, L7_2)
  if L2_2 == nil then
    return
  end
  L4_2 = L2_2
  L3_2 = L2_2._show_text
  L5_2 = A1_2.Text
  L6_2 = A1_2.ActionName
  L3_2(L4_2, L5_2, L6_2)
  L4_2 = A0_2
  L3_2 = A0_2._set_guide_3d_follow
  L5_2 = A1_2
  L3_2(L4_2, L5_2)
end
L0_1._on_show_guide_text_follow_3d = L5_1
function L5_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L3_2 = A0_2
  L2_2 = A0_2._show_guide
  L4_2 = A1_2.ID
  L5_2 = A1_2.GuideResID
  L6_2 = G
  L6_2 = L6_2.GuidePanel
  L7_2 = G
  L7_2 = L7_2.GuidePanelBinder
  L2_2 = L2_2(L3_2, L4_2, L5_2, L6_2, L7_2)
  if L2_2 == nil then
    return
  end
  L4_2 = L2_2
  L3_2 = L2_2.setup_swipe
  L5_2 = A1_2
  L3_2(L4_2, L5_2)
end
L0_1._on_show_swipe_guide = L5_1
function L5_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L3_2 = A0_2
  L2_2 = A0_2._hide_guide
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
end
L0_1._on_hide_guide = L5_1
function L5_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L3_2 = A0_2
  L2_2 = A0_2._show_guide
  L4_2 = A1_2.ID
  L5_2 = A1_2.GuideResID
  L6_2 = G
  L6_2 = L6_2.GuideTextPanel
  L7_2 = G
  L7_2 = L7_2.UIBinder
  L2_2 = L2_2(L3_2, L4_2, L5_2, L6_2, L7_2)
  if L2_2 == nil then
    return
  end
  L4_2 = A0_2
  L3_2 = A0_2._set_guide_prefab
  L5_2 = A1_2
  L3_2(L4_2, L5_2)
  L4_2 = L2_2
  L3_2 = L2_2._show_text
  L5_2 = A1_2.Text
  L6_2 = A1_2.ActionName
  L7_2 = A1_2.PlayFadeOut
  L3_2(L4_2, L5_2, L6_2, L7_2)
end
L0_1._on_show_guide_text = L5_1
function L5_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L3_2 = A0_2
  L2_2 = A0_2._hide_guide
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
end
L0_1._on_hide_guide_text = L5_1
function L5_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2
  L3_2 = A0_2
  L2_2 = A0_2._show_guide
  L4_2 = A1_2.ID
  L5_2 = A1_2.GuideResID
  L6_2 = G
  L6_2 = L6_2.GuideTalkPanel
  L7_2 = G
  L7_2 = L7_2.GuideTalkPanelBinder
  L2_2 = L2_2(L3_2, L4_2, L5_2, L6_2, L7_2)
  if L2_2 == nil then
    return
  end
  L4_2 = A0_2
  L3_2 = A0_2._set_guide_prefab
  L5_2 = A1_2
  L3_2(L4_2, L5_2)
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.GameCore
  L3_2 = L3_2.TutorialGuideTalkDataExcelTable
  L3_2 = L3_2.GetData
  L4_2 = A1_2.GuideTalkID
  L3_2 = L3_2(L4_2)
  L5_2 = L2_2
  L4_2 = L2_2.setup_view
  L6_2 = L3_2
  L7_2 = A1_2.ActionName
  L8_2 = nil
  L9_2 = nil
  L10_2 = false
  L11_2 = A1_2.IsUseMotion
  L4_2(L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2)
end
L0_1._on_show_guide_talk = L5_1
function L5_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L3_2 = A0_2
  L2_2 = A0_2._hide_guide
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
end
L0_1._on_hide_guide_talk = L5_1
return L0_1
