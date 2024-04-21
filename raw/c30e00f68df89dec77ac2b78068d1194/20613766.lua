local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1, L6_1, L7_1, L8_1, L9_1, L10_1, L11_1, L12_1
L0_1 = require
L1_1 = "Ui.Common.CommonSubStarInfoPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Common.CommonSubStarInfoPanelBinder"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "AetherDivideTerminalGymTabItem"
L2_1 = G
L2_1 = L2_1.TabItem
L0_1 = L0_1(L1_1, L2_1)
L1_1 = CS
L1_1 = L1_1.RPG
L1_1 = L1_1.Client
L1_1 = L1_1.GlobalVars
L1_1 = L1_1.s_ModuleManager
L1_1 = L1_1.AetherDivideModule
L2_1 = 8001
L3_1 = 8002
L4_1 = "AetherDivideTerminal_GymEnter_Progress"
L5_1 = "AetherDivideTerminal_GymEnter_Unlock"
L6_1 = "AetherDivide_Progress"
L7_1 = "AetherDivideTerminalGymPanel_FadeIn2"
L8_1 = {}
L9_1 = 45
L10_1 = -45
L11_1 = 135
L12_1 = 225
L8_1[1] = L9_1
L8_1[2] = L10_1
L8_1[3] = L11_1
L8_1[4] = L12_1
function L9_1(A0_2)
  local L1_2
  A0_2._block_count = 0
end
L0_1.ctor = L9_1
function L9_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_enter_game
  L4_2 = A0_2._on_btn_enter_game
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_train_entry
  L4_2 = L0_1._on_btn_train_entry
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_altas
  L4_2 = L0_1._on_btn_altas
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_team
  L4_2 = L0_1._on_btn_team
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_monster
  L4_2 = L0_1._on_btn_monster
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_special_zoom
  L4_2 = A0_2._on_btn_special_zoom
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.UIAnimationEvent
  L4_2 = A0_2._on_animation_evt
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_reddot
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2.fetch_ui3d
  L1_2 = L1_2(L2_2)
  A0_2._ui3d = L1_2
  L1_2 = L1_1.IsAllMissionClear
  A0_2._is_all_mission_clear = L1_2
  L1_2 = ipairs
  L2_2 = A0_2._binder
  L2_2 = L2_2.gym_info_panel_list
  L1_2, L2_2, L3_2 = L1_2(L2_2)
  for L4_2, L5_2 in L1_2, L2_2, L3_2 do
    L7_2 = L5_2
    L6_2 = L5_2.register_anim_callback
    L8_2 = A0_2._on_play_anim
    L9_2 = A0_2._on_anim_end
    L10_2 = A0_2
    L6_2(L7_2, L8_2, L9_2, L10_2)
  end
  A0_2._is_first_select = true
end
L0_1._on_load = L9_1
function L9_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = G
  L1_2 = L1_2.RedDotModule
  L1_2 = L1_2.Instance
  L2_2 = L1_2
  L1_2 = L1_2.bind_reddot
  L3_2 = "AetherDivideReward"
  L4_2 = nil
  L5_2 = A0_2
  L6_2 = A0_2._binder
  L6_2 = L6_2.reddot_train_entry
  L1_2(L2_2, L3_2, L4_2, L5_2, L6_2)
  L1_2 = G
  L1_2 = L1_2.RedDotModule
  L1_2 = L1_2.Instance
  L2_2 = L1_2
  L1_2 = L1_2.bind_reddot
  L3_2 = "AetherSpiritAll"
  L4_2 = nil
  L5_2 = A0_2
  L6_2 = A0_2._binder
  L6_2 = L6_2.node_monster_reddot
  L1_2(L2_2, L3_2, L4_2, L5_2, L6_2)
end
L0_1._bind_reddot = L9_1
function L9_1(A0_2)
  local L1_2
  L1_2 = "UIText_AetherDivide_Overview_Gym"
  return L1_2
