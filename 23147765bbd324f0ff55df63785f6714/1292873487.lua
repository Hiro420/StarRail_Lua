local L0_1, L1_1, L2_1, L3_1
L0_1 = require
L1_1 = "Ui.Common.LevelTaskDialogBinder"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "LevelTaskDialog"
L2_1 = G
L2_1 = L2_1.UIController
L0_1 = L0_1(L1_1, L2_1)
L1_1 = G
L1_1 = L1_1.TextExtensions
L2_1 = G
L2_1 = L2_1.ComponentExtensions
function L3_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = G
  L1_2 = L1_2.ImportCsToLua
  L1_2 = L1_2.CS_RPG_Client_UILayer_Dialog
  A0_2._ui_layer = L1_2
  A0_2._is_focusable = false
  A0_2._is_resp_esc = false
  A0_2._LifeTime = 0
  L2_2 = A0_2
  L1_2 = A0_2._create_binder
  L3_2 = G
  L3_2 = L3_2.LevelTaskDialogBinder
  L1_2 = L1_2(L2_2, L3_2)
  A0_2._binder = L1_2
end
L0_1.ctor = L3_1
function L3_1(A0_2, A1_2, A2_2, A3_2, A4_2, A5_2, A6_2)
  local L7_2, L8_2, L9_2
  L7_2 = G
  L7_2 = L7_2.new
  L8_2 = G
  L8_2 = L8_2.LevelTaskDialogBinder
  L9_2 = A1_2
  L7_2 = L7_2(L8_2, L9_2)
  A0_2._binder = L7_2
  A0_2._ImageNodeInfos = A3_2
  A0_2._TextNodeInfos = A4_2
  L7_2 = A2_2 or L7_2
  if not A2_2 then
    L7_2 = 0
  end
  A0_2._LifeTime = L7_2
  A0_2._casterName = A5_2
  A0_2._targetName = A6_2
end
L0_1.init = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.root
  L1_2 = L1_2.transform
  L2_2 = L1_2
  L1_2 = L1_2.GetComponent
  L3_2 = typeof
  L4_2 = CS
  L4_2 = L4_2.RPG
  L4_2 = L4_2.Client
  L4_2 = L4_2.UIPage
  L3_2, L4_2 = L3_2(L4_2)
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  if L1_2 ~= nil then
    L2_2 = L1_2.MaxLifeTime
    A0_2._MaxLifeTime = L2_2
  end
end
L0_1._on_load = L3_1
function L3_1(A0_2)
  local L1_2, L2_2
  L1_2 = L0_1.super
  L1_2 = L1_2._setup_view
  L2_2 = A0_2
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._SetupImageNodes
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._SetupTextNodes
  L1_2(L2_2)
  L1_2 = A0_2._MaxLifeTime
  if L1_2 ~= nil then
    L1_2 = A0_2._LifeTime
    if L1_2 == 0 then
      L1_2 = A0_2._MaxLifeTime
      A0_2._LifeTime = L1_2
    end
  end
  L1_2 = CS
  L1_2 = L1_2.UnityEngine
  L1_2 = L1_2.Time
  L1_2 = L1_2.time
  A0_2._begin_time = L1_2
  L2_2 = A0_2
  L1_2 = A0_2.add_tick
  L1_2(L2_2)
end
L0_1._setup_view = L3_1
function L3_1(A0_2)
  local L1_2, L2_2
  L1_2 = G
  L1_2 = L1_2.NotifyManager
  L1_2 = L1_2.notify
  L2_2 = G
  L2_2 = L2_2.CS
  L2_2 = L2_2.NotifyType
  L2_2 = L2_2.UILevelTaskDialogFinish
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2.exit
  L1_2(L2_2)
end
L0_1._in_control_exit_click = L3_1
function L3_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = CS
  L2_2 = L2_2.UnityEngine
  L2_2 = L2_2.Time
  L2_2 = L2_2.time
  L3_2 = A0_2._begin_time
  L3_2 = L2_2 - L3_2
  L4_2 = A0_2._LifeTime
  if L3_2 > L4_2 then
    L3_2 = G
    L3_2 = L3_2.NotifyManager
    L3_2 = L3_2.notify
    L4_2 = G
    L4_2 = L4_2.CS
    L4_2 = L4_2.NotifyType
    L4_2 = L4_2.UILevelTaskDialogFinish
    L3_2(L4_2)
    L4_2 = A0_2
    L3_2 = A0_2.exit
    L3_2(L4_2)
  end
end
L0_1._on_tick = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L1_2 = A0_2._ImageNodeList
  if L1_2 ~= nil then
    L1_2 = pairs
    L2_2 = A0_2._ImageNodeList
    L1_2, L2_2, L3_2 = L1_2(L2_2)
    for L4_2, L5_2 in L1_2, L2_2, L3_2 do
      L7_2 = A0_2
      L6_2 = A0_2.async_release_sprite_in
      L8_2 = L5_2
      L6_2(L7_2, L8_2)
    end
  end
