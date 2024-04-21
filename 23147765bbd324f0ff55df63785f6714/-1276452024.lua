local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1, L6_1, L7_1, L8_1, L9_1, L10_1, L11_1, L12_1, L13_1, L14_1, L15_1, L16_1, L17_1, L18_1, L19_1, L20_1, L21_1, L22_1, L23_1, L24_1, L25_1, L26_1, L27_1, L28_1, L29_1, L30_1, L31_1, L32_1, L33_1, L34_1, L35_1, L36_1, L37_1, L38_1, L39_1, L40_1, L41_1, L42_1, L43_1, L44_1, L45_1, L46_1, L47_1, L48_1, L49_1, L50_1, L51_1, L52_1, L53_1, L54_1, L55_1, L56_1, L57_1, L58_1, L59_1, L60_1, L61_1, L62_1, L63_1, L64_1, L65_1, L66_1, L67_1, L68_1, L69_1, L70_1, L71_1, L72_1, L73_1
L0_1 = require
L1_1 = "Ui.UI3DSystem.UI3DAvatarPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.UI3DSystem.UI3DCameraPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.UI3DSystem.UI3DLightConePanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.UI3DSystem.UI3DEidolonPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.UI3DSystem.UI3DCaptureFrameTransferPanel"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "AvatarUI3DPage"
L2_1 = G
L2_1 = L2_1.UI3DController
L0_1 = L0_1(L1_1, L2_1)
L1_1 = CS
L1_1 = L1_1.RPG
L1_1 = L1_1.Client
L1_1 = L1_1.GlobalVars
L1_1 = L1_1.s_GamePhaseManager
L2_1 = "Config/Manikin/Area/Manikin_Area_01_Config.json"
L3_1 = "Config/Manikin/Character/Manikin_Character_Positions_Config.json"
L4_1 = {}
L4_1[1] = "Avatar_Team_01"
L4_1[2] = "Avatar_Team_02"
L4_1[3] = "Avatar_Team_03"
L4_1[4] = "Avatar_Team_04"
L5_1 = "Team"
L6_1 = "Team_Camera_Overall_01"
L7_1 = "Avatar_Team_Center"
L8_1 = {}
L8_1[1] = "Avatar_Team_Empty_01"
L8_1[2] = "Avatar_Team_Empty_02"
L8_1[3] = "Avatar_Team_Empty_03"
L8_1[4] = "Avatar_Team_Empty_04"
L9_1 = {}
L9_1[1] = "Team_Camera_Close_01"
L9_1[2] = "Team_Camera_Close_02"
L9_1[3] = "Team_Camera_Close_03"
L9_1[4] = "Team_Camera_Close_04"
L10_1 = {}
L10_1.OverAll = 1
L10_1.Detail = 6
L10_1.LightCone = 8
L10_1.SkillTree = 9
L11_1 = {}
L11_1.FocusOnTeam = 1
L11_1.FocusOnEmpty = 2
L11_1.FocusOnAvatar = 3
L12_1 = {}
L12_1.OverAll = 1
L12_1.Close = 2
L12_1.Detail = 3
L12_1.LevelUp = 4
L12_1.LightCone = 5
L12_1.SkillTree = 6
L12_1.TeamDetail = 7
L12_1.Default = 8
L12_1.Cut = 9
L12_1.ApproximatelyCut = 10
L13_1 = {}
L14_1 = {}
L15_1 = 1.97
L16_1 = 0
L17_1 = -0.37
L18_1 = 0
L19_1 = 38.5842
L20_1 = 0
L14_1[1] = L15_1
L14_1[2] = L16_1
L14_1[3] = L17_1
L14_1[4] = L18_1
L14_1[5] = L19_1
L14_1[6] = L20_1
L13_1[1] = L14_1
L14_1 = {}
L15_1 = 0.41
L16_1 = 0
L17_1 = 0.94
L18_1 = 0
L19_1 = 20.58288
L20_1 = 0
L14_1[1] = L15_1
L14_1[2] = L16_1
L14_1[3] = L17_1
L14_1[4] = L18_1
L14_1[5] = L19_1
L14_1[6] = L20_1
L13_1[2] = L14_1
L14_1 = {}
L15_1 = -1.38
L16_1 = 0
L17_1 = -2.77
L18_1 = 0
L19_1 = 0.765331
L20_1 = 0
L14_1[1] = L15_1
L14_1[2] = L16_1
L14_1[3] = L17_1
L14_1[4] = L18_1
L14_1[5] = L19_1
L14_1[6] = L20_1
L13_1[3] = L14_1
L14_1 = {}
L15_1 = -2.21
L16_1 = 0
L17_1 = -0.75
L18_1 = 0
L19_1 = 347.6573
L20_1 = 0
L14_1[1] = L15_1
L14_1[2] = L16_1
L14_1[3] = L17_1
L14_1[4] = L18_1
L14_1[5] = L19_1
L14_1[6] = L20_1
L13_1[4] = L14_1
L14_1 = {}
L15_1 = 0
L16_1 = 0.58
L17_1 = 3.61
L18_1 = 0
L19_1 = 180
L20_1 = 0
L14_1[1] = L15_1
L14_1[2] = L16_1
L14_1[3] = L17_1
L14_1[4] = L18_1
L14_1[5] = L19_1
L14_1[6] = L20_1
L13_1[5] = L14_1
L14_1 = {}
L15_1 = {}
L16_1 = 2.1
L17_1 = 0
L18_1 = -0.37
L19_1 = 0
L20_1 = 38.5842
L21_1 = 0
L15_1[1] = L16_1
L15_1[2] = L17_1
L15_1[3] = L18_1
L15_1[4] = L19_1
L15_1[5] = L20_1
L15_1[6] = L21_1
L14_1[1] = L15_1
L15_1 = {}
L16_1 = 0.41
L17_1 = 0
L18_1 = 0.94
L19_1 = 0
L20_1 = 20.58288
L21_1 = 0
L15_1[1] = L16_1
L15_1[2] = L17_1
L15_1[3] = L18_1
L15_1[4] = L19_1
L15_1[5] = L20_1
L15_1[6] = L21_1
L14_1[2] = L15_1
L15_1 = {}
L16_1 = -1.38
L17_1 = 0
L18_1 = -2.77
L19_1 = 0
L20_1 = 0.765331
L21_1 = 0
L15_1[1] = L16_1
L15_1[2] = L17_1
L15_1[3] = L18_1
L15_1[4] = L19_1
L15_1[5] = L20_1
L15_1[6] = L21_1
L14_1[3] = L15_1
L15_1 = {}
L16_1 = -2.21
L17_1 = 0
L18_1 = -0.75
L19_1 = 0
L20_1 = 347.6573
L21_1 = 0
L15_1[1] = L16_1
L15_1[2] = L17_1
L15_1[3] = L18_1
L15_1[4] = L19_1
L15_1[5] = L20_1
L15_1[6] = L21_1
L14_1[4] = L15_1
L15_1 = {}
L16_1 = 0
L17_1 = 0.58
L18_1 = 3.61
L19_1 = 0
L20_1 = 180
L21_1 = 0
L15_1[1] = L16_1
L15_1[2] = L17_1
L15_1[3] = L18_1
L15_1[4] = L19_1
L15_1[5] = L20_1
L15_1[6] = L21_1
L14_1[5] = L15_1
L15_1 = {}
L16_1 = G
L16_1 = L16_1.AvatarMainPageSubType
L16_1 = L16_1.AvatarDetail
L15_1.AvatarDetail = L16_1
L16_1 = G
L16_1 = L16_1.AvatarMainPageSubType
L16_1 = L16_1.AvatarDetailLevelUp
L15_1.AvatarDetailLevelUp = L16_1
L16_1 = G
L16_1 = L16_1.AvatarMainPageSubType
L16_1 = L16_1.SkillTree
L15_1.SkillTree = L16_1
L16_1 = G
L16_1 = L16_1.AvatarMainPageSubType
L16_1 = L16_1.LightCone
L15_1.LightCone = L16_1
L16_1 = G
L16_1 = L16_1.AvatarMainPageSubType
L16_1 = L16_1.Eidolon
L15_1.Eidolon = L16_1
L16_1 = G
L16_1 = L16_1.AvatarMainPageSubType
L16_1 = L16_1.Relic
L15_1.Relic = L16_1
L16_1 = G
L16_1 = L16_1.AvatarMainPageSubType
L16_1 = L16_1.Voice
L15_1.Voice = L16_1
L16_1 = G
L16_1 = L16_1.AvatarMainPageSubType
L16_1 = L16_1.Story
L15_1.Story = L16_1
L16_1 = G
L16_1 = L16_1.AvatarMainPageSubType
L16_1 = L16_1.DataBank
L15_1.DataBank = L16_1
L16_1 = {}
L17_1 = G
L17_1 = L17_1.AvatarDetailPageType
L17_1 = L17_1.MainPage
L16_1.Main = L17_1
L17_1 = G
L17_1 = L17_1.AvatarDetailPageType
L17_1 = L17_1.Gacha
L16_1.Gacha = L17_1
L17_1 = G
L17_1 = L17_1.AvatarDetailPageType
L17_1 = L17_1.Archive
L16_1.Archive = L17_1
L17_1 = G
L17_1 = L17_1.AvatarDetailPageType
L17_1 = L17_1.Shop
L16_1.Shop = L17_1
L17_1 = "Avatar_Single_01"
L18_1 = "Effects/Eff_Prefab/Eff_Common/Eff_Manikin_PlayerChange.prefab"
L19_1 = "Effects/Eff_Prefab/Eff_Common/Eff_Select_PlayerLoop.prefab"
L20_1 = "StandbyIdle"
L21_1 = "StandbyOnly"
L22_1 = "Rank"
L23_1 = "EnableIdleShow"
L24_1 = "CameraUpgradeFollow"
L25_1 = "CameraUpgrade"
L26_1 = "CameraEquipmentFollow"
L27_1 = "CameraEquipment"
L28_1 = "CameraSkillTreeFollow"
L29_1 = "CameraSkillTree"
L30_1 = "CameraEidolonFollow"
L31_1 = "CameraEidolon"
L32_1 = "CameraEidolonLevelupFollow"
L33_1 = "CameraEidolonLevelup"
L34_1 = "CameraRelicFollow"
L35_1 = "CameraRelic"
L36_1 = "CameraVoiceOutsideFollow"
L37_1 = "CameraVoiceOutside"
L38_1 = "CameraStoryOutsideFollow"
L39_1 = "CameraStoryOutside"
L40_1 = "CameraVoiceInsideFollow"
L41_1 = "CameraVoiceInside"
L42_1 = "CameraStoryInsideFollow"
L43_1 = "CameraStoryInside"
L44_1 = "CameraDataBankFollow"
L45_1 = "CameraDataBank"
L46_1 = "CameraTrackedOffsetOrigin"
L47_1 = "CameraTrackedOffsetStory"
L48_1 = "CameraTeamFollow"
L49_1 = "CameraTempTeamFollow"
L50_1 = "CameraTeam"
L51_1 = "CameraTempTeam"
L52_1 = "Position"
L53_1 = "Rotation"
L54_1 = {}
L55_1 = L15_1.AvatarDetail
L56_1 = {}
L56_1[L20_1] = true
L54_1[L55_1] = L56_1
L55_1 = L15_1.AvatarDetailLevelUp
L56_1 = {}
L56_1[L20_1] = true
L54_1[L55_1] = L56_1
L55_1 = L15_1.SkillTree
L56_1 = {}
L56_1[L21_1] = true
L54_1[L55_1] = L56_1
L55_1 = L15_1.LightCone
L56_1 = {}
L56_1[L21_1] = true
L54_1[L55_1] = L56_1
L55_1 = L15_1.Eidolon
L56_1 = {}
L56_1[L22_1] = true
L54_1[L55_1] = L56_1
L55_1 = L15_1.Relic
L56_1 = {}
L56_1[L21_1] = true
L54_1[L55_1] = L56_1
L55_1 = L15_1.Voice
L56_1 = {}
L56_1[L21_1] = true
L54_1[L55_1] = L56_1
L55_1 = L15_1.Story
L56_1 = {}
L54_1[L55_1] = L56_1
L55_1 = L15_1.DataBank
L56_1 = {}
L54_1[L55_1] = L56_1
L55_1 = {}
L56_1 = L16_1.Main
L57_1 = {}
L57_1[L23_1] = true
L55_1[L56_1] = L57_1
L56_1 = L16_1.Gacha
L57_1 = {}
L55_1[L56_1] = L57_1
L56_1 = L16_1.Archive
L57_1 = {}
L55_1[L56_1] = L57_1
L56_1 = L16_1.Shop
L57_1 = {}
L55_1[L56_1] = L57_1
L56_1 = 30
L57_1 = 53
L58_1 = 20.8
L59_1 = "IsOnlyShowSkybox"
L60_1 = "IsEidolon"
L61_1 = {}
L62_1 = CS
L62_1 = L62_1.UnityEngine
L62_1 = L62_1.Vector3
L63_1 = -20
L64_1 = 1.37
L65_1 = -8.3
L62_1 = L62_1(L63_1, L64_1, L65_1)
L61_1.POS = L62_1
L62_1 = CS
L62_1 = L62_1.UnityEngine
L62_1 = L62_1.Vector3
L63_1 = 0
L64_1 = 180
L65_1 = 0
L62_1 = L62_1(L63_1, L64_1, L65_1)
L61_1.EUL = L62_1
L62_1 = "UI3D_Virtual_Camera_LookAt_1"
L63_1 = "UI3D_Virtual_Camera_Follow_1"
L64_1 = "UI3D_Virtual_Camera_LookAt_2"
L65_1 = "UI3D_Virtual_Camera_Follow_2"
L66_1 = "Stages/Outputs/Common/EnviroProfile/Avatar_Rank_Glasses.enviroProfile.asset"
L67_1 = "Stages/Outputs/Common/EnviroProfile/Manikin_Area_02.enviroProfile.asset"
L68_1 = "SkyBoxContainer/CharacterUI_Floor"
L69_1 = "SkyBoxContainer/CharacterUI_TeamFloor"
L70_1 = "SkyBoxContainer/CharacterUI_Ceil"
L71_1 = "SkyBoxContainer/CharacterUI_Skybox"
L72_1 = "SkyBoxContainer"
function L73_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2.config
  L1_2.prefab_path = "ManikinArea/Manikin_Area_01.prefab"
  L1_2 = L1_1
  L2_2 = L1_2
  L1_2 = L1_2.GetCurrentPhase
  L1_2 = L1_2(L2_2)
  A0_2._adventure_phase = L1_2
  A0_2._area_config = nil
  L1_2 = {}
  A0_2._camera_anchors = L1_2
  L1_2 = {}
  A0_2._avatar_anchors = L1_2
  L1_2 = {}
  A0_2._look_anchors = L1_2
  L1_2 = {}
  A0_2._cameras = L1_2
  A0_2._first_time_show_team = true
  A0_2._is_display_only = false
  L1_2 = {}
  A0_2._slot_index_to_avatars = L1_2
  A0_2._detail_showing_avatar = nil
  A0_2._dragging_avatar = nil
  A0_2._current_avatar_anchor = nil
  A0_2._current_avatar = nil
  A0_2._first_show_avatar = true
  A0_2._sub_tab_type = nil
  A0_2._team_sub_type = nil
  L1_2 = L16_1.Main
  A0_2._detail_page_type = L1_2
  A0_2._enable_idle = true
