local L0_1, L1_1, L2_1
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "AvatarSelectIconPanelBinder"
L2_1 = G
L2_1 = L2_1.UIBinder
L0_1 = L0_1(L1_1, L2_1)
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.Client
  L3_2 = L3_2.AnimatorButton
  L4_2 = ""
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.btn_root = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Image
  L4_2 = "Root/Icon/Img"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.img_icon = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.Client
  L3_2 = L3_2.MonoMaterialSwitch
  L4_2 = "Root/Icon/Img"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.mono_material = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "Root/LevelPanel"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.node_level_panel = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.Client
  L3_2 = L3_2.LocalizedText
  L4_2 = "Root/LevelPanel/TotalNum"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.text_level = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Image
  L4_2 = "Root/DamagePlusType/DamageType"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.img_damage_type = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Image
  L4_2 = "Root/DamagePlusType/ProfessionalType"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.img_professional_type = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Image
  L4_2 = "Root/Bg/Normal"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.img_bg = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Image
  L4_2 = "Root/Bg/Normal"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.rarity_frame = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Image
  L4_2 = "Root/Bg/Line"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.rairty_line = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Image
  L4_2 = "Root/Bg/Normal/Chartlet/Img"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.rairty_bg = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.Transform
  L4_2 = "Root/StatusPanel/CheckFrame"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.node_check_frame = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.Transform
  L4_2 = "Root/StatusPanel/TeamMark"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.node_team_mark = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.Transform
  L4_2 = "Root/StatusPanel/TrialMark"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.node_trial_mark = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.Client
  L3_2 = L3_2.LocalizedText
  L4_2 = "Root/StatusPanel/TrialMark/Text"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.text_trial_mark = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "Root/StatusPanel/BlackMask"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.node_black_mask = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "Root/StatusPanel/SupportMark"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.node_assist_mark = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "Root/StatusPanel/SelectedNum"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.node_order = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.Client
  L3_2 = L3_2.LocalizedText
  L4_2 = "Root/StatusPanel/SelectedNum/BgCorner/Level"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.txt_order = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "Root/StatusPanel/TeamIndex"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.node_team_index = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Text
  L4_2 = "Root/StatusPanel/TeamIndex/Text"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.txt_team_index = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "Root/StatusPanel/TeamPanel"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.node_team_hint = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Text
  L4_2 = "Root/StatusPanel/TeamPanel/HintText/Text"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.txt_team_hint = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "Root/MinusBtn"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.node_minus = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Button
  L4_2 = "Root/MinusBtn"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.btn_minus = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "Root/FullPanel"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.satiety_panel = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "Root/FullPanel/Hungry"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.satiety_full_panel0 = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "Root/FullPanel/Full3"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.satiety_full_panel1 = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "Root/FullPanel/Full"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.satiety_full_panel2 = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "Root/FullPanel/Full2"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.satiety_full_panel3 = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Image
  L4_2 = "Root/FullPanel/Hungry/Round"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.satiety_full_image0 = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Image
  L4_2 = "Root/FullPanel/Full3/Round"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.satiety_full_image1 = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Image
  L4_2 = "Root/FullPanel/Full/Round"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.satiety_full_image2 = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Image
  L4_2 = "Root/FullPanel/Full2/Round"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.satiety_full_image3 = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "Root/StatusPanel/HintPanel"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.mask_hint_panel = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.Client
  L3_2 = L3_2.LocalizedText
  L4_2 = "Root/StatusPanel/HintPanel/HintText/Text"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.text_mask_hint = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "Root/StatusPanel/HintPanel/HintText"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.node_mask_hint = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "Root/HPInfo"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.node_hp = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "Root/HPInfo/RedFill"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.node_danger_hp = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "Root/HPInfo/Fill"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.node_normal_hp = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "Root/HPInfo/Plus"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.node_hp_plus = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Slider
  L4_2 = "Root/HPInfo/Fill"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.smooth_mask_progress = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Slider
  L4_2 = "Root/HPInfo/RedFill"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.hp_empty_image = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Slider
  L4_2 = "Root/HPInfo/Plus"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.hp_plus_image = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Image
  L4_2 = "Root/HPInfo/Fill/FillValue"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.img_blood_up = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Image
  L4_2 = "Root/HPInfo/Plus/FillValue"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.img_blood_under = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.Animation
  L4_2 = "Root/HPInfo/Plus"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.ani_blood_under = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Image
  L4_2 = "Root/HPInfo/Plus/FillValue/FillValue_Add"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.hp_enhance = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.Animation
  L4_2 = "Root/EffPanel"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.ani_panel = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.Animator
  L4_2 = ""
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.head_anim = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "Root/RedDot"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.go_reddot = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "Root/NamePanel"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.node_name_panel = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "Root/StatusPanel/BlackMask"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.node_lock = L1_2
end
L0_1._on_bind = L1_1
return L0_1