end
L0_1.get_title = L9_1
function L9_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.text_title
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetTextID
  L4_2 = A0_2
  L3_2 = A0_2.get_title
  L3_2, L4_2, L5_2, L6_2 = L3_2(L4_2)
  L1_2(L2_2, L3_2, L4_2, L5_2, L6_2)
  L1_2 = G
  L1_2 = L1_2.RedDotModule
  L1_2 = L1_2.Instance
  L2_2 = L1_2
  L1_2 = L1_2.bind_reddot
  L3_2 = "AetherDivideGymTab"
  L4_2 = nil
  L5_2 = A0_2
  L6_2 = A0_2._binder
  L6_2 = L6_2.node_reddot
  L1_2(L2_2, L3_2, L4_2, L5_2, L6_2)
end
L0_1._on_added = L9_1
function L9_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L1_2 = L1_1.GymData
  L2_2 = L1_2
  L1_2 = L1_2.GetGymDataItems
  L1_2 = L1_2(L2_2)
  L2_2 = 0
  L3_2 = L1_2.Count
  L3_2 = L3_2 - 1
  L4_2 = 1
  for L5_2 = L2_2, L3_2, L4_2 do
    L6_2 = L1_2[L5_2]
    L8_2 = L6_2
    L7_2 = L6_2.ClearNewStatus
    L7_2(L8_2)
  end
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
  end
end
L0_1._on_dispose = L9_1
function L9_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._is_first_select
  if L1_2 then
    L1_2 = A0_2._binder
    L1_2 = L1_2.anim_root
    L2_2 = L1_2
    L1_2 = L1_2.Play
    L1_2(L2_2)
    L2_2 = A0_2
    L1_2 = A0_2._try_play_effect
    L1_2(L2_2)
  else
    L1_2 = A0_2._binder
    L1_2 = L1_2.node_effect_unlock
    L2_2 = L1_2
    L1_2 = L1_2.SafeSetLightWeightActive
    L3_2 = false
    L1_2(L2_2, L3_2)
    L1_2 = CS
    L1_2 = L1_2.RPG
    L1_2 = L1_2.Client
    L1_2 = L1_2.UIAnimationUtils
    L1_2 = L1_2.PlayFromBegin
    L2_2 = A0_2._binder
    L2_2 = L2_2.anim_root
    L3_2 = L7_1
    L1_2(L2_2, L3_2)
    L2_2 = A0_2
    L1_2 = A0_2._refresh
    L1_2(L2_2)
  end
  L2_2 = A0_2
  L1_2 = A0_2.setup_short_cut_hint_panel
  L3_2 = 31
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2._init_ui_navigation
  L1_2(L2_2)
  A0_2._is_first_select = false
end
L0_1._on_select = L9_1
function L9_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2._refresh_exp
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._refresh_player
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._refresh_enter_game_panel
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._refresh_gym_list
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._refresh_progress
  L1_2(L2_2)
end
L0_1._refresh = L9_1
function L9_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L2_2 = A0_2
  L1_2 = A0_2._refresh_exp
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._refresh_player
  L1_2(L2_2)
  L1_2 = A0_2._is_all_mission_clear
  if L1_2 then
    L2_2 = A0_2
    L1_2 = A0_2._refresh_gym_list
    L3_2 = true
    L1_2(L2_2, L3_2)
    L2_2 = A0_2
    L1_2 = A0_2._refresh_progress
    L1_2(L2_2)
    L2_2 = A0_2
    L1_2 = A0_2._refresh_enter_game_panel
    L1_2(L2_2)
    L1_2 = A0_2._ui3d
    L2_2 = L1_2
    L1_2 = L1_2.play_finished_anim
    L1_2(L2_2)
    return
  end
  L1_2 = false
  L2_2 = nil
  L3_2 = L1_1.GymData
  L4_2 = L3_2
  L3_2 = L3_2.GetGymDataItems
  L3_2 = L3_2(L4_2)
  L4_2 = L3_2.Count
  L4_2 = L4_2 - 1
  L5_2 = 0
  L6_2 = -1
  for L7_2 = L4_2, L5_2, L6_2 do
    L8_2 = L3_2[L7_2]
    L10_2 = L8_2
    L9_2 = L8_2.IsUnlock
    L9_2 = L9_2(L10_2)
    if L9_2 then
      L10_2 = L8_2
      L9_2 = L8_2.ShouldPlayBadgeUnlockEffect
      L9_2 = L9_2(L10_2)
      if L9_2 then
        L2_2 = L8_2
        L1_2 = true
      end
      L10_2 = L8_2
      L9_2 = L8_2.IsNew
      L9_2 = L9_2(L10_2)
      if L9_2 then
        L2_2 = L8_2
      end
      break
    end
  end
  L5_2 = A0_2
  L4_2 = A0_2._refresh_gym_list
  L6_2 = true
  L7_2 = L2_2
  L4_2(L5_2, L6_2, L7_2)
  L5_2 = A0_2
  L4_2 = A0_2._refresh_progress
  L6_2 = L1_2
  L4_2(L5_2, L6_2)
  L5_2 = A0_2
  L4_2 = A0_2._refresh_enter_game_panel
  L4_2(L5_2)
