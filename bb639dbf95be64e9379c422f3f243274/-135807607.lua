local L0_1, L1_1, L2_1
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "MazeDevEntranceDialogBinder"
L2_1 = G
L2_1 = L2_1.UIBinder
L0_1 = L0_1(L1_1, L2_1)
function L1_1()
  local L0_2, L1_2
  L0_2 = "UI/Dev/MazeSelectDialog.prefab"
  return L0_2
end
L0_1.get_prefab_path = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = {}
  A0_2.navigation_list = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Button
  L4_2 = "BtnBegin"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.btn_begin = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Button
  L4_2 = "BtnBack"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.btn_back = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.InputField
  L4_2 = "PlaneInput/InputField"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.input_plane_filter = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Dropdown
  L4_2 = "SelectMazeType/LevelDropDown"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.dropdown_plane_type_filter = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Dropdown
  L4_2 = "SelectWorldID/LevelDropDown"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.dropdown_world_id_filter = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Toggle
  L4_2 = "SelectTestMaze"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.toggle_plane_show_test = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Button
  L4_2 = "BtnResetFilter"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.btn_reset_filter = L1_2
  L1_2 = table
  L1_2 = L1_2.insert
  L2_2 = A0_2.navigation_list
  L3_2 = A0_2.dropdown_plane_type_filter
  L1_2(L2_2, L3_2)
  L1_2 = table
  L1_2 = L1_2.insert
  L2_2 = A0_2.navigation_list
  L3_2 = A0_2.dropdown_world_id_filter
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Dropdown
  L4_2 = "GenderSelection/GenderDropDown"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.drop_down_gender = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Dropdown
  L4_2 = "LevelSelection/LevelDropDown"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.drop_down_plane = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Dropdown
  L4_2 = "FloorSelection/LevelDropDown"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.drop_down_floor = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Dropdown
  L4_2 = "DimensionSelection/LevelDropDown"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.drop_down_dimension = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Dropdown
  L4_2 = "StoryInput/TypeDropDown"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.drop_down_story_type = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.InputField
  L4_2 = "StoryInput/InputField"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.input_story = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Text
  L4_2 = "StoryInput/LimitText"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.input_story_gender_info = L1_2
  L1_2 = table
  L1_2 = L1_2.insert
  L2_2 = A0_2.navigation_list
  L3_2 = A0_2.drop_down_plane
  L1_2(L2_2, L3_2)
  L1_2 = table
  L1_2 = L1_2.insert
  L2_2 = A0_2.navigation_list
  L3_2 = A0_2.drop_down_floor
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.InputField
  L4_2 = "Player1Filter/InputField"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.input_team_member_filter1 = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.InputField
  L4_2 = "Player2Filter/InputField"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.input_team_member_filter2 = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.InputField
  L4_2 = "Player3Filter/InputField"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.input_team_member_filter3 = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.InputField
  L4_2 = "Player4Filter/InputField"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.input_team_member_filter4 = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Dropdown
  L4_2 = "Player1Selection/LevelDropDown"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.drop_down_team_member1 = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Dropdown
  L4_2 = "Player2Selection/LevelDropDown"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.drop_down_team_member2 = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Dropdown
  L4_2 = "Player3Selection/LevelDropDown"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.drop_down_team_member3 = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Dropdown
  L4_2 = "Player4Selection/LevelDropDown"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.drop_down_team_member4 = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Toggle
  L4_2 = "ToggleStreaming"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.toggle_streaming = L1_2
  L1_2 = table
  L1_2 = L1_2.insert
  L2_2 = A0_2.navigation_list
  L3_2 = A0_2.drop_down_team_member1
  L1_2(L2_2, L3_2)
  L1_2 = table
  L1_2 = L1_2.insert
  L2_2 = A0_2.navigation_list
  L3_2 = A0_2.drop_down_team_member2
  L1_2(L2_2, L3_2)
  L1_2 = table
  L1_2 = L1_2.insert
  L2_2 = A0_2.navigation_list
  L3_2 = A0_2.drop_down_team_member3
  L1_2(L2_2, L3_2)
  L1_2 = table
  L1_2 = L1_2.insert
  L2_2 = A0_2.navigation_list
  L3_2 = A0_2.drop_down_team_member4
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.InputField
  L4_2 = "Player1SkillTree/InputField"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.input_avatar_skilltree1 = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.InputField
  L4_2 = "Player2SkillTree/InputField"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.input_avatar_skilltree2 = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.InputField
  L4_2 = "Player3SkillTree/InputField"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.input_avatar_skilltree3 = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.InputField
  L4_2 = "Player4SkillTree/InputField"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.input_avatar_skilltree4 = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.InputField
  L4_2 = "Player1Level/InputField"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.input_avatar_level1 = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.InputField
  L4_2 = "Player2Level/InputField"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.input_avatar_level2 = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.InputField
  L4_2 = "Player3Level/InputField"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.input_avatar_level3 = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.InputField
  L4_2 = "Player4Level/InputField"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.input_avatar_level4 = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Dropdown
  L4_2 = "LineupPreset/LevelDropDown"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.drop_down_preset = L1_2
end
L0_1._on_bind = L1_1
return L0_1