end
L0_1.ctor = L73_1
function L73_1(A0_2)
  local L1_2, L2_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.GameCore
  L1_2 = L1_2.GameCoreConfigLoader
  L1_2 = L1_2.LoadManikinAreaConfig
  L2_2 = L2_1
  L1_2 = L1_2(L2_2)
  A0_2._area_config = L1_2
  L1_2 = A0_2.config
  L2_2 = A0_2._area_config
  L2_2 = L2_2.EnviroProfile
  L1_2.environment_profile_path = L2_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.GameCore
  L1_2 = L1_2.GameCoreConfigLoader
  L1_2 = L1_2.LoadManikinCharacterPositionsConfig
  L2_2 = L3_1
  L1_2 = L1_2(L2_2)
  A0_2._character_body_size_json_config = L1_2
  L1_2 = {}
  L2_2 = A0_2._character_body_size_json_config
  L2_2 = L2_2.Male
  L1_2[0] = L2_2
  L2_2 = A0_2._character_body_size_json_config
  L2_2 = L2_2.Lady
  L1_2[1] = L2_2
  L2_2 = A0_2._character_body_size_json_config
  L2_2 = L2_2.Lad
  L1_2[2] = L2_2
  L2_2 = A0_2._character_body_size_json_config
  L2_2 = L2_2.Miss
  L1_2[3] = L2_2
  L2_2 = A0_2._character_body_size_json_config
  L2_2 = L2_2.Maid
  L1_2[4] = L2_2
  L2_2 = A0_2._character_body_size_json_config
  L2_2 = L2_2.Boy
  L1_2[5] = L2_2
  L2_2 = A0_2._character_body_size_json_config
  L2_2 = L2_2.Girl
  L1_2[6] = L2_2
  L2_2 = A0_2._character_body_size_json_config
  L2_2 = L2_2.Kid
  L1_2[7] = L2_2
  A0_2._body_type_position = L1_2
end
L0_1.init = L73_1
function L73_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.Animator
  L4_2 = A0_2._area_config
  L4_2 = L4_2.AreaAnimatorPath
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2._root_animator = L1_2
  L2_2 = A0_2
  L1_2 = A0_2.create_panel
  L3_2 = G
  L3_2 = L3_2.UI3DAvatarPanel
  L1_2 = L1_2(L2_2, L3_2)
  A0_2._avatar_panel = L1_2
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
  L3_2 = L3_2.UI3DLightConePanel
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.lightcone_panel = L1_2
  L1_2 = A0_2.lightcone_panel
  L2_2 = L1_2
  L1_2 = L1_2.set_parent_root
  L3_2 = A0_2._root
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2.create_panel
  L3_2 = G
  L3_2 = L3_2.UI3DEidolonPanel
  L4_2 = "RankGlassContainer"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.eidolon_panel = L1_2
  L2_2 = A0_2
  L1_2 = A0_2.create_panel
  L3_2 = G
  L3_2 = L3_2.UI3DCaptureFrameTransferPanel
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.capture_frame_transfer_panel = L1_2
  L1_2 = A0_2.capture_frame_transfer_panel
  L2_2 = L1_2
  L1_2 = L1_2.init_cmpt
  L3_2 = "ForeGroundNode"
  L4_2 = "ForeGroundNode/Foreground"
  L5_2 = 1
  L1_2(L2_2, L3_2, L4_2, L5_2)
  L1_2 = A0_2.capture_frame_transfer_panel
  L2_2 = L1_2
  L1_2 = L1_2.set_fade_out_anim_name
  L3_2 = "RankForeGroundFadeIn"
  L1_2(L2_2, L3_2)
  L1_2 = A0_2.capture_frame_transfer_panel
  L2_2 = L1_2
  L1_2 = L1_2.set_fade_in_anim_name
  L3_2 = "RankForeGroundFadeOut"
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = L68_1
  L1_2 = L1_2(L2_2, L3_2)
  A0_2._node_ui_floor = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = L69_1
  L1_2 = L1_2(L2_2, L3_2)
  A0_2._node_team_floor = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = L70_1
  L1_2 = L1_2(L2_2, L3_2)
  A0_2._node_ui_ceil = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = L71_1
  L1_2 = L1_2(L2_2, L3_2)
  A0_2._node_ui_skybox = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.CustomRP
  L3_2 = L3_2.CharacterModelShadowCmd
  L4_2 = L72_1
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2._shadow_cmd = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.Animation
  L4_2 = "ForeGroundNode"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.fore_ground_anim = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.MeshRenderer
  L4_2 = "ForeGroundNode/Foreground"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.mesh_render_foreground = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._init_global_anchors
  L3_2 = A0_2._area_config
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2._init_avatar_anchors
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._init_team_pos
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._init_camera
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._init_fov
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._change_anchors_pos
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._create_virtual_camera_dummy_objects
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "SkyBoxContainer"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2._sky_box = L1_2
end
L0_1._on_load = L73_1
function L73_1(A0_2)
  local L1_2
  L1_2 = A0_2._shadow_cmd
  if L1_2 == nil then
    return
  end
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.UI3DUtilities
  L1_2 = L1_2.SetDefaultShadowCenter
  L1_2()
  L1_2 = NG_HSOD_DEBUG
  if not L1_2 then
    L1_2 = NG_HSOD_PROFILE
    if not L1_2 then
      goto lbl_24
    end
  end
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.GlobalVars
  L1_2 = L1_2.s_ModuleManager
  L1_2 = L1_2.AvatarModule
  L1_2.AvatarUI3DPageShowingAvatar = nil
  ::lbl_24::
end
L0_1._on_dispose = L73_1
function L73_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L3_2 = A0_2
  L2_2 = A0_2._fill_anchors
  L4_2 = A0_2._camera_anchors
  L5_2 = A1_2.CameraAnchorRootPath
  L2_2(L3_2, L4_2, L5_2)
  L3_2 = A0_2
  L2_2 = A0_2._fill_anchors
  L4_2 = A0_2._avatar_anchors
  L5_2 = A1_2.ModelAnchorRootPath
  L2_2(L3_2, L4_2, L5_2)
  L3_2 = A0_2
  L2_2 = A0_2._fill_anchors
  L4_2 = A0_2._look_anchors
  L5_2 = A1_2.LookAnchorRootPath
  L2_2(L3_2, L4_2, L5_2)
end
L0_1._init_global_anchors = L73_1
function L73_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2
  L1_2 = A0_2._shadow_cmd
  if L1_2 == nil then
    return
  end
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.UI3DUtilities
  L1_2 = L1_2.ClearShadowCenter
  L1_2()
  L2_2 = A0_2
  L1_2 = A0_2._is_use_4_3_config
  L1_2 = L1_2(L2_2)
  if L1_2 then
    L1_2 = L13_1
    if L1_2 then
      goto lbl_19
    end
  end
  L1_2 = L14_1
  ::lbl_19::
  L2_2 = A0_2._shadow_cmd
  L2_2 = L2_2.teamPositions
  L3_2 = 1
  L4_2 = 4
  L5_2 = 1
  for L6_2 = L3_2, L4_2, L5_2 do
    L7_2 = L1_2[L6_2]
    L8_2 = L6_2 - 1
    L9_2 = CS
    L9_2 = L9_2.UnityEngine
    L9_2 = L9_2.Vector3
    L10_2 = L7_2[1]
    L11_2 = L7_2[2]
    L12_2 = L7_2[3]
    L9_2 = L9_2(L10_2, L11_2, L12_2)
    L2_2[L8_2] = L9_2
  end
  L3_2 = A0_2._shadow_cmd
  L3_2.TeamNumber = 4
  L3_2 = A0_2._shadow_cmd
  L3_2.TeamPositions = L2_2
end
L0_1._init_team_pos = L73_1
function L73_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L3_2 = A0_2._root
  L4_2 = L3_2
  L3_2 = L3_2.SafeFind
  L5_2 = A2_2
  L3_2 = L3_2(L4_2, L5_2)
  L4_2 = 0
  L5_2 = L3_2.childCount
  L5_2 = L5_2 - 1
  L6_2 = 1
  for L7_2 = L4_2, L5_2, L6_2 do
    L9_2 = L3_2
    L8_2 = L3_2.GetChild
    L10_2 = L7_2
    L8_2 = L8_2(L9_2, L10_2)
    L9_2 = L8_2.name
    L9_2 = A1_2[L9_2]
    if L9_2 == nil then
      L9_2 = L8_2.name
      A1_2[L9_2] = L8_2
    end
  end
end
L0_1._fill_anchors = L73_1
function L73_1(A0_2, A1_2)
  local L2_2, L3_2
  L3_2 = A0_2
  L2_2 = A0_2._restore_skybox_color
  L2_2(L3_2)
end
L0_1._on_active_change = L73_1
function L73_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._detail_showing_avatar
  if L1_2 ~= nil then
    L2_2 = A0_2
    L1_2 = A0_2._refresh_skybox
    L1_2(L2_2)
  end
end
L0_1._restore_skybox_color = L73_1
function L73_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2._avatar_panel
  L3_2 = L2_2
  L2_2 = L2_2.set_all_avatar_visible
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
  L3_2 = A0_2
  L2_2 = A0_2._enable_shadow
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
end
L0_1.set_all_avatar_visible = L73_1
function L73_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L2_2 = A0_2
  L1_2 = A0_2._is_use_4_3_config
  L1_2 = L1_2(L2_2)
  if L1_2 then
    L1_2 = L13_1
    if L1_2 then
      goto lbl_9
    end
  end
  L1_2 = L14_1
  ::lbl_9::
  L2_2 = 1
  L3_2 = 4
  L4_2 = 1
  for L5_2 = L2_2, L3_2, L4_2 do
    L6_2 = A0_2._avatar_anchors
    L7_2 = L4_1[L5_2]
    L6_2 = L6_2[L7_2]
    L8_2 = A0_2
    L7_2 = A0_2._setup_anchor
    L9_2 = L6_2
    L10_2 = L1_2[L5_2]
    L7_2(L8_2, L9_2, L10_2)
  end
  L2_2 = A0_2._camera_anchors
  L3_2 = L6_1
  L2_2 = L2_2[L3_2]
  L4_2 = A0_2
  L3_2 = A0_2._setup_anchor
  L5_2 = L2_2
  L6_2 = L1_2[5]
  L3_2(L4_2, L5_2, L6_2)
