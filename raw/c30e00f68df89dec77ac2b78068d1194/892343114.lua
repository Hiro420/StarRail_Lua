local L0_1, L1_1, L2_1
L0_1 = require
L1_1 = "Ui.Maze.MazeEnCounterHintPageBinder"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "MazeEnCounterHintPage"
L2_1 = G
L2_1 = L2_1.UIController
L0_1 = L0_1(L1_1, L2_1)
function L1_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = G
  L1_2 = L1_2.ImportCsToLua
  L1_2 = L1_2.CS_RPG_Client_UILayer_Dialog
  A0_2._ui_layer = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._create_binder
  L3_2 = G
  L3_2 = L3_2.MazeEnCounterHintPageBinder
  L1_2 = L1_2(L2_2, L3_2)
  A0_2._binder = L1_2
  A0_2._close_when_phase_changed = false
  A0_2._is_hide_cursor = true
end
L0_1.ctor = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  A0_2._posture_config = A1_2
  L2_2 = print
  L3_2 = A1_2
  L2_2(L3_2)
  L2_2 = A0_2._posture_config
  L2_2 = L2_2.FadeOutDuration
  A0_2._close_timer = L2_2
  L2_2 = A0_2._posture_config
  L2_2 = L2_2.FadeInDuration
  A0_2._fade_in_timer = L2_2
  A0_2._is_need_fade_in_tick = false
  L2_2 = A0_2._fade_in_timer
  if 0 <= L2_2 then
    A0_2._is_need_fade_in_tick = true
  end
  A0_2._is_close_tick = false
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.Client
  L2_2 = L2_2.GlobalVars
  L2_2 = L2_2.s_ModuleManager
  L2_2 = L2_2.TeamModule
  L3_2 = L2_2
  L2_2 = L2_2.GetCurrentTeam
  L2_2 = L2_2(L3_2)
  L3_2 = L2_2
  L2_2 = L2_2.GetLeaderDamageType
  L2_2 = L2_2(L3_2)
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.GameCore
  L3_2 = L3_2.DamageTypeExcelTable
  L3_2 = L3_2.GetData
  L4_2 = L2_2
  L3_2 = L3_2(L4_2)
  A0_2._damage_type_data = L3_2
end
L0_1.init = L1_1
function L1_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2.add_tick
  L1_2(L2_2)
end
L0_1._on_load = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.MazeCloseBattlePosture
  L4_2 = L0_1._on_close_posture_type_ui
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.MazeFadeOutBattlePosture
  L4_2 = L0_1._on_fade_out_posture_type_ui
  L1_2(L2_2, L3_2, L4_2)
end
L0_1._add_handlers = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2
  L3_2 = A0_2
  L2_2 = A0_2.exit
  L2_2(L3_2)
end
L0_1._on_close_posture_type_ui = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2._is_need_fade_in_tick
  if L2_2 == true then
    L2_2 = A0_2._fade_in_timer
    L2_2 = L2_2 - A1_2
    A0_2._fade_in_timer = L2_2
    L2_2 = A0_2._fade_in_timer
    if L2_2 < 0 then
      A0_2._is_need_fade_in_tick = false
      L2_2 = A0_2._binder
      L2_2 = L2_2.animation
      L3_2 = L2_2
      L2_2 = L2_2.Play
      L4_2 = A0_2._posture_config
      L4_2 = L4_2.IdleAnimClipName
      L2_2(L3_2, L4_2)
      L2_2 = print
      L3_2 = "PlayAnim:"
      L4_2 = A0_2._posture_config
      L4_2 = L4_2.IdleAnimClipName
      L3_2 = L3_2 .. L4_2
      L2_2(L3_2)
    end
  end
  L2_2 = A0_2._is_close_tick
  if L2_2 == true then
    L2_2 = A0_2._close_timer
    L2_2 = L2_2 - A1_2
    A0_2._close_timer = L2_2
    L2_2 = A0_2._close_timer
    if L2_2 < 0 then
      L3_2 = A0_2
      L2_2 = A0_2.exit
      L2_2(L3_2)
    end
  end
end
L0_1._on_tick = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.animation
  L3_2 = L2_2
  L2_2 = L2_2.Play
  L4_2 = A0_2._posture_config
  L4_2 = L4_2.FadeOutAnimClipName
  L2_2(L3_2, L4_2)
  L2_2 = print
  L3_2 = "PlayAnim:"
  L4_2 = A0_2._posture_config
  L4_2 = L4_2.FadeOutAnimClipName
  L3_2 = L3_2 .. L4_2
  L2_2(L3_2)
  A0_2._is_close_tick = true
  A0_2._close_timer = 1.0
end
L0_1._on_fade_out_posture_type_ui = L1_1
function L1_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2._setup_all_hints
  L1_2(L2_2)
