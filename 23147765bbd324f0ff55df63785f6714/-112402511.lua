local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1, L6_1, L7_1
L0_1 = require
L1_1 = "Ui.SpaceZoo.SpaceZooBreedPerformanceDialogBinder"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "SpaceZooBreedPerformanceDialog"
L2_1 = G
L2_1 = L2_1.UIController
L0_1 = L0_1(L1_1, L2_1)
L1_1 = CS
L1_1 = L1_1.RPG
L1_1 = L1_1.Client
L1_1 = L1_1.GlobalVars
L1_1 = L1_1.s_ModuleManager
L1_1 = L1_1.SpaceZooModule
L2_1 = CS
L2_1 = L2_1.RPG
L2_1 = L2_1.GameCore
L2_1 = L2_1.SpaceZooChannelType
L3_1 = "SpaceZooBreedDialog_RareHint"
L4_1 = "SpaceZooBreedDialog_Normal"
L5_1 = "SpaceZooBreedDialog_FadeIn"
L6_1 = "SpaceZooBreedDialog_FadeOut"
function L7_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = G
  L1_2 = L1_2.ImportCsToLua
  L1_2 = L1_2.CS_RPG_Client_UILayer_Dialog
  A0_2._ui_layer = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._create_binder
  L3_2 = G
  L3_2 = L3_2.SpaceZooBreedPerformanceDialogBinder
  L1_2 = L1_2(L2_2, L3_2)
  A0_2._binder = L1_2
  A0_2._pause_game = true
  A0_2._is_resp_esc = false
end
L0_1.ctor = L7_1
function L7_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2
  A0_2._result_cat = A1_2
  A0_2._left_slot_cat = A2_2
  A0_2._right_slot_cat = A3_2
  L4_2 = L1_1.SpaceZooData
  A0_2._space_zoo_data = L4_2
end
L0_1.init = L7_1
function L7_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.SpaceZooBreedResultHintFinish
  L4_2 = A0_2._on_exit
  L1_2(L2_2, L3_2, L4_2)
end
L0_1._add_handlers = L7_1
function L7_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_skip
  L4_2 = A0_2._on_btn_skip
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_skip
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = false
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.anim_root
  L2_2 = L1_2
  L1_2 = L1_2.GetClip
  L3_2 = L4_1
  L1_2 = L1_2(L2_2, L3_2)
  L1_2 = L1_2.length
  L3_2 = A0_2
  L2_2 = A0_2._add_count_down_timer
  L4_2 = A0_2._on_performance_finish
  L5_2 = L1_2
  L2_2 = L2_2(L3_2, L4_2, L5_2)
  A0_2._normal_anim_timer = L2_2
end
L0_1._on_load = L7_1
function L7_1(A0_2)
  local L1_2
