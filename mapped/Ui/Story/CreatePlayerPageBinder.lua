local L0_1, L1_1, L2_1
L0_1 = require
L1_1 = "Ui.Story.SelectGenderPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Story.SelectGenderPanelBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Story.CreateNickNamePanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Story.CreateNickNamePanelBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Story.GenderConfirmPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Story.GenderConfirmPanelBinder"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "CreatePlayerPageBinder"
L2_1 = G
L2_1 = L2_1.UIBinder
L0_1 = L0_1(L1_1, L2_1)
function L1_1()
  local L0_2, L1_2
  L0_2 = "UI/Story/GenderSelectionPageV3.prefab"
  return L0_2
end
L0_1.get_prefab_path = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = {}
  A0_2.btn_list = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "Content/GenderChooseButton"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.node_gender_choose_button = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.Animation
  L4_2 = "Content/GenderChooseButton"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.anim_gender_choose_button = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Button
  L4_2 = "Content/GenderChooseButton/Contents/Content/Female"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.btn_screen_female = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Button
  L4_2 = "Content/GenderChooseButton/Contents/Content/Male"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.btn_screen_male = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "Content/EditNamePanel"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.node_create_player = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Button
  L4_2 = "Content/EditNamePanel/CloseButton"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.btn_close = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "Content/EditNamePanel/CreatePlayerPanel2"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.node_create_player_male = L1_2
  L1_2 = A0_2.node_create_player_male
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = false
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.Animation
  L4_2 = "Content/EditNamePanel/CreatePlayerPanel2"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.anim_create_player_male = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._create_panel
  L3_2 = G
  L3_2 = L3_2.SelectGenderPanel
  L4_2 = G
  L4_2 = L4_2.SelectGenderPanelBinder
  L5_2 = "Content/EditNamePanel/CreatePlayerPanel2/Contents/ConfirmGenderPanel"
  L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2)
  A0_2.male_gender_confirm_panel = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._create_panel
  L3_2 = G
  L3_2 = L3_2.CreateNickNamePanel
  L4_2 = G
  L4_2 = L4_2.CreateNickNamePanelBinder
  L5_2 = "Content/EditNamePanel/CreatePlayerPanel2/Contents/EditNamePanel"
  L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2)
  A0_2.male_create_nickname_panel = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._create_panel
  L3_2 = G
  L3_2 = L3_2.GenderConfirmPanel
  L4_2 = G
  L4_2 = L4_2.GenderConfirmPanelBinder
  L5_2 = "Content/EditNamePanel/CreatePlayerPanel2/Contents/DefinePanel"
  L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2)
  A0_2.male_confirm_panel = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "Content/EditNamePanel/CreatePlayerPanel"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.node_create_player_female = L1_2
  L1_2 = A0_2.node_create_player_female
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = false
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.Animation
  L4_2 = "Content/EditNamePanel/CreatePlayerPanel"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.anim_create_player_female = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._create_panel
  L3_2 = G
  L3_2 = L3_2.SelectGenderPanel
  L4_2 = G
  L4_2 = L4_2.SelectGenderPanelBinder
  L5_2 = "Content/EditNamePanel/CreatePlayerPanel/Contents/ConfirmGenderPanel"
  L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2)
  A0_2.female_gender_confirm_panel = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._create_panel
  L3_2 = G
  L3_2 = L3_2.CreateNickNamePanel
  L4_2 = G
  L4_2 = L4_2.CreateNickNamePanelBinder
  L5_2 = "Content/EditNamePanel/CreatePlayerPanel/Contents/EditNamePanel"
  L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2)
  A0_2.female_create_nickname_panel = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._create_panel
  L3_2 = G
  L3_2 = L3_2.GenderConfirmPanel
  L4_2 = G
  L4_2 = L4_2.GenderConfirmPanelBinder
  L5_2 = "Content/EditNamePanel/CreatePlayerPanel/Contents/DefinePanel"
  L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2)
  A0_2.female_confirm_panel = L1_2
  L1_2 = table
  L1_2 = L1_2.insert
  L2_2 = A0_2.btn_list
  L3_2 = A0_2.btn_screen_female
  L1_2(L2_2, L3_2)
  L1_2 = table
  L1_2 = L1_2.insert
  L2_2 = A0_2.btn_list
  L3_2 = A0_2.btn_screen_male
  L1_2(L2_2, L3_2)
end
L0_1._on_bind = L1_1
return L0_1
