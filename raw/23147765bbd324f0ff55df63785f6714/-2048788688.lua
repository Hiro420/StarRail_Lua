local L0_1, L1_1, L2_1, L3_1
L0_1 = CS
L0_1 = L0_1.RPG
L0_1 = L0_1.Client
L0_1 = L0_1.GlobalVars
L0_1 = L0_1.s_ModuleManager
L0_1 = L0_1.PersonalizeModule
L1_1 = G
L1_1 = L1_1.Class
L2_1 = "PhoneThemePanel"
L3_1 = G
L3_1 = L3_1.BasePanel
L1_1 = L1_1(L2_1, L3_1)
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = L0_1.PhoneThemeData
  A0_2._data = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._load_sprite_to
  L3_2 = A0_2._binder
  L3_2 = L3_2.img_l
  L4_2 = A0_2._data
  L4_2 = L4_2.CurrentImageL
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._load_sprite_to
  L3_2 = A0_2._binder
  L3_2 = L3_2.img_r
  L4_2 = A0_2._data
  L4_2 = L4_2.CurrentImageR
  L1_2(L2_2, L3_2, L4_2)
end
L1_1.setup_view = L2_1
return L1_1
