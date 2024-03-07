local L0_1, L1_1, L2_1
L0_1 = require
L1_1 = "Ui.Avatar.TrialAvatarDialogBinder"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "TrialAvatarDialog"
L2_1 = G
L2_1 = L2_1.UIController
L0_1 = L0_1(L1_1, L2_1)
L1_1 = "CommonDialogBig_FadeIn"
function L2_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = G
  L1_2 = L1_2.ImportCsToLua
  L1_2 = L1_2.CS_RPG_Client_UILayer_Dialog
  A0_2._ui_layer = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._create_binder
  L3_2 = G
  L3_2 = L3_2.TrialAvatarDialogBinder
  L1_2 = L1_2(L2_2, L3_2)
  A0_2._binder = L1_2
  A0_2._pause_game = true
end
L0_1.ctor = L2_1
function L2_1(A0_2, A1_2)
  A0_2._trial_avatar_id = A1_2
end
L0_1.init = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_bg_close
  L4_2 = A0_2._on_exit
  L1_2(L2_2, L3_2, L4_2)
end
L0_1._on_load = L2_1
function L2_1(A0_2)
  local L1_2
  L1_2 = false
  return L1_2
end
L0_1.enable_async_instantiate = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.GlobalVars
  L1_2 = L1_2.s_ModuleManager
  L1_2 = L1_2.AvatarModule
  L2_2 = L1_2
  L1_2 = L1_2.GetTrialAvatar
  L3_2 = A0_2._trial_avatar_id
  L1_2 = L1_2(L2_2, L3_2)
  if L1_2 == nil then
    L3_2 = A0_2
    L2_2 = A0_2.exit
    L2_2(L3_2)
    return
  end
  L2_2 = L1_2.Row
  L3_2 = A0_2._binder
  L3_2 = L3_2.txt_avatar
  L4_2 = L3_2
  L3_2 = L3_2.SafeSetTextID
  L5_2 = L2_2.AvatarName
  L3_2(L4_2, L5_2)
  L4_2 = A0_2
  L3_2 = A0_2.load_sprite_to
  L5_2 = A0_2._binder
  L5_2 = L5_2.img_avatar
  L6_2 = L1_2.AvatarCutinFrontImgPath
  L3_2(L4_2, L5_2, L6_2)
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.GameCore
  L3_2 = L3_2.AvatarBaseTypeExcelTable
  L3_2 = L3_2.GetData
  L4_2 = L2_2.AvatarBaseType
  L3_2 = L3_2(L4_2)
  L5_2 = A0_2
  L4_2 = A0_2.load_sprite_to
  L6_2 = A0_2._binder
  L6_2 = L6_2.img_profession
  L7_2 = L3_2.BgPath
  L4_2(L5_2, L6_2, L7_2)
  L4_2 = A0_2._binder
  L4_2 = L4_2.txt_trial_mark
  L5_2 = L4_2
  L4_2 = L4_2.SafeSetTextID
  L6_2 = G
  L6_2 = L6_2.AvatarUtils
  L6_2 = L6_2.get_special_avatar_hint
  L7_2 = L1_2
  L6_2, L7_2 = L6_2(L7_2)
  L4_2(L5_2, L6_2, L7_2)
  L4_2 = L1_2.IsPlotTrialPlayer
  if L4_2 then
    L4_2 = A0_2._binder
    L4_2 = L4_2.img_bg
    L5_2 = L4_2
    L4_2 = L4_2.SafeSetColor
    L6_2 = "#E9860CFF"
    L4_2(L5_2, L6_2)
  else
    L4_2 = A0_2._binder
    L4_2 = L4_2.img_bg
    L5_2 = L4_2
    L4_2 = L4_2.SafeSetColor
    L6_2 = "#FF747BFF"
    L4_2(L5_2, L6_2)
  end
  L5_2 = A0_2
  L4_2 = A0_2._setup_img_offset
  L6_2 = L2_2
  L4_2(L5_2, L6_2)
end
L0_1._setup_view = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2
  L2_2 = A1_2.AvatarTrialOffset
  if L2_2 ~= nil then
    L3_2 = L2_2.Length
    if L3_2 == 3 then
      L3_2 = L2_2[0]
      L4_2 = L2_2[1]
      L5_2 = L2_2[2]
      L6_2 = A0_2._binder
      L6_2 = L6_2.node_avatar_image
      L6_2 = L6_2.transform
      L6_2 = L6_2.localPosition
      L7_2 = A0_2._binder
      L7_2 = L7_2.node_avatar_image
      L7_2 = L7_2.transform
      L8_2 = CS
      L8_2 = L8_2.UnityEngine
      L8_2 = L8_2.Vector3
      L9_2 = L5_2
      L10_2 = L5_2
      L11_2 = 1
      L8_2 = L8_2(L9_2, L10_2, L11_2)
      L7_2.localScale = L8_2
      L7_2 = A0_2._binder
      L7_2 = L7_2.node_avatar_image
      L7_2 = L7_2.transform
      L8_2 = CS
      L8_2 = L8_2.UnityEngine
      L8_2 = L8_2.Vector3
      L9_2 = L3_2
      L10_2 = L4_2
      L11_2 = L6_2.z
      L8_2 = L8_2(L9_2, L10_2, L11_2)
      L7_2.localPosition = L8_2
    end
  end
end
L0_1._setup_img_offset = L2_1
function L2_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2._on_exit
  L1_2(L2_2)
end
L0_1._in_control_exit_click = L2_1
function L2_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2.exit
  L1_2(L2_2)
end
L0_1._on_exit = L2_1
return L0_1