end
L0_1._try_play_effect = L9_1
function L9_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._anim_controller
  if L1_2 == nil then
    L1_2 = CS
    L1_2 = L1_2.RPG
    L1_2 = L1_2.Client
    L1_2 = L1_2.RPGAnimationEvent
    L1_2 = L1_2.Get
    L2_2 = A0_2._binder
    L2_2 = L2_2.anim_gym_enter
    L2_2 = L2_2.transform
    L1_2 = L1_2(L2_2)
    A0_2._anim_controller = L1_2
    L1_2 = A0_2._anim_controller
    L2_2 = L1_2
    L1_2 = L1_2.AddAnimationEvent
    L3_2 = L4_1
    function L4_2()
      local L0_3, L1_3
      L0_3 = A0_2
      L1_3 = L0_3
      L0_3 = L0_3._on_play_progress_anim_end
      L0_3(L1_3)
    end
    L1_2(L2_2, L3_2, L4_2)
  end
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.UIAnimationUtils
  L1_2 = L1_2.PlayFromBegin
  L2_2 = A0_2._binder
  L2_2 = L2_2.anim_gym_enter
  L3_2 = L4_1
  L1_2(L2_2, L3_2)
end
L0_1._play_progress_anim = L9_1
function L9_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_progress
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = A0_2._is_all_badge_unlock
  L3_2 = not L3_2
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._is_all_badge_unlock
  if L1_2 then
    L1_2 = CS
    L1_2 = L1_2.RPG
    L1_2 = L1_2.Client
    L1_2 = L1_2.UIAnimationUtils
    L1_2 = L1_2.PlayFromBegin
    L2_2 = A0_2._binder
    L2_2 = L2_2.anim_gym_enter
    L3_2 = L5_1
    L1_2(L2_2, L3_2)
  end
end
L0_1._on_play_progress_anim_end = L9_1
function L9_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2
  L3_2 = L1_1.GymData
  L4_2 = L3_2
  L3_2 = L3_2.GetGymDataItems
  L3_2 = L3_2(L4_2)
  L4_2 = L1_1
  L5_2 = L4_2
  L4_2 = L4_2.GetCurAetherDivideMainMissionData
  L4_2 = L4_2(L5_2)
  L6_2 = A0_2
  L5_2 = A0_2._get_has_mission_gym_data
  L5_2 = L5_2(L6_2)
  L6_2 = L4_2 ~= nil
  A0_2._fade_in_count = 0
  L7_2 = ipairs
  L8_2 = A0_2._binder
  L8_2 = L8_2.gym_info_panel_list
  L7_2, L8_2, L9_2 = L7_2(L8_2)
  for L10_2, L11_2 in L7_2, L8_2, L9_2 do
    L12_2 = L3_2.Count
    if L10_2 <= L12_2 then
      L12_2 = L10_2 - 1
      L12_2 = L3_2[L12_2]
      L14_2 = L11_2
      L13_2 = L11_2.safe_set_active
      L15_2 = true
      L13_2(L14_2, L15_2)
      if L12_2 == A2_2 then
        L14_2 = L11_2
        L13_2 = L11_2.setup_preview_for_anim
        L15_2 = L12_2
        L16_2 = A0_2._play_progress_anim
        L17_2 = A0_2
        L13_2(L14_2, L15_2, L16_2, L17_2)
      else
        L14_2 = L11_2
        L13_2 = L11_2.setup_view
        L15_2 = L12_2
        L13_2(L14_2, L15_2)
      end
      L14_2 = L11_2
      L13_2 = L11_2.set_doing_state
      L15_2 = L5_2 == L12_2 and L4_2 ~= nil
      L16_2 = L6_2
      L13_2(L14_2, L15_2, L16_2)
    else
      L13_2 = L11_2
      L12_2 = L11_2.safe_set_active
      L14_2 = false
      L12_2(L13_2, L14_2)
    end
    if A1_2 then
      L13_2 = L11_2
      L12_2 = L11_2.play_fade_in
      L12_2(L13_2)
    end
  end
