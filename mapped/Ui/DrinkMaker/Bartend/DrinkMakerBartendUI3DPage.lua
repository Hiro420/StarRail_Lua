local L0_1, L1_1, L2_1, L3_1, L4_1
L0_1 = require
L1_1 = "Ui.DrinkMaker.Bartend.DrinkMakerBartendEnum"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.DrinkMaker.Bartend.Components.DrinkMakerCupPanel"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "DrinkMakerBartendUI3DPage"
L2_1 = G
L2_1 = L2_1.UI3DController
L0_1 = L0_1(L1_1, L2_1)
L1_1 = CS
L1_1 = L1_1.RPG
L1_1 = L1_1.Client
L1_1 = L1_1.s_ModuleManager
L1_1 = L1_1.DrinkMakerModule
L2_1 = "Ev_sfx_blending_show"
L3_1 = "Ev_sfx_blending_show_end"
function L4_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2.config
  L1_2.prefab_path = "UI/UI3D/FrightmareDrinkMaker/UI3D_Frightmare_DrinkMaker.prefab"
  L1_2 = A0_2.config
  L1_2.environment_profile_path = "Stages/Outputs/Chapter03/EnviroProfile/Chap03_CloseView_ADV_Puzzle_DrinkMaker_InDoor_01.enviroProfile.asset"
  L1_2 = A0_2.config
  L1_2.unload_scene = true
  L1_2 = {}
  L2_2 = DrinkMakerBartendCommandType
  L2_2 = L2_2.CupSelect
  L3_2 = L0_1._on_cup_select_operation
  L1_2[L2_2] = L3_2
  L2_2 = DrinkMakerBartendCommandType
  L2_2 = L2_2.IceSelect
  L3_2 = L0_1._on_ice_select_operation
  L1_2[L2_2] = L3_2
  L2_2 = DrinkMakerBartendCommandType
  L2_2 = L2_2.IngredientSelect
  L3_2 = L0_1._on_ingredient_select_operation
  L1_2[L2_2] = L3_2
  L2_2 = DrinkMakerBartendCommandType
  L2_2 = L2_2.DecoSelect
  L3_2 = L0_1._on_deco_select_operation
  L1_2[L2_2] = L3_2
  L2_2 = DrinkMakerBartendCommandType
  L2_2 = L2_2.Mix
  L3_2 = L0_1._on_mix_operation
  L1_2[L2_2] = L3_2
  L2_2 = DrinkMakerBartendCommandType
  L2_2 = L2_2.ClearIngredients
  L3_2 = L0_1._on_ingredients_clear_operation
  L1_2[L2_2] = L3_2
  L2_2 = DrinkMakerBartendCommandType
  L2_2 = L2_2.Reset
  L3_2 = L0_1._on_reset_operation
  L1_2[L2_2] = L3_2
  L0_1._command_callbacks = L1_2
end
L0_1.ctor = L4_1
function L4_1(A0_2)
  local L1_2
end
L0_1._on_dispose = L4_1
function L4_1(A0_2)
  local L1_2
end
L0_1._add_handlers = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2.create_panel
  L3_2 = G
  L3_2 = L3_2.UI3DCameraPanel
  L4_2 = ""
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2._camera_panel = L1_2
  L2_2 = A0_2
  L1_2 = A0_2.create_panel
  L3_2 = G
  L3_2 = L3_2.UI3DCamera
  L4_2 = "3DRoot/VirtualCamera/ViewVC"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2._bartender_camera = L1_2
  L1_2 = A0_2._camera_panel
  L2_2 = L1_2
  L1_2 = L1_2.add_camera_state
  L3_2 = A0_2._bartender_camera
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2.create_panel
  L3_2 = G
  L3_2 = L3_2.DrinkMakerCupPanel
  L1_2 = L1_2(L2_2, L3_2)
  A0_2._cup_panel = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "3DRoot/CameraTarget/DefaultViewAnchors/Follow"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2._default_follow_point = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "3DRoot/CameraTarget/DefaultViewAnchors/LookAt"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2._default_look_at_point = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "3DRoot/BackGround/UI3D_FrightmareClub/FakeBackground"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2._fake_dof_background = L1_2
end
L0_1._on_load = L4_1
function L4_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2._focus_desk
  L1_2(L2_2)
end
L0_1._setup_view = L4_1
function L4_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = A0_2._command_callbacks
  L4_2 = A1_2
  L3_2 = A1_2.get_command_type
  L3_2 = L3_2(L4_2)
  L2_2 = L2_2[L3_2]
  if L2_2 ~= nil then
    L2_2 = A0_2._command_callbacks
    L4_2 = A1_2
    L3_2 = A1_2.get_command_type
    L3_2 = L3_2(L4_2)
    L2_2 = L2_2[L3_2]
    L3_2 = A0_2
    L5_2 = A1_2
    L4_2 = A1_2.get_data
    L4_2, L5_2 = L4_2(L5_2)
    L2_2(L3_2, L4_2, L5_2)
  end