end
L0_1._on_dispose = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L1_2 = {}
  A0_2._ImageNodeList = L1_2
  L1_2 = A0_2._ImageNodeInfos
  if L1_2 ~= nil then
    L1_2 = 0
    L2_2 = A0_2._ImageNodeInfos
    L2_2 = L2_2.Length
    L2_2 = L2_2 - 1
    L3_2 = 1
    for L4_2 = L1_2, L2_2, L3_2 do
      L5_2 = A0_2._ImageNodeInfos
      L5_2 = L5_2[L4_2]
      L6_2 = L2_1.SafeGetCmpt
      L7_2 = typeof
      L8_2 = CS
      L8_2 = L8_2.UnityEngine
      L8_2 = L8_2.UI
      L8_2 = L8_2.Image
      L7_2 = L7_2(L8_2)
      L8_2 = A0_2._binder
      L8_2 = L8_2.root
      L8_2 = L8_2.transform
      L9_2 = L5_2.Path
      L6_2 = L6_2(L7_2, L8_2, L9_2)
      L8_2 = A0_2
      L7_2 = A0_2.async_load_sprite_to
      L9_2 = L6_2
      L10_2 = L5_2.AssetPath
      L7_2(L8_2, L9_2, L10_2)
      L7_2 = table
      L7_2 = L7_2.insert
      L8_2 = A0_2._ImageNodeList
      L9_2 = L6_2
      L7_2(L8_2, L9_2)
    end
  end
end
L0_1._SetupImageNodes = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L1_2 = A0_2._TextNodeInfos
  if L1_2 ~= nil then
    L1_2 = 0
    L2_2 = A0_2._TextNodeInfos
    L2_2 = L2_2.Length
    L2_2 = L2_2 - 1
    L3_2 = 1
    for L4_2 = L1_2, L2_2, L3_2 do
      L5_2 = A0_2._TextNodeInfos
      L5_2 = L5_2[L4_2]
      L6_2 = G
      L6_2 = L6_2.StrExt
      L6_2 = L6_2.IsNullOrEmpty
      L7_2 = L5_2.SDFPath
      L6_2 = L6_2(L7_2)
      if not L6_2 then
        L6_2 = L2_1.SafeGetCmpt
        L7_2 = typeof
        L8_2 = CS
        L8_2 = L8_2.RPG
        L8_2 = L8_2.Client
        L8_2 = L8_2.LocalizedTextSDF
        L7_2 = L7_2(L8_2)
        L8_2 = A0_2._binder
        L8_2 = L8_2.root
        L8_2 = L8_2.transform
        L9_2 = L5_2.SDFPath
        L6_2 = L6_2(L7_2, L8_2, L9_2)
        L7_2 = L1_1.SafeSetTextID
        L8_2 = L6_2
        L9_2 = L5_2.TextContent
        L7_2(L8_2, L9_2)
        L8_2 = A0_2
        L7_2 = A0_2._ProcessTextParams
        L9_2 = L6_2
        L7_2(L8_2, L9_2)
      end
      L6_2 = G
      L6_2 = L6_2.StrExt
      L6_2 = L6_2.IsNullOrEmpty
      L7_2 = L5_2.TextPath
      L6_2 = L6_2(L7_2)
      if not L6_2 then
        L6_2 = L2_1.SafeGetCmpt
        L7_2 = typeof
        L8_2 = CS
        L8_2 = L8_2.UnityEngine
        L8_2 = L8_2.UI
        L8_2 = L8_2.Text
        L7_2 = L7_2(L8_2)
        L8_2 = A0_2._binder
        L8_2 = L8_2.root
        L8_2 = L8_2.transform
        L9_2 = L5_2.TextPath
        L6_2 = L6_2(L7_2, L8_2, L9_2)
        L7_2 = L1_1.SafeSetTextID
        L8_2 = L6_2
        L9_2 = L5_2.TextContent
        L7_2(L8_2, L9_2)
        L8_2 = A0_2
        L7_2 = A0_2._ProcessTextParams
        L9_2 = L6_2
        L7_2(L8_2, L9_2)
      end
    end
  end
end
L0_1._SetupTextNodes = L3_1
function L3_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.Client
  L2_2 = L2_2.GlobalVars
  L2_2 = L2_2.s_GamePhaseManager
  L3_2 = L2_2
  L2_2 = L2_2.GetCurrentPhase
  L2_2 = L2_2(L3_2)
  if L2_2 == nil then
    return
  end
  L4_2 = L2_2
  L3_2 = L2_2.GetPhaseUI
  L3_2 = L3_2(L4_2)
  if L3_2 == nil then
    return
  end
  L4_2 = A1_2.text
  L6_2 = L4_2
  L5_2 = L4_2.gsub
  L7_2 = "%%TargetName"
  L8_2 = A0_2._targetName
  L5_2 = L5_2(L6_2, L7_2, L8_2)
  L4_2 = L5_2
  L6_2 = L4_2
  L5_2 = L4_2.gsub
  L7_2 = "%%CasterName"
  L8_2 = A0_2._casterName
  L5_2 = L5_2(L6_2, L7_2, L8_2)
  L4_2 = L5_2
  L5_2 = A1_2.SetCustomizedText
  if L5_2 ~= nil then
    L6_2 = A1_2
    L5_2 = A1_2.SetCustomizedText
    L7_2 = L4_2
    L5_2(L6_2, L7_2)
  else
    A1_2.text = L4_2
  end
end
L0_1._ProcessTextParams = L3_1
return L0_1