end
L0_1._refresh_gym_list = L9_1
function L9_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2
  L2_2 = L1_1.GymData
  L3_2 = L2_2
  L2_2 = L2_2.GetGymDataItems
  L2_2 = L2_2(L3_2)
  L3_2 = 0
  L4_2 = 0
  L5_2 = L2_2.Count
  L5_2 = L5_2 - 1
  L6_2 = 1
  for L7_2 = L4_2, L5_2, L6_2 do
    L8_2 = L2_2[L7_2]
    L10_2 = L8_2
    L9_2 = L8_2.IsBadgeUnlock
    L9_2 = L9_2(L10_2)
    if L9_2 then
      L3_2 = L3_2 + 1
    end
  end
  if 1 <= L3_2 then
    L4_2 = A0_2._binder
    L4_2 = L4_2.node_light
    L5_2 = CS
    L5_2 = L5_2.UnityEngine
    L5_2 = L5_2.Quaternion
    L5_2 = L5_2.Euler
    L6_2 = 0
    L7_2 = 0
    L8_2 = L8_1[L3_2]
    L5_2 = L5_2(L6_2, L7_2, L8_2)
    L4_2.rotation = L5_2
  end
  if A1_2 then
    L3_2 = L3_2 - 1
  end
  L4_2 = L2_2.Count
  L4_2 = L3_2 == L4_2
  A0_2._is_all_badge_unlock = L4_2
  L4_2 = ipairs
  L5_2 = A0_2._binder
  L5_2 = L5_2.line_node_list
  L4_2, L5_2, L6_2 = L4_2(L5_2)
  for L7_2, L8_2 in L4_2, L5_2, L6_2 do
    L10_2 = L8_2
    L9_2 = L8_2.SafeSetActive
    L11_2 = L7_2 <= L3_2
    L9_2(L10_2, L11_2)
  end
end
L0_1._refresh_progress = L9_1
function L9_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2
  L1_2 = L1_1.TrainerData
  L2_2 = L1_2.TrainerLevelRow
  if L2_2 == nil then
    return
  end
  L3_2 = 0
  L4_2 = L2_2.QuestList
  L4_2 = L4_2.Length
  L5_2 = 0
  L6_2 = L4_2 - 1
  L7_2 = 1
  for L8_2 = L5_2, L6_2, L7_2 do
    L9_2 = CS
    L9_2 = L9_2.RPG
    L9_2 = L9_2.Client
    L9_2 = L9_2.GlobalVars
    L9_2 = L9_2.s_ModuleManager
    L9_2 = L9_2.QuestModule
    L10_2 = L9_2
    L9_2 = L9_2.TryGetQuestData
    L11_2 = L2_2.QuestList
    L11_2 = L11_2[L8_2]
    L9_2 = L9_2(L10_2, L11_2)
    if L9_2 ~= nil then
      L10_2 = L9_2.Status
      L11_2 = CS
      L11_2 = L11_2.LEOGBBOPKKO
      L11_2 = L11_2.CMOFEAFMGAK
      if L10_2 == L11_2 then
        L3_2 = L3_2 + 1
      end
    end
  end
  L5_2 = A0_2._binder
  L5_2 = L5_2.text_level
  L6_2 = L5_2
  L5_2 = L5_2.SafeSetTextID
  L7_2 = L2_2.Name
  L5_2(L6_2, L7_2)
  L5_2 = A0_2._binder
  L5_2 = L5_2.bar_exp
  L6_2 = L3_2 / L4_2
  L5_2.value = L6_2
  L6_2 = A0_2
  L5_2 = A0_2._async_load_sprite_to
  L7_2 = A0_2._binder
  L7_2 = L7_2.img_level
  L8_2 = L2_2.IconPath
  L5_2(L6_2, L7_2, L8_2)
