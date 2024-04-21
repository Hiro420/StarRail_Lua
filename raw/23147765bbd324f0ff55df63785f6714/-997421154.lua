local L0_1, L1_1, L2_1, L3_1, L4_1
L0_1 = require
L1_1 = "Ui.AetherDivide.AetherSpiritAtlas.AetherSpiritAtlasUnlockToast.AetherSpiritAtlasUnlockToastDialogBinder"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "AetherSpiritAtlasUnlockToastDialog"
L2_1 = G
L2_1 = L2_1.UIController
L0_1 = L0_1(L1_1, L2_1)
L1_1 = CS
L1_1 = L1_1.RPG
L1_1 = L1_1.Client
L1_1 = L1_1.GlobalVars
L1_1 = L1_1.s_ModuleManager
L1_1 = L1_1.AetherDivideModule
L1_1 = L1_1.AetherOutfitData
L2_1 = "ChallengeLevelUnlockHint"
L3_1 = 3.5
function L4_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = G
  L1_2 = L1_2.ImportCsToLua
  L1_2 = L1_2.CS_RPG_Client_UILayer_AboveDialog
  A0_2._ui_layer = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._create_binder
  L3_2 = G
  L3_2 = L3_2.AetherSpiritAtlasUnlockToastDialogBinder
  L1_2 = L1_2(L2_2, L3_2)
  A0_2._binder = L1_2
end
L0_1.ctor = L4_1
function L4_1(A0_2, A1_2)
  local L2_2
  L2_2 = L1_1.AllAetherMonsterDisplayAvatars
  L2_2 = L2_2[A1_2]
  A0_2._spirit_data = L2_2
end
L0_1.init = L4_1
function L4_1(A0_2, A1_2, A2_2)
  A0_2._close_callback = A1_2
  A0_2._close_callback_self = A2_2
end
L0_1.register_close_callback = L4_1
function L4_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2._on_exit
  L1_2(L2_2)
end
L0_1.force_close = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2.setup_short_cut_hint_panel
  L3_2 = 31
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_close
  L4_2 = A0_2._on_click_close
  L1_2(L2_2, L3_2, L4_2)
end
L0_1._on_load = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.anim_root
  L2_2 = L1_2
  L1_2 = L1_2.GetClip
  L3_2 = L2_1
  L1_2 = L1_2(L2_2, L3_2)
  L1_2 = L1_2.length
  L1_2 = L1_2 + 0.1
  L3_1 = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._add_count_down_timer
  L3_2 = A0_2._on_exit
  L4_2 = L3_1
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2._count_down_timer = L1_2
  L1_2 = A0_2._count_down_timer
  L2_2 = L1_2
  L1_2 = L1_2.reset
  L1_2(L2_2)
  L1_2 = A0_2._count_down_timer
  L2_2 = L1_2
  L1_2 = L1_2.start
  L1_2(L2_2)
end
L0_1._setup_view = L4_1
function L4_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2.exit
  L1_2(L2_2)
end
L0_1._on_exit = L4_1
function L4_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._close_callback
  if L1_2 ~= nil then
    L1_2 = A0_2._close_callback_self
    if L1_2 ~= nil then
      L1_2 = A0_2._close_callback
      L2_2 = A0_2._close_callback_self
      L1_2(L2_2)
    end
  end
end
L0_1._on_unload = L4_1
function L4_1(A0_2)
  local L1_2
end
L0_1._on_dispose = L4_1
return L0_1