end
L0_1._change_anchors_pos = L73_1
function L73_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.Vector3
  L4_2 = A2_2[1]
  L5_2 = A2_2[2]
  L6_2 = A2_2[3]
  L3_2 = L3_2(L4_2, L5_2, L6_2)
  L4_2 = CS
  L4_2 = L4_2.UnityEngine
  L4_2 = L4_2.Quaternion
  L4_2 = L4_2.Euler
  L5_2 = CS
  L5_2 = L5_2.UnityEngine
  L5_2 = L5_2.Vector3
  L6_2 = A2_2[4]
  L7_2 = A2_2[5]
  L8_2 = A2_2[6]
  L5_2, L6_2, L7_2, L8_2 = L5_2(L6_2, L7_2, L8_2)
  L4_2 = L4_2(L5_2, L6_2, L7_2, L8_2)
  L6_2 = A1_2
  L5_2 = A1_2.SetPositionAndRotation
  L7_2 = L3_2
  L8_2 = L4_2
  L5_2(L6_2, L7_2, L8_2)
end
L0_1._setup_anchor = L73_1
function L73_1(A0_2, A1_2)
  local L2_2, L3_2
  L2_2 = A0_2._avatar_anchors
  L3_2 = L4_1[A1_2]
  L2_2 = L2_2[L3_2]
  L2_2 = L2_2.position
  return L2_2
end
L0_1.get_position_by_team_index = L73_1
function L73_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2
  L2_2 = L11_1.FocusOnTeam
  A0_2._team_sub_type = L2_2
  A0_2._current_avatar = nil
  L3_2 = A0_2
  L2_2 = A0_2._on_enter_team_page
  L4_2 = true
  L2_2(L3_2, L4_2)
  L3_2 = A0_2
  L2_2 = A0_2._remove_detail_avatar
  L2_2(L3_2)
  L3_2 = A0_2
  L2_2 = A0_2._set_all_avatars_unused
  L2_2(L3_2)
  L2_2 = 1
  L3_2 = 4
  L4_2 = 1
  for L5_2 = L2_2, L3_2, L4_2 do
    L6_2 = A1_2[L5_2]
    if L6_2 then
      L8_2 = A0_2
      L7_2 = A0_2._fetch_avatar
      L9_2 = L6_2
      L7_2 = L7_2(L8_2, L9_2)
      L9_2 = L7_2
      L8_2 = L7_2.load_model
      L10_2 = false
      L8_2(L9_2, L10_2)
      L9_2 = L7_2
      L8_2 = L7_2.place_to_anchor
      L10_2 = A0_2._avatar_anchors
      L11_2 = L4_1[L5_2]
      L10_2 = L10_2[L11_2]
      L11_2 = L5_2
      L8_2(L9_2, L10_2, L11_2)
      L9_2 = L7_2
      L8_2 = L7_2.enable_idle_anim
      L10_2 = false
      L8_2(L9_2, L10_2)
      L9_2 = L7_2
      L8_2 = L7_2.trigger_anim_param
      L10_2 = L5_1
      L11_2 = true
      L8_2(L9_2, L10_2, L11_2)
      L9_2 = L7_2
      L8_2 = L7_2.show_weapon
      L10_2 = true
      L8_2(L9_2, L10_2)
      L8_2 = A0_2._slot_index_to_avatars
      L8_2[L5_2] = L7_2
    else
      L7_2 = A0_2._slot_index_to_avatars
      L7_2[L5_2] = nil
    end
  end
  L3_2 = A0_2
  L2_2 = A0_2._remove_unused_avatars
  L2_2(L3_2)
  L3_2 = A0_2
  L2_2 = A0_2._focus_on_anchor
  L4_2 = L10_1.OverAll
  L5_2 = L6_1
  L6_2 = L7_1
  L2_2(L3_2, L4_2, L5_2, L6_2)
  L2_2 = A0_2._cameras
  L3_2 = L10_1.OverAll
  L2_2 = L2_2[L3_2]
  L3_2 = L2_2
  L2_2 = L2_2.active
  L2_2(L3_2)
  L2_2 = A0_2._first_time_show_team
  if L2_2 then
    A0_2._first_time_show_team = false
    L2_2 = A0_2._camera_panel
    L3_2 = L2_2
    L2_2 = L2_2.set_camera_blend
    L4_2 = L12_1.Default
    L2_2(L3_2, L4_2)
  else
    L2_2 = A0_2._camera_panel
    L3_2 = L2_2
    L2_2 = L2_2.set_camera_blend
    L4_2 = L12_1.OverAll
    L2_2(L3_2, L4_2)
  end
  L3_2 = A0_2
  L2_2 = A0_2._refresh_main_light
  L2_2(L3_2)
  L3_2 = A0_2
  L2_2 = A0_2._refresh_shadow
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
end
L0_1.setup_team_show = L73_1
function L73_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2
  if A1_2 and A2_2 then
    L4_2 = A0_2
    L3_2 = A0_2._get_avatar_by_idx
    L5_2 = A1_2
    L3_2 = L3_2(L4_2, L5_2)
    L5_2 = L3_2
    L4_2 = L3_2.remove_effect
    L6_2 = L18_1
    L4_2(L5_2, L6_2)
    L5_2 = L3_2
    L4_2 = L3_2.fire_effect
    L6_2 = L18_1
    L4_2(L5_2, L6_2)
  end
end
L0_1.setup_avatar_change_eff = L73_1
function L73_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2
  L4_2 = A0_2
  L3_2 = A0_2.remove_all_avatar_selected_eff
  L3_2(L4_2)
  if A1_2 and A2_2 then
    L4_2 = A0_2
    L3_2 = A0_2._get_avatar_by_idx
    L5_2 = A1_2
    L3_2 = L3_2(L4_2, L5_2)
    L5_2 = L3_2
    L4_2 = L3_2.fire_effect
    L6_2 = L19_1
    L4_2(L5_2, L6_2)
  end
end
L0_1.setup_avatar_selected_eff = L73_1
function L73_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2
  if A1_2 and A2_2 then
    L4_2 = A0_2
    L3_2 = A0_2._get_avatar_by_idx
    L5_2 = A1_2
    L3_2 = L3_2(L4_2, L5_2)
    L5_2 = L3_2
    L4_2 = L3_2.remove_effect
    L6_2 = L19_1
    L4_2(L5_2, L6_2)
  end
end
L0_1.remove_avatar_selected_eff = L73_1
function L73_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L1_2 = pairs
  L2_2 = A0_2._slot_index_to_avatars
  L1_2, L2_2, L3_2 = L1_2(L2_2)
  for L4_2, L5_2 in L1_2, L2_2, L3_2 do
    L7_2 = L5_2
    L6_2 = L5_2.remove_effect
    L8_2 = L19_1
    L9_2 = false
    L6_2(L7_2, L8_2, L9_2)
  end
end
L0_1.remove_all_avatar_selected_eff = L73_1
function L73_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L4_2 = A0_2._detail_showing_avatar
  L4_2 = L4_2 ~= nil
  L5_2 = A0_2._current_avatar
  L5_2 = L5_2 ~= nil
  L6_2 = L11_1.FocusOnAvatar
  A0_2._team_sub_type = L6_2
  L7_2 = A0_2
  L6_2 = A0_2._set_all_avatars_unused
  L6_2(L7_2)
  L7_2 = A0_2
  L6_2 = A0_2._fetch_avatar_by_idx
  L8_2 = A1_2
  L9_2 = A2_2
  L6_2 = L6_2(L7_2, L8_2, L9_2)
  A0_2._current_avatar = L6_2
  L8_2 = L6_2
  L7_2 = L6_2.load_model
  L9_2 = false
  L7_2(L8_2, L9_2)
  L8_2 = L6_2
  L7_2 = L6_2.place_to_anchor
  L9_2 = A0_2._avatar_anchors
  L10_2 = L17_1
  L9_2 = L9_2[L10_2]
  L7_2(L8_2, L9_2)
  if A3_2 or L4_2 then
    L8_2 = L6_2
    L7_2 = L6_2.fire_effect
    L9_2 = L18_1
    L7_2(L8_2, L9_2)
  end
  L8_2 = L6_2
  L7_2 = L6_2.enable_idle_anim
  L9_2 = false
  L7_2(L8_2, L9_2)
  L8_2 = L6_2
  L7_2 = L6_2.trigger_anim_param
  L9_2 = L5_1
  L10_2 = true
  L7_2(L8_2, L9_2, L10_2)
  L8_2 = L6_2
  L7_2 = L6_2.show_weapon
  L9_2 = true
  L7_2(L8_2, L9_2)
  L8_2 = A0_2
  L7_2 = A0_2._remove_unused_avatars
  L7_2(L8_2)
  if L4_2 then
    L8_2 = A0_2
    L7_2 = A0_2._remove_detail_avatar
    L9_2 = A0_2._detail_showing_avatar
    L9_2 = L6_2 ~= L9_2
    L7_2(L8_2, L9_2)
  end
  if L4_2 then
    L7_2 = A0_2._camera_panel
    L8_2 = L7_2
    L7_2 = L7_2.set_camera_blend
    L9_2 = L12_1.Close
    L7_2(L8_2, L9_2)
    L8_2 = A0_2
    L7_2 = A0_2._focus_on_curr_avatar
    L9_2 = L48_1
    L10_2 = L50_1
    L7_2(L8_2, L9_2, L10_2)
    L8_2 = A0_2
    L7_2 = A0_2._enable_auto_fit_screen
    L9_2 = true
    L7_2(L8_2, L9_2)
  elseif L5_2 then
    L7_2 = A0_2._camera_panel
    L8_2 = L7_2
    L7_2 = L7_2.set_camera_blend
    L9_2 = L12_1.Cut
    L7_2(L8_2, L9_2)
    L8_2 = A0_2
    L7_2 = A0_2._focus_on_curr_avatar
    L9_2 = L48_1
    L10_2 = L50_1
    L7_2(L8_2, L9_2, L10_2)
    L8_2 = A0_2
    L7_2 = A0_2._enable_auto_fit_screen
    L9_2 = true
    L7_2(L8_2, L9_2)
  else
    L7_2 = A0_2._camera_panel
    L8_2 = L7_2
    L7_2 = L7_2.set_camera_blend
    L9_2 = L12_1.Cut
    L7_2(L8_2, L9_2)
    L8_2 = A0_2
    L7_2 = A0_2._focus_on_curr_avatar
    L9_2 = L49_1
    L10_2 = L51_1
    L7_2(L8_2, L9_2, L10_2)
    L7_2 = CS
    L7_2 = L7_2.RPG
    L7_2 = L7_2.Client
    L7_2 = L7_2.CoroutineUtils
    L7_2 = L7_2.InvokeNextFrame
    function L8_2()
      local L0_3, L1_3, L2_3, L3_3
      L0_3 = A0_2._camera_panel
      if L0_3 == nil then
        return
      end
      L0_3 = A0_2._camera_panel
      L1_3 = L0_3
      L0_3 = L0_3.set_camera_blend
      L2_3 = L12_1.TeamDetail
      L0_3(L1_3, L2_3)
      L0_3 = A0_2
      L1_3 = L0_3
      L0_3 = L0_3._focus_on_curr_avatar
      L2_3 = L48_1
      L3_3 = L50_1
      L0_3(L1_3, L2_3, L3_3)
      L0_3 = A0_2
      L1_3 = L0_3
      L0_3 = L0_3._enable_auto_fit_screen
      L2_3 = true
      L0_3(L1_3, L2_3)
    end
    L7_2(L8_2)
  end
  L8_2 = A0_2
  L7_2 = A0_2._refresh_main_light
  L7_2(L8_2)
end
L0_1.setup_avatar_show = L73_1
function L73_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L2_2 = A0_2._team_sub_type
  L3_2 = L11_1.FocusOnAvatar
  L2_2 = L2_2 == L3_2
  L3_2 = L11_1.FocusOnEmpty
  A0_2._team_sub_type = L3_2
  A0_2._current_avatar = nil
  L4_2 = A0_2
  L3_2 = A0_2._remove_detail_avatar
  L3_2(L4_2)
  L4_2 = A0_2
  L3_2 = A0_2._hide_all_avatars
  L3_2(L4_2)
  L4_2 = A0_2
  L3_2 = A0_2._set_all_avatars_unused
  L3_2(L4_2)
  L3_2 = A0_2._camera_anchors
  L4_2 = L9_1[A1_2]
  L3_2 = L3_2[L4_2]
  L4_2 = A0_2._look_anchors
  L5_2 = L8_1[A1_2]
  L4_2 = L4_2[L5_2]
  L5_2 = A0_2._camera_panel
  L6_2 = L5_2
  L5_2 = L5_2.set_camera_blend
  if L2_2 then
    L7_2 = L12_1.Cut
    if L7_2 then
      goto lbl_30
    end
  end
  L7_2 = L12_1.TeamDetail
  ::lbl_30::
  L5_2(L6_2, L7_2)
  L6_2 = A0_2
  L5_2 = A0_2._focus_on_position
  L7_2 = L3_2.transform
  L7_2 = L7_2.position
  L8_2 = L4_2.transform
  L8_2 = L8_2.position
  L5_2(L6_2, L7_2, L8_2)
  L6_2 = A0_2
  L5_2 = A0_2._enable_auto_fit_screen
  L7_2 = false
  L5_2(L6_2, L7_2)
  L6_2 = A0_2
  L5_2 = A0_2._refresh_main_light
  L5_2(L6_2)