end
L0_1._refresh_exp = L9_1
function L9_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.GlobalVars
  L1_2 = L1_2.s_ModuleManager
  L1_2 = L1_2.PlayerModule
  L1_2 = L1_2.PlayerData
  L1_2 = L1_2.HeroAvatarInfoData
  L2_2 = L1_2
  L1_2 = L1_2.GetCurrentHeroGender
  L1_2 = L1_2(L2_2)
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.GameCore
  L2_2 = L2_2.GenderType
  L2_2 = L2_2.GENDER_MAN
  if L1_2 == L2_2 then
    L2_2 = L2_1
    if L2_2 then
      goto lbl_22
    end
  end
  L2_2 = L3_1
  ::lbl_22::
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.GameCore
  L3_2 = L3_2.ItemExcelTable
  L3_2 = L3_2.GetData
  L4_2 = L2_2
  L3_2 = L3_2(L4_2)
  L5_2 = A0_2
  L4_2 = A0_2._async_load_sprite_to
  L6_2 = A0_2._binder
  L6_2 = L6_2.img_avatar
  L7_2 = L3_2.ItemAvatarIconPath
  L4_2(L5_2, L6_2, L7_2)
end
L0_1._refresh_player = L9_1
function L9_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.btn_enter_game
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetInteractable
  L3_2 = false
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.incontrol_tip_enter
  L1_2.IsShowTip = false
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_progress
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = A0_2._is_all_badge_unlock
  L3_2 = not L3_2
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._is_all_mission_clear
  if L1_2 then
    L1_2 = A0_2._binder
    L1_2 = L1_2.text_btn_enter
    L2_2 = L1_2
    L1_2 = L1_2.SafeSetTextID
    L3_2 = "UIText_AetherDivide_Activity_GoToArena"
    L1_2(L2_2, L3_2)
    L1_2 = A0_2._binder
    L1_2 = L1_2.btn_enter_game
    L2_2 = L1_2
    L1_2 = L1_2.SafeSetInteractable
    L3_2 = true
    L1_2(L2_2, L3_2)
    L1_2 = A0_2._binder
    L1_2 = L1_2.incontrol_tip_enter
    L1_2.IsShowTip = true
    L1_2 = A0_2._binder
    L1_2 = L1_2.node_light_unlock
    L2_2 = L1_2
    L1_2 = L1_2.SafeSetLightWeightActive
    L3_2 = false
    L1_2(L2_2, L3_2)
    L1_2 = A0_2._binder
    L1_2 = L1_2.node_finished
    L2_2 = L1_2
    L1_2 = L1_2.SafeSetActive
    L3_2 = true
    L1_2(L2_2, L3_2)
    return
  end
  L1_2 = A0_2._is_all_badge_unlock
  if L1_2 then
    L1_2 = A0_2._binder
    L1_2 = L1_2.node_effect_unlock
    L2_2 = L1_2
    L1_2 = L1_2.SafeSetLightWeightActive
    L3_2 = false
    L1_2(L2_2, L3_2)
    L1_2 = CS
    L1_2 = L1_2.RPG
    L1_2 = L1_2.Client
    L1_2 = L1_2.UIAnimationUtils
    L1_2 = L1_2.PlayToEnd
    L2_2 = A0_2._binder
    L2_2 = L2_2.anim_gym_enter
    L3_2 = L5_1
    L1_2(L2_2, L3_2)
    L1_2 = A0_2._binder
    L1_2 = L1_2.btn_enter_game
    L2_2 = L1_2
    L1_2 = L1_2.SafeSetInteractable
    L3_2 = true
    L1_2(L2_2, L3_2)
    L1_2 = A0_2._binder
    L1_2 = L1_2.incontrol_tip_enter
    L1_2.IsShowTip = true
  else
    L1_2 = CS
    L1_2 = L1_2.RPG
    L1_2 = L1_2.Client
    L1_2 = L1_2.UIAnimationUtils
    L1_2 = L1_2.PlayToBegin
    L2_2 = A0_2._binder
    L2_2 = L2_2.anim_gym_enter
    L3_2 = L4_1
    L1_2(L2_2, L3_2)
  end
