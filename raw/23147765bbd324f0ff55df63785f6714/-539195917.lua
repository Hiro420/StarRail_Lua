local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1, L6_1, L7_1
L0_1 = require
L1_1 = "Ui.GameStartup.GameStartupSplashPageBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.GameStartup.GameStartupUI3DPage"
L0_1(L1_1)
L0_1 = require
L1_1 = "Utilities.ComplianceUtils"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "GameStartupSplashPage"
L2_1 = G
L2_1 = L2_1.UIController
L0_1 = L0_1(L1_1, L2_1)
L1_1 = "SplashDialogCopyRightFadein"
L2_1 = "SplashDialogGameLogoFadein"
L3_1 = "SplashDialogHealthInfoFadein"
L4_1 = "SplashDialogKRAgeHintFadein"
L5_1 = "SplashDialogVILogoHintFadein"
L6_1 = {}
L6_1.CopyRight = 1
L6_1.GameLogo = 2
L6_1.HealthInfo = 3
L6_1.KrAgeHint = 4
L6_1.VnAgency = 5
function L7_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = G
  L1_2 = L1_2.ImportCsToLua
  L1_2 = L1_2.CS_RPG_Client_UILayer_Page
  A0_2._ui_layer = L1_2
  A0_2._is_resp_esc = false
  A0_2.is_resolved = false
  L2_2 = A0_2
  L1_2 = A0_2.fetch_ui3d
  L3_2 = G
  L3_2 = L3_2.GameStartupUI3DPage
  L1_2 = L1_2(L2_2, L3_2)
  A0_2._login_ui3d = L1_2
  L1_2 = G
  L1_2 = L1_2.ImportCsToLua
  L1_2 = L1_2.TransitionStyle_ExitWithCut
  A0_2._transition_style = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._create_binder
  L3_2 = G
  L3_2 = L3_2.GameStartupSplashPageBinder
  L1_2 = L1_2(L2_2, L3_2)
  A0_2._binder = L1_2
end
L0_1.ctor = L7_1
function L7_1(A0_2, A1_2)
  A0_2._promise = A1_2
end
L0_1.init = L7_1
function L7_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.copyright_text
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetTextID
  L4_2 = "UIText_Splash_VisionNum_Hint"
  L2_2(L3_2, L4_2)
  L2_2 = OVERSEA_BUILD
  if L2_2 then
    L2_2 = A0_2._binder
    L2_2 = L2_2.mainland_panel
    L3_2 = L2_2
    L2_2 = L2_2.SafeSetActive
    L4_2 = false
    L2_2(L3_2, L4_2)
    L2_2 = A0_2._binder
    L2_2 = L2_2.oversea_panel
    L3_2 = L2_2
    L2_2 = L2_2.SafeSetActive
    L4_2 = L6_1.CopyRight
    L4_2 = A1_2 == L4_2
    L2_2(L3_2, L4_2)
  else
    L2_2 = A0_2._binder
    L2_2 = L2_2.mainland_panel
    L3_2 = L2_2
    L2_2 = L2_2.SafeSetActive
    L4_2 = L6_1.CopyRight
    L4_2 = A1_2 == L4_2
    L2_2(L3_2, L4_2)
    L2_2 = A0_2._binder
    L2_2 = L2_2.oversea_panel
    L3_2 = L2_2
    L2_2 = L2_2.SafeSetActive
    L4_2 = false
    L2_2(L3_2, L4_2)
  end
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_game_logo
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = L6_1.GameLogo
  L4_2 = A1_2 == L4_2
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_pc_health
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = L6_1.HealthInfo
  L4_2 = A1_2 == L4_2
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_kr_age_hint_panel
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = L6_1.KrAgeHint
  L4_2 = A1_2 == L4_2
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_vn_agency_panel
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = L6_1.VnAgency
  L4_2 = A1_2 == L4_2
  L2_2(L3_2, L4_2)
