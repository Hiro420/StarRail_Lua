local L0_1, L1_1, L2_1
L0_1 = require
L1_1 = "Ui.Activity.TreasureDungeon.TreasureDungeonTrialAvatarDialogBinder"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "TreasureDungeonTrialAvatarDialog"
L2_1 = G
L2_1 = L2_1.UIController
L0_1 = L0_1(L1_1, L2_1)
function L1_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = G
  L1_2 = L1_2.ImportCsToLua
  L1_2 = L1_2.CS_RPG_Client_UILayer_Dialog
  A0_2._ui_layer = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._create_binder
  L3_2 = G
  L3_2 = L3_2.TreasureDungeonTrialAvatarDialogBinder
  L1_2 = L1_2(L2_2, L3_2)
  A0_2._binder = L1_2
  A0_2._pause_game = true
end
L0_1.ctor = L1_1
function L1_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2, L5_2, L6_2
  L4_2 = CS
  L4_2 = L4_2.RPG
  L4_2 = L4_2.GameCore
  L4_2 = L4_2.TreasureDungeonAvatarConfigExcelTable
  L4_2 = L4_2.GetData
  L5_2 = A1_2
  L4_2 = L4_2(L5_2)
  A0_2._data = L4_2
  L4_2 = CS
  L4_2 = L4_2.RPG
  L4_2 = L4_2.GameCore
  L4_2 = L4_2.GamePlayStatic
  L4_2 = L4_2.AdventureGetSpecialAvatarRowByAvatarID
  L5_2 = A0_2._data
  L5_2 = L5_2.SpecialAvataID
  L4_2 = L4_2(L5_2)
  L5_2 = CS
  L5_2 = L5_2.RPG
  L5_2 = L5_2.GameCore
  L5_2 = L5_2.AvatarExcelTable
  L5_2 = L5_2.GetData
  L6_2 = L4_2.AvatarID
  L5_2 = L5_2(L6_2)
  A0_2._avatar_row = L5_2
  A0_2._callback = A2_2
  A0_2._callback_self = A3_2
end
L0_1.init = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_close
  L4_2 = A0_2._on_btn_exit
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_avatar_detail
  L4_2 = A0_2._on_btn_avatar_detail
  L1_2(L2_2, L3_2, L4_2)
end
L0_1._on_load = L1_1
function L1_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2._refresh_avatar_cutin
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._refresh_avatar_info
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._refresh_talk_list
  L1_2(L2_2)
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.CoroutineUtils
  L1_2 = L1_2.InvokeNextFrame
  function L2_2()
    local L0_3, L1_3, L2_3, L3_3
    L0_3 = A0_2._binder
    if L0_3 == nil then
      return
    end
    L0_3 = A0_2
    L1_3 = L0_3
    L0_3 = L0_3.create_short_cut_hint_panel
    L2_3 = 8
    L3_3 = A0_2._binder
    L3_3 = L3_3.scroll_rect
    L0_3(L1_3, L2_3, L3_3)
  end
  L1_2(L2_2)
end
L0_1._setup_view = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2.async_load_sprite_to
  L3_2 = A0_2._binder
  L3_2 = L3_2.img_avatar
  L4_2 = A0_2._avatar_row
  L4_2 = L4_2.AvatarCutinFrontImgPath
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._setup_offset
  L3_2 = A0_2._data
  L4_2 = A0_2._binder
  L4_2 = L4_2.img_avatar
  L4_2 = L4_2.transform
  L1_2(L2_2, L3_2, L4_2)
end
L0_1._refresh_avatar_cutin = L1_1
function L1_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L3_2 = A1_2.FigureDiff
  if L3_2 ~= nil then
    L4_2 = L3_2.Length
    if L4_2 == 2 then
      L4_2 = L3_2[0]
      L5_2 = L3_2[1]
      L6_2 = A1_2.FigureScale
      L7_2 = CS
      L7_2 = L7_2.UnityEngine
      L7_2 = L7_2.Vector3
      L8_2 = L6_2
      L9_2 = L6_2
      L10_2 = 1
      L7_2 = L7_2(L8_2, L9_2, L10_2)
      A2_2.localScale = L7_2
      L7_2 = CS
      L7_2 = L7_2.UnityEngine
      L7_2 = L7_2.Vector3
      L8_2 = L4_2
      L9_2 = L5_2
      L10_2 = A2_2.localPosition
      L10_2 = L10_2.z
      L7_2 = L7_2(L8_2, L9_2, L10_2)
      A2_2.localPosition = L7_2
    end
  end
end
L0_1._setup_offset = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.txt_name
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetTextID
  L3_2 = A0_2._avatar_row
  L3_2 = L3_2.AvatarName
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.promotion_stars_panel
  L2_2 = L1_2
  L1_2 = L1_2.setup_view
  L3_2 = A0_2._avatar_row
  L3_2 = L3_2.Rarity
  L3_2 = #L3_2
  L4_2 = A0_2._avatar_row
  L4_2 = L4_2.Rarity
  L4_2 = #L4_2
  L5_2 = A0_2._avatar_row
  L5_2 = L5_2.Rarity
  L5_2 = #L5_2
  L1_2(L2_2, L3_2, L4_2, L5_2)
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.GameCore
  L1_2 = L1_2.DamageTypeExcelTable
  L1_2 = L1_2.GetData
  L2_2 = A0_2._avatar_row
  L2_2 = L2_2.DamageType
  L1_2 = L1_2(L2_2)
  L3_2 = A0_2
  L2_2 = A0_2.async_load_sprite_to
  L4_2 = A0_2._binder
  L4_2 = L4_2.img_damage_type
  L5_2 = L1_2.DamageTypeIconPath
  L2_2(L3_2, L4_2, L5_2)
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.GameCore
  L2_2 = L2_2.AvatarBaseTypeExcelTable
  L2_2 = L2_2.GetData
  L3_2 = A0_2._avatar_row
  L3_2 = L3_2.AvatarBaseType
  L2_2 = L2_2(L3_2)
  L4_2 = A0_2
  L3_2 = A0_2.async_load_sprite_to
  L5_2 = A0_2._binder
  L5_2 = L5_2.img_profession
  L6_2 = L2_2.BaseTypeIconSmall
  L3_2(L4_2, L5_2, L6_2)
  L3_2 = A0_2._binder
  L3_2 = L3_2.txt_profession
  L4_2 = L3_2
  L3_2 = L3_2.SafeSetTextID
  L5_2 = L2_2.BaseTypeText
  L3_2(L4_2, L5_2)
end
L0_1._refresh_avatar_info = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.txt_desc
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetTextID
  L3_2 = A0_2._data
  L3_2 = L3_2.Dialogue1
  L1_2(L2_2, L3_2)
end
L0_1._refresh_talk_list = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = G
  L1_2 = L1_2.Utils
  L1_2 = L1_2.invoke_callback
  L2_2 = A0_2._callback
  L3_2 = A0_2._callback_self
  L4_2 = A0_2._avatar_row
  L4_2 = L4_2.AvatarID
  L1_2(L2_2, L3_2, L4_2)
end
L0_1._on_btn_avatar_detail = L1_1
function L1_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2.exit
  L1_2(L2_2)
end
L0_1._on_btn_exit = L1_1
return L0_1