end
L0_1.setup_empty_show = L73_1
function L73_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2._current_avatar
  if L2_2 ~= nil then
    L2_2 = A0_2._current_avatar
    L3_2 = L2_2
    L2_2 = L2_2.reset_animator_state
    L4_2 = A1_2
    L2_2(L3_2, L4_2)
  end
end
L0_1.reset_avatar_anim = L73_1
function L73_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L2_2 = pairs
  L3_2 = A0_2._slot_index_to_avatars
  L2_2, L3_2, L4_2 = L2_2(L3_2)
  for L5_2, L6_2 in L2_2, L3_2, L4_2 do
    L8_2 = L6_2
    L7_2 = L6_2.get_avatar_id
    L7_2 = L7_2(L8_2)
    if L7_2 == A1_2 then
      L8_2 = L6_2
      L7_2 = L6_2.begin_drag
      L7_2(L8_2)
      A0_2._dragging_avatar = L6_2
    else
      L8_2 = L6_2
      L7_2 = L6_2.set_visible
      L9_2 = false
      L7_2(L8_2, L9_2)
    end
  end
end
L0_1.drag_team_edit_model_by_id = L73_1
function L73_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L1_2 = A0_2._dragging_avatar
  if L1_2 == nil then
    return
  end
  L1_2 = A0_2._dragging_avatar
  L2_2 = L1_2
  L1_2 = L1_2.end_drag
  L1_2(L2_2)
  L1_2 = pairs
  L2_2 = A0_2._slot_index_to_avatars
  L1_2, L2_2, L3_2 = L1_2(L2_2)
  for L4_2, L5_2 in L1_2, L2_2, L3_2 do
    L7_2 = L5_2
    L6_2 = L5_2.set_visible
    L8_2 = true
    L6_2(L7_2, L8_2)
  end
end
L0_1.end_drag = L73_1
function L73_1(A0_2)
  local L1_2, L2_2, L3_2
  L2_2 = A0_2
  L1_2 = A0_2._on_enter_team_page
  L3_2 = false
  L1_2(L2_2, L3_2)
  L1_2 = A0_2.eidolon_panel
  L1_2.is_in_avatar_main_page = true
  L2_2 = A0_2
  L1_2 = A0_2._remove_all_slot_avatars
  L1_2(L2_2)
end
L0_1.on_show_avatar_main_page = L73_1
function L73_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = G
  L1_2 = L1_2.UtilEngineWrap
  L1_2 = L1_2.IsUnityObjectNotNull
  L2_2 = A0_2._sky_box
  L1_2 = L1_2(L2_2)
  if L1_2 then
    L1_2 = A0_2._sky_box
    L2_2 = CS
    L2_2 = L2_2.UnityEngine
    L2_2 = L2_2.Vector3
    L3_2 = 0
    L4_2 = 0
    L5_2 = 0
    L2_2 = L2_2(L3_2, L4_2, L5_2)
    L1_2.position = L2_2
  end
  L1_2 = A0_2.eidolon_panel
  L1_2.is_in_avatar_main_page = false
  L2_2 = A0_2
  L1_2 = A0_2._reset_eye_look
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2.reset_sub_type
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._set_camera_fov
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._refresh_skybox
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._on_enter_team_page
  L3_2 = true
  L1_2(L2_2, L3_2)
end
L0_1.on_leave_avatar_main_page = L73_1
function L73_1(A0_2, A1_2)
  local L2_2
  A0_2._is_display_only = A1_2
  L2_2 = not A1_2
  A0_2._enable_idle = L2_2
end
L0_1.set_display_only = L73_1
function L73_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2
  if A2_2 == nil then
    return
  end
  L3_2 = A0_2._slot_index_to_avatars
  L3_2 = L3_2[A1_2]
  if L3_2 ~= nil then
    L5_2 = L3_2
    L4_2 = L3_2.get_avatar_real_id
    L4_2 = L4_2(L5_2)
    L5_2 = A2_2.RealID
    if L4_2 == L5_2 then
      goto lbl_24
    end
  end
  if L3_2 ~= nil then
    L5_2 = A0_2
    L4_2 = A0_2._remove_avatar_by_idx
    L6_2 = A1_2
    L4_2(L5_2, L6_2)
  end
  L5_2 = A0_2
  L4_2 = A0_2._fetch_avatar
  L6_2 = A2_2
  L4_2 = L4_2(L5_2, L6_2)
  L3_2 = L4_2
  L4_2 = A0_2._slot_index_to_avatars
  L4_2[A1_2] = L3_2
  ::lbl_24::
  L5_2 = L3_2
  L4_2 = L3_2.set_visible
  L6_2 = true
  L4_2(L5_2, L6_2)
  L5_2 = L3_2
  L4_2 = L3_2.set_in_use
  L6_2 = true
  L4_2(L5_2, L6_2)
  return L3_2
end
L0_1._fetch_avatar_by_idx = L73_1
function L73_1(A0_2, A1_2)
  local L2_2
  L2_2 = A0_2._slot_index_to_avatars
  L2_2 = L2_2[A1_2]
  return L2_2
end
L0_1._get_avatar_by_idx = L73_1
function L73_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = A0_2._slot_index_to_avatars
  L2_2 = L2_2[A1_2]
  if L2_2 ~= nil then
    L3_2 = A0_2._avatar_panel
    L4_2 = L3_2
    L3_2 = L3_2.remove_ui3d_avatar
    L5_2 = L2_2
    L3_2(L4_2, L5_2)
    L3_2 = A0_2._slot_index_to_avatars
    L3_2[A1_2] = nil
  end
end
L0_1._remove_avatar_by_idx = L73_1
function L73_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._avatar_panel
  L2_2 = L1_2
  L1_2 = L1_2.hide_all_ui3d_avatars
  L1_2(L2_2)
end
L0_1._hide_all_avatars = L73_1
function L73_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._avatar_panel
  L2_2 = L1_2
  L1_2 = L1_2.hide_unused_ui3d_avatars
  L1_2(L2_2)
end
L0_1._hide_all_unused_avatars = L73_1
function L73_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._avatar_panel
  L2_2 = L1_2
  L1_2 = L1_2.set_all_ui3d_avatars_unused
  L1_2(L2_2)
end
L0_1._set_all_avatars_unused = L73_1
function L73_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2
  L3_2 = A0_2._avatar_panel
  L4_2 = L3_2
  L3_2 = L3_2.fetch_ui3d_avatar
  L5_2 = A1_2
  L6_2 = A2_2
  return L3_2(L4_2, L5_2, L6_2)
end
L0_1._fetch_avatar = L73_1
function L73_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._avatar_panel
  L2_2 = L1_2
  L1_2 = L1_2.remove_unused_ui3d_avatars
  L1_2(L2_2)
end
L0_1._remove_unused_avatars = L73_1
function L73_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  if A1_2 then
    L2_2 = A0_2._avatar_panel
    L3_2 = L2_2
    L2_2 = L2_2.remove_ui3d_avatar
    L4_2 = A0_2._detail_showing_avatar
    L2_2(L3_2, L4_2)
  end
  A0_2._detail_showing_avatar = nil
end
L0_1._remove_detail_avatar = L73_1
function L73_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = pairs
  L2_2 = A0_2._slot_index_to_avatars
  L1_2, L2_2, L3_2 = L1_2(L2_2)
  for L4_2, L5_2 in L1_2, L2_2, L3_2 do
    L6_2 = A0_2._slot_index_to_avatars
    L6_2[L4_2] = nil
  end
end
L0_1._remove_all_slot_avatars = L73_1
function L73_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2._cameras
  L2_2 = L2_2[A1_2]
  L3_2 = L2_2
  L2_2 = L2_2.set_follow
  L4_2 = nil
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._cameras
  L2_2 = L2_2[A1_2]
  L3_2 = L2_2
  L2_2 = L2_2.set_look_at
  L4_2 = nil
  L2_2(L3_2, L4_2)
end
L0_1._reset_virtual_camera = L73_1
function L73_1(A0_2, A1_2)
  local L2_2, L3_2
  A0_2._detail_page_type = A1_2
  L2_2 = A0_2._detail_page_type
  L2_2 = L55_1[L2_2]
  if L2_2 == nil then
    return
  end
  L2_2 = A0_2._is_display_only
  if L2_2 then
    A0_2._enable_idle = false
  else
    L2_2 = A0_2._detail_page_type
    L2_2 = L55_1[L2_2]
    L3_2 = L23_1
    L2_2 = L2_2[L3_2]
    if not L2_2 then
      L2_2 = false
    end
    A0_2._enable_idle = L2_2
  end
end
L0_1.setup_detail_page_type = L73_1
function L73_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L3_2 = A0_2._sub_tab_type
  A0_2._last_sub_tab_type = L3_2
  A0_2._sub_tab_type = A1_2
  A0_2._sub_tab_custom_param = A2_2
  L4_2 = A0_2
  L3_2 = A0_2._refresh_camera
  L5_2 = A2_2
  L7_2 = A0_2
  L6_2 = A0_2._get_camera_blend
  L8_2 = A2_2
  L6_2, L7_2, L8_2 = L6_2(L7_2, L8_2)
  L3_2(L4_2, L5_2, L6_2, L7_2, L8_2)
  L4_2 = A0_2
  L3_2 = A0_2._refresh_avatar
  L3_2(L4_2)
  L4_2 = A0_2
  L3_2 = A0_2._refresh_environment_profile
  L3_2(L4_2)
  L4_2 = A0_2
  L3_2 = A0_2._refresh_main_light
  L3_2(L4_2)
  L4_2 = A0_2
  L3_2 = A0_2._refresh_skybox
  L3_2(L4_2)
end
L0_1.show_avatar_main_page_tab = L73_1
function L73_1(A0_2)
  local L1_2
  A0_2._sub_tab_type = nil
end
L0_1.reset_sub_type = L73_1
function L73_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2
  if A1_2 == nil then
    return
  end
  A0_2._avatar_data = A1_2
  L4_2 = A0_2
  L3_2 = A0_2._set_all_avatars_unused
  L3_2(L4_2)
  L4_2 = A0_2
  L3_2 = A0_2._fetch_avatar
  L5_2 = A1_2
  L6_2 = A2_2
  L3_2 = L3_2(L4_2, L5_2, L6_2)
  L4_2 = NG_HSOD_DEBUG
  if not L4_2 then
    L4_2 = NG_HSOD_PROFILE
    if not L4_2 then
      goto lbl_26
    end
  end
  L4_2 = CS
  L4_2 = L4_2.RPG
  L4_2 = L4_2.Client
  L4_2 = L4_2.GlobalVars
  L4_2 = L4_2.s_ModuleManager
  L4_2 = L4_2.AvatarModule
  L6_2 = L3_2
  L5_2 = L3_2.get_entity
  L5_2 = L5_2(L6_2)
  L4_2.AvatarUI3DPageShowingAvatar = L5_2
  ::lbl_26::
  L5_2 = A0_2
  L4_2 = A0_2._remove_unused_avatars
  L4_2(L5_2)
  A0_2._current_avatar = L3_2
  A0_2._detail_showing_avatar = L3_2
  L5_2 = L3_2
  L4_2 = L3_2.load_model
  L6_2 = false
  L4_2(L5_2, L6_2)
  L4_2 = A0_2._first_show_avatar
  if not L4_2 then
    L5_2 = A0_2
    L4_2 = A0_2.is_avatar_shown
    L4_2 = L4_2(L5_2)
    if L4_2 then
      L4_2 = A0_2._current_avatar
      L5_2 = L4_2
      L4_2 = L4_2.fire_effect
      L6_2 = L18_1
      L4_2(L5_2, L6_2)
    end
  end
  L5_2 = L3_2
  L4_2 = L3_2.place_to_anchor
  L6_2 = A0_2._avatar_anchors
  L7_2 = L17_1
  L6_2 = L6_2[L7_2]
  L4_2(L5_2, L6_2)
  L5_2 = A0_2
  L4_2 = A0_2._init_detail_camera_setting
  L4_2(L5_2)
  L5_2 = A0_2
  L4_2 = A0_2._refresh_camera
  L6_2 = nil
  L7_2 = L12_1.Default
  L4_2(L5_2, L6_2, L7_2)
  L5_2 = A0_2
  L4_2 = A0_2._refresh_avatar
  L4_2(L5_2)
  A0_2._first_show_avatar = false
