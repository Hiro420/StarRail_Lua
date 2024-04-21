local L0_1, L1_1, L2_1
L0_1 = require
L1_1 = "Ui.AetherDivide.AetherSpiritAtlas.AetherSpiritAtlasDetail.AetherSpiritAtlasDetailPageBinder"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "AetherSpiritAtlasDetailPage"
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
function L2_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = G
  L1_2 = L1_2.ImportCsToLua
  L1_2 = L1_2.CS_RPG_Client_UILayer_Page
  A0_2._ui_layer = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._create_binder
  L3_2 = G
  L3_2 = L3_2.AetherSpiritAtlasDetailPageBinder
  L1_2 = L1_2(L2_2, L3_2)
  A0_2._binder = L1_2
  L1_2 = {}
  L2_2 = NavigationZoneType
  L2_2 = L2_2.Zone1
  L1_2[1] = L2_2
  A0_2.listen_zooms = L1_2
end
L0_1.ctor = L2_1
function L2_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2
  A0_2._spirit_id = A1_2
  A0_2._spirit_table = A2_2
  L4_2 = A0_2
  L3_2 = A0_2._get_index_in_table
  L3_2 = L3_2(L4_2)
  A0_2._cur_index = L3_2
  L3_2 = A0_2._spirit_table
  L4_2 = A0_2._cur_index
  L3_2 = L3_2[L4_2]
  A0_2._spirit_display_data = L3_2
end
L0_1.init = L2_1
function L2_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2._on_click_close
  L1_2(L2_2)
end
L0_1._in_control_exit_click = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2.setup_short_cut_hint_panel
  L3_2 = 1
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_close
  L4_2 = A0_2._on_click_close
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_left
  L4_2 = A0_2._select_prev
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_right
  L4_2 = A0_2._select_next
  L1_2(L2_2, L3_2, L4_2)
end
L0_1._on_load = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = 1
  L2_2 = A0_2._spirit_table
  L2_2 = #L2_2
  L3_2 = 1
  for L4_2 = L1_2, L2_2, L3_2 do
    L5_2 = A0_2._spirit_table
    L5_2 = L5_2[L4_2]
    L5_2 = L5_2.ID
    L6_2 = A0_2._spirit_id
    if L5_2 == L6_2 then
      return L4_2
    end
  end
  L1_2 = G
  L1_2 = L1_2.SuperDebug
  L1_2 = L1_2.LogErrorFormat
  L2_2 = "AetherSpiritAtlasDetailPage _get_index_in_table() : \230\156\170\229\156\168\229\189\147\229\137\141\233\129\147\233\166\134\229\136\134\231\177\187\230\137\190\229\136\176\229\175\185\229\186\148\228\187\165\229\164\170\231\129\181(ID : "
  L3_2 = A0_2._spirit_id
  L4_2 = ")"
  L2_2 = L2_2 .. L3_2 .. L4_2
  L1_2(L2_2)
  L1_2 = 1
  return L1_2
end
L0_1._get_index_in_table = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._spirit_table
  L1_2 = #L1_2
  if L1_2 <= 1 then
    return
  end
  L1_2 = A0_2._cur_index
  L1_2 = L1_2 - 1
  L2_2 = L1_2 - 1
  L3_2 = A0_2._spirit_table
  L3_2 = #L3_2
  L1_2 = L2_2 % L3_2
  L2_2 = L1_2 + 1
  A0_2._cur_index = L2_2
  L2_2 = A0_2._spirit_table
  L3_2 = A0_2._cur_index
  L2_2 = L2_2[L3_2]
  A0_2._spirit_display_data = L2_2
  L3_2 = A0_2
  L2_2 = A0_2._on_refresh
  L2_2(L3_2)