end
L0_1._setup_show_mode = L7_1
function L7_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = OVERSEA_BUILD
  if L1_2 then
    L1_2 = A0_2._binder
    L1_2 = L1_2.node_health_notice
    L2_2 = L1_2
    L1_2 = L1_2.SafeSetActive
    L3_2 = false
    L1_2(L2_2, L3_2)
    L1_2 = A0_2._binder
    L1_2 = L1_2.node_copy_right_notice
    L2_2 = L1_2
    L1_2 = L1_2.SafeSetActive
    L3_2 = false
    L1_2(L2_2, L3_2)
    L1_2 = A0_2._binder
    L1_2 = L1_2.anti_node
    L2_2 = L1_2
    L1_2 = L1_2.SafeSetActive
    L3_2 = false
    L1_2(L2_2, L3_2)
    L1_2 = A0_2._binder
    L1_2 = L1_2.img_copy_right_os
    L2_2 = CS
    L2_2 = L2_2.RPG
    L2_2 = L2_2.Client
    L2_2 = L2_2.LuaToCs
    L2_2 = L2_2.Load
    L3_2 = "Splash/LogoMiHoYoGames"
    L4_2 = G
    L4_2 = L4_2.ImportCsToLua
    L4_2 = L4_2.SpriteType
    L2_2 = L2_2(L3_2, L4_2)
    L1_2.sprite = L2_2
  else
    L1_2 = A0_2._binder
    L1_2 = L1_2.anti_node
    L2_2 = L1_2
    L1_2 = L1_2.SafeSetActive
    L3_2 = true
    L1_2(L2_2, L3_2)
    L1_2 = A0_2._binder
    L1_2 = L1_2.img_copy_right
    L2_2 = CS
    L2_2 = L2_2.RPG
    L2_2 = L2_2.Client
    L2_2 = L2_2.LuaToCs
    L2_2 = L2_2.Load
    L3_2 = "Splash/LogoMiHoYoGames"
    L4_2 = G
    L4_2 = L4_2.ImportCsToLua
    L4_2 = L4_2.SpriteType
    L2_2 = L2_2(L3_2, L4_2)
    L1_2.sprite = L2_2
  end
  L1_2 = A0_2._binder
  L1_2 = L1_2.mainland_panel
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = false
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.oversea_panel
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = false
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2._try_setup_cloud_mode
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2.async_load_sprite_to
  L3_2 = A0_2._binder
  L3_2 = L3_2.img_game_logo
  L4_2 = CS
  L4_2 = L4_2.RPG
  L4_2 = L4_2.Client
  L4_2 = L4_2.GlobalVars
  L4_2 = L4_2.s_LocalizationManager
  L4_2 = L4_2.CurrentLogoImgPath
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.AppUtils
  L1_2 = L1_2.IsEditor
  if not L1_2 then
    L1_2 = CS
    L1_2 = L1_2.RPG
    L1_2 = L1_2.Client
    L1_2 = L1_2.AppUtils
    L1_2 = L1_2.IsWindowsPlatform
    if not L1_2 then
      goto lbl_110
    end
  end
  L1_2 = 0.75
  L2_2 = A0_2._binder
  L2_2 = L2_2.img_game_logo_bg
  L2_2 = L2_2.transform
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.Vector3
  L4_2 = L1_2
  L5_2 = L1_2
  L6_2 = 1
  L3_2 = L3_2(L4_2, L5_2, L6_2)
  L2_2.localScale = L3_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.img_game_logo
  L2_2 = L2_2.transform
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.Vector3
  L4_2 = L1_2
  L5_2 = L1_2
  L6_2 = 1
  L3_2 = L3_2(L4_2, L5_2, L6_2)
  L2_2.localScale = L3_2
  ::lbl_110::
  L2_2 = A0_2
  L1_2 = A0_2._play_splash_animation
  L1_2(L2_2)
end
L0_1._on_load = L7_1
function L7_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.AppUtils
  L1_2 = L1_2.IsCloudPlatform
  if L1_2 then
    L1_2 = A0_2._binder
    L1_2 = L1_2.node_health_notice
    L2_2 = L1_2
    L1_2 = L1_2.SafeSetActive
    L3_2 = false
    L1_2(L2_2, L3_2)
    L1_2 = A0_2._binder
    L1_2 = L1_2.node_copy_right_notice
    L2_2 = L1_2
    L1_2 = L1_2.SafeSetActive
    L3_2 = false
    L1_2(L2_2, L3_2)
    L1_2 = A0_2._binder
    L1_2 = L1_2.anti_node
    L2_2 = L1_2
    L1_2 = L1_2.SafeSetActive
    L3_2 = false
    L1_2(L2_2, L3_2)
    L1_2 = CS
    L1_2 = L1_2.RPG
    L1_2 = L1_2.Client
    L1_2 = L1_2.AppUtils
    L1_2 = L1_2.IsCloudAndroidPlatform
    if not L1_2 then
      L1_2 = CS
      L1_2 = L1_2.RPG
      L1_2 = L1_2.Client
      L1_2 = L1_2.AppUtils
      L1_2 = L1_2.IsCloudIOSPlatform
      if not L1_2 then
        goto lbl_42
      end
    end
    L1_2 = A0_2._binder
    L1_2 = L1_2.publication_number
    L2_2 = L1_2
    L1_2 = L1_2.SafeSetActive
    L3_2 = false
    L1_2(L2_2, L3_2)
  end
  ::lbl_42::
