local L0_1, L1_1, L2_1, L3_1
L0_1 = require
L1_1 = "Ui.Battle.MonsterTipsBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Battle.AvatarDialogWeakPoint"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Battle.AvatarDialogWeakPointBinder"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "MonsterTips"
L2_1 = G
L2_1 = L2_1.BasePanel
L0_1 = L0_1(L1_1, L2_1)
L1_1 = G
L1_1 = L1_1.ComponentExtensions
L2_1 = G
L2_1 = L2_1.TextExtensions
function L3_1(A0_2)
  local L1_2
end
L0_1.ctor = L3_1
function L3_1(A0_2)
  local L1_2
end
L0_1._on_load = L3_1
function L3_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2
  if A1_2 == nil then
    L3_2 = L1_1.SafeSetActive
    L4_2 = A0_2._binder
    L4_2 = L4_2.go_root
    L5_2 = false
    L3_2(L4_2, L5_2)
    return
  else
    L3_2 = L1_1.SafeSetActive
    L4_2 = A0_2._binder
    L4_2 = L4_2.go_root
    L5_2 = true
    L3_2(L4_2, L5_2)
  end
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.GameCore
  L3_2 = L3_2.MonsterExcelTable
  L3_2 = L3_2.GetData
  L4_2 = A1_2
  L3_2 = L3_2(L4_2)
  L4_2 = A0_2._binder
  L4_2 = L4_2.rank_panel
  L5_2 = L4_2
  L4_2 = L4_2.setup_view
  L6_2 = L3_2
  L4_2(L5_2, L6_2)
  L4_2 = A0_2._binder
  L4_2 = L4_2.txt_name
  L5_2 = L4_2
  L4_2 = L4_2.SafeSetTextID
  L6_2 = L3_2.MonsterName
  L4_2(L5_2, L6_2)
  L5_2 = A0_2
  L4_2 = A0_2._refresh_level
  L6_2 = A2_2
  L4_2(L5_2, L6_2)
  L5_2 = A0_2
  L4_2 = A0_2._refresh_weak_point
  L6_2 = L3_2.StanceWeakList
  L4_2(L5_2, L6_2)
  L4_2 = A0_2._binder
  L4_2 = L4_2.txt_describe
  L5_2 = L4_2
  L4_2 = L4_2.SafeSetTextID
  L6_2 = L3_2.MonsterIntroduction
  L4_2(L5_2, L6_2)
end
L0_1.refresh = L3_1
function L3_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  if A1_2 == nil then
    L2_2 = A0_2._binder
    L2_2 = L2_2.node_lv
    L3_2 = L2_2
    L2_2 = L2_2.SafeSetActive
    L4_2 = false
    L2_2(L3_2, L4_2)
    L2_2 = A0_2._binder
    L2_2 = L2_2.txt_lv_num
    L3_2 = L2_2
    L2_2 = L2_2.SafeSetActive
    L4_2 = false
    L2_2(L3_2, L4_2)
    return
  end
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_lv
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = true
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.txt_lv_num
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = true
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.txt_lv_num
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetText
  L4_2 = tostring
  L5_2 = A1_2
  L4_2, L5_2 = L4_2(L5_2)
  L2_2(L3_2, L4_2, L5_2)
end
L0_1._refresh_level = L3_1
function L3_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2
  L2_2 = A0_2._weaks
  if L2_2 then
    L2_2 = A0_2._weaks
    L2_2 = #L2_2
    if 0 < L2_2 then
      L2_2 = ipairs
      L3_2 = A0_2._weaks
      L2_2, L3_2, L4_2 = L2_2(L3_2)
      for L5_2, L6_2 in L2_2, L3_2, L4_2 do
        L8_2 = L6_2
        L7_2 = L6_2._exit
        L7_2(L8_2)
      end
      L2_2 = ipairs
      L3_2 = A0_2._weakUIs
      L2_2, L3_2, L4_2 = L2_2(L3_2)
      for L5_2, L6_2 in L2_2, L3_2, L4_2 do
        L8_2 = A0_2
        L7_2 = A0_2.destroy_object
        L9_2 = L6_2
        L7_2(L8_2, L9_2)
      end
    end
  end
  L2_2 = {}
  A0_2._weaks = L2_2
  L2_2 = {}
  A0_2._weakUIs = L2_2
  L2_2 = 0
  L3_2 = A1_2.Length
  L3_2 = L3_2 - 1
  L4_2 = 1
  for L5_2 = L2_2, L3_2, L4_2 do
    L6_2 = A1_2[L5_2]
    L7_2 = CS
    L7_2 = L7_2.RPG
    L7_2 = L7_2.GameCore
    L7_2 = L7_2.DamageTypeExcelTable
    L7_2 = L7_2.GetData
    L8_2 = L6_2
    L7_2 = L7_2(L8_2)
    L9_2 = A0_2
    L8_2 = A0_2.instantiate_object
    L10_2 = A0_2._binder
    L10_2 = L10_2.node_weak_point
    L10_2 = L10_2.Prefab
    L11_2 = A0_2._binder
    L11_2 = L11_2.node_weak_point
    L11_2 = L11_2.transform
    L8_2 = L8_2(L9_2, L10_2, L11_2)
    L10_2 = A0_2
    L9_2 = A0_2.create_panel
    L11_2 = G
    L11_2 = L11_2.AvatarDialogWeakPoint
    L12_2 = G
    L12_2 = L12_2.AvatarDialogWeakPointBinder
    L9_2 = L9_2(L10_2, L11_2, L12_2)
    L11_2 = L9_2
    L10_2 = L9_2.bind
    L12_2 = L8_2
    L10_2(L11_2, L12_2)
    L11_2 = L9_2
    L10_2 = L9_2.show_weakpoint
    L12_2 = true
    L10_2(L11_2, L12_2)
    L11_2 = L9_2
    L10_2 = L9_2.setup_view
    L12_2 = L7_2.IconNatureForWeakUnactive
    L10_2(L11_2, L12_2)
    L10_2 = table
    L10_2 = L10_2.insert
    L11_2 = A0_2._weakUIs
    L12_2 = L8_2
    L10_2(L11_2, L12_2)
    L10_2 = table
    L10_2 = L10_2.insert
    L11_2 = A0_2._weaks
    L12_2 = L9_2
    L10_2(L11_2, L12_2)
  end
end
L0_1._refresh_weak_point = L3_1
function L3_1(A0_2)
  local L1_2
end
L0_1._on_dispose = L3_1
return L0_1
