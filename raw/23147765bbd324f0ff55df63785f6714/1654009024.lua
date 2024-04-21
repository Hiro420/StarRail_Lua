local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1, L6_1, L7_1, L8_1, L9_1
L0_1 = require
L1_1 = "Ui.UI3DSystem.UI3DCameraPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.UI3DSystem.UI3DAvatarPanel"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "CreatePlayerUI3DPage"
L2_1 = G
L2_1 = L2_1.UI3DController
L0_1 = L0_1(L1_1, L2_1)
L1_1 = {}
L1_1.Overall = 1
L1_1.Male = 2
L1_1.Female = 3
L2_1 = 8001
L3_1 = 8002
L4_1 = "PlayerBoy_Cam"
L5_1 = "PlayerGirl_Cam"
L6_1 = "CreateBoy"
L7_1 = "CreateGirl"
L8_1 = "Config/CreatePlayerConfig.json"
function L9_1(A0_2)
  local L1_2
  L1_2 = A0_2.config
  L1_2.prefab_path = "ManikinArea/Manikin_Area_CreateCharacter.prefab"
  L1_2 = A0_2.config
  L1_2.is_async_load = false
  L1_2 = A0_2.config
  L1_2.use_screen_transfer = false
  L1_2 = {}
  A0_2._avatar_anchors = L1_2
end
L0_1.ctor = L9_1
function L9_1(A0_2)
  local L1_2, L2_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.GameCore
  L1_2 = L1_2.GameCoreConfigLoader
  L1_2 = L1_2.LoadCreatePlayerConfig
  L2_2 = L8_1
  L1_2 = L1_2(L2_2)
  A0_2._config = L1_2
  L1_2 = A0_2.config
  L2_2 = A0_2._config
  L2_2 = L2_2.EnviroProfile
  L1_2.environment_profile_path = L2_2
end
L0_1.init = L9_1
function L9_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2._mode
  L3_2 = L1_1.Male
  if L2_2 == L3_2 then
    L2_2 = L1_1.Female
    if A1_2 == L2_2 then
      L2_2 = A0_2._effect_controller
      L3_2 = L2_2
      L2_2 = L2_2.PlayEffect
      function L4_2()
        local L0_3, L1_3
        L0_3 = A0_2
        L1_3 = L0_3
        L0_3 = L0_3._on_exchange_to_female
        L0_3(L1_3)
      end
      L2_2(L3_2, L4_2)
  end
  else
    L2_2 = A0_2._mode
    L3_2 = L1_1.Female
    if L2_2 == L3_2 then
      L2_2 = L1_1.Male
      if A1_2 == L2_2 then
        L2_2 = A0_2._effect_controller
        L3_2 = L2_2
        L2_2 = L2_2.PlayEffect
        function L4_2()
          local L0_3, L1_3
          L0_3 = A0_2
          L1_3 = L0_3
          L0_3 = L0_3._on_exchange_to_male
          L0_3(L1_3)
        end
        L2_2(L3_2, L4_2)
    end
    else
      L3_2 = A0_2
      L2_2 = A0_2._set_avatar_visible
      L4_2 = A1_2
      L2_2(L3_2, L4_2)
      L3_2 = A0_2
      L2_2 = A0_2._play_camera_anim
      L4_2 = A1_2
      L2_2(L3_2, L4_2)
      L3_2 = A0_2
      L2_2 = A0_2._set_dof
      L4_2 = A1_2
      L2_2(L3_2, L4_2)
    end
  end
  A0_2._mode = A1_2
end
L0_1.active_camera = L9_1
function L9_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
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
  L1_2 = A0_2._init_node
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._init_camera
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._init_avatar
  L1_2(L2_2)
end
L0_1._on_load = L9_1
function L9_1(A0_2)
  local L1_2
end
L0_1._setup_view = L9_1
function L9_1(A0_2)
  local L1_2
  A0_2._avatar_anchors = nil
  A0_2._male_anim_state = nil
  A0_2._female_anim_state = nil
end
L0_1._on_dispose = L9_1
function L9_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2._init_avatar_anchors
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.Client
  L3_2 = L3_2.CreatePlayerEffectController
  L4_2 = ""
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2._effect_controller = L1_2
end
L0_1._init_node = L9_1
function L9_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = A0_2._avatar_anchors
  L2_2 = L1_1.Male
  L4_2 = A0_2
  L3_2 = A0_2._safe_find
  L5_2 = "Root/ModelPoint/Avatar_Male"
  L3_2 = L3_2(L4_2, L5_2)
  L1_2[L2_2] = L3_2
  L1_2 = A0_2._avatar_anchors
  L2_2 = L1_1.Female
  L4_2 = A0_2
  L3_2 = A0_2._safe_find
  L5_2 = "Root/ModelPoint/Avatar_Female"
  L3_2 = L3_2(L4_2, L5_2)
  L1_2[L2_2] = L3_2