end
L0_1.switch_avatar = L73_1
function L73_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L1_2 = A0_2._current_avatar
  if not L1_2 then
    return
  end
  L1_2 = A0_2._current_avatar
  L2_2 = L1_2
  L1_2 = L1_2.get_transform
  L1_2 = L1_2(L2_2)
  L2_2 = A0_2._sub_tab_type
  L3_2 = L15_1.Eidolon
  if L2_2 == L3_2 then
    L2_2 = A0_2.eidolon_panel
    L3_2 = L2_2
    L2_2 = L2_2.set_cur_avatar
    L4_2 = A0_2._current_avatar
    L2_2(L3_2, L4_2)
    L2_2 = A0_2._current_avatar
    L3_2 = L2_2
    L2_2 = L2_2.get_entity
    L2_2 = L2_2(L3_2)
    if L2_2 == nil then
      return
    end
    L4_2 = L2_2
    L3_2 = L2_2.GetComponent
    L5_2 = typeof
    L6_2 = CS
    L6_2 = L6_2.RPG
    L6_2 = L6_2.GameCore
    L6_2 = L6_2.UI3DCharacterDataComponent
    L5_2, L6_2, L7_2, L8_2 = L5_2(L6_2)
    L3_2 = L3_2(L4_2, L5_2, L6_2, L7_2, L8_2)
    if L3_2 ~= nil then
      L4_2 = L3_2.JsonConfigRef
      if L4_2 ~= nil then
        L4_2 = L3_2.JsonConfigRef
        L4_2 = L4_2.EidolonPosition
        if L4_2 ~= nil then
          goto lbl_40
        end
      end
    end
    do return end
    ::lbl_40::
    L4_2 = L3_2.JsonConfigRef
    L4_2 = L4_2.EidolonPosition
    L5_2 = CS
    L5_2 = L5_2.UnityEngine
    L5_2 = L5_2.Vector3
    L6_2 = L4_2.x
    L7_2 = L4_2.y
    L8_2 = L4_2.z
    L5_2 = L5_2(L6_2, L7_2, L8_2)
    L1_2.position = L5_2
  end
end
L0_1._refresh_avatar_transform = L73_1
function L73_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._cameras
  L2_2 = L10_1.Detail
  L1_2 = L1_2[L2_2]
  L2_2 = L1_2
  L1_2 = L1_2.native_state
  L1_2 = L1_2(L2_2)
  L2_2 = L1_2
  L1_2 = L1_2.ResetZoom
  L1_2(L2_2)
end
L0_1.reset_zoom = L73_1
function L73_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._sub_tab_type
  L2_2 = L15_1.AvatarDetail
  L1_2 = L1_2 == L2_2
  return L1_2
end
L0_1.is_avatar_shown = L73_1
function L73_1(A0_2)
  local L1_2
  L1_2 = A0_2._avatar_data
  return L1_2
end
L0_1.get_ui3d_avatar_data = L73_1
function L73_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._current_avatar
  if L1_2 == nil then
    L1_2 = nil
    return L1_2
  end
  L1_2 = A0_2._current_avatar
  L2_2 = L1_2
  L1_2 = L1_2.get_entity
  return L1_2(L2_2)
end
L0_1.get_cur_avatar_entity = L73_1
function L73_1(A0_2)
  local L1_2, L2_2, L3_2
  L2_2 = A0_2
  L1_2 = A0_2._focus_on_curr_avatar_detail
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._enable_auto_fit_screen
  L3_2 = false
  L1_2(L2_2, L3_2)
end
L0_1.refresh_detail_sub_tab = L73_1
function L73_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2._focus_on_curr_avatar
  L3_2 = L24_1
  L4_2 = L25_1
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._set_camera_fov
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._enable_auto_fit_screen
  L3_2 = false
  L1_2(L2_2, L3_2)
end
L0_1.refresh_detail_level_up_sub_tab = L73_1
function L73_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2._focus_on_curr_avatar
  L3_2 = L28_1
  L4_2 = L29_1
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._set_camera_fov
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._enable_auto_fit_screen
  L3_2 = false
  L1_2(L2_2, L3_2)
end
L0_1.refresh_skill_tree_sub_tab = L73_1
function L73_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2._focus_on_curr_avatar
  L3_2 = L26_1
  L4_2 = L27_1
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._set_camera_fov
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._enable_auto_fit_screen
  L3_2 = false
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2.set_lightcone_target_pos_by_camera
  L1_2(L2_2)
end
L0_1.refresh_light_cone_sub_tab = L73_1
function L73_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2._focus_on_curr_avatar
  L3_2 = L34_1
  L4_2 = L35_1
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._set_camera_fov
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._enable_auto_fit_screen
  L3_2 = false
  L1_2(L2_2, L3_2)
end
L0_1.refresh_relic_sub_tab = L73_1
function L73_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  if A1_2 then
    L3_2 = A0_2
    L2_2 = A0_2._focus_on_curr_avatar
    L4_2 = L32_1
    L5_2 = L33_1
    L2_2(L3_2, L4_2, L5_2)
  else
    L3_2 = A0_2
    L2_2 = A0_2._focus_on_curr_avatar
    L4_2 = L30_1
    L5_2 = L31_1
    L2_2(L3_2, L4_2, L5_2)
  end
  L3_2 = A0_2
  L2_2 = A0_2._set_camera_fov
  L4_2 = L58_1
  L2_2(L3_2, L4_2)
  L3_2 = A0_2
  L2_2 = A0_2._enable_auto_fit_screen
  L4_2 = false
  L2_2(L3_2, L4_2)
end
L0_1.refresh_eidolon_sub_tab = L73_1
function L73_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  if A1_2 then
    L2_2 = L36_1
    if L2_2 then
      goto lbl_7
    end
  end
  L2_2 = L40_1
  ::lbl_7::
  if A1_2 then
    L3_2 = L37_1
    if L3_2 then
      goto lbl_13
    end
  end
  L3_2 = L41_1
  ::lbl_13::
  L5_2 = A0_2
  L4_2 = A0_2._focus_on_curr_avatar
  L6_2 = L2_2
  L7_2 = L3_2
  L4_2(L5_2, L6_2, L7_2)
  L5_2 = A0_2
  L4_2 = A0_2._set_camera_fov
  L4_2(L5_2)
  L5_2 = A0_2
  L4_2 = A0_2._enable_auto_fit_screen
  L6_2 = false
  L4_2(L5_2, L6_2)
end
L0_1.refresh_voice_sub_tab = L73_1
function L73_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  if A1_2 then
    L2_2 = L42_1
    if L2_2 then
      goto lbl_7
    end
  end
  L2_2 = L38_1
  ::lbl_7::
  if A1_2 then
    L3_2 = L43_1
    if L3_2 then
      goto lbl_13
    end
  end
  L3_2 = L39_1
  ::lbl_13::
  if A1_2 then
    L4_2 = L47_1
    if L4_2 then
      goto lbl_19
    end
  end
  L4_2 = L46_1
  ::lbl_19::
  L6_2 = A0_2
  L5_2 = A0_2._focus_on_curr_avatar
  L7_2 = L2_2
  L8_2 = L3_2
  L9_2 = L4_2
  L5_2(L6_2, L7_2, L8_2, L9_2)
  L6_2 = A0_2
  L5_2 = A0_2._set_camera_fov
  L5_2(L6_2)
  L6_2 = A0_2
  L5_2 = A0_2._enable_auto_fit_screen
  L7_2 = A1_2
  L5_2(L6_2, L7_2)
end
L0_1.refresh_story_sub_tab = L73_1
function L73_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L1_2 = L44_1
  L2_2 = L45_1
  L3_2 = L46_1
  L5_2 = A0_2
  L4_2 = A0_2._focus_on_curr_avatar
  L6_2 = L1_2
  L7_2 = L2_2
  L8_2 = L3_2
  L4_2(L5_2, L6_2, L7_2, L8_2)
  L5_2 = A0_2
  L4_2 = A0_2._set_camera_fov
  L4_2(L5_2)
  L5_2 = A0_2
  L4_2 = A0_2._enable_auto_fit_screen
  L6_2 = false
  L4_2(L5_2, L6_2)
end
L0_1.refresh_data_bank_sub_tab = L73_1
function L73_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2._cameras
  L3_2 = L10_1.Detail
  L2_2 = L2_2[L3_2]
  if L2_2 == nil then
    return
  end
  L2_2 = A0_2._cameras
  L3_2 = L10_1.Detail
  L2_2 = L2_2[L3_2]
  L3_2 = L2_2
  L2_2 = L2_2.native_state
  L2_2 = L2_2(L3_2)
  L3_2 = L2_2
  L2_2 = L2_2.EnableCameraZoom
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
end
L0_1.enable_free_look_zoom = L73_1
function L73_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2
  L3_2 = A0_2
  L2_2 = A0_2._set_custom_focus_on
  L4_2 = A1_2.followPoint
  L5_2 = A1_2.lookAtPoint
  L6_2 = A1_2.rotation
  L2_2(L3_2, L4_2, L5_2, L6_2)
end
L0_1.set_custom_bg = L73_1
function L73_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = A0_2._current_avatar
  if L1_2 == nil then
    L1_2 = nil
    return L1_2
  end
  L2_2 = A0_2
  L1_2 = A0_2._get_curr_avatar_anchor
  L3_2 = L26_1
  L1_2 = L1_2(L2_2, L3_2)
  L2_2 = CS
  L2_2 = L2_2.UnityEngine
  L2_2 = L2_2.Vector3
  L3_2 = L1_2.x
  L4_2 = L1_2.y
  L5_2 = L1_2.z
  L2_2 = L2_2(L3_2, L4_2, L5_2)
  L3_2 = L2_2.x
  L3_2 = L3_2 + 0
  L2_2.x = L3_2
  L3_2 = L2_2.y
  L3_2 = L3_2 + 0
  L2_2.y = L3_2
  L3_2 = L2_2.z
  L3_2 = L3_2 - 3.5
  L2_2.z = L3_2
  L3_2 = A0_2.lightcone_panel
  L4_2 = L3_2
  L3_2 = L3_2.set_custom_pos
  L5_2 = L2_2
  L6_2 = L61_1.EUL
  L3_2(L4_2, L5_2, L6_2)
  L3_2 = A0_2.lightcone_panel
  L4_2 = L3_2
  L3_2 = L3_2.set_origin_rotY
  L5_2 = L61_1.EUL
  L5_2 = L5_2.y
  L5_2 = L5_2 - 180
  L3_2(L4_2, L5_2)
  L3_2 = A0_2.lightcone_panel
  L4_2 = L3_2
  L3_2 = L3_2.set_is_locate_by_camera
  L3_2(L4_2)
end
L0_1.set_lightcone_target_pos_by_camera = L73_1
function L73_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L5_2 = A0_2
  L4_2 = A0_2._get_next_virtual_camera_target_objects
  L4_2, L5_2 = L4_2(L5_2)
  if L4_2 == nil or L5_2 == nil then
    return
  end
  if A3_2 == nil then
    L6_2 = CS
    L6_2 = L6_2.UnityEngine
    L6_2 = L6_2.Quaternion
    L7_2 = 0
    L8_2 = 0
    L9_2 = 0
    L10_2 = 1
    L6_2 = L6_2(L7_2, L8_2, L9_2, L10_2)
    A3_2 = L6_2
  end
  L6_2 = L4_2.transform
  L6_2.position = A2_2
  L6_2 = L4_2.transform
  L6_2.rotation = A3_2
  L6_2 = L5_2.transform
  L6_2.position = A1_2
  L6_2 = L5_2.transform
  L6_2.rotation = A3_2
  L7_2 = A0_2
  L6_2 = A0_2._focus_on_position
  L8_2 = L5_2.transform
  L8_2 = L8_2.position
  L9_2 = L4_2.transform
  L9_2 = L9_2.position
  L6_2(L7_2, L8_2, L9_2)
end
L0_1._set_custom_focus_on = L73_1
function L73_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._sub_tab_type
  L2_2 = L15_1.AvatarDetail
  if L1_2 == L2_2 then
    L1_2 = A0_2._camera_panel
    L2_2 = L1_2
    L1_2 = L1_2.enable_main_light_dir_change
    L3_2 = true
    L1_2(L2_2, L3_2)
  else
    L1_2 = A0_2._camera_panel
    L2_2 = L1_2
    L1_2 = L1_2.enable_main_light_dir_change
    L3_2 = false
    L1_2(L2_2, L3_2)
  end
