local L0_1, L1_1, L2_1
L0_1 = require
L1_1 = "Ui.AsbDebug.AsbDebugDialogBinder"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "AsbDebugDialog"
L2_1 = G
L2_1 = L2_1.UIController
L0_1 = L0_1(L1_1, L2_1)
L1_1 = G
L1_1 = L1_1.ComponentExtensions
function L2_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = G
  L1_2 = L1_2.ImportCsToLua
  L1_2 = L1_2.CS_RPG_Client_UILayer_Dialog
  A0_2._ui_layer = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._create_binder
  L3_2 = G
  L3_2 = L3_2.AsbDebugDialogBinder
  L1_2 = L1_2(L2_2, L3_2)
  A0_2._binder = L1_2
end
L0_1.ctor = L2_1
function L2_1(A0_2)
  local L1_2
end
L0_1.init = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  A0_2._progress = 0
  A0_2._img_index = -1
  A0_2._text_index = -1
  L1_2 = {}
  A0_2._LoadingDescInfos = L1_2
  L1_2 = {}
  A0_2._LoadingDescInfos = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_ok
  L4_2 = A0_2._on_click_btn_ok
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_close
  L4_2 = A0_2._on_click_btn_close
  L1_2(L2_2, L3_2, L4_2)
end
L0_1._on_load = L2_1
function L2_1(A0_2)
  local L1_2
end
L0_1._on_dispose = L2_1
function L2_1(A0_2)
  local L1_2
end
L0_1._setup_view = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.inputfield_asbpath
  L1_2 = L1_2.text
  L2_2 = A0_2._binder
  L2_2 = L2_2.inputfield_assetpath
  L2_2 = L2_2.text
  L3_2 = G
  L3_2 = L3_2.SuperDebug
  L3_2 = L3_2.LogFormat
  L4_2 = "asbPath or assetPath is none, asbPath is %s, assetPath is %s"
  L5_2 = tostring
  L6_2 = L1_2
  L5_2 = L5_2(L6_2)
  L6_2 = tostring
  L7_2 = L2_2
  L6_2, L7_2 = L6_2(L7_2)
  L3_2(L4_2, L5_2, L6_2, L7_2)
  if nil ~= L1_2 and "" ~= L1_2 and nil ~= L2_2 and "" ~= L2_2 then
    L3_2 = CS
    L3_2 = L3_2.UnityEngine
    L3_2 = L3_2.AssetBundle
    L3_2 = L3_2.LoadFromFile
    L4_2 = L1_2
    L3_2 = L3_2(L4_2)
    if nil ~= L3_2 then
      L5_2 = L3_2
      L4_2 = L3_2.LoadAsset
      L6_2 = L2_2
      L4_2 = L4_2(L5_2, L6_2)
      if nil ~= L4_2 then
        L5_2 = G
        L5_2 = L5_2.SuperDebug
        L5_2 = L5_2.LogFormat
        L6_2 = "assetObject is not none"
        L5_2(L6_2)
      else
        L5_2 = G
        L5_2 = L5_2.SuperDebug
        L5_2 = L5_2.LogFormat
        L6_2 = "assetObject is none"
        L5_2(L6_2)
      end
    else
      L4_2 = G
      L4_2 = L4_2.SuperDebug
      L4_2 = L4_2.LogFormat
      L5_2 = "asb is none"
      L4_2(L5_2)
    end
  else
    L3_2 = G
    L3_2 = L3_2.SuperDebug
    L3_2 = L3_2.LogFormat
    L4_2 = "asbPath or assetPath is none"
    L3_2(L4_2)
  end
end
L0_1._on_click_btn_ok = L2_1
function L2_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2.exit
  L1_2(L2_2)
end
L0_1._on_click_btn_close = L2_1
return L0_1
