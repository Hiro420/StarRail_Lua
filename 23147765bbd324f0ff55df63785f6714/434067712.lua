local L0_1, L1_1, L2_1
L0_1 = require
L1_1 = "Ui.Map.RegionalDetail.MapSymbolDetailPanelBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Map.RegionalDetail.SymbolDetail.RewardCollection.MapRewardCollectionDetailItemPanel"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "MapRewardCollectionDetailPanel"
L2_1 = G
L2_1 = L2_1.BasePanel
L0_1 = L0_1(L1_1, L2_1)
L1_1 = CS
L1_1 = L1_1.RPG
L1_1 = L1_1.Client
L1_1 = L1_1.GlobalVars
L1_1 = L1_1.s_ModuleManager
L1_1 = L1_1.QuestModule
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L2_2 = A0_2
  L1_2 = A0_2.create_panel
  L3_2 = G
  L3_2 = L3_2.NodeListView
  L4_2 = G
  L4_2 = L4_2.NodeListViewBinder
  L5_2 = "Ui.Map.RegionalDetail.SymbolDetail.RewardCollection.MapRewardCollectionDetailItemPanel"
  L6_2 = "Ui.Map.RegionalDetail.SymbolDetail.RewardCollection.MapRewardCollectionDetailItemPanelBinder"
  L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2, L6_2)
  A0_2._panel_reward_collection_list = L1_2
  L1_2 = A0_2._panel_reward_collection_list
  L2_2 = L1_2
  L1_2 = L1_2.bind
  L3_2 = A0_2._binder
  L3_2 = L3_2.node_reward_collection_list_root
  L1_2(L2_2, L3_2)
end
L0_1._on_load = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_progress
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = true
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_reward_collection_root
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = true
  L2_2(L3_2, L4_2)
  L2_2 = {}
  A0_2._reward_item_list = L2_2
  L3_2 = A0_2
  L2_2 = A0_2._bind_btn_callback
  L4_2 = A0_2._binder
  L4_2 = L4_2.btn_game_pad
  L5_2 = A0_2._on_btn_game_pad_click
  L2_2(L3_2, L4_2, L5_2)
  L2_2 = A1_2.map_icon_data
  L2_2 = L2_2.MappingInfoRow
  L2_2 = L2_2.ID
  L3_2 = A1_2.map_icon_data
  L3_2 = L3_2.MappingInfoRow
  L3_2 = L3_2.WorldLevel
  L4_2 = CS
  L4_2 = L4_2.RPG
  L4_2 = L4_2.GameCore
  L4_2 = L4_2.SpecialMappingInfoExcelTable
  L4_2 = L4_2.GetData
  L5_2 = L2_2
  L6_2 = L3_2
  L4_2 = L4_2(L5_2, L6_2)
  if L4_2 then
    L5_2 = L4_2.ParamList
    L5_2 = L5_2.Length
    if 0 < L5_2 then
      L5_2 = G
      L5_2 = L5_2.Utils
      L5_2 = L5_2.create_lua_table_from_cs_array
      L6_2 = L4_2.ParamList
      L5_2 = L5_2(L6_2)
      L6_2 = {}
      L7_2 = true
      L8_2 = false
      L9_2 = {}
      L10_2 = ipairs
      L11_2 = L5_2
      L10_2, L11_2, L12_2 = L10_2(L11_2)
      for L13_2, L14_2 in L10_2, L11_2, L12_2 do
        L15_2 = {}
        L15_2.quest_id = L14_2
        L16_2 = #L5_2
        L16_2 = L5_2[L16_2]
        L15_2.last_quest_id = L16_2
        L16_2 = table
        L16_2 = L16_2.insert
        L17_2 = L6_2
        L18_2 = L15_2
        L16_2(L17_2, L18_2)
        L16_2 = L1_1
        L17_2 = L16_2
        L16_2 = L16_2.TryGetQuestData
        L18_2 = L14_2
        L16_2 = L16_2(L17_2, L18_2)
        L17_2 = L16_2.Status
        L18_2 = CS
        L18_2 = L18_2.LEOGBBOPKKO
        L18_2 = L18_2.CMOFEAFMGAK
        if L17_2 ~= L18_2 then
          L7_2 = false
        end
        L17_2 = L16_2.Status
        L18_2 = CS
        L18_2 = L18_2.LEOGBBOPKKO
        L18_2 = L18_2.JKFPIINHGPD
        if L17_2 == L18_2 then
          L8_2 = true
        end
        L17_2 = G
        L17_2 = L17_2.RewardUtils
        L17_2 = L17_2.CreateRewardItemTableSorted
        L18_2 = L16_2.RewardID
        L17_2 = L17_2(L18_2)
        L18_2 = ipairs
        L19_2 = L17_2
        L18_2, L19_2, L20_2 = L18_2(L19_2)
        for L21_2, L22_2 in L18_2, L19_2, L20_2 do
          L23_2 = L22_2.ItemID
          L23_2 = L9_2[L23_2]
          if L23_2 == nil then
            L23_2 = L22_2.ItemID
            L9_2[L23_2] = true
            L23_2 = table
            L23_2 = L23_2.insert
            L24_2 = A0_2._reward_item_list
            L25_2 = L22_2.ItemID
            L23_2(L24_2, L25_2)
          end
        end
      end
      L10_2 = A0_2._panel_reward_collection_list
      L11_2 = L10_2
      L10_2 = L10_2.setup_view
      L12_2 = L6_2
      L10_2(L11_2, L12_2)
      L10_2 = A0_2._binder
      L10_2 = L10_2.node_completed_reward_collection
      L11_2 = L10_2
      L10_2 = L10_2.SafeSetActive
      L12_2 = L7_2
      L10_2(L11_2, L12_2)
      L11_2 = A0_2
      L10_2 = A0_2._try_show_red_dot_tip
      L12_2 = L8_2
      L10_2(L11_2, L12_2)
    end
  end
end
L0_1.setup_view = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._reward_item_list
  L1_2 = #L1_2
  if 0 < L1_2 then
    L2_2 = A0_2
    L1_2 = A0_2.is_active
    L1_2 = L1_2(L2_2)
    if L1_2 then
      L1_2 = {}
      L2_2 = A0_2._reward_item_list
      L1_2.items = L2_2
      L2_2 = G
      L2_2 = L2_2.InventoryUtils
      L2_2 = L2_2.show_item_detail_display_dialog_for_gamepad
      L3_2 = L1_2
      L2_2(L3_2)
    end
  end
end
L0_1._on_btn_game_pad_click = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  if A1_2 then
    L2_2 = A0_2._binder
    L2_2 = L2_2.node_red_dot_tip
    L3_2 = L2_2
    L2_2 = L2_2.SafeSetActive
    L4_2 = true
    L2_2(L3_2, L4_2)
    L2_2 = A0_2._binder
    L2_2 = L2_2.text_red_dot_tip
    L3_2 = L2_2
    L2_2 = L2_2.SafeSetTextID
    L4_2 = "UIText_Origamibird_MapinfoHint"
    L2_2(L3_2, L4_2)
  end
end
L0_1._try_show_red_dot_tip = L2_1
return