end
L0_1._refresh_main_light = L73_1
function L73_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._sub_tab_type
  L2_2 = L15_1.Eidolon
  if L1_2 == L2_2 then
    L2_2 = A0_2
    L1_2 = A0_2._load_environment_profile
    L3_2 = L66_1
    L1_2(L2_2, L3_2)
  else
    L1_2 = A0_2._is_in_team_page
    if L1_2 then
      L2_2 = A0_2
      L1_2 = A0_2._load_environment_profile
      L3_2 = L67_1
      L1_2(L2_2, L3_2)
    else
      L2_2 = A0_2
      L1_2 = A0_2._load_environment_profile
      L3_2 = A0_2._area_config
      L3_2 = L3_2.EnviroProfile
      L1_2(L2_2, L3_2)
    end
  end
end
L0_1._refresh_environment_profile = L73_1
function L73_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = A0_2._root_animator
  L2_2 = L1_2
  L1_2 = L1_2.SetBool
  L3_2 = L60_1
  L4_2 = A0_2._sub_tab_type
  L5_2 = L15_1.Eidolon
  L4_2 = L4_2 == L5_2
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2._root_animator
  L2_2 = L1_2
  L1_2 = L1_2.SetBool
  L3_2 = L59_1
  L4_2 = A0_2._sub_tab_type
  L5_2 = L15_1.LightCone
  L4_2 = L4_2 == L5_2
  L1_2(L2_2, L3_2, L4_2)
end
L0_1._refresh_skybox = L73_1
function L73_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._cameras
  L2_2 = L10_1.Detail
  L1_2 = L1_2[L2_2]
  L2_2 = L1_2
  L1_2 = L1_2.active
  L1_2(L2_2)
end
L0_1._focus_on_curr_avatar_detail = L73_1
function L73_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2
  L5_2 = A0_2
  L4_2 = A0_2._get_next_virtual_camera_target_objects
  L4_2, L5_2 = L4_2(L5_2)
  if not A3_2 then
    L6_2 = CS
    L6_2 = L6_2.UnityEngine
    L6_2 = L6_2.Vector3
    L7_2 = 0
    L8_2 = 0
    L9_2 = 0
    L6_2 = L6_2(L7_2, L8_2, L9_2)
    A3_2 = L6_2
  end
  L6_2 = L5_2.transform
  L7_2 = A1_2 + A3_2
  L6_2.position = L7_2
  L6_2 = L4_2.transform
  L6_2.position = A2_2
  L7_2 = A0_2
  L6_2 = A0_2._get_next_virtual_camera_id
  L6_2 = L6_2(L7_2)
  L7_2 = A0_2._cameras
  L7_2 = L7_2[L6_2]
  L8_2 = L7_2
  L7_2 = L7_2.set_follow
  L9_2 = L5_2
  L7_2(L8_2, L9_2)
  L7_2 = A0_2._cameras
  L7_2 = L7_2[L6_2]
  L8_2 = L7_2
  L7_2 = L7_2.set_look_at
  L9_2 = L4_2
  L7_2(L8_2, L9_2)
  L7_2 = A0_2._cameras
  L7_2 = L7_2[L6_2]
  L8_2 = L7_2
  L7_2 = L7_2.set_tracked_offset
  L9_2 = CS
  L9_2 = L9_2.UnityEngine
  L9_2 = L9_2.Vector3
  L10_2 = 0
  L11_2 = 0
  L12_2 = 0
  L9_2, L10_2, L11_2, L12_2 = L9_2(L10_2, L11_2, L12_2)
  L7_2(L8_2, L9_2, L10_2, L11_2, L12_2)
  L7_2 = A0_2._cameras
  L7_2 = L7_2[L6_2]
  L8_2 = L7_2
  L7_2 = L7_2.active
  L7_2(L8_2)
end
L0_1._focus_on_position = L73_1
function L73_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2, L5_2, L6_2, L7_2, L8_2
  L4_2 = A0_2._camera_anchors
  L4_2 = L4_2[A2_2]
  L5_2 = A0_2._look_anchors
  L5_2 = L5_2[A3_2]
  L6_2 = A0_2._cameras
  L6_2 = L6_2[A1_2]
  L7_2 = L6_2
  L6_2 = L6_2.set_follow
  L8_2 = L4_2
  L6_2(L7_2, L8_2)
  L6_2 = A0_2._cameras
  L6_2 = L6_2[A1_2]
  L7_2 = L6_2
  L6_2 = L6_2.set_look_at
  L8_2 = L5_2
  L6_2(L7_2, L8_2)
  L6_2 = A0_2._cameras
  L6_2 = L6_2[A1_2]
  L7_2 = L6_2
  L6_2 = L6_2.active
  L6_2(L7_2)
end
L0_1._focus_on_anchor = L73_1
function L73_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2
  L4_2 = A0_2._current_avatar
  if L4_2 == nil then
    return
  end
  if not A3_2 then
    A3_2 = L46_1
  end
  L5_2 = A0_2
  L4_2 = A0_2._get_curr_avatar_anchor
  L6_2 = A2_2
  L4_2 = L4_2(L5_2, L6_2)
  L6_2 = A0_2
  L5_2 = A0_2._get_curr_avatar_anchor
  L7_2 = A1_2
  L5_2 = L5_2(L6_2, L7_2)
  L7_2 = A0_2
  L6_2 = A0_2._get_curr_avatar_anchor
  L8_2 = A3_2
  L6_2 = L6_2(L7_2, L8_2)
  L8_2 = A0_2
  L7_2 = A0_2._get_next_virtual_camera_target_objects
  L7_2, L8_2 = L7_2(L8_2)
  L9_2 = L7_2.transform
  L10_2 = CS
  L10_2 = L10_2.UnityEngine
  L10_2 = L10_2.Vector3
  L11_2 = 0
  L12_2 = 0
  L13_2 = 0
  L10_2 = L10_2(L11_2, L12_2, L13_2)
  L9_2.position = L10_2
  L9_2 = L8_2.transform
  L9_2.position = L5_2
  L10_2 = A0_2
  L9_2 = A0_2._get_next_virtual_camera_id
  L9_2 = L9_2(L10_2)
  L10_2 = A0_2._cameras
  L10_2 = L10_2[L9_2]
  L11_2 = L10_2
  L10_2 = L10_2.active
  L10_2(L11_2)
  L10_2 = A0_2._cameras
  L10_2 = L10_2[L9_2]
  L11_2 = L10_2
  L10_2 = L10_2.set_follow
  L12_2 = L8_2
  L10_2(L11_2, L12_2)
  L10_2 = A0_2._cameras
  L10_2 = L10_2[L9_2]
  L11_2 = L10_2
  L10_2 = L10_2.set_look_at
  L12_2 = L7_2
  L10_2(L11_2, L12_2)
  L10_2 = A0_2._cameras
  L10_2 = L10_2[L9_2]
  L11_2 = L10_2
  L10_2 = L10_2.set_tracked_offset
  L12_2 = L4_2 + L6_2
  L10_2(L11_2, L12_2)
end
L0_1._focus_on_curr_avatar = L73_1
function L73_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2._active_camera_id
  if L2_2 == nil then
    return
  end
  if not A1_2 then
    A1_2 = L56_1
  end
  L2_2 = A0_2._cameras
  L3_2 = A0_2._active_camera_id
  L2_2 = L2_2[L3_2]
  L3_2 = L2_2
  L2_2 = L2_2.set_fov
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
end
L0_1._set_camera_fov = L73_1
function L73_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  if not A1_2 then
    A1_2 = L46_1
  end
  L3_2 = A0_2
  L2_2 = A0_2._get_curr_avatar_anchor
  L4_2 = A1_2
  L2_2 = L2_2(L3_2, L4_2)
  L3_2 = A0_2._cameras
  L4_2 = A0_2._active_camera_id
  L3_2 = L3_2[L4_2]
  L4_2 = L3_2
  L3_2 = L3_2.add_tracked_offset
  L5_2 = L2_2
  L3_2(L4_2, L5_2)
end
L0_1._add_camera_tracked_offset = L73_1
function L73_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2._active_camera_id
  if L2_2 == nil then
    return
  end
  L2_2 = A0_2._cameras
  L3_2 = A0_2._active_camera_id
  L2_2 = L2_2[L3_2]
  L3_2 = L2_2
  L2_2 = L2_2.enable_auto_fit_screen
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
end
L0_1._enable_auto_fit_screen = L73_1
function L73_1(A0_2, A1_2)
  local L2_2, L3_2
  L2_2 = A0_2._sub_tab_type
  L3_2 = L15_1.AvatarDetail
  if L2_2 ~= L3_2 then
    L2_2 = A0_2._sub_tab_type
    L3_2 = L15_1.AvatarDetailLevelUp
    if L2_2 ~= L3_2 then
      goto lbl_33
    end
  end
  L2_2 = A0_2._first_show_avatar
  if L2_2 then
    L2_2 = L12_1.Default
    return L2_2
  else
    L2_2 = A0_2._last_sub_tab_type
    L3_2 = L15_1.Voice
    if L2_2 ~= L3_2 then
      L2_2 = A0_2._last_sub_tab_type
      L3_2 = L15_1.Story
      if L2_2 ~= L3_2 then
        L2_2 = A0_2._last_sub_tab_type
        L3_2 = L15_1.DataBank
        if L2_2 ~= L3_2 then
          goto lbl_30
        end
      end
    end
    L2_2 = L12_1.LevelUp
    do return L2_2 end
    goto lbl_99
    ::lbl_30::
    L2_2 = L12_1.Detail
    do return L2_2 end
    goto lbl_99
    ::lbl_33::
    L2_2 = A0_2._sub_tab_type
    L3_2 = L15_1.SkillTree
    if L2_2 == L3_2 then
      L2_2 = L12_1.SkillTree
      return L2_2
    else
      L2_2 = A0_2._sub_tab_type
      L3_2 = L15_1.LightCone
      if L2_2 == L3_2 then
        L2_2 = L12_1.LightCone
        return L2_2
      else
        L2_2 = A0_2._sub_tab_type
        L3_2 = L15_1.Eidolon
        if L2_2 == L3_2 then
          if A1_2 == nil then
            L2_2 = L12_1.Cut
            return L2_2
          else
            L2_2 = L12_1.SkillTree
            return L2_2
          end
        else
          L2_2 = A0_2._sub_tab_type
          L3_2 = L15_1.Relic
          if L2_2 == L3_2 then
            L2_2 = L12_1.SkillTree
            return L2_2
          else
            L2_2 = A0_2._sub_tab_type
            L3_2 = L15_1.Voice
            if L2_2 ~= L3_2 then
              L2_2 = A0_2._sub_tab_type
              L3_2 = L15_1.Story
              if L2_2 ~= L3_2 then
                L2_2 = A0_2._sub_tab_type
                L3_2 = L15_1.DataBank
                if L2_2 ~= L3_2 then
                  goto lbl_99
                end
              end
            end
            L2_2 = A0_2._last_sub_tab_type
            L3_2 = L15_1.SkillTree
            if L2_2 ~= L3_2 then
              L2_2 = A0_2._last_sub_tab_type
              L3_2 = L15_1.Eidolon
              if L2_2 ~= L3_2 then
                L2_2 = A0_2._last_sub_tab_type
                L3_2 = L15_1.Relic
                if L2_2 ~= L3_2 then
                  L2_2 = A0_2._last_sub_tab_type
                  L3_2 = L15_1.LightCone
                  if L2_2 ~= L3_2 then
                    goto lbl_97
                  end
                end
              end
            end
            L2_2 = L12_1.ApproximatelyCut
            do return L2_2 end
            goto lbl_99
            ::lbl_97::
            L2_2 = L12_1.LevelUp
            return L2_2
          end
        end
      end
    end
  end
  ::lbl_99::
  L2_2 = L12_1.Default
  return L2_2
end
L0_1._get_camera_blend = L73_1
function L73_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  if A1_2 == nil then
    L2_2 = CS
    L2_2 = L2_2.UnityEngine
    L2_2 = L2_2.Vector3
    L3_2 = 0
    L4_2 = 0
    L5_2 = 0
    return L2_2(L3_2, L4_2, L5_2)
  else
    L2_2 = CS
    L2_2 = L2_2.UnityEngine
    L2_2 = L2_2.Vector3
    L3_2 = A1_2.x
    L4_2 = A1_2.y
    L5_2 = A1_2.z
    return L2_2(L3_2, L4_2, L5_2)
  end
end
L0_1._get_vector_from_MVector3 = L73_1
function L73_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._active_camera_id
  if L1_2 ~= nil then
    L1_2 = A0_2._active_camera_id
    L2_2 = L10_1.SkillTree
    if L1_2 ~= L2_2 then
      goto lbl_11
    end
  end
  L1_2 = L10_1.LightCone
  A0_2._active_camera_id = L1_2
  goto lbl_13
  ::lbl_11::
  L1_2 = L10_1.SkillTree
  A0_2._active_camera_id = L1_2
  ::lbl_13::
  L2_2 = A0_2
  L1_2 = A0_2._set_camera_fov
  L1_2(L2_2)
  L1_2 = A0_2._active_camera_id
  return L1_2