end
L0_1._select_prev = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._spirit_table
  L1_2 = #L1_2
  if L1_2 <= 1 then
    return
  end
  L1_2 = A0_2._cur_index
  L1_2 = L1_2 - 1
  L2_2 = L1_2 + 1
  L3_2 = A0_2._spirit_table
  L3_2 = #L3_2
  L1_2 = L2_2 % L3_2
  L2_2 = L1_2 + 1
  A0_2._cur_index = L2_2
  L2_2 = A0_2._spirit_table
  L3_2 = A0_2._cur_index
  L2_2 = L2_2[L3_2]
  A0_2._spirit_display_data = L2_2
  L3_2 = A0_2
  L2_2 = A0_2._on_refresh
  L2_2(L3_2)
end
L0_1._select_next = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.btn_left
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = false
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.btn_right
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = false
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2._on_refresh
  L1_2(L2_2)
end
L0_1._setup_view = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.img_spirit
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = A0_2._spirit_display_data
  L3_2 = L3_2.Status
  L4_2 = CS
  L4_2 = L4_2.RPG
  L4_2 = L4_2.Client
  L4_2 = L4_2.AetherMonsterAvatarDisplayDataStatus
  L4_2 = L4_2.Unlocked
  L3_2 = L3_2 == L4_2
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.img_spirit_shadow
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = A0_2._spirit_display_data
  L3_2 = L3_2.Status
  L4_2 = CS
  L4_2 = L4_2.RPG
  L4_2 = L4_2.Client
  L4_2 = L4_2.AetherMonsterAvatarDisplayDataStatus
  L4_2 = L4_2.Unlocked
  L3_2 = L3_2 ~= L4_2
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._spirit_display_data
  L1_2 = L1_2.Status
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.Client
  L2_2 = L2_2.AetherMonsterAvatarDisplayDataStatus
  L2_2 = L2_2.Unlocked
  if L1_2 == L2_2 then
    L1_2 = A0_2._binder
    L1_2 = L1_2.txt_name
    L2_2 = L1_2
    L1_2 = L1_2.SafeSetTextID
    L3_2 = A0_2._spirit_display_data
    L3_2 = L3_2.Row
    L3_2 = L3_2.AvatarName
    L1_2(L2_2, L3_2)
    L1_2 = A0_2._binder
    L1_2 = L1_2.txt_desc
    L2_2 = L1_2
    L1_2 = L1_2.SafeSetTextID
    L3_2 = A0_2._spirit_display_data
    L3_2 = L3_2.Row
    L3_2 = L3_2.SpiritDescription
    L1_2(L2_2, L3_2)
    L2_2 = A0_2
    L1_2 = A0_2.async_load_sprite_to
    L3_2 = A0_2._binder
    L3_2 = L3_2.img_spirit
    L4_2 = A0_2._spirit_display_data
    L4_2 = L4_2.Row
    L4_2 = L4_2.DefaultAvatarHeadIconPath
    L1_2(L2_2, L3_2, L4_2)
  else
    L1_2 = A0_2._binder
    L1_2 = L1_2.txt_name
    L2_2 = L1_2
    L1_2 = L1_2.SafeSetTextID
    L3_2 = "TalkSentenceName_8000187_Unknown"
    L1_2(L2_2, L3_2)
    L1_2 = A0_2._binder
    L1_2 = L1_2.txt_desc
    L2_2 = L1_2
    L1_2 = L1_2.SafeSetTextID
    L3_2 = A0_2._spirit_display_data
    L3_2 = L3_2.Row
    L3_2 = L3_2.SpiritUnlockDescription
    L1_2(L2_2, L3_2)
    L2_2 = A0_2
    L1_2 = A0_2.async_load_sprite_to
    L3_2 = A0_2._binder
    L3_2 = L3_2.img_spirit_shadow
    L4_2 = A0_2._spirit_display_data
    L4_2 = L4_2.Row
    L4_2 = L4_2.DefaultAvatarHeadIconPath
    L1_2(L2_2, L3_2, L4_2)
  end
end
L0_1._on_refresh = L2_1
function L2_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2.exit
  L1_2(L2_2)
end
L0_1._on_click_close = L2_1
function L2_1(A0_2)
  local L1_2
end
L0_1._on_dispose = L2_1
return L0_1