end
L0_1._refresh_enter_game_panel = L9_1
function L9_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2._refresh_enter_game_panel
  L1_2(L2_2)
end
L0_1._on_time_expire = L9_1
function L9_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._state
  L2_2 = A0_2.SelectState
  L2_2 = L2_2.Selected
  if L1_2 ~= L2_2 then
    return
  end
  L2_2 = A0_2
  L1_2 = A0_2._refresh_exp
  L1_2(L2_2)
end
L0_1._on_return_to_top = L9_1
function L9_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._block_count
  L1_2 = L1_2 + 1
  A0_2._block_count = L1_2
  L1_2 = A0_2._block_uid
  if L1_2 ~= nil then
    return
  end
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.GlobalVars
  L1_2 = L1_2.s_UIManager
  L2_2 = L1_2
  L1_2 = L1_2.BlockFixedTime
  L3_2 = 3
  L4_2 = 10
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2._block_uid = L1_2
end
L0_1._on_play_anim = L9_1
function L9_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._block_count
  L1_2 = L1_2 - 1
  A0_2._block_count = L1_2
  L1_2 = A0_2._block_uid
  if L1_2 ~= nil then
    L1_2 = A0_2._block_count
    if not (0 < L1_2) then
      goto lbl_11
    end
  end
  do return end
  ::lbl_11::
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.GlobalVars
  L1_2 = L1_2.s_UIManager
  L2_2 = L1_2
  L1_2 = L1_2.TryUnblockFixedTime
  L3_2 = A0_2._block_uid
  L1_2(L2_2, L3_2)
  A0_2._block_uid = nil