end
L0_1._init_avatar_anchors = L9_1
function L9_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.Animation
  L4_2 = "Root/VirtualCamera/Camera"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2._anim_camera = L1_2
  L2_2 = A0_2
  L1_2 = A0_2.create_panel
  L3_2 = G
  L3_2 = L3_2.UI3DCamera
  L4_2 = "Root/VirtualCamera/Camera"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2._virtual_camera = L1_2
  L1_2 = A0_2._camera_panel
  L2_2 = L1_2
  L1_2 = L1_2.add_camera_state
  L3_2 = A0_2._virtual_camera
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._virtual_camera
  L2_2 = L1_2
  L1_2 = L1_2.active
  L1_2(L2_2)
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.UIAnimationUtils
  L1_2 = L1_2.GetAnimationState
  L2_2 = A0_2._anim_camera
  L3_2 = L4_1
  L1_2 = L1_2(L2_2, L3_2)
  A0_2._male_anim_state = L1_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.UIAnimationUtils
  L1_2 = L1_2.GetAnimationState
  L2_2 = A0_2._anim_camera
  L3_2 = L5_1
  L1_2 = L1_2(L2_2, L3_2)
  A0_2._female_anim_state = L1_2
  L1_2 = L1_1.Overall
  A0_2._mode = L1_2
end
L0_1._init_camera = L9_1
function L9_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2._mode
  L3_2 = L1_1.Overall
  if L2_2 == L3_2 then
    L2_2 = L1_1.Male
    if A1_2 == L2_2 then
      L2_2 = A0_2._male_anim_state
      L2_2.speed = 1
      L2_2 = A0_2._anim_camera
      L3_2 = L2_2
      L2_2 = L2_2.Play
      L4_2 = L4_1
      L2_2(L3_2, L4_2)
  end
  else
    L2_2 = A0_2._mode
    L3_2 = L1_1.Overall
    if L2_2 == L3_2 then
      L2_2 = L1_1.Female
      if A1_2 == L2_2 then
        L2_2 = A0_2._female_anim_state
        L2_2.speed = 1
        L2_2 = A0_2._anim_camera
        L3_2 = L2_2
        L2_2 = L2_2.Play
        L4_2 = L5_1
        L2_2(L3_2, L4_2)
    end
    else
      L2_2 = A0_2._mode
      L3_2 = L1_1.Male
      if L2_2 == L3_2 then
        L2_2 = L1_1.Overall
        if A1_2 == L2_2 then
          L2_2 = A0_2._male_anim_state
          L2_2.speed = -1
          L2_2 = A0_2._male_anim_state
          L2_2.normalizedTime = 1
          L2_2 = A0_2._anim_camera
          L3_2 = L2_2
          L2_2 = L2_2.Play
          L4_2 = L4_1
          L2_2(L3_2, L4_2)
      end
      else
        L2_2 = A0_2._mode
        L3_2 = L1_1.Female
        if L2_2 == L3_2 then
          L2_2 = L1_1.Overall
          if A1_2 == L2_2 then
            L2_2 = A0_2._female_anim_state
            L2_2.speed = -1
            L2_2 = A0_2._female_anim_state
            L2_2.normalizedTime = 1
            L2_2 = A0_2._anim_camera
            L3_2 = L2_2
            L2_2 = L2_2.Play
            L4_2 = L5_1
            L2_2(L3_2, L4_2)
          end
        end
      end
    end
  end
end
L0_1._play_camera_anim = L9_1
function L9_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2._male_avatar
  L3_2 = L2_2
  L2_2 = L2_2.set_visible
  L4_2 = true
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._female_avatar
  L3_2 = L2_2
  L2_2 = L2_2.set_visible
  L4_2 = true
  L2_2(L3_2, L4_2)
  L2_2 = L1_1.Female
  if A1_2 == L2_2 then
    L2_2 = A0_2._male_avatar
    L3_2 = L2_2
    L2_2 = L2_2.set_visible
    L4_2 = false
    L2_2(L3_2, L4_2)
  else
    L2_2 = L1_1.Male
    if A1_2 == L2_2 then
      L2_2 = A0_2._female_avatar
      L3_2 = L2_2
      L2_2 = L2_2.set_visible
      L4_2 = false
      L2_2(L3_2, L4_2)
    end
  end
