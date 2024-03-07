local L0_1, L1_1, L2_1, L3_1
L0_1 = require
L1_1 = "Ui.ActivityMonopoly.MiniGamePage.Components.ActivityMonopolyMiniGameChequeItemPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.ActivityMonopoly.MiniGamePage.Components.ActivityMonopolyMiniGameChequeItemPanelBinder"
L0_1(L1_1)
L0_1 = CS
L0_1 = L0_1.RPG
L0_1 = L0_1.Client
L0_1 = L0_1.GlobalVars
L0_1 = L0_1.s_ModuleManager
L0_1 = L0_1.MonopolyModule
L1_1 = G
L1_1 = L1_1.Class
L2_1 = "ActivityMonopolyMiniGameChequePanel"
L3_1 = G
L3_1 = L3_1.BasePanel
L1_1 = L1_1(L2_1, L3_1)
function L2_1(A0_2)
  local L1_2
  A0_2._total_count = 0
  L1_2 = {}
  A0_2._resource_ids = L1_2
  L1_2 = {}
  A0_2._unknown_indexs = L1_2
end
L1_1.ctor = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.list_view
  L2_2 = L1_2
  L1_2 = L1_2.init
  L3_2 = A0_2
  L4_2 = 0
  L5_2 = A0_2._on_item_changed
  L1_2(L2_2, L3_2, L4_2, L5_2)
end
L1_1._on_load = L2_1
function L2_1(A0_2, A1_2, A2_2)
  A0_2._finish_callback = A1_2
  A0_2._finish_handler = A2_2
end
L1_1.register_finish_callback = L2_1
function L2_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L3_2 = #A1_2
  A0_2._total_count = L3_2
  A0_2._resource_ids = A1_2
  A0_2._empty_indexs = A2_2
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.Client
  L3_2 = L3_2.MonopolyUtils
  L3_2 = L3_2.GetMonopolyCurrencyID
  L3_2 = L3_2()
  L4_2 = CS
  L4_2 = L4_2.RPG
  L4_2 = L4_2.GameCore
  L4_2 = L4_2.ItemExcelTable
  L4_2 = L4_2.GetData
  L5_2 = L3_2
  L4_2 = L4_2(L5_2)
  L6_2 = A0_2
  L5_2 = A0_2._async_load_sprite_to
  L7_2 = A0_2._binder
  L7_2 = L7_2.img_result_icon
  L8_2 = L4_2.ItemIconPath
  L5_2(L6_2, L7_2, L8_2)
  L6_2 = A0_2
  L5_2 = A0_2._refresh_view
  L5_2(L6_2)
end
L1_1.setup_view = L2_1
function L2_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2
  L4_2 = A0_2._binder
  L4_2 = L4_2.txt_ratio
  L5_2 = L4_2
  L4_2 = L4_2.SafeSetTextID
  L6_2 = "UIText_ChallengeActivity_HitCount"
  L7_2 = A2_2
  L4_2(L5_2, L6_2, L7_2)
  L4_2 = A0_2._binder
  L4_2 = L4_2.txt_final
  L5_2 = L4_2
  L4_2 = L4_2.SafeSetText
  L6_2 = A3_2
  L4_2(L5_2, L6_2)
  L4_2 = 1
  L5_2 = ipairs
  L6_2 = A0_2._resource_ids
  L5_2, L6_2, L7_2 = L5_2(L6_2)
  for L8_2, L9_2 in L5_2, L6_2, L7_2 do
    L11_2 = A0_2
    L10_2 = A0_2._is_item_unknown
    L12_2 = L9_2
    L10_2 = L10_2(L11_2, L12_2)
    if L10_2 then
      L10_2 = A0_2._binder
      L10_2 = L10_2.list_view
      L11_2 = L10_2
      L10_2 = L10_2.GetShownItemByItemIndex
      L12_2 = L8_2 - 1
      L10_2 = L10_2(L11_2, L12_2)
      L11_2 = L10_2.UserObjectData
      L12_2 = A1_2[L4_2]
      L14_2 = L11_2
      L13_2 = L11_2.play_known
      L15_2 = L12_2
      L13_2(L14_2, L15_2)
      L13_2 = A0_2._resource_ids
      L13_2[L8_2] = L12_2
      L4_2 = L4_2 + 1
    end
  end
  L5_2 = CS
  L5_2 = L5_2.RPG
  L5_2 = L5_2.Client
  L5_2 = L5_2.CoroutineUtils
  L5_2 = L5_2.InvokeAfterSeconds
  L6_2 = 3.1
  function L7_2()
    local L0_3, L1_3, L2_3
    L0_3 = G
    L0_3 = L0_3.Utils
    L0_3 = L0_3.invoke_callback
    L1_3 = A0_2._finish_callback
    L2_3 = A0_2._finish_handler
    L0_3(L1_3, L2_3)
  end
  L5_2(L6_2, L7_2)
end
L1_1.play_result = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.list_view
  L2_2 = L1_2
  L1_2 = L1_2.SetListItemCount
  L3_2 = A0_2._total_count
  L4_2 = true
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.list_view
  L2_2 = L1_2
  L1_2 = L1_2.RefreshAllShownItem
  L1_2(L2_2)
end
L1_1._refresh_view = L2_1
function L2_1(A0_2)
  local L1_2
  L1_2 = A0_2._total_count
  return L1_2
end
L1_1._get_item_count = L2_1
function L2_1(A0_2, A1_2)
  local L2_2
  L2_2 = A1_2 == 0
  return L2_2
end
L1_1._is_item_unknown = L2_1
function L2_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L4_2 = A1_2
  L3_2 = A1_2.NewListViewItem
  L5_2 = 0
  L3_2 = L3_2(L4_2, L5_2)
  L4_2 = L3_2.UserObjectData
  if L4_2 == nil then
    L6_2 = A0_2
    L5_2 = A0_2.create_panel
    L7_2 = G
    L7_2 = L7_2.ActivityMonopolyMiniGameChequeItemPanel
    L8_2 = G
    L8_2 = L8_2.ActivityMonopolyMiniGameChequeItemPanelBinder
    L5_2 = L5_2(L6_2, L7_2, L8_2)
    L4_2 = L5_2
    L6_2 = L4_2
    L5_2 = L4_2.bind
    L7_2 = L3_2.transform
    L5_2(L6_2, L7_2)
    L3_2.UserObjectData = L4_2
  end
  L5_2 = A0_2._resource_ids
  L6_2 = A2_2 + 1
  L5_2 = L5_2[L6_2]
  L7_2 = A0_2
  L6_2 = A0_2._is_item_unknown
  L8_2 = L5_2
  L6_2 = L6_2(L7_2, L8_2)
  if L6_2 then
    L7_2 = L4_2
    L6_2 = L4_2.setup_unknown_view
    L8_2 = G
    L8_2 = L8_2.Utils
    L8_2 = L8_2.index_of_item
    L9_2 = A0_2._empty_indexs
    L10_2 = A2_2 + 1
    L8_2, L9_2, L10_2 = L8_2(L9_2, L10_2)
    L6_2(L7_2, L8_2, L9_2, L10_2)
  else
    L7_2 = L4_2
    L6_2 = L4_2.setup_view
    L8_2 = L5_2
    L6_2(L7_2, L8_2)
  end
  return L3_2
end
L1_1._on_item_changed = L2_1
return L1_1
