local L0_1, L1_1, L2_1
L0_1 = require
L1_1 = "Ui.Maze.MazeSkill.MazeCustomizedSkillBtnPanelBinder"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "MazeCustomizedSkillBtnPanel"
L2_1 = G
L2_1 = L2_1.BasePanel
L0_1 = L0_1(L1_1, L2_1)
function L1_1(A0_2)
  local L1_2, L2_2, L3_2
  A0_2._on_btn_click_cbk = nil
  L1_2 = {}
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.GameCore
  L2_2 = L2_2.PuzzleHudType
  L2_2 = L2_2.IsometricView
  L3_2 = A0_2._setup_isometric_view
  L1_2[L2_2] = L3_2
  A0_2._type_to_setup_view = L1_2
end
L0_1.ctor = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2._bind_short_down_click
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_root
  L4_2 = A0_2._on_btn_skill_short_down_click
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_root
  L4_2 = A0_2._on_btn_skill_short_down_click
  L1_2(L2_2, L3_2, L4_2)
end
L0_1._on_load = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = G
  L2_2 = L2_2.Utils
  L2_2 = L2_2.invoke_callback
  L3_2 = A0_2._type_to_setup_view
  L3_2 = L3_2[A1_2]
  L4_2 = A0_2
  L2_2(L3_2, L4_2)
end
L0_1.setup_view = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = G
  L1_2 = L1_2.Utils
  L1_2 = L1_2.invoke_callback
  L2_2 = A0_2._on_btn_click_cbk
  L3_2 = A0_2
  L1_2(L2_2, L3_2)
end
L0_1._on_btn_skill_short_down_click = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2._async_load_sprite_to
  L3_2 = A0_2._binder
  L3_2 = L3_2.img_skill
  L4_2 = "SpriteOutput/SkillIcons/Com/SkillIcon_Opticalillusion.png"
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.mono_in_control_tips_btn
  L2_2 = L1_2
  L1_2 = L1_2.SetInControlTipKey
  L3_2 = "Menu_TinyGameEvent"
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.weak_point
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = false
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.text_skill_tag
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetTextID
  L3_2 = "UIText_Isometric_EnterViewButton"
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._on_isometric_view_btn_click
  A0_2._on_btn_click_cbk = L1_2
end
L0_1._setup_isometric_view = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L1_2 = "IsometricCustomString_OnViewButtonPressed"
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.Client
  L2_2 = L2_2.GlobalVars
  L2_2 = L2_2.s_GamePhaseManager
  L3_2 = L2_2
  L2_2 = L2_2.GetCurrentPhase
  L2_2 = L2_2(L3_2)
  L4_2 = L2_2
  L3_2 = L2_2.GetIsometricViewModule
  L3_2 = L3_2(L4_2)
  L5_2 = L3_2
  L4_2 = L3_2.SwitchIsometricView
  L4_2(L5_2)
  L5_2 = L2_2
  L4_2 = L2_2.GetMainWorld
  L4_2 = L4_2(L5_2)
  L5_2 = CS
  L5_2 = L5_2.RPG
  L5_2 = L5_2.GameCore
  L5_2 = L5_2.GameWorldStatic
  L5_2 = L5_2.TriggerCustomStringEvent
  L6_2 = L4_2
  L7_2 = nil
  L8_2 = L1_2
  L5_2(L6_2, L7_2, L8_2)
  L5_2 = G
  L5_2 = L5_2.UIManager
  L5_2 = L5_2.load_and_show
  L6_2 = "Ui.Maze.IsometricView.MazeOpticalillusionHUDPage"
  L5_2(L6_2)
end
L0_1._on_isometric_view_btn_click = L1_1
return L0_1