end
L0_1._setup_view = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2
  L2_2 = A0_2
  L1_2 = A0_2._setup_advantage_hint
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._setup_balance_hint
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._setup_disadvantage_hint
  L1_2(L2_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.animation
  L2_2 = L1_2
  L1_2 = L1_2.Play
  L3_2 = A0_2._posture_config
  L3_2 = L3_2.FadeInAnimClipName
  L1_2(L2_2, L3_2)
  L1_2 = print
  L2_2 = "PlayAnim:"
  L3_2 = A0_2._posture_config
  L3_2 = L3_2.FadeInAnimClipName
  L2_2 = L2_2 .. L3_2
  L1_2(L2_2)
end
L0_1._setup_all_hints = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.advantage_panel
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = A0_2._posture_config
  L3_2 = L3_2.PostureType
  L4_2 = CS
  L4_2 = L4_2.RPG
  L4_2 = L4_2.GameCore
  L4_2 = L4_2.BattlePostureType
  L4_2 = L4_2.Excellent
  L3_2 = L3_2 == L4_2
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._posture_config
  L1_2 = L1_2.PostureType
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.GameCore
  L2_2 = L2_2.BattlePostureType
  L2_2 = L2_2.Excellent
  if L1_2 ~= L2_2 then
    return
  end
  L2_2 = A0_2
  L1_2 = A0_2._setup_advantage_hint_wave
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._setup_advantage_hint_title
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._setup_advantage_hint_background
  L1_2(L2_2)
end
L0_1._setup_advantage_hint = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.GlobalVars
  L1_2 = L1_2.s_GamePhaseManager
  L2_2 = L1_2
  L1_2 = L1_2.GetCurrentPhase
  L1_2 = L1_2(L2_2)
  L3_2 = L1_2
  L2_2 = L1_2.GetWaveCount
  L2_2 = L2_2(L3_2)
  L3_2 = false
  L4_2 = A0_2._binder
  L4_2 = L4_2.advantage_txt_wave
  L5_2 = L4_2
  L4_2 = L4_2.SafeSetActive
  L6_2 = L3_2
  L4_2(L5_2, L6_2)
  if L3_2 then
    L4_2 = A0_2._binder
    L4_2 = L4_2.advantage_txt_wave
    L5_2 = L4_2
    L4_2 = L4_2.SafeSetText
    L6_2 = "WAVE 1/"
    L7_2 = L2_2
    L6_2 = L6_2 .. L7_2
    L4_2(L5_2, L6_2)
  end
end
L0_1._setup_advantage_hint_wave = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2.async_load_sprite_to
  L3_2 = A0_2._binder
  L3_2 = L3_2.advantage_img_title_icon
  L4_2 = A0_2._damage_type_data
  L4_2 = L4_2.IconNatureForWeakActive
  L1_2(L2_2, L3_2, L4_2)
end
L0_1._setup_advantage_hint_title = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L2_2 = A0_2
  L1_2 = A0_2.load_sprite_to
  L3_2 = A0_2._binder
  L3_2 = L3_2.advantage_img_bg_icon
  L4_2 = A0_2._damage_type_data
  L4_2 = L4_2.MazeEnterBattleWeakIconPath
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.advantage_img_bg_light0
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetColor
  L3_2 = A0_2._damage_type_data
  L3_2 = L3_2.LightColor
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.advantage_img_bg_light1
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetColor
  L3_2 = A0_2._damage_type_data
  L3_2 = L3_2.Light1Color
  L1_2(L2_2, L3_2)
  L1_2 = pairs
  L2_2 = A0_2._binder
  L2_2 = L2_2.bg_simple_imgs
  L1_2, L2_2, L3_2 = L1_2(L2_2)
  for L4_2, L5_2 in L1_2, L2_2, L3_2 do
    L7_2 = L5_2
    L6_2 = L5_2.SafeSetColor
    L8_2 = A0_2._damage_type_data
    L8_2 = L8_2.Color
    L6_2(L7_2, L8_2)
  end
end
L0_1._setup_advantage_hint_background = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.balance_panel
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = A0_2._posture_config
  L3_2 = L3_2.PostureType
  L4_2 = CS
  L4_2 = L4_2.RPG
  L4_2 = L4_2.GameCore
  L4_2 = L4_2.BattlePostureType
  L4_2 = L4_2.Good
  L3_2 = L3_2 == L4_2
  L1_2(L2_2, L3_2)
end
L0_1._setup_balance_hint = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.disadvantage_panel
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = A0_2._posture_config
  L3_2 = L3_2.PostureType
  L4_2 = CS
  L4_2 = L4_2.RPG
  L4_2 = L4_2.GameCore
  L4_2 = L4_2.BattlePostureType
  L4_2 = L4_2.Bad
  L3_2 = L3_2 == L4_2
  L1_2(L2_2, L3_2)
end
L0_1._setup_disadvantage_hint = L1_1
return L0_1