end
L0_1._try_setup_cloud_mode = L7_1
function L7_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = G
  L1_2 = L1_2.ComplianceUtils
  L1_2 = L1_2.check_is_vietnam_compliance
  L1_2 = L1_2()
  if not L1_2 then
    L2_2 = A0_2
    L1_2 = A0_2._play_common_splash_animation
    L1_2(L2_2)
  else
    L1_2 = CS
    L1_2 = L1_2.RPG
    L1_2 = L1_2.Client
    L1_2 = L1_2.CoroutineUtils
    L1_2 = L1_2.InvokeAfterFrames
    L2_2 = 1
    function L3_2()
      local L0_3, L1_3, L2_3, L3_3, L4_3
      L0_3 = A0_2
      L1_3 = L0_3
      L0_3 = L0_3._setup_show_mode
      L2_3 = L6_1.VnAgency
      L0_3(L1_3, L2_3)
      L0_3 = A0_2._binder
      L0_3 = L0_3.animation_event
      L1_3 = L0_3
      L0_3 = L0_3.AddAnimationEvent
      L2_3 = L5_1
      function L3_3()
        local L0_4, L1_4
        L0_4 = A0_2
        L1_4 = L0_4
        L0_4 = L0_4._play_common_splash_animation
        L0_4(L1_4)
      end
      L0_3(L1_3, L2_3, L3_3)
      L0_3 = A0_2._binder
      L0_3 = L0_3.animator
      L1_3 = L0_3
      L0_3 = L0_3.Play
      L2_3 = L5_1
      L3_3 = -1
      L4_3 = 0
      L0_3(L1_3, L2_3, L3_3, L4_3)
    end
    L1_2(L2_2, L3_2)
  end
end
L0_1._play_splash_animation = L7_1
function L7_1(A0_2)
  local L1_2, L2_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.AppUtils
  L1_2 = L1_2.IsEditor
  if not L1_2 then
    L1_2 = CS
    L1_2 = L1_2.RPG
    L1_2 = L1_2.Client
    L1_2 = L1_2.AppUtils
    L1_2 = L1_2.IsWindowsPlatform
    if not L1_2 then
      goto lbl_18
    end
  end
  L2_2 = A0_2
  L1_2 = A0_2._play_pc_splash_animation
  L1_2(L2_2)
  goto lbl_30
  ::lbl_18::
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.AppUtils
  L1_2 = L1_2.IsMobilePlatform
  if L1_2 then
    L2_2 = A0_2
    L1_2 = A0_2._play_mobile_splash_animation
    L1_2(L2_2)
  else
    L2_2 = A0_2
    L1_2 = A0_2._play_mobile_splash_animation
    L1_2(L2_2)
  end
  ::lbl_30::
end
L0_1._play_common_splash_animation = L7_1
function L7_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L2_2 = A0_2
  L1_2 = A0_2._setup_show_mode
  L3_2 = L6_1.CopyRight
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.animation_event
  L2_2 = L1_2
  L1_2 = L1_2.AddAnimationEvent
  L3_2 = L1_1
  function L4_2()
    local L0_3, L1_3, L2_3, L3_3, L4_3
    L0_3 = A0_2
    L1_3 = L0_3
    L0_3 = L0_3._setup_show_mode
    L2_3 = L6_1.HealthInfo
    L0_3(L1_3, L2_3)
    L0_3 = A0_2._binder
    L0_3 = L0_3.animation_event
    L1_3 = L0_3
    L0_3 = L0_3.AddAnimationEvent
    L2_3 = L3_1
    function L3_3()
      local L0_4, L1_4
      L0_4 = A0_2
      L1_4 = L0_4
      L0_4 = L0_4._pre_play_game_logo
      L0_4(L1_4)
    end
    L0_3(L1_3, L2_3, L3_3)
    L0_3 = A0_2._binder
    L0_3 = L0_3.animator
    L1_3 = L0_3
    L0_3 = L0_3.Play
    L2_3 = L3_1
    L3_3 = -1
    L4_3 = 0
    L0_3(L1_3, L2_3, L3_3, L4_3)
  end
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.animator
  L2_2 = L1_2
  L1_2 = L1_2.Play
  L3_2 = L1_1
  L4_2 = -1
  L5_2 = 0
  L1_2(L2_2, L3_2, L4_2, L5_2)