end
L0_1.receive_command = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._cup_panel
  L2_2 = L1_2
  L1_2 = L1_2.play_orbital_anim
  L1_2(L2_2)
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.GlobalVars
  L1_2 = L1_2.s_AudioManager
  L2_2 = L1_2
  L1_2 = L1_2.SetListnerMode
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.Client
  L3_2 = L3_2.AudioListenerMode
  L3_2 = L3_2.Camera
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._cup_panel
  L2_2 = L1_2
  L1_2 = L1_2.post_custom_audio_event
  L3_2 = L2_1
  L1_2(L2_2, L3_2)
end
L0_1.show_drink_begin = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._cup_panel
  L2_2 = L1_2
  L1_2 = L1_2.post_custom_audio_event
  L3_2 = L3_1
  L1_2(L2_2, L3_2)
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.GlobalVars
  L1_2 = L1_2.s_GamePhaseManager
  L2_2 = L1_2
  L1_2 = L1_2.GetCurrentPhase
  L1_2 = L1_2(L2_2)
  L2_2 = L1_2.TeamManager
  L3_2 = L2_2
  L2_2 = L2_2.ResetAudioListnerFollowTeamLeader
  L2_2(L3_2)
end
L0_1.show_drink_finish = L4_1
function L4_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = {}
  L3_2 = A1_2.CupID
  L2_2.cup_id = L3_2
  L3_2 = A1_2.IceID
  L2_2.ice_id = L3_2
  L3_2 = G
  L3_2 = L3_2.Utils
  L3_2 = L3_2.create_lua_table_from_cs_array
  L4_2 = A1_2.IngredientList
  L3_2 = L3_2(L4_2)
  L2_2.ingredient_list = L3_2
  L3_2 = A1_2.MixRate
  L2_2.mix_layer = L3_2
  L3_2 = A1_2.DecoID
  L2_2.deco_id = L3_2
  L4_2 = A0_2
  L3_2 = A0_2._enable_dof
  L5_2 = true
  L3_2(L4_2, L5_2)
  L3_2 = A0_2._cup_panel
  L4_2 = L3_2
  L3_2 = L3_2.preview
  L5_2 = L2_2
  L3_2(L4_2, L5_2)
end
L0_1.preview_drink = L4_1
function L4_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2._cup_panel
  L3_2 = L2_2
  L2_2 = L2_2.select_cup
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
  L3_2 = A0_2
  L2_2 = A0_2._focus_cup
  L2_2(L3_2)
end
L0_1._on_cup_select_operation = L4_1
function L4_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2._cup_panel
  L3_2 = L2_2
  L2_2 = L2_2.select_ice
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
end
L0_1._on_ice_select_operation = L4_1
function L4_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2._cup_panel
  L3_2 = L2_2
  L2_2 = L2_2.select_ingredient
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
end
L0_1._on_ingredient_select_operation = L4_1
function L4_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2._cup_panel
  L3_2 = L2_2
  L2_2 = L2_2.select_deco
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
end
L0_1._on_deco_select_operation = L4_1
function L4_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._cup_panel
  L2_2 = L1_2
  L1_2 = L1_2.mix
  L1_2(L2_2)
end
L0_1._on_mix_operation = L4_1
function L4_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._cup_panel
  L2_2 = L1_2
  L1_2 = L1_2.clear_ingredient
  L1_2(L2_2)
end
L0_1._on_ingredients_clear_operation = L4_1
function L4_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._cup_panel
  L2_2 = L1_2
  L1_2 = L1_2.reset
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._focus_desk
  L1_2(L2_2)
end
L0_1._on_reset_operation = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._bartender_camera
  L2_2 = L1_2
  L1_2 = L1_2.set_follow
  L3_2 = A0_2._cup_panel
  L4_2 = L3_2
  L3_2 = L3_2.follow_point
  L3_2, L4_2 = L3_2(L4_2)
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2._bartender_camera
  L2_2 = L1_2
  L1_2 = L1_2.set_look_at
  L3_2 = A0_2._cup_panel
  L4_2 = L3_2
  L3_2 = L3_2.look_at_point
  L3_2, L4_2 = L3_2(L4_2)
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._enable_dof
  L3_2 = true
  L1_2(L2_2, L3_2)
end
L0_1._focus_cup = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._bartender_camera
  L2_2 = L1_2
  L1_2 = L1_2.set_follow
  L3_2 = A0_2._default_follow_point
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._bartender_camera
  L2_2 = L1_2
  L1_2 = L1_2.set_look_at
  L3_2 = A0_2._default_look_at_point
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2._enable_dof
  L3_2 = false
  L1_2(L2_2, L3_2)
end
L0_1._focus_desk = L4_1
function L4_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2._fake_dof_background
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
end
L0_1._enable_dof = L4_1
return L0_1