end
L0_1._on_anim_end = L9_1
function L9_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = L6_1
  if A1_2 ~= L2_2 then
    return
  end
  L3_2 = A0_2
  L2_2 = A0_2._refresh_progress
  L2_2(L3_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.btn_enter_game
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetInteractable
  L4_2 = A0_2._is_all_badge_unlock
  L2_2(L3_2, L4_2)
end
L0_1._on_animation_evt = L9_1
function L9_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L1_2 = L1_1.GymData
  L2_2 = L1_2
  L1_2 = L1_2.GetGymDataItems
  L1_2 = L1_2(L2_2)
  L2_2 = L1_2.Count
  L2_2 = L2_2 - 1
  L3_2 = 0
  L4_2 = -1
  for L5_2 = L2_2, L3_2, L4_2 do
    L6_2 = L1_2[L5_2]
    L7_2 = L6_2
    L6_2 = L6_2.IsUnlock
    L6_2 = L6_2(L7_2)
    if L6_2 then
      L6_2 = L1_2.Count
      L6_2 = L6_2 - 1
      if L5_2 == L6_2 then
        L6_2 = L1_2[L5_2]
        L7_2 = L6_2
        L6_2 = L6_2.IsBadgeUnlock
        L6_2 = L6_2(L7_2)
        if L6_2 then
          L6_2 = nil
          return L6_2
        end
      end
      L6_2 = L1_2[L5_2]
      return L6_2
    end
  end
  L2_2 = nil
  return L2_2
end
L0_1._get_has_mission_gym_data = L9_1
function L9_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.SDKLuaReportAdapter
  L1_2 = L1_2.ReportUIButtonClick
  L2_2 = A0_2._owner
  L2_2 = L2_2.__name
  L3_2 = A0_2.__name
  L4_2 = "BtnEnterGame"
  L5_2 = A0_2._owner
  L5_2 = L5_2.guid
  L1_2(L2_2, L3_2, L4_2, L5_2)
  L1_2 = A0_2._is_all_mission_clear
  if L1_2 then
    L1_2 = G
    L1_2 = L1_2.UIManager
    L1_2 = L1_2.load_and_async_show
    L2_2 = "Ui.Map.SwitchAreaPage"
    L3_2 = 2013601
    L4_2 = 2347
    L1_2(L2_2, L3_2, L4_2)
    return
  end
  L1_2 = L1_1
  L2_2 = L1_2
  L1_2 = L1_2.GetCurAetherDivideMainMissionData
  L1_2 = L1_2(L2_2)
  if L1_2 == nil then
    return
  end
  L2_2 = G
  L2_2 = L2_2.MissionUtils
  L2_2 = L2_2.common_jump_to_mission_by_main_mission
  L3_2 = L1_2
  L2_2(L3_2)
end
L0_1._on_btn_enter_game = L9_1
function L9_1(A0_2)
  local L1_2, L2_2, L3_2
  L2_2 = A0_2
  L1_2 = A0_2.is_in_special_zoom
  L1_2 = L1_2(L2_2)
  if L1_2 then
    L2_2 = A0_2
    L1_2 = A0_2.save_navigation_target
    L3_2 = A0_2._binder
    L3_2 = L3_2.btn_train_entry
    L3_2 = L3_2.gameObject
    L1_2(L2_2, L3_2)
  end
  L1_2 = G
  L1_2 = L1_2.UIManager
  L1_2 = L1_2.load_and_async_show
  L2_2 = "Ui.AetherDivide.AetherTrainer.AetherDivideTrainerLevelRewardDialog"
  L1_2(L2_2)
end
L0_1._on_btn_train_entry = L9_1
function L9_1(A0_2)
  local L1_2, L2_2, L3_2
  L2_2 = A0_2
  L1_2 = A0_2.is_in_special_zoom
  L1_2 = L1_2(L2_2)
  if L1_2 then
    L2_2 = A0_2
    L1_2 = A0_2.save_navigation_target
    L3_2 = A0_2._binder
    L3_2 = L3_2.btn_altas
    L3_2 = L3_2.gameObject
    L1_2(L2_2, L3_2)
  end
  L1_2 = G
  L1_2 = L1_2.UIManager
  L1_2 = L1_2.load_and_async_show
  L2_2 = "Ui.AetherDivide.AetherSpiritAtlas.AetherSpiritAtlasPage"
  L1_2(L2_2)
end
L0_1._on_btn_altas = L9_1
function L9_1(A0_2)
  local L1_2, L2_2, L3_2
  L2_2 = A0_2
  L1_2 = A0_2.is_in_special_zoom
  L1_2 = L1_2(L2_2)
  if L1_2 then
    L2_2 = A0_2
    L1_2 = A0_2.save_navigation_target
    L3_2 = A0_2._binder
    L3_2 = L3_2.btn_team
    L3_2 = L3_2.gameObject
    L1_2(L2_2, L3_2)
  end
  L1_2 = G
  L1_2 = L1_2.UIManager
  L1_2 = L1_2.load_and_async_show
  L2_2 = "Ui.AetherDivide.AetherTeam.AetherDivideTeamEditPage"
  L1_2(L2_2)
end
L0_1._on_btn_team = L9_1
function L9_1(A0_2)
  local L1_2, L2_2, L3_2
  L2_2 = A0_2
  L1_2 = A0_2.is_in_special_zoom
  L1_2 = L1_2(L2_2)
  if L1_2 then
    L2_2 = A0_2
    L1_2 = A0_2.save_navigation_target
    L3_2 = A0_2._binder
    L3_2 = L3_2.btn_monster
    L3_2 = L3_2.gameObject
    L1_2(L2_2, L3_2)
  end
  L1_2 = G
  L1_2 = L1_2.UIManager
  L1_2 = L1_2.load_and_async_show
  L2_2 = "Ui.AetherDivide.AetherOutFit.AetherSpiritMain.AetherSpiritMainPage"
  L1_2(L2_2)
end
L0_1._on_btn_monster = L9_1
function L9_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._binder
  if L1_2 ~= nil then
    L1_2 = A0_2._binder
    L1_2 = L1_2.incontrol_tip_special
    if L1_2 ~= nil then
      goto lbl_9
    end
  end
  do return end
  ::lbl_9::
  L1_2 = G
  L1_2 = L1_2.Utils
  L1_2 = L1_2.is_gamepad_input
  L1_2 = L1_2()
  L2_2 = A0_2._binder
  L2_2 = L2_2.incontrol_tip_special
  L2_2.IsShowTip = L1_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_incontrol_bg
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = L1_2
  L2_2(L3_2, L4_2)
end
L0_1._on_in_control_input_switch = L9_1
function L9_1(A0_2)
  local L1_2
  L1_2 = A0_2._binder
  if L1_2 ~= nil then
    L1_2 = A0_2._binder
    L1_2 = L1_2.incontrol_tip_special
    if L1_2 ~= nil then
      goto lbl_9
    end
  end
  do return end
  ::lbl_9::
  L1_2 = A0_2._binder
  L1_2 = L1_2.incontrol_tip_special
  L1_2.IsShowTip = false
end
L0_1._on_enter_special_zoom = L9_1
function L9_1(A0_2)
  local L1_2
  L1_2 = A0_2._binder
  if L1_2 ~= nil then
    L1_2 = A0_2._binder
    L1_2 = L1_2.incontrol_tip_special
    if L1_2 ~= nil then
      goto lbl_9
    end
  end
  do return end
  ::lbl_9::
  L1_2 = A0_2._binder
  L1_2 = L1_2.incontrol_tip_special
  L1_2.IsShowTip = true
end
L0_1._on_leave_special_zoom = L9_1
function L9_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.gym_info_panel_list
  L1_2 = L1_2[1]
  L2_2 = L1_2
  L1_2 = L1_2.get_first_selected_object
  return L1_2(L2_2)
end
L0_1.get_first_selected_object = L9_1
function L9_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2.is_can_to_special_zoom
  L1_2 = L1_2(L2_2)
  if L1_2 then
    L2_2 = A0_2
    L1_2 = A0_2.is_active_in_hierarchy
    L1_2 = L1_2(L2_2)
    if L1_2 then
      L2_2 = A0_2
      L1_2 = A0_2.is_in_special_zoom
      L1_2 = L1_2(L2_2)
      if not L1_2 then
        L1_2 = A0_2._binder
        L1_2 = L1_2.btn_train_entry
        L1_2 = L1_2.gameObject
        L3_2 = A0_2
        L2_2 = A0_2.set_special_zoom_navigation_target
        L4_2 = L1_2
        L2_2(L3_2, L4_2)
      end
    end
  end
end
L0_1._on_btn_special_zoom = L9_1
function L9_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L1_2 = ipairs
  L2_2 = A0_2._binder
  L2_2 = L2_2.gym_info_panel_list
  L1_2, L2_2, L3_2 = L1_2(L2_2)
  for L4_2, L5_2 in L1_2, L2_2, L3_2 do
    L7_2 = L5_2
    L6_2 = L5_2.clear_selected_state
    L6_2(L7_2)
  end
  L2_2 = A0_2
  L1_2 = A0_2.set_navigation_target
  L4_2 = A0_2
  L3_2 = A0_2.get_first_selected_object
  L3_2, L4_2, L5_2, L6_2, L7_2 = L3_2(L4_2)
  L1_2(L2_2, L3_2, L4_2, L5_2, L6_2, L7_2)
  L1_2 = G
  L1_2 = L1_2.Utils
  L1_2 = L1_2.is_gamepad_input
  L1_2 = L1_2()
  L2_2 = A0_2._binder
  L2_2 = L2_2.incontrol_tip_special
  L2_2.IsShowTip = L1_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_incontrol_bg
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = L1_2
  L2_2(L3_2, L4_2)
end
L0_1._init_ui_navigation = L9_1
return L0_1
