local L0_1, L1_1, L2_1
L0_1 = require
L1_1 = "Ui.Battle.BonusActionDialogBinder"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "BonusActionDialog"
L2_1 = G
L2_1 = L2_1.UIController
L0_1 = L0_1(L1_1, L2_1)
L1_1 = 1.8
function L2_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = G
  L1_2 = L1_2.ImportCsToLua
  L1_2 = L1_2.CS_RPG_Client_UILayer_Dialog
  A0_2._ui_layer = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._create_binder
  L3_2 = G
  L3_2 = L3_2.BonusActionDialogBinder
  L1_2 = L1_2(L2_2, L3_2)
  A0_2._binder = L1_2
  A0_2._is_focusable = false
  A0_2._is_resp_esc = false
end
L0_1.ctor = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2._binder
  L3_2 = L2_2
  L2_2 = L2_2.set_effect_data
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
  L2_2 = A1_2.TitleTextID
  A0_2._title_textID = L2_2
  L2_2 = A1_2.ImagePath
  A0_2._avatar_img_path = L2_2
end
L0_1.init = L2_1
function L2_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2.add_tick
  L1_2(L2_2)
  L1_2 = CS
  L1_2 = L1_2.UnityEngine
  L1_2 = L1_2.Time
  L1_2 = L1_2.time
  L2_2 = L1_1
  L1_2 = L1_2 + L2_2
  A0_2._CloseTimeStamp = L1_2
end
L0_1._on_load = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.title_txt
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetTextID
  L3_2 = A0_2._title_textID
  L1_2(L2_2, L3_2)
  L1_2 = CS
  L1_2 = L1_2.System
  L1_2 = L1_2.String
  L1_2 = L1_2.IsNullOrEmpty
  L2_2 = A0_2._avatar_img_path
  L1_2 = L1_2(L2_2)
  if not L1_2 then
    L1_2 = A0_2._binder
    L1_2 = L1_2.avatar_img
    if L1_2 then
      L2_2 = A0_2
      L1_2 = A0_2.async_load_sprite_to
      L3_2 = A0_2._binder
      L3_2 = L3_2.avatar_img
      L4_2 = A0_2._avatar_img_path
      L1_2(L2_2, L3_2, L4_2)
    end
  end
end
L0_1._setup_view = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2
  L3_2 = A0_2
  L2_2 = A0_2._TickAutoClose
  L2_2(L3_2)
end
L0_1._on_tick = L2_1
function L2_1(A0_2)
  local L1_2, L2_2
  L1_2 = CS
  L1_2 = L1_2.UnityEngine
  L1_2 = L1_2.Time
  L1_2 = L1_2.time
  L2_2 = A0_2._CloseTimeStamp
  if L1_2 > L2_2 then
    L2_2 = A0_2
    L1_2 = A0_2.exit
    L1_2(L2_2)
  end
end
L0_1._TickAutoClose = L2_1
return L0_1