end
L0_1._set_avatar_visible = L9_1
function L9_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = L1_1.Overall
  if A1_2 == L2_2 then
    L2_2 = A0_2._effect_controller
    L3_2 = L2_2
    L2_2 = L2_2.SetDOF
    L4_2 = A0_2._config
    L4_2 = L4_2.OverrallDOF
    L2_2(L3_2, L4_2)
  else
    L2_2 = A0_2._effect_controller
    L3_2 = L2_2
    L2_2 = L2_2.SetDOF
    L4_2 = A0_2._config
    L4_2 = L4_2.FeaturedDOF
    L2_2(L3_2, L4_2)
  end
end
L0_1._set_dof = L9_1
function L9_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._male_anim_state
  L1_2.speed = 1
  L1_2 = A0_2._male_anim_state
  L1_2.normalizedTime = 1
  L1_2 = A0_2._anim_camera
  L2_2 = L1_2
  L1_2 = L1_2.Play
  L3_2 = L4_1
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._male_avatar
  L2_2 = L1_2
  L1_2 = L1_2.set_visible
  L3_2 = true
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._female_avatar
  L2_2 = L1_2
  L1_2 = L1_2.set_visible
  L3_2 = false
  L1_2(L2_2, L3_2)
end
L0_1._on_exchange_to_male = L9_1
function L9_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._female_anim_state
  L1_2.speed = 1
  L1_2 = A0_2._female_anim_state
  L1_2.normalizedTime = 1
  L1_2 = A0_2._anim_camera
  L2_2 = L1_2
  L1_2 = L1_2.Play
  L3_2 = L5_1
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._male_avatar
  L2_2 = L1_2
  L1_2 = L1_2.set_visible
  L3_2 = false
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._female_avatar
  L2_2 = L1_2
  L1_2 = L1_2.set_visible
  L3_2 = true
  L1_2(L2_2, L3_2)