end
L0_1._on_dispose = L7_1
function L7_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L2_2 = A0_2
  L1_2 = A0_2._setup_cat_view
  L1_2(L2_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.anim
  L2_2 = L1_2
  L1_2 = L1_2.GetClip
  L3_2 = L5_1
  L1_2 = L1_2(L2_2, L3_2)
  L1_2 = L1_2.length
  L3_2 = A0_2
  L2_2 = A0_2._add_count_down_timer
  L4_2 = A0_2._on_fade_in_finish
  L5_2 = L1_2
  L2_2 = L2_2(L3_2, L4_2, L5_2)
  A0_2._fade_in_timer = L2_2
  L2_2 = A0_2._fade_in_timer
  L3_2 = L2_2
  L2_2 = L2_2.reset
  L2_2(L3_2)
  L2_2 = A0_2._fade_in_timer
  L3_2 = L2_2
  L2_2 = L2_2.start
  L2_2(L3_2)
  L3_2 = A0_2
  L2_2 = A0_2._setup_breed_result
  L2_2(L3_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_skip
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = true
  L2_2(L3_2, L4_2)
end
L0_1._setup_view = L7_1
function L7_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2._on_performance_finish
  L1_2(L2_2)
end
L0_1._on_return_to_top = L7_1
function L7_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.left_body_panel
  L2_2 = L1_2
  L1_2 = L1_2.setup_view
  L3_2 = A0_2._left_slot_cat
  L4_2 = {}
  L5_2 = L2_1.BodyColor
  L4_2[1] = L5_2
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.left_head_panel
  L2_2 = L1_2
  L1_2 = L1_2.setup_view
  L3_2 = A0_2._left_slot_cat
  L4_2 = {}
  L5_2 = L2_1.HatColor
  L4_2[1] = L5_2
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.left_body_decal_panel
  L2_2 = L1_2
  L1_2 = L1_2.setup_view
  L3_2 = A0_2._left_slot_cat
  L4_2 = {}
  L5_2 = L2_1.BodyDecal
  L4_2[1] = L5_2
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.right_body_panel
  L2_2 = L1_2
  L1_2 = L1_2.setup_view
  L3_2 = A0_2._right_slot_cat
  L4_2 = {}
  L5_2 = L2_1.BodyColor
  L4_2[1] = L5_2
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.right_head_panel
  L2_2 = L1_2
  L1_2 = L1_2.setup_view
  L3_2 = A0_2._right_slot_cat
  L4_2 = {}
  L5_2 = L2_1.HatColor
  L4_2[1] = L5_2
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.right_body_decal_panel
  L2_2 = L1_2
  L1_2 = L1_2.setup_view
  L3_2 = A0_2._right_slot_cat
  L4_2 = {}
  L5_2 = L2_1.BodyDecal
  L4_2[1] = L5_2
  L1_2(L2_2, L3_2, L4_2)
end
L0_1._setup_cat_view = L7_1
function L7_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._fade_in_timer
  L2_2 = L1_2
  L1_2 = L1_2.stop
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._play_anim
  L1_2(L2_2)
end
L0_1._on_fade_in_finish = L7_1
function L7_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._space_zoo_data
  L1_2 = L1_2.HaveMutateEvent
  if L1_2 then
    L1_2 = A0_2._binder
    L1_2 = L1_2.node_skip
    L2_2 = L1_2
    L1_2 = L1_2.SafeSetActive
    L3_2 = false
    L1_2(L2_2, L3_2)
    L1_2 = A0_2._binder
    L1_2 = L1_2.anim_root
    L2_2 = L1_2
    L1_2 = L1_2.Play
    L3_2 = L3_1
    L1_2(L2_2, L3_2)
    L1_2 = G
    L1_2 = L1_2.UIManager
    L1_2 = L1_2.load_and_async_show
    L2_2 = "Ui.SpaceZoo.SpaceZooMutateEventDialog"
    L3_2 = A0_2._space_zoo_data
    L3_2 = L3_2.WaitMutateCat
    L1_2(L2_2, L3_2)
    return
  end
  L1_2 = A0_2._binder
  L1_2 = L1_2.anim_root
  L2_2 = L1_2
  L1_2 = L1_2.Play
  L3_2 = L4_1
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._normal_anim_timer
  L2_2 = L1_2
  L1_2 = L1_2.reset
  L1_2(L2_2)
  L1_2 = A0_2._normal_anim_timer
  L2_2 = L1_2
  L1_2 = L1_2.start
  L1_2(L2_2)
end
L0_1._play_anim = L7_1
function L7_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_skip
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = false
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._normal_anim_timer
  L2_2 = L1_2
  L1_2 = L1_2.stop
  L1_2(L2_2)
  L1_2 = G
  L1_2 = L1_2.UIManager
  L1_2 = L1_2.load_and_async_show
  L2_2 = "Ui.SpaceZoo.SpaceZooBreedResultDialog"
  L3_2 = A0_2._result_cat
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.anim
  L2_2 = L1_2
  L1_2 = L1_2.Play
  L3_2 = L6_1
  L1_2(L2_2, L3_2)
end
L0_1._on_performance_finish = L7_1
function L7_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L1_2 = A0_2._left_slot_cat
  L2_2 = L1_2
  L1_2 = L1_2.GetFeatureID
  L3_2 = L2_1.BodyColor
  L1_2 = L1_2(L2_2, L3_2)
  L2_2 = A0_2._result_cat
  L3_2 = L2_2
  L2_2 = L2_2.GetFeatureID
  L4_2 = L2_1.BodyColor
  L2_2 = L2_2(L3_2, L4_2)
  L1_2 = L1_2 == L2_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.left_body_panel
  L3_2 = L2_2
  L2_2 = L2_2.play_select_anim
  L4_2 = L1_2
  L5_2 = true
  L2_2(L3_2, L4_2, L5_2)
  L2_2 = A0_2._right_slot_cat
  L3_2 = L2_2
  L2_2 = L2_2.GetFeatureID
  L4_2 = L2_1.BodyColor
  L2_2 = L2_2(L3_2, L4_2)
  L3_2 = A0_2._result_cat
  L4_2 = L3_2
  L3_2 = L3_2.GetFeatureID
  L5_2 = L2_1.BodyColor
  L3_2 = L3_2(L4_2, L5_2)
  L2_2 = L2_2 == L3_2
  L3_2 = A0_2._binder
  L3_2 = L3_2.right_body_panel
  L4_2 = L3_2
  L3_2 = L3_2.play_select_anim
  L5_2 = not L1_2 and L5_2
  L6_2 = false
  L3_2(L4_2, L5_2, L6_2)
  L3_2 = A0_2._left_slot_cat
  L4_2 = L3_2
  L3_2 = L3_2.GetFeatureID
  L5_2 = L2_1.HatColor
  L3_2 = L3_2(L4_2, L5_2)
  L4_2 = A0_2._result_cat
  L5_2 = L4_2
  L4_2 = L4_2.GetFeatureID
  L6_2 = L2_1.HatColor
  L4_2 = L4_2(L5_2, L6_2)
  L3_2 = L3_2 == L4_2
  L4_2 = A0_2._binder
  L4_2 = L4_2.left_head_panel
  L5_2 = L4_2
  L4_2 = L4_2.play_select_anim
  L6_2 = L3_2
  L7_2 = true
  L4_2(L5_2, L6_2, L7_2)
  L4_2 = A0_2._right_slot_cat
  L5_2 = L4_2
  L4_2 = L4_2.GetFeatureID
  L6_2 = L2_1.HatColor
  L4_2 = L4_2(L5_2, L6_2)
  L5_2 = A0_2._result_cat
  L6_2 = L5_2
  L5_2 = L5_2.GetFeatureID
  L7_2 = L2_1.HatColor
  L5_2 = L5_2(L6_2, L7_2)
  L4_2 = L4_2 == L5_2
  L5_2 = A0_2._binder
  L5_2 = L5_2.right_head_panel
  L6_2 = L5_2
  L5_2 = L5_2.play_select_anim
  L7_2 = not L3_2 and L7_2
  L8_2 = false
  L5_2(L6_2, L7_2, L8_2)
  L5_2 = A0_2._left_slot_cat
  L6_2 = L5_2
  L5_2 = L5_2.GetFeatureID
  L7_2 = L2_1.BodyDecal
  L5_2 = L5_2(L6_2, L7_2)
  L6_2 = A0_2._result_cat
  L7_2 = L6_2
  L6_2 = L6_2.GetFeatureID
  L8_2 = L2_1.BodyDecal
  L6_2 = L6_2(L7_2, L8_2)
  L5_2 = L5_2 == L6_2
  L6_2 = A0_2._binder
  L6_2 = L6_2.left_body_decal_panel
  L7_2 = L6_2
  L6_2 = L6_2.play_select_anim
  L8_2 = L5_2
  L9_2 = true
  L6_2(L7_2, L8_2, L9_2)
  L6_2 = A0_2._right_slot_cat
  L7_2 = L6_2
  L6_2 = L6_2.GetFeatureID
  L8_2 = L2_1.BodyDecal
  L6_2 = L6_2(L7_2, L8_2)
  L7_2 = A0_2._result_cat
  L8_2 = L7_2
  L7_2 = L7_2.GetFeatureID
  L9_2 = L2_1.BodyDecal
  L7_2 = L7_2(L8_2, L9_2)
  L6_2 = L6_2 == L7_2
  L7_2 = A0_2._binder
  L7_2 = L7_2.right_body_decal_panel
  L8_2 = L7_2
  L7_2 = L7_2.play_select_anim
  L9_2 = not L5_2 and L9_2
  L10_2 = false
  L7_2(L8_2, L9_2, L10_2)
end
L0_1._setup_breed_result = L7_1
function L7_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2.exit
  L1_2(L2_2)
end
L0_1._on_exit = L7_1
function L7_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.UIAnimationUtils
  L1_2 = L1_2.PlayFromEnd
  L2_2 = A0_2._binder
  L2_2 = L2_2.anim
  L3_2 = L5_1
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2._on_fade_in_finish
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._skip_select_anim
  L1_2(L2_2)
  L1_2 = A0_2._space_zoo_data
  L1_2 = L1_2.HaveMutateEvent
  if not L1_2 then
    L1_2 = CS
    L1_2 = L1_2.RPG
    L1_2 = L1_2.Client
    L1_2 = L1_2.UIAnimationUtils
    L1_2 = L1_2.PlayFromEnd
    L2_2 = A0_2._binder
    L2_2 = L2_2.anim_root
    L3_2 = L4_1
    L1_2(L2_2, L3_2)
    L2_2 = A0_2
    L1_2 = A0_2._on_performance_finish
    L1_2(L2_2)
  end
end
L0_1._on_btn_skip = L7_1
function L7_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L1_2 = ipairs
  L2_2 = A0_2._binder
  L2_2 = L2_2.features
  L1_2, L2_2, L3_2 = L1_2(L2_2)
  for L4_2, L5_2 in L1_2, L2_2, L3_2 do
    L7_2 = L5_2
    L6_2 = L5_2.skip_anim
    L6_2(L7_2)
  end
end
L0_1._skip_select_anim = L7_1
return L0_1