end
L0_1._get_next_virtual_camera_id = L73_1
function L73_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2
  L3_2 = A0_2._sub_tab_type
  if L3_2 == nil then
    return
  end
  L3_2 = A0_2._camera_panel
  L4_2 = L3_2
  L3_2 = L3_2.set_camera_blend
  L5_2 = A2_2
  L3_2(L4_2, L5_2)
  L3_2 = A0_2._sub_tab_type
  L4_2 = L15_1.AvatarDetail
  if L3_2 == L4_2 then
    L4_2 = A0_2
    L3_2 = A0_2.refresh_detail_sub_tab
    L5_2 = A1_2
    L3_2(L4_2, L5_2)
  else
    L3_2 = A0_2._sub_tab_type
    L4_2 = L15_1.AvatarDetailLevelUp
    if L3_2 == L4_2 then
      L4_2 = A0_2
      L3_2 = A0_2.refresh_detail_level_up_sub_tab
      L5_2 = A1_2
      L3_2(L4_2, L5_2)
    else
      L3_2 = A0_2._sub_tab_type
      L4_2 = L15_1.SkillTree
      if L3_2 == L4_2 then
        L4_2 = A0_2
        L3_2 = A0_2.refresh_skill_tree_sub_tab
        L5_2 = A1_2
        L3_2(L4_2, L5_2)
      else
        L3_2 = A0_2._sub_tab_type
        L4_2 = L15_1.LightCone
        if L3_2 == L4_2 then
          L4_2 = A0_2
          L3_2 = A0_2.refresh_light_cone_sub_tab
          L5_2 = A1_2
          L3_2(L4_2, L5_2)
        else
          L3_2 = A0_2._sub_tab_type
          L4_2 = L15_1.Relic
          if L3_2 == L4_2 then
            L4_2 = A0_2
            L3_2 = A0_2.refresh_relic_sub_tab
            L5_2 = A1_2
            L3_2(L4_2, L5_2)
          else
            L3_2 = A0_2._sub_tab_type
            L4_2 = L15_1.Eidolon
            if L3_2 == L4_2 then
              L4_2 = A0_2
              L3_2 = A0_2.refresh_eidolon_sub_tab
              L5_2 = A1_2
              L3_2(L4_2, L5_2)
            else
              L3_2 = A0_2._sub_tab_type
              L4_2 = L15_1.Voice
              if L3_2 == L4_2 then
                L4_2 = A0_2
                L3_2 = A0_2.refresh_voice_sub_tab
                L5_2 = A1_2
                L3_2(L4_2, L5_2)
              else
                L3_2 = A0_2._sub_tab_type
                L4_2 = L15_1.Story
                if L3_2 == L4_2 then
                  L4_2 = A0_2
                  L3_2 = A0_2.refresh_story_sub_tab
                  L5_2 = A1_2
                  L3_2(L4_2, L5_2)
                else
                  L3_2 = A0_2._sub_tab_type
                  L4_2 = L15_1.DataBank
                  if L3_2 == L4_2 then
                    L4_2 = A0_2
                    L3_2 = A0_2.refresh_data_bank_sub_tab
                    L5_2 = A1_2
                    L3_2(L4_2, L5_2)
                  end
                end
              end
            end
          end
        end
      end
    end
  end
end
L0_1._refresh_camera = L73_1
function L73_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._current_avatar
  if L1_2 == nil then
    return
  end
  L2_2 = A0_2
  L1_2 = A0_2._enable_shadow
  L4_2 = A0_2
  L3_2 = A0_2.is_avatar_shown
  L3_2, L4_2 = L3_2(L4_2)
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2._current_avatar
  L2_2 = L1_2
  L1_2 = L1_2.set_visible
  L4_2 = A0_2
  L3_2 = A0_2.is_avatar_shown
  L3_2, L4_2 = L3_2(L4_2)
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2._sub_tab_type
  L2_2 = L15_1.AvatarDetail
  L1_2 = L1_2 == L2_2
  L2_2 = A0_2._current_avatar
  L3_2 = L2_2
  L2_2 = L2_2.enable_idle_anim
  L4_2 = L1_2 or L4_2
  if L1_2 then
    L4_2 = A0_2._enable_idle
  end
  L2_2(L3_2, L4_2)
  L3_2 = A0_2
  L2_2 = A0_2._refresh_eye_look
  L2_2(L3_2)
  L3_2 = A0_2
  L2_2 = A0_2._refresh_animator
  L2_2(L3_2)
  L3_2 = A0_2
  L2_2 = A0_2._refresh_shadow
  L2_2(L3_2)
end
L0_1._refresh_avatar = L73_1
function L73_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L1_2 = A0_2._current_avatar
  L2_2 = L1_2
  L1_2 = L1_2.get_entity
  L1_2 = L1_2(L2_2)
  if L1_2 ~= nil then
    L2_2 = L1_2.UnityGO
    if L2_2 ~= nil then
      goto lbl_10
    end
  end
  do return end
  ::lbl_10::
  L3_2 = A0_2
  L2_2 = A0_2._get_curr_avatar_anchor
  L4_2 = "CameraRoot"
  L2_2 = L2_2(L3_2, L4_2)
  L4_2 = A0_2
  L3_2 = A0_2._get_curr_avatar_anchor
  L5_2 = "CameraRootSpine"
  L3_2 = L3_2(L4_2, L5_2)
  L4_2 = CS
  L4_2 = L4_2.RPG
  L4_2 = L4_2.GameCore
  L4_2 = L4_2.UI3DCameraFreeLookSetting
  L4_2 = L4_2()
  L5_2 = L1_2.UnityGO
  L5_2 = L5_2.transform
  L4_2.Target = L5_2
  L5_2 = L1_2.UnityGO
  L5_2 = L5_2.transform
  L6_2 = L5_2
  L5_2 = L5_2.TransformPoint
  L7_2 = L2_2
  L5_2 = L5_2(L6_2, L7_2)
  L4_2.RailHead = L5_2
  L5_2 = L1_2.UnityGO
  L5_2 = L5_2.transform
  L6_2 = L5_2
  L5_2 = L5_2.TransformPoint
  L7_2 = L3_2
  L5_2 = L5_2(L6_2, L7_2)
  L4_2.RailTail = L5_2
  L5_2 = A0_2._cameras
  L6_2 = L10_1.Detail
  L5_2 = L5_2[L6_2]
  L6_2 = L5_2
  L5_2 = L5_2.native_state
  L5_2 = L5_2(L6_2)
  L6_2 = L5_2
  L5_2 = L5_2.InitSetting
  L7_2 = L4_2
  L5_2(L6_2, L7_2)
end
L0_1._init_detail_camera_setting = L73_1
function L73_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L1_2 = A0_2._sub_tab_type
  if L1_2 == nil then
    return
  end
  L1_2 = A0_2._current_avatar
  if L1_2 == nil then
    return
  end
  L1_2 = A0_2._sub_tab_type
  L2_2 = L54_1[L1_2]
  L3_2 = L20_1
  L2_2 = L2_2[L3_2]
  L3_2 = L54_1[L1_2]
  L4_2 = L21_1
  L3_2 = L3_2[L4_2]
  L4_2 = L54_1[L1_2]
  L5_2 = L22_1
  L4_2 = L4_2[L5_2]
  L5_2 = A0_2._current_avatar
  L6_2 = L5_2
  L5_2 = L5_2.trigger_anim_param
  L7_2 = L20_1
  L8_2 = L2_2 or L8_2
  if not L2_2 then
    L8_2 = false
  end
  L5_2(L6_2, L7_2, L8_2)
  L5_2 = A0_2._current_avatar
  L6_2 = L5_2
  L5_2 = L5_2.trigger_anim_param
  L7_2 = L21_1
  L8_2 = L3_2 or L8_2
  if not L3_2 then
    L8_2 = false
  end
  L5_2(L6_2, L7_2, L8_2)
  L5_2 = A0_2._current_avatar
  L6_2 = L5_2
  L5_2 = L5_2.trigger_anim_param
  L7_2 = L22_1
  L8_2 = L4_2 or L8_2
  if not L4_2 then
    L8_2 = false
  end
  L5_2(L6_2, L7_2, L8_2)
  L5_2 = A0_2._current_avatar
  L6_2 = L5_2
  L5_2 = L5_2.trigger_anim_param
  L7_2 = L5_1
  L8_2 = false
  L5_2(L6_2, L7_2, L8_2)
end
L0_1._refresh_animator = L73_1
function L73_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._avatar_panel
  L2_2 = L1_2
  L1_2 = L1_2.reset_eye_look
  L1_2(L2_2)
end
L0_1._reset_eye_look = L73_1
function L73_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._current_avatar
  if L1_2 == nil then
    return
  end
  L1_2 = A0_2._is_display_only
  if not L1_2 then
    L1_2 = A0_2._sub_tab_type
    L2_2 = L15_1.AvatarDetail
    if L1_2 == L2_2 then
      L1_2 = A0_2._is_in_team_page
      if not L1_2 then
        goto lbl_20
      end
    end
  end
  L1_2 = A0_2._current_avatar
  L2_2 = L1_2
  L1_2 = L1_2.set_eye_look
  L3_2 = nil
  L1_2(L2_2, L3_2)
  goto lbl_28
  ::lbl_20::
  L1_2 = A0_2._current_avatar
  L2_2 = L1_2
  L1_2 = L1_2.set_eye_look
  L3_2 = A0_2._camera
  if L3_2 then
    L3_2 = A0_2._camera
    L3_2 = L3_2.transform
  end
  L1_2(L2_2, L3_2)
  ::lbl_28::
end
L0_1._refresh_eye_look = L73_1
function L73_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._curr_virtual_object_id
  if L1_2 ~= nil then
    L1_2 = A0_2._curr_virtual_object_id
    if L1_2 ~= 1 then
      goto lbl_12
    end
  end
  A0_2._curr_virtual_object_id = 2
  L1_2 = A0_2._virtual_camera_look_2
  L2_2 = A0_2._virtual_camera_follow_2
  do return L1_2, L2_2 end
  goto lbl_16
  ::lbl_12::
  A0_2._curr_virtual_object_id = 1
  L1_2 = A0_2._virtual_camera_look_1
  L2_2 = A0_2._virtual_camera_follow_1
  do return L1_2, L2_2 end
  ::lbl_16::
end
L0_1._get_next_virtual_camera_target_objects = L73_1
function L73_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = A0_2._root
  if L1_2 == nil then
    return
  end
  L2_2 = G
  L2_2 = L2_2.ComponentExtensions
  L2_2 = L2_2.SafeFind
  L3_2 = L1_2.transform
  L4_2 = "Root"
  L2_2 = L2_2(L3_2, L4_2)
  L4_2 = A0_2
  L3_2 = A0_2._create_node_if_not_exist
  L5_2 = L2_2
  L6_2 = L62_1
  L3_2 = L3_2(L4_2, L5_2, L6_2)
  A0_2._virtual_camera_look_1 = L3_2
  L4_2 = A0_2
  L3_2 = A0_2._create_node_if_not_exist
  L5_2 = L2_2
  L6_2 = L63_1
  L3_2 = L3_2(L4_2, L5_2, L6_2)
  A0_2._virtual_camera_follow_1 = L3_2
  L4_2 = A0_2
  L3_2 = A0_2._create_node_if_not_exist
  L5_2 = L2_2
  L6_2 = L64_1
  L3_2 = L3_2(L4_2, L5_2, L6_2)
  A0_2._virtual_camera_look_2 = L3_2
  L4_2 = A0_2
  L3_2 = A0_2._create_node_if_not_exist
  L5_2 = L2_2
  L6_2 = L65_1
  L3_2 = L3_2(L4_2, L5_2, L6_2)
  A0_2._virtual_camera_follow_2 = L3_2
end
L0_1._create_virtual_camera_dummy_objects = L73_1
function L73_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2
  L4_2 = A1_2
  L3_2 = A1_2.Find
  L5_2 = A2_2
  L3_2 = L3_2(L4_2, L5_2)
  if L3_2 == nil then
    L4_2 = CS
    L4_2 = L4_2.UnityEngine
    L4_2 = L4_2.GameObject
    L5_2 = A2_2
    L4_2 = L4_2(L5_2)
    L5_2 = L4_2.transform
    L6_2 = L5_2
    L5_2 = L5_2.SetParent
    L7_2 = A1_2
    L5_2(L6_2, L7_2)
    L3_2 = L4_2.transform
  end
  return L3_2
