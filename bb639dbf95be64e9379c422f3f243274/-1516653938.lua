local L0_1, L1_1, L2_1, L3_1, L4_1
L0_1 = require
L1_1 = "Ui.TreasureChallenge.Components.TreasureChallengeTargetItemPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.TreasureChallenge.Components.TreasureChallengeTargetsInMazePanelBinder"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "TreasureChallengeTargetsInMazePanel"
L2_1 = G
L2_1 = L2_1.BasePanel
L0_1 = L0_1(L1_1, L2_1)
L1_1 = CS
L1_1 = L1_1.RPG
L1_1 = L1_1.Client
L1_1 = L1_1.GlobalVars
L1_1 = L1_1.s_ModuleManager
L1_1 = L1_1.RaidModule
L2_1 = "ChallengeTargetPanelMaze_FadeIn"
L3_1 = "ChallengeTargetPanelMaze_FadeOut"
function L4_1(A0_2, A1_2, A2_2)
  local L3_2
  L3_2 = {}
  A0_2._target_panels = L3_2
  L3_2 = {}
  A0_2._need_anim_target_panels = L3_2
  A0_2._active_target_count = 0
  A0_2._is_shown = false
end
L0_1.ctor = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.text_title
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetTextID
  L3_2 = "UIText_Raid_ChallengeTarget_Title"
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.canvas_group
  L1_2.alpha = 0.0
  L1_2 = A0_2._binder
  L1_2 = L1_2.anim_event
  L2_2 = L1_2
  L1_2 = L1_2.AddAnimationEvent
  L3_2 = L2_1
  function L4_2()
    local L0_3, L1_3
    L0_3 = A0_2
    L1_3 = L0_3
    L0_3 = L0_3._on_fade_in_anim_end
    L0_3(L1_3)
  end
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.anim_event
  L2_2 = L1_2
  L1_2 = L1_2.AddAnimationEvent
  L3_2 = L3_1
  function L4_2()
    local L0_3, L1_3
    L0_3 = A0_2
    L1_3 = L0_3
    L0_3 = L0_3._on_fade_out_anim_end
    L0_3(L1_3)
  end
  L1_2(L2_2, L3_2, L4_2)
end
L0_1._on_load = L4_1
function L4_1(A0_2)
  local L1_2
  A0_2._need_anim_target_panels = nil
end
L0_1._on_dispose = L4_1
function L4_1(A0_2, A1_2, A2_2)
  A0_2._anim_callback_owner = A1_2
  A0_2._anim_callback = A2_2
end
L0_1.register_anim_callback = L4_1
function L4_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L3_2 = A0_2
  L2_2 = A0_2._get_available_target_panel
  L4_2 = A1_2
  L2_2 = L2_2(L3_2, L4_2)
  L4_2 = A0_2
  L3_2 = A0_2._add_one_target
  L5_2 = L2_2
  L3_2(L4_2, L5_2)
  L3_2 = G
  L3_2 = L3_2.RaidUtils
  L3_2 = L3_2.get_one_treasure_challenge_target_in_raid_maze
  L4_2 = A1_2
  L3_2 = L3_2(L4_2)
  L5_2 = L2_2
  L4_2 = L2_2.setup_view
  L6_2 = L3_2
  L7_2 = false
  L8_2 = true
  L4_2(L5_2, L6_2, L7_2, L8_2)
  L5_2 = L2_2
  L4_2 = L2_2.hide_rewards
  L4_2(L5_2)
  L5_2 = L2_2
  L4_2 = L2_2.setup_count_down_timer
  L6_2 = A1_2
  L7_2 = A0_2
  L8_2 = A0_2._remove_one_target
  L4_2(L5_2, L6_2, L7_2, L8_2)
end
L0_1.show_target_progress = L4_1
function L4_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L2_2 = nil
  L3_2 = 1
  L4_2 = A0_2._target_panels
  L4_2 = #L4_2
  L5_2 = 1
  for L6_2 = L3_2, L4_2, L5_2 do
    L7_2 = A0_2._target_panels
    L7_2 = L7_2[L6_2]
    L8_2 = L7_2.is_idle
    if not L8_2 then
      L8_2 = L7_2.target_id
      if L8_2 ~= A1_2 then
        goto lbl_17
      end
    end
    L2_2 = L7_2
    do break end
    ::lbl_17::
  end
  if L2_2 == nil then
    L4_2 = A0_2
    L3_2 = A0_2._create_new_target
    L3_2 = L3_2(L4_2)
    L2_2 = L3_2
  end
  return L2_2