end
L0_1._on_exchange_to_female = L9_1
function L9_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L2_2 = A0_2
  L1_2 = A0_2.set_active
  L3_2 = true
  L1_2(L2_2, L3_2)
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.AvatarData
  L1_2 = L1_2.CreateByRealID
  L2_2 = L2_1
  L1_2 = L1_2(L2_2)
  L2_2 = A0_2._avatar_panel
  L3_2 = L2_2
  L2_2 = L2_2.create_ui3d_avatar
  L4_2 = L1_2
  L2_2 = L2_2(L3_2, L4_2)
  A0_2._male_avatar = L2_2
  L2_2 = A0_2._male_avatar
  L3_2 = L2_2
  L2_2 = L2_2.load_model
  L4_2 = false
  L2_2(L3_2, L4_2)
  L3_2 = A0_2
  L2_2 = A0_2._set_avatar
  L4_2 = L1_1.Male
  L2_2(L3_2, L4_2)
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.Client
  L2_2 = L2_2.AvatarData
  L2_2 = L2_2.CreateByRealID
  L3_2 = L3_1
  L2_2 = L2_2(L3_2)
  L3_2 = A0_2._avatar_panel
  L4_2 = L3_2
  L3_2 = L3_2.create_ui3d_avatar
  L5_2 = L2_2
  L3_2 = L3_2(L4_2, L5_2)
  A0_2._female_avatar = L3_2
  L3_2 = A0_2._female_avatar
  L4_2 = L3_2
  L3_2 = L3_2.load_model
  L5_2 = false
  L3_2(L4_2, L5_2)
  L4_2 = A0_2
  L3_2 = A0_2._set_avatar
  L5_2 = L1_1.Female
  L3_2(L4_2, L5_2)
  L3_2 = A0_2._male_avatar
  L4_2 = L3_2
  L3_2 = L3_2.enable_rotate
  L5_2 = false
  L3_2(L4_2, L5_2)
  L3_2 = A0_2._female_avatar
  L4_2 = L3_2
  L3_2 = L3_2.enable_rotate
  L5_2 = false
  L3_2(L4_2, L5_2)
  L3_2 = A0_2._female_avatar
  L4_2 = L3_2
  L3_2 = L3_2.get_transform
  L3_2 = L3_2(L4_2)
  L3_2 = L3_2.gameObject
  L3_2 = L3_2.activeInHierarchy
  if L3_2 then
    L3_2 = A0_2._female_avatar
    L4_2 = L3_2
    L3_2 = L3_2.get_animator
    L3_2 = L3_2(L4_2)
    L4_2 = CS
    L4_2 = L4_2.UnityEngine
    L4_2 = L4_2.AnimatorCullingMode
    L4_2 = L4_2.AlwaysAnimate
    L3_2.cullingMode = L4_2
    L3_2 = A0_2._female_avatar
    L4_2 = L3_2
    L3_2 = L3_2.get_animator
    L3_2 = L3_2(L4_2)
    L4_2 = L3_2
    L3_2 = L3_2.Play
    L5_2 = L7_1
    L6_2 = -1
    L7_2 = 1
    L3_2(L4_2, L5_2, L6_2, L7_2)
  end
  L3_2 = A0_2._male_avatar
  L4_2 = L3_2
  L3_2 = L3_2.get_transform
  L3_2 = L3_2(L4_2)
  L3_2 = L3_2.gameObject
  L3_2 = L3_2.activeInHierarchy
  if L3_2 then
    L3_2 = A0_2._male_avatar
    L4_2 = L3_2
    L3_2 = L3_2.get_animator
    L3_2 = L3_2(L4_2)
    L4_2 = CS
    L4_2 = L4_2.UnityEngine
    L4_2 = L4_2.AnimatorCullingMode
    L4_2 = L4_2.AlwaysAnimate
    L3_2.cullingMode = L4_2
    L3_2 = A0_2._male_avatar
    L4_2 = L3_2
    L3_2 = L3_2.get_animator
    L3_2 = L3_2(L4_2)
    L4_2 = L3_2
    L3_2 = L3_2.Play
    L5_2 = L6_1
    L6_2 = -1
    L7_2 = 1
    L3_2(L4_2, L5_2, L6_2, L7_2)
  end
  L3_2 = G
  L3_2 = L3_2.ComponentExtensions
  L3_2 = L3_2.SafeAddCmpt
  L4_2 = typeof
  L5_2 = CS
  L5_2 = L5_2.RPG
  L5_2 = L5_2.Client
  L5_2 = L5_2.ActiveDetection
  L4_2 = L4_2(L5_2)
  L5_2 = A0_2._female_avatar
  L6_2 = L5_2
  L5_2 = L5_2.get_transform
  L5_2 = L5_2(L6_2)
  L6_2 = ""
  L3_2 = L3_2(L4_2, L5_2, L6_2)
  L5_2 = L3_2
  L4_2 = L3_2.AddActiveListener
  function L6_2()
    local L0_3, L1_3, L2_3, L3_3, L4_3
    L0_3 = A0_2._female_avatar
    L1_3 = L0_3
    L0_3 = L0_3.get_animator
    L0_3 = L0_3(L1_3)
    L1_3 = L0_3
    L0_3 = L0_3.Play
    L2_3 = L7_1
    L3_3 = -1
    L4_3 = 1
    L0_3(L1_3, L2_3, L3_3, L4_3)
  end
  L4_2(L5_2, L6_2)
  L4_2 = G
  L4_2 = L4_2.ComponentExtensions
  L4_2 = L4_2.SafeAddCmpt
  L5_2 = typeof
  L6_2 = CS
  L6_2 = L6_2.RPG
  L6_2 = L6_2.Client
  L6_2 = L6_2.ActiveDetection
  L5_2 = L5_2(L6_2)
  L6_2 = A0_2._male_avatar
  L7_2 = L6_2
  L6_2 = L6_2.get_transform
  L6_2 = L6_2(L7_2)
  L7_2 = ""
  L4_2 = L4_2(L5_2, L6_2, L7_2)
  L3_2 = L4_2
  L5_2 = L3_2
  L4_2 = L3_2.AddActiveListener
  function L6_2()
    local L0_3, L1_3, L2_3, L3_3, L4_3
    L0_3 = A0_2._male_avatar
    L1_3 = L0_3
    L0_3 = L0_3.get_animator
    L0_3 = L0_3(L1_3)
    L1_3 = L0_3
    L0_3 = L0_3.Play
    L2_3 = L6_1
    L3_3 = -1
    L4_3 = 1
    L0_3(L1_3, L2_3, L3_3, L4_3)
  end
  L4_2(L5_2, L6_2)
end
L0_1._init_avatar = L9_1
function L9_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2
  L2_2 = A0_2._avatar_anchors
  L2_2 = L2_2[A1_2]
  L3_2 = L1_1.Male
  if A1_2 == L3_2 then
    L3_2 = A0_2._male_avatar
    L4_2 = L3_2
    L3_2 = L3_2.get_transform
    L3_2 = L3_2(L4_2)
    L4_2 = L3_2
    L3_2 = L3_2.SetPositionAndRotation
    L5_2 = L2_2.position
    L6_2 = L2_2.rotation
    L3_2(L4_2, L5_2, L6_2)
  else
    L3_2 = L1_1.Female
    if A1_2 == L3_2 then
      L3_2 = A0_2._female_avatar
      L4_2 = L3_2
      L3_2 = L3_2.get_transform
      L3_2 = L3_2(L4_2)
      L4_2 = L3_2
      L3_2 = L3_2.SetPositionAndRotation
      L5_2 = L2_2.position
      L6_2 = L2_2.rotation
      L3_2(L4_2, L5_2, L6_2)
    end
  end
end
L0_1._set_avatar = L9_1
return L0_1