end
L0_1._play_pc_splash_animation = L7_1
function L7_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L2_2 = A0_2
  L1_2 = A0_2._setup_show_mode
  L3_2 = L6_1.CopyRight
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.animation_event
  L2_2 = L1_2
  L1_2 = L1_2.AddAnimationEvent
  L3_2 = L1_1
  function L4_2()
    local L0_3, L1_3, L2_3, L3_3, L4_3
    L0_3 = A0_2
    L1_3 = L0_3
    L0_3 = L0_3._setup_show_mode
    L2_3 = L6_1.HealthInfo
    L0_3(L1_3, L2_3)
    L0_3 = A0_2._binder
    L0_3 = L0_3.animation_event
    L1_3 = L0_3
    L0_3 = L0_3.AddAnimationEvent
    L2_3 = L3_1
    function L3_3()
      local L0_4, L1_4
      L0_4 = A0_2
      L1_4 = L0_4
      L0_4 = L0_4._pre_play_game_logo
      L0_4(L1_4)
    end
    L0_3(L1_3, L2_3, L3_3)
    L0_3 = A0_2._binder
    L0_3 = L0_3.animator
    L1_3 = L0_3
    L0_3 = L0_3.Play
    L2_3 = L3_1
    L3_3 = -1
    L4_3 = 0
    L0_3(L1_3, L2_3, L3_3, L4_3)
  end
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.animator
  L2_2 = L1_2
  L1_2 = L1_2.Play
  L3_2 = L1_1
  L4_2 = -1
  L5_2 = 0
  L1_2(L2_2, L3_2, L4_2, L5_2)
end
L0_1._play_mobile_splash_animation = L7_1
function L7_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L2_2 = A0_2
  L1_2 = A0_2._is_show_kr_age_hint
  L1_2 = L1_2(L2_2)
  if not L1_2 then
    L2_2 = A0_2
    L1_2 = A0_2._play_game_logo_animation
    L1_2(L2_2)
  else
    L2_2 = A0_2
    L1_2 = A0_2._setup_show_mode
    L3_2 = L6_1.KrAgeHint
    L1_2(L2_2, L3_2)
    L1_2 = A0_2._binder
    L1_2 = L1_2.animation_event
    L2_2 = L1_2
    L1_2 = L1_2.AddAnimationEvent
    L3_2 = L4_1
    function L4_2()
      local L0_3, L1_3
      L0_3 = A0_2
      L1_3 = L0_3
      L0_3 = L0_3._play_game_logo_animation
      L0_3(L1_3)
    end
    L1_2(L2_2, L3_2, L4_2)
    L1_2 = A0_2._binder
    L1_2 = L1_2.animator
    L2_2 = L1_2
    L1_2 = L1_2.Play
    L3_2 = L4_1
    L4_2 = -1
    L5_2 = 0
    L1_2(L2_2, L3_2, L4_2, L5_2)
  end