end
L0_1._get_available_target_panel = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L2_2 = A0_2
  L1_2 = A0_2.instantiate_object
  L3_2 = A0_2._binder
  L3_2 = L3_2.target_prefab_loader
  L3_2 = L3_2.Prefab
  L4_2 = A0_2._binder
  L4_2 = L4_2.target_prefab_loader
  L4_2 = L4_2.transform
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  L3_2 = A0_2
  L2_2 = A0_2.create_panel
  L4_2 = G
  L4_2 = L4_2.TreasureChallengeTargetItemPanel
  L5_2 = G
  L5_2 = L5_2.TreasureChallengeTargetItemPanelBinder
  L2_2 = L2_2(L3_2, L4_2, L5_2)
  L4_2 = L2_2
  L3_2 = L2_2.bind
  L5_2 = L1_2
  L3_2(L4_2, L5_2)
  L3_2 = table
  L3_2 = L3_2.insert
  L4_2 = A0_2._target_panels
  L5_2 = L2_2
  L3_2(L4_2, L5_2)
  return L2_2
end
L0_1._create_new_target = L4_1
function L4_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2._active_target_count
  if L2_2 == 0 then
    L2_2 = A0_2._binder
    L2_2 = L2_2.root
    L3_2 = L2_2
    L2_2 = L2_2.SafeSetActive
    L4_2 = true
    L2_2(L3_2, L4_2)
    L2_2 = A0_2._binder
    L2_2 = L2_2.anim_root
    L3_2 = L2_2
    L2_2 = L2_2.Play
    L4_2 = L2_1
    L2_2(L3_2, L4_2)
    L2_2 = A0_2._anim_callback
    if L2_2 then
      L2_2 = A0_2._anim_callback_owner
      if L2_2 then
        L2_2 = A0_2._anim_callback
        L3_2 = A0_2._anim_callback_owner
        L4_2 = true
        L2_2(L3_2, L4_2)
      end
    end
  end
  L2_2 = A0_2._is_shown
  if not L2_2 then
    A1_2.should_waiting_fade_in_anim_end = true
    L2_2 = table
    L2_2 = L2_2.insert
    L3_2 = A0_2._need_anim_target_panels
    L4_2 = A1_2
    L2_2(L3_2, L4_2)
  end
  L2_2 = A0_2._active_target_count
  L2_2 = L2_2 + 1
  A0_2._active_target_count = L2_2
end
L0_1._add_one_target = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._active_target_count
  L1_2 = L1_2 - 1
  A0_2._active_target_count = L1_2
  L1_2 = A0_2._active_target_count
  if L1_2 <= 0 then
    A0_2._is_shown = false
    L1_2 = A0_2._binder
    L1_2 = L1_2.anim_root
    L2_2 = L1_2
    L1_2 = L1_2.Play
    L3_2 = L3_1
    L1_2(L2_2, L3_2)
  end
end
L0_1._remove_one_target = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  A0_2._is_shown = true
  L1_2 = pairs
  L2_2 = A0_2._need_anim_target_panels
  L1_2, L2_2, L3_2 = L1_2(L2_2)
  for L4_2, L5_2 in L1_2, L2_2, L3_2 do
    L5_2.should_waiting_fade_in_anim_end = false
    L7_2 = L5_2
    L6_2 = L5_2.setup_hint_status
    L6_2(L7_2)
  end
  L1_2 = {}
  A0_2._need_anim_target_panels = L1_2
end
L0_1._on_fade_in_anim_end = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._anim_callback
  if L1_2 then
    L1_2 = A0_2._anim_callback_owner
    if L1_2 then
      L1_2 = A0_2._anim_callback
      L2_2 = A0_2._anim_callback_owner
      L3_2 = false
      L1_2(L2_2, L3_2)
    end
  end
end
L0_1._on_fade_out_anim_end = L4_1
return L0_1
