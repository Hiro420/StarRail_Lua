local L0_1, L1_1, L2_1
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "AetherTeamMemberIconChibiPanel"
L2_1 = G
L2_1 = L2_1.BasePanel
L0_1 = L0_1(L1_1, L2_1)
function L1_1(A0_2, A1_2, A2_2, A3_2)
  A0_2._index = A3_2
end
L0_1.ctor = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn
  L4_2 = A0_2._on_btn_root
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2.setup_view
  L1_2(L2_2)
end
L0_1._on_load = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L2_2 = A0_2
  L1_2 = A0_2.is_loaded
  L1_2 = L1_2(L2_2)
  if not L1_2 then
    return
  end
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.GlobalVars
  L1_2 = L1_2.s_ModuleManager
  L1_2 = L1_2.AetherDivideModule
  if L1_2 ~= nil then
    L2_2 = L1_2.AetherDivideTeamData
    if L2_2 then
      goto lbl_18
    end
  end
  L2_2 = nil
  ::lbl_18::
  if L2_2 ~= nil then
    L3_2 = L2_2.CurLineUpData
    if L3_2 then
      goto lbl_24
    end
  end
  L3_2 = nil
  ::lbl_24::
  if L3_2 ~= nil then
    L5_2 = L3_2
    L4_2 = L3_2.GetMemberByIndex
    L6_2 = A0_2._index
    L6_2 = L6_2 + 1
    L4_2 = L4_2(L5_2, L6_2)
    if L4_2 then
      goto lbl_33
    end
  end
  L4_2 = nil
  ::lbl_33::
  A0_2._data = L4_2
  L5_2 = A0_2
  L4_2 = A0_2._do_setup_view
  L6_2 = A0_2._data
  L4_2(L5_2, L6_2)
end
L0_1.setup_view = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L3_2 = A0_2
  L2_2 = A0_2.safe_set_active
  L4_2 = A1_2 ~= nil
  L2_2(L3_2, L4_2)
  if A1_2 == nil then
    return
  end
  L2_2 = A1_2.Row
  if L2_2 ~= nil then
    L4_2 = A0_2
    L3_2 = A0_2._async_load_sprite_to
    L5_2 = A0_2._binder
    L5_2 = L5_2.img_spirit
    L6_2 = L2_2.SideAvatarHeadIconPath
    L3_2(L4_2, L5_2, L6_2)
    L3_2 = CS
    L3_2 = L3_2.RPG
    L3_2 = L3_2.GameCore
    L3_2 = L3_2.AetherSpiritTypeExcelTable
    L3_2 = L3_2.GetData
    L4_2 = L2_2.SpiritType
    L4_2 = #L4_2
    L3_2 = L3_2(L4_2)
    if L3_2 ~= nil then
      L5_2 = A0_2
      L4_2 = A0_2._async_load_sprite_to
      L6_2 = A0_2._binder
      L6_2 = L6_2.img_spirit_type
      L7_2 = L3_2.IconPath
      L4_2(L5_2, L6_2, L7_2)
    end
    L4_2 = A0_2._binder
    L4_2 = L4_2.txt_name
    L5_2 = L4_2
    L4_2 = L4_2.SafeSetTextID
    L6_2 = L2_2.AvatarName
    L4_2(L5_2, L6_2)
  end
  L3_2 = A0_2._binder
  L3_2 = L3_2.panel_sp
  L4_2 = L3_2
  L3_2 = L3_2.setup_view
  L5_2 = A1_2
  L3_2(L4_2, L5_2)
end
L0_1._do_setup_view = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._data
  if L1_2 == nil then
    return
  end
  L1_2 = G
  L1_2 = L1_2.UIManager
  L1_2 = L1_2.load_and_async_show
  L2_2 = "Ui.AetherDivide.AetherOutFit.AetherSpiritMain.AetherSpiritMainPage"
  L3_2 = A0_2._data
  L4_2 = true
  L1_2(L2_2, L3_2, L4_2)
end
L0_1._on_btn_root = L1_1
return L0_1