end
L0_1._create_node_if_not_exist = L73_1
function L73_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L1_2 = CS
  L1_2 = L1_2.UnityEngine
  L1_2 = L1_2.Vector2
  L2_2 = 0
  L3_2 = 0
  L1_2 = L1_2(L2_2, L3_2)
  L2_2 = A0_2._area_config
  L2_2 = L2_2.MainLightDirOffsetX
  L1_2.x = L2_2
  L2_2 = A0_2._area_config
  L2_2 = L2_2.MainLightDirOffsetY
  L1_2.y = L2_2
  L2_2 = A0_2._camera_panel
  L3_2 = L2_2
  L2_2 = L2_2.set_main_light_dir_offset
  L4_2 = L1_2
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._cameras
  L3_2 = L10_1.OverAll
  L5_2 = A0_2
  L4_2 = A0_2.create_panel
  L6_2 = G
  L6_2 = L6_2.UI3DCamera
  L7_2 = "Root/VirtualCamera/TeamOverAllVC"
  L4_2 = L4_2(L5_2, L6_2, L7_2)
  L2_2[L3_2] = L4_2
  L2_2 = A0_2._cameras
  L3_2 = L10_1.LightCone
  L5_2 = A0_2
  L4_2 = A0_2.create_panel
  L6_2 = G
  L6_2 = L6_2.UI3DCamera
  L7_2 = "Root/VirtualCamera/LightConeVC"
  L4_2 = L4_2(L5_2, L6_2, L7_2)
  L2_2[L3_2] = L4_2
  L2_2 = A0_2._cameras
  L3_2 = L10_1.SkillTree
  L5_2 = A0_2
  L4_2 = A0_2.create_panel
  L6_2 = G
  L6_2 = L6_2.UI3DCamera
  L7_2 = "Root/VirtualCamera/SkillTreeVC"
  L4_2 = L4_2(L5_2, L6_2, L7_2)
  L2_2[L3_2] = L4_2
  L2_2 = A0_2._cameras
  L3_2 = L10_1.Detail
  L5_2 = A0_2
  L4_2 = A0_2.create_panel
  L6_2 = G
  L6_2 = L6_2.UI3DCamera
  L7_2 = "Root/VirtualCamera/DetailFreeLookVC"
  L4_2 = L4_2(L5_2, L6_2, L7_2)
  L2_2[L3_2] = L4_2
  L2_2 = A0_2._camera_panel
  L3_2 = L2_2
  L2_2 = L2_2.add_camera_state
  L4_2 = A0_2._cameras
  L5_2 = L10_1.OverAll
  L4_2 = L4_2[L5_2]
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._camera_panel
  L3_2 = L2_2
  L2_2 = L2_2.add_camera_state
  L4_2 = A0_2._cameras
  L5_2 = L10_1.LightCone
  L4_2 = L4_2[L5_2]
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._camera_panel
  L3_2 = L2_2
  L2_2 = L2_2.add_camera_state
  L4_2 = A0_2._cameras
  L5_2 = L10_1.SkillTree
  L4_2 = L4_2[L5_2]
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._camera_panel
  L3_2 = L2_2
  L2_2 = L2_2.add_camera_state
  L4_2 = A0_2._cameras
  L5_2 = L10_1.Detail
  L4_2 = L4_2[L5_2]
  L2_2(L3_2, L4_2)
end
L0_1._init_camera = L73_1
function L73_1(A0_2)
  local L1_2, L2_2, L3_2
  L2_2 = A0_2
  L1_2 = A0_2._is_use_4_3_config
  L1_2 = L1_2(L2_2)
  if not L1_2 then
    return
  end
  L1_2 = A0_2._cameras
  L2_2 = L10_1.OverAll
  L1_2 = L1_2[L2_2]
  L2_2 = L1_2
  L1_2 = L1_2.set_fov
  L3_2 = L57_1
  L1_2(L2_2, L3_2)
end
L0_1._init_fov = L73_1
function L73_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = A0_2._current_avatar
  if L2_2 == nil then
    L2_2 = nil
    return L2_2
  end
  L2_2 = L30_1
  if A1_2 == L2_2 then
    L2_2 = A0_2.eidolon_panel
    L3_2 = L2_2
    L2_2 = L2_2.get_camera_param
    L4_2 = false
    L5_2 = false
    return L2_2(L3_2, L4_2, L5_2)
  else
    L2_2 = L31_1
    if A1_2 == L2_2 then
      L2_2 = A0_2.eidolon_panel
      L3_2 = L2_2
      L2_2 = L2_2.get_camera_param
      L4_2 = false
      L5_2 = true
      return L2_2(L3_2, L4_2, L5_2)
    else
      L2_2 = L32_1
      if A1_2 == L2_2 then
        L2_2 = A0_2.eidolon_panel
        L3_2 = L2_2
        L2_2 = L2_2.get_camera_param
        L4_2 = true
        L5_2 = false
        return L2_2(L3_2, L4_2, L5_2)
      else
        L2_2 = L33_1
        if A1_2 == L2_2 then
          L2_2 = A0_2.eidolon_panel
          L3_2 = L2_2
          L2_2 = L2_2.get_camera_param
          L4_2 = true
          L5_2 = true
          return L2_2(L3_2, L4_2, L5_2)
        end
      end
    end
  end
  L3_2 = A0_2
  L2_2 = A0_2._get_avatar_camera_anchors
  L4_2 = A0_2._current_avatar
  L2_2 = L2_2(L3_2, L4_2)
  L3_2 = L2_2[A1_2]
  if not L3_2 then
    L4_2 = A0_2
    L3_2 = A0_2._get_default_anchor
    L5_2 = A1_2
    L3_2 = L3_2(L4_2, L5_2)
  end
  return L3_2
end
L0_1._get_curr_avatar_anchor = L73_1
function L73_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L2_2 = A0_2._default_position_anchor
  if L2_2 == nil then
    L2_2 = {}
    A0_2._default_position_anchor = L2_2
    L2_2 = pairs
    L3_2 = A0_2._character_body_size_json_config
    L3_2 = L3_2.Default
    L2_2, L3_2, L4_2 = L2_2(L3_2)
    for L5_2, L6_2 in L2_2, L3_2, L4_2 do
      L7_2 = A0_2._default_position_anchor
      L9_2 = A0_2
      L8_2 = A0_2._get_vector_from_MVector3
      L10_2 = L6_2
      L8_2 = L8_2(L9_2, L10_2)
      L7_2[L5_2] = L8_2
    end
  end
  L2_2 = A0_2._default_position_anchor
  L2_2 = L2_2[A1_2]
  return L2_2
end
L0_1._get_default_anchor = L73_1
function L73_1(A0_2, A1_2)
  local L2_2
  L2_2 = A0_2._avatar_to_anchors
  if L2_2 == nil then
    L2_2 = nil
    return L2_2
  end
  L2_2 = A0_2._avatar_to_anchors
  L2_2 = L2_2[A1_2]
  return L2_2
end
L0_1._get_avatar_camera_anchors = L73_1
function L73_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  A0_2._is_in_team_page = A1_2
  L2_2 = A0_2._root_animator
  L3_2 = L2_2
  L2_2 = L2_2.SetBool
  L4_2 = "IsTeamPanel"
  L5_2 = A1_2
  L2_2(L3_2, L4_2, L5_2)
  L2_2 = A0_2._node_ui_skybox
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = true
  L2_2(L3_2, L4_2)
  if A1_2 then
    L2_2 = A0_2._current_avatar
    if L2_2 ~= nil then
      L2_2 = A0_2._current_avatar
      L3_2 = L2_2
      L2_2 = L2_2.reset_animator_state
      L2_2(L3_2)
    end
    L3_2 = A0_2
    L2_2 = A0_2._enable_shadow
    L4_2 = true
    L2_2(L3_2, L4_2)
    L3_2 = A0_2
    L2_2 = A0_2._refresh_environment_profile
    L2_2(L3_2)
  end
end
L0_1._on_enter_team_page = L73_1
function L73_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2._shadow_cmd
  if L2_2 == nil then
    return
  end
  L2_2 = A0_2._shadow_cmd
  L3_2 = A0_2._is_in_team_page
  L3_2 = not L3_2
  L2_2.IsNeedThreeShadow = L3_2
  L2_2 = A0_2._is_in_team_page
  if L2_2 then
    L3_2 = A0_2
    L2_2 = A0_2._setup_team_shadow
    L4_2 = A1_2
    L2_2(L3_2, L4_2)
  else
    L3_2 = A0_2
    L2_2 = A0_2._setup_single_avatar_shadow
    L2_2(L3_2)
  end
end
L0_1._refresh_shadow = L73_1
function L73_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  if A1_2 == nil then
    return
  end
  L2_2 = 1
  L3_2 = 4
  L4_2 = 1
  for L5_2 = L2_2, L3_2, L4_2 do
    L7_2 = A0_2
    L6_2 = A0_2._get_avatar_by_idx
    L8_2 = L5_2
    L6_2 = L6_2(L7_2, L8_2)
    if L6_2 then
      L8_2 = L6_2
      L7_2 = L6_2.set_team_shadow
      L9_2 = L5_2
      L7_2(L8_2, L9_2)
      L7_2 = A0_2._shadow_cmd
      L7_2 = L7_2.TeamCharacterRenderers
      L8_2 = L5_2 - 1
      L10_2 = L6_2
      L9_2 = L6_2.get_all_renderers
      L9_2 = L9_2(L10_2)
      L7_2[L8_2] = L9_2
    else
      L7_2 = A0_2._shadow_cmd
      L7_2 = L7_2.TeamCharacterRenderers
      L8_2 = L5_2 - 1
      L7_2[L8_2] = nil
    end
  end
end
L0_1._setup_team_shadow = L73_1
function L73_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._current_avatar
  if L1_2 == nil then
    return
  end
  L1_2 = A0_2._current_avatar
  L2_2 = L1_2
  L1_2 = L1_2.set_single_shadow
  L1_2(L2_2)
  L1_2 = A0_2._shadow_cmd
  L2_2 = A0_2._current_avatar
  L3_2 = L2_2
  L2_2 = L2_2.get_all_renderers
  L2_2 = L2_2(L3_2)
  L1_2.SingleCharacterRenderers = L2_2
  L1_2 = A0_2._shadow_cmd
  L2_2 = A0_2._current_avatar
  L3_2 = L2_2
  L2_2 = L2_2.get_body_size
  L2_2 = L2_2(L3_2)
  L2_2 = #L2_2
  L1_2.CharacterBodySizeShadow = L2_2
end
L0_1._setup_single_avatar_shadow = L73_1
function L73_1(A0_2, A1_2)
  local L2_2
  L2_2 = A0_2._shadow_cmd
  if L2_2 == nil then
    return
  end
  L2_2 = A0_2._shadow_cmd
  L2_2.enabled = A1_2
end
L0_1._enable_shadow = L73_1
function L73_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = CS
  L1_2 = L1_2.UnityEngine
  L1_2 = L1_2.Screen
  L1_2 = L1_2.width
  L2_2 = CS
  L2_2 = L2_2.UnityEngine
  L2_2 = L2_2.Screen
  L2_2 = L2_2.height
  L3_2 = L1_2 / L2_2
  L4_2 = L3_2 < 1.6
  return L4_2
end
L0_1._is_use_4_3_config = L73_1
function L73_1(A0_2)
  local L1_2, L2_2, L3_2
  L2_2 = A0_2
  L1_2 = A0_2._memorize
  function L3_2(A0_3)
    local L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3
    if A0_3 == nil then
      L1_3 = nil
      return L1_3
    end
    L2_3 = A0_3
    L1_3 = A0_3.get_body_size
    L1_3 = L1_3(L2_3)
    if L1_3 == nil then
      return
    end
    L2_3 = #L1_3
    L3_3 = A0_2._body_type_position
    L3_3 = L3_3[L2_3]
    if L3_3 == nil then
      return
    end
    L4_3 = {}
    L5_3 = pairs
    L6_3 = L3_3
    L5_3, L6_3, L7_3 = L5_3(L6_3)
    for L8_3, L9_3 in L5_3, L6_3, L7_3 do
      L10_3 = A0_2
      L11_3 = L10_3
      L10_3 = L10_3._get_vector_from_MVector3
      L12_3 = L9_3
      L10_3 = L10_3(L11_3, L12_3)
      L4_3[L8_3] = L10_3
    end
    return L4_3
  end
  L1_2 = L1_2(L2_2, L3_2)
  A0_2._avatar_to_anchors = L1_2
end
L0_1._init_avatar_anchors = L73_1
function L73_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = setmetatable
  L3_2 = {}
  L4_2 = {}
  L4_2.__mode = "k"
  function L5_2(A0_3, A1_3)
    local L2_3, L3_3
    L2_3 = A1_2
    L3_3 = A1_3
    L2_3 = L2_3(L3_3)
    if L2_3 ~= nil then
      A0_3[A1_3] = L2_3
    end
    return L2_3
  end
  L4_2.__index = L5_2
  return L2_2(L3_2, L4_2)
end
L0_1._memorize = L73_1
return L0_1