end
L0_1._pre_play_game_logo = L7_1
function L7_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._login_ui3d
  L2_2 = L1_2
  L1_2 = L1_2.set_loaded_callback
  function L3_2()
    local L0_3, L1_3, L2_3, L3_3, L4_3
    L0_3 = A0_2
    L1_3 = L0_3
    L0_3 = L0_3._setup_show_mode
    L2_3 = L6_1.GameLogo
    L0_3(L1_3, L2_3)
    L0_3 = G
    L0_3 = L0_3.NotifyManager
    L0_3 = L0_3.notify
    L1_3 = G
    L1_3 = L1_3.CS
    L1_3 = L1_3.NotifyType
    L1_3 = L1_3.UIOnGameLogoShow
    L0_3(L1_3)
    L0_3 = A0_2._login_ui3d
    L1_3 = L0_3
    L0_3 = L0_3.on_game_logo_show
    L0_3(L1_3)
    L0_3 = A0_2._binder
    L0_3 = L0_3.animation_event
    L1_3 = L0_3
    L0_3 = L0_3.AddAnimationEvent
    L2_3 = L2_1
    function L3_3()
      local L0_4, L1_4, L2_4
      L0_4 = A0_2.is_resolved
      if L0_4 then
        return
      end
      A0_2.is_resolved = true
      L0_4 = A0_2._binder
      L0_4 = L0_4.animator
      L1_4 = L0_4
      L0_4 = L0_4.SafeSetActive
      L2_4 = false
      L0_4(L1_4, L2_4)
      L0_4 = CS
      L0_4 = L0_4.RPG
      L0_4 = L0_4.Client
      L0_4 = L0_4.AppUtils
      L0_4 = L0_4.IsPS5Platform
      if L0_4 then
        L0_4 = CS
        L0_4 = L0_4.UnityEngine
        L0_4 = L0_4.HDROutputSettings
        L0_4 = L0_4.available
        if L0_4 then
          L0_4 = A0_2
          L1_4 = L0_4
          L0_4 = L0_4._try_setting_hdr
          L0_4(L1_4)
      end
      else
        L0_4 = A0_2._promise
        L1_4 = L0_4
        L0_4 = L0_4.Resolve
        L0_4(L1_4)
      end
    end
    L0_3(L1_3, L2_3, L3_3)
    L0_3 = A0_2._binder
    L0_3 = L0_3.animator
    L1_3 = L0_3
    L0_3 = L0_3.Play
    L2_3 = L2_1
    L3_3 = -1
    L4_3 = 0
    L0_3(L1_3, L2_3, L3_3, L4_3)
  end
  L1_2(L2_2, L3_2)
end
L0_1._play_game_logo_animation = L7_1
function L7_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.GlobalVars
  L1_2 = L1_2.s_SettingManager
  L2_2 = L1_2
  L1_2 = L1_2.CheckIsNeedSettingHDR
  L1_2 = L1_2(L2_2)
  if L1_2 then
    L1_2 = G
    L1_2 = L1_2.UIManager
    L1_2 = L1_2.load_and_show
    L2_2 = "Ui.Settings.HDRSettingsPage"
    L3_2 = true
    L4_2 = A0_2._setting_hdr_exit_call_back
    L5_2 = A0_2
    L1_2(L2_2, L3_2, L4_2, L5_2)
  else
    L1_2 = CS
    L1_2 = L1_2.UnityEngine
    L1_2 = L1_2.HDROutputSettings
    L2_2 = CS
    L2_2 = L2_2.RPG
    L2_2 = L2_2.Client
    L2_2 = L2_2.Prefs
    L2_2 = L2_2.Settings
    L2_2 = L2_2.Graphics
    L2_2 = L2_2.MaxLuminance
    L1_2.maxLuminance = L2_2
    L1_2 = CS
    L1_2 = L1_2.UnityEngine
    L1_2 = L1_2.HDROutputSettings
    L2_2 = CS
    L2_2 = L2_2.RPG
    L2_2 = L2_2.Client
    L2_2 = L2_2.Prefs
    L2_2 = L2_2.Settings
    L2_2 = L2_2.Graphics
    L2_2 = L2_2.PaperWhite
    L1_2.paperWhite = L2_2
    L1_2 = A0_2._promise
    L2_2 = L1_2
    L1_2 = L1_2.Resolve
    L1_2(L2_2)
  end
end
L0_1._try_setting_hdr = L7_1
function L7_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._promise
  L2_2 = L1_2
  L1_2 = L1_2.Resolve
  L1_2(L2_2)
end
L0_1._setting_hdr_exit_call_back = L7_1
function L7_1(A0_2)
  local L1_2
  L1_2 = OVERSEA_BUILD
  if L1_2 then
    L1_2 = CS
    L1_2 = L1_2.RPG
    L1_2 = L1_2.Client
    L1_2 = L1_2.GlobalVars
    L1_2 = L1_2.s_LocalizationManager
    L1_2 = L1_2.CurrentTextLanguage
    L1_2 = L1_2 == "kr"
  end
  return L1_2
end
L0_1._is_show_kr_age_hint = L7_1
return L0_1
