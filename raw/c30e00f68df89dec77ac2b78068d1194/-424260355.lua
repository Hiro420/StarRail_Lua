local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1, L6_1, L7_1
L0_1 = require
L1_1 = "Ui.Battle.UltraSkillCutInDialogBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Battle.UltraSkillCutInAutoClosePanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Battle.UltraSkillCutInAutoClosePanelBinder"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "UltraSkillCutInDialog"
L2_1 = G
L2_1 = L2_1.UIController
L0_1 = L0_1(L1_1, L2_1)
L1_1 = G
L1_1 = L1_1.TextExtensions
L2_1 = G
L2_1 = L2_1.ComponentExtensions
L3_1 = 0.83
L4_1 = "SkillDetailContainer/SkillDetail/SkillName"
L5_1 = 8001
L6_1 = 8002
function L7_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = G
  L1_2 = L1_2.ImportCsToLua
  L1_2 = L1_2.CS_RPG_Client_UILayer_AboveDialog
  A0_2._ui_layer = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._create_binder
  L3_2 = G
  L3_2 = L3_2.UltraSkillCutInDialogBinder
  L1_2 = L1_2(L2_2, L3_2)
  A0_2._binder = L1_2
  A0_2._close_when_phase_changed = false
end
L0_1.ctor = L7_1
function L7_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2
  A0_2._avatar_row = A1_2
  if A3_2 == nil then
    L4_2 = A1_2.UltraSkillCutInPrefabPath
    A0_2._cutInPrefabPath = L4_2
  else
    L4_2 = A3_2.UltraSkillCutInPrefabPath
    A0_2._cutInPrefabPath = L4_2
  end
  A0_2._nameTextID = A2_2
end
L0_1.init = L7_1
function L7_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L2_2 = A0_2
  L1_2 = A0_2.create_panel
  L3_2 = G
  L3_2 = L3_2.UltraSkillCutInAutoClosePanel
  L4_2 = G
  L4_2 = L4_2.UltraSkillCutInAutoClosePanelBinder
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2._auto_close_panel = L1_2
  L1_2 = A0_2._auto_close_panel
  L2_2 = L1_2
  L1_2 = L1_2.bind
  L3_2 = A0_2._binder
  L3_2 = L3_2.root
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._auto_close_panel
  L2_2 = L1_2
  L1_2 = L1_2.set_exit_callback
  L3_2 = A0_2._on_exit
  L4_2 = A0_2
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.GlobalVars
  L1_2 = L1_2.s_UIManager
  L2_2 = L1_2
  L1_2 = L1_2.GetCache
  L3_2 = A0_2._cutInPrefabPath
  L1_2 = L1_2(L2_2, L3_2)
  A0_2._cut_in_cache = L1_2
  L1_2 = A0_2._cut_in_cache
  if L1_2 ~= nil then
    L1_2 = A0_2._cut_in_cache
    L2_2 = L1_2
    L1_2 = L1_2.SetParent
    L3_2 = A0_2._binder
    L3_2 = L3_2.node_contents
    L4_2 = false
    L1_2(L2_2, L3_2, L4_2)
    L2_2 = A0_2
    L1_2 = A0_2._setup_cutin_obj
    L3_2 = A0_2._cut_in_cache
    L1_2(L2_2, L3_2)
  else
    L1_2 = G
    L1_2 = L1_2.new
    L2_2 = G
    L2_2 = L2_2.AuxAssetOperation
    L1_2 = L1_2(L2_2)
    A0_2._cutInAsset = L1_2
    L1_2 = A0_2._cutInAsset
    L2_2 = L1_2
    L1_2 = L1_2.Init
    L1_2(L2_2)
    L1_2 = A0_2._cutInAsset
    L2_2 = L1_2
    L1_2 = L1_2.AsyncLoadAsset
    L3_2 = A0_2._cutInPrefabPath
    L4_2 = typeof
    L5_2 = CS
    L5_2 = L5_2.UnityEngine
    L5_2 = L5_2.GameObject
    L4_2 = L4_2(L5_2)
    L5_2 = A0_2
    L6_2 = L0_1._on_cutin_prefab_async_load
    L1_2(L2_2, L3_2, L4_2, L5_2, L6_2)
  end
