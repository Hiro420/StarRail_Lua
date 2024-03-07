local L0_1, L1_1, L2_1
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "MovieRacingPuzzlePageBinder"
L2_1 = G
L2_1 = L2_1.UIBinder
L0_1 = L0_1(L1_1, L2_1)
function L1_1()
  local L0_2, L1_2
  L0_2 = "UI/Maze/MiniGame/MakeFilm/MakeFilmMainPage.prefab"
  return L0_2
end
L0_1.get_prefab_path = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "Root/HudPanel"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.node_hud_panel = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "Root/StartPanel"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.node_start_panel = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.Animation
  L4_2 = "Root/HudPanel"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.animation_hud_panel = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.Animator
  L4_2 = "Root/HudPanel/BottomPanel/BtnOverturn"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.animator_overturn = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.Client
  L3_2 = L3_2.MonoInControlButton
  L4_2 = "Root/HudPanel/BottomPanel/BtnOverturn"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.mono_btn_overturn = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Button
  L4_2 = "Root/HudPanel/BtnPausePanel/BtnPause"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.btn_pause = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Button
  L4_2 = "Root/HudPanel/BottomPanel/BtnOverturn"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.btn_overturn = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Button
  L4_2 = "Root/HudPanel/BottomPanel/BtnShoot"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.btn_shoot = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "Root/HudPanel/ChancePanel"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.node_chance_panel = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.Client
  L3_2 = L3_2.PrefabLoadMeta
  L4_2 = "Root/HudPanel/ChancePanel/Chance"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.chance_prefab_loader = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "Root/HudPanel/IntegralPanel"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.node_integral_panel = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "Root/HudPanel/IntegralPanel/IntegralPanelHamster"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.node_hamster_integral_panel = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "Root/HudPanel/IntegralPanel/IntegralPanelHanu"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.node_hanu_integral_panel = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "Root/HudPanel/EvaluatePanel"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.node_evaluate_toast = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.Client
  L3_2 = L3_2.RPGAnimationEvent
  L4_2 = "Root/HudPanel/EvaluatePanel"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.animation_event_evaluate_toast = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Text
  L4_2 = "Root/HudPanel/EvaluatePanel/Title/Text"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.text_evaluate_toast = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "Root/HudPanel/BottomPanel/ProgressBar"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.node_mile_progress = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Slider
  L4_2 = "Root/HudPanel/BottomPanel/ProgressBar"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.slider_mile_progress = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.Animation
  L4_2 = "Root/HudPanel/BottomPanel/ProgressBar/EndDeco"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.animation_end_mile = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "Root/HudPanel/BottomPanel/ProgressBar/FillArea/Fill/Location/Hamster"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.node_hamster_progress = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "Root/HudPanel/BottomPanel/ProgressBar/FillArea/Fill/Location/Hanu"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.node_hanu_progress = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "Root/HudPanel/EnergyItem"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.node_energy_panel = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Image
  L4_2 = "Root/HudPanel/EnergyItem/Bar/EnergBar/Normal"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.image_energy_normal = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Image
  L4_2 = "Root/HudPanel/EnergyItem/Bar/EnergBar/Add"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.image_energy_add = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "Root/HudPanel/EnergyItem/Bar/Particle_Full"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.node_full_energy = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "Root/StartPanel/MakeFilmStart/Root/TargetPanel"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.node_target_panel = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Text
  L4_2 = "Root/StartPanel/MakeFilmStart/Root/TargetPanel/Info/Num"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.text_target_num = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.Animation
  L4_2 = "Root/StartPanel/MakeFilmStart"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.animation_count_down = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.Client
  L3_2 = L3_2.RPGAnimationEvent
  L4_2 = "Root/StartPanel/MakeFilmStart"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.animation_event = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "Root/HudPanel/Hit"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.node_player_hit = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.Animation
  L4_2 = "Root/HudPanel/TargetPanel"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.animation_target_panel = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "Root/HudPanel/TargetPanel"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.node_game_target_panel = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "Root/HudPanel/TargetPanel/Frame/ReachBg"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.node_game_target_bg = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Text
  L4_2 = "Root/HudPanel/TargetPanel/Text/Num"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.text_game_target_num = L1_2
end
L0_1._on_bind = L1_1
return L0_1