end
L0_1._on_load = L7_1
function L7_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._cut_in_cache
  if L1_2 ~= nil then
    L1_2 = CS
    L1_2 = L1_2.RPG
    L1_2 = L1_2.Client
    L1_2 = L1_2.GlobalVars
    L1_2 = L1_2.s_UIManager
    L2_2 = L1_2
    L1_2 = L1_2.ReturnToCache
    L3_2 = A0_2._cut_in_cache
    L3_2 = L3_2.gameObject
    L1_2(L2_2, L3_2)
  end
  L1_2 = A0_2._cutInAsset
  if L1_2 ~= nil then
    L1_2 = A0_2._cutInAsset
    L2_2 = L1_2
    L1_2 = L1_2.Dispose
    L1_2(L2_2)
    L1_2 = G
    L1_2 = L1_2.delete
    L2_2 = A0_2._cutInAsset
    L1_2(L2_2)
    A0_2._cutInAsset = nil
  end
end
L0_1._on_dispose = L7_1
function L7_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2
  L3_2 = A1_2
  L2_2 = A1_2.GetAssetObject
  L2_2 = L2_2(L3_2)
  if L2_2 == nil then
    L3_2 = false
    return L3_2
  end
  L4_2 = A0_2
  L3_2 = A0_2.instantiate_object
  L5_2 = L2_2
  L6_2 = A0_2._binder
  L6_2 = L6_2.node_contents
  L3_2 = L3_2(L4_2, L5_2, L6_2)
  L5_2 = A0_2
  L4_2 = A0_2._setup_cutin_obj
  L6_2 = L3_2.transform
  L4_2(L5_2, L6_2)
end
L0_1._on_cutin_prefab_async_load = L7_1
function L7_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L2_2 = L2_1.SafeGetCmpt
  L3_2 = typeof
  L4_2 = CS
  L4_2 = L4_2.UnityEngine
  L4_2 = L4_2.UI
  L4_2 = L4_2.Text
  L3_2 = L3_2(L4_2)
  L4_2 = A1_2
  L5_2 = L4_1
  L2_2 = L2_2(L3_2, L4_2, L5_2)
  L3_2 = L1_1.SafeSetTextID
  L4_2 = L2_2
  L5_2 = A0_2._nameTextID
  L3_2(L4_2, L5_2)
  L4_2 = A0_2
  L3_2 = A0_2._get_duration
  L5_2 = A0_2._avatar_row
  L3_2 = L3_2(L4_2, L5_2)
  L4_2 = 0
  L5_2 = CS
  L5_2 = L5_2.RPG
  L5_2 = L5_2.Client
  L5_2 = L5_2.UIGameEntityUtils
  L5_2 = L5_2.GetBattleTimeScale
  L5_2 = L5_2()
  A0_2._battle_time_scale = L5_2
  L5_2 = CS
  L5_2 = L5_2.RPG
  L5_2 = L5_2.Client
  L5_2 = L5_2.UIGameEntityUtils
  L5_2 = L5_2.IsAutoBattle
  L5_2 = L5_2()
  if L5_2 then
    L4_2 = 0.01
    L5_2 = A0_2._avatar_row
    L5_2 = L5_2.AvatarID
    L6_2 = L5_1
    if L5_2 ~= L6_2 then
      L5_2 = A0_2._avatar_row
      L5_2 = L5_2.AvatarID
      L6_2 = L6_1
      if L5_2 ~= L6_2 then
        L3_2 = L3_1
      end
    end
  end
  L5_2 = A0_2._auto_close_panel
  L6_2 = L5_2
  L5_2 = L5_2.setup_timer
  L7_2 = L3_2
  L8_2 = L4_2
  L9_2 = A1_2.gameObject
  L5_2(L6_2, L7_2, L8_2, L9_2)
end
L0_1._setup_cutin_obj = L7_1
function L7_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2.exit
  L1_2(L2_2)
end
L0_1._on_exit = L7_1
function L7_1(A0_2, A1_2)
  local L2_2, L3_2
  L2_2 = A1_2.AvatarID
  L3_2 = L5_1
  if L2_2 ~= L3_2 then
    L2_2 = A1_2.AvatarID
    L3_2 = L6_1
    if L2_2 ~= L3_2 then
      goto lbl_12
    end
  end
  L2_2 = 1.3
  do return L2_2 end
  goto lbl_14
  ::lbl_12::
  L2_2 = 1.16
  do return L2_2 end
  ::lbl_14::
end
L0_1._get_duration = L7_1
return L0_1
