local L0_1, L1_1, L2_1
L0_1 = require
L1_1 = "Ui.Archive.MonsterArchive.MonsterCampListPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Archive.MonsterArchive.MonsterCampListPanelBinder"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "MonsterArchiveTabItem"
L2_1 = G
L2_1 = L2_1.TabItem
L0_1 = L0_1(L1_1, L2_1)
L1_1 = CS
L1_1 = L1_1.RPG
L1_1 = L1_1.Client
L1_1 = L1_1.GlobalVars
L1_1 = L1_1.s_ModuleManager
L1_1 = L1_1.ArchiveModule
L1_1 = L1_1.ArchiveLockName
function L2_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2, L5_2
  A0_2._data = A1_2
  A0_2._camp_id = A2_2
  L5_2 = A0_2
  L4_2 = A0_2._gen_camp_id_list
  L4_2 = L4_2(L5_2)
  A0_2._camp_id_list = L4_2
  L4_2 = A2_2 ~= 0 and A2_2 ~= 99
  A0_2._is_specify_camp = L4_2
  A0_2._all_entries = A3_2
end
L0_1.setup_view = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._camp_id
  if L1_2 == 0 then
    L1_2 = G
    L1_2 = L1_2.Utils
    L1_2 = L1_2.create_lua_table_from_cs_list
    L2_2 = A0_2._data
    L3_2 = L2_2
    L2_2 = L2_2.GetAllMonsterCampID
    L2_2, L3_2 = L2_2(L3_2)
    return L1_2(L2_2, L3_2)
  end
  L1_2 = A0_2._camp_id
  if L1_2 == 99 then
    L1_2 = nil
    return L1_2
  end
  L1_2 = {}
  L2_2 = A0_2._camp_id
  L1_2[1] = L2_2
  return L1_2
end
L0_1._gen_camp_id_list = L2_1
function L2_1(A0_2)
  local L1_2
  L1_2 = A0_2._camp_id
  return L1_2
end
L0_1.get_monster_camp_id = L2_1
function L2_1(A0_2, A1_2)
  A0_2._camp_id_list = A1_2
end
L0_1.set_camp_ids = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.monster_camp_list
  L2_2 = L1_2
  L1_2 = L1_2.SetListItemCount
  L3_2 = A0_2._camp_id_list
  L3_2 = #L3_2
  L4_2 = true
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.monster_camp_list
  L2_2 = L1_2
  L1_2 = L1_2.RefreshAllShownItem
  L1_2(L2_2)
end
L0_1._refresh = L2_1
function L2_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L4_2 = A1_2
  L3_2 = A1_2.NewListViewItem
  L5_2 = 0
  L3_2 = L3_2(L4_2, L5_2)
  L4_2 = L3_2.UserObjectData
  if L4_2 == nil then
    L6_2 = A0_2
    L5_2 = A0_2.create_panel
    L7_2 = G
    L7_2 = L7_2.MonsterCampListPanel
    L8_2 = G
    L8_2 = L8_2.MonsterCampListPanelBinder
    L5_2 = L5_2(L6_2, L7_2, L8_2)
    L4_2 = L5_2
    L6_2 = L4_2
    L5_2 = L4_2.bind
    L7_2 = L3_2.transform
    L5_2(L6_2, L7_2)
    L3_2.UserObjectData = L4_2
  end
  L5_2 = A0_2._camp_id_list
  L6_2 = A2_2 + 1
  L5_2 = L5_2[L6_2]
  L7_2 = L4_2
  L6_2 = L4_2.setup_view
  L8_2 = A0_2._data
  L9_2 = L5_2
  L6_2(L7_2, L8_2, L9_2)
  L7_2 = L4_2
  L6_2 = L4_2.register_click_callback
  L8_2 = A0_2._on_item_click
  L9_2 = A0_2
  L6_2(L7_2, L8_2, L9_2)
  L7_2 = L4_2
  L6_2 = L4_2.set_title_visible
  L8_2 = A0_2._is_specify_camp
  L8_2 = not L8_2
  L6_2(L7_2, L8_2)
  L6_2 = CS
  L6_2 = L6_2.UnityEngine
  L6_2 = L6_2.UI
  L6_2 = L6_2.LayoutRebuilder
  L6_2 = L6_2.ForceRebuildLayoutImmediate
  L7_2 = L3_2.transform
  L6_2(L7_2)
  L7_2 = L3_2
  L6_2 = L3_2.SetSubList
  L9_2 = L4_2
  L8_2 = L4_2.get_static_list
  L8_2, L9_2 = L8_2(L9_2)
  L6_2(L7_2, L8_2, L9_2)
  return L3_2
end
L0_1._on_get_monster_camp_item = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = A0_2._camp_id
  if L1_2 == 0 then
    L1_2 = A0_2._binder
    L1_2 = L1_2.text_title
    L2_2 = L1_2
    L1_2 = L1_2.SafeSetTextID
    L3_2 = "UIText_Atlas_All"
    L1_2(L2_2, L3_2)
    L2_2 = A0_2
    L1_2 = A0_2._async_load_sprite_to
    L3_2 = A0_2._binder
    L3_2 = L3_2.img_icon
    L4_2 = "SpriteOutput/TabIcon/Common/AllIcon.png"
    L1_2(L2_2, L3_2, L4_2)
  else
    L1_2 = A0_2._camp_id
    if L1_2 ~= 99 then
      L1_2 = A0_2._data
      L2_2 = L1_2
      L1_2 = L1_2.IsCampContainUnlockMonster
      L3_2 = A0_2._camp_id
      L1_2 = L1_2(L2_2, L3_2)
      if not L1_2 then
        goto lbl_42
      end
    end
    L1_2 = CS
    L1_2 = L1_2.RPG
    L1_2 = L1_2.GameCore
    L1_2 = L1_2.CharacterCampConfigExcelTable
    L1_2 = L1_2.GetData
    L2_2 = A0_2._camp_id
    L1_2 = L1_2(L2_2)
    L2_2 = A0_2._binder
    L2_2 = L2_2.text_title
    L3_2 = L2_2
    L2_2 = L2_2.SafeSetTextID
    L4_2 = L1_2.Name
    L2_2(L3_2, L4_2)
    L3_2 = A0_2
    L2_2 = A0_2._async_load_sprite_to
    L4_2 = A0_2._binder
    L4_2 = L4_2.img_icon
    L5_2 = L1_2.IconPath
    L2_2(L3_2, L4_2, L5_2)
    goto lbl_52
    ::lbl_42::
    L1_2 = A0_2._binder
    L1_2 = L1_2.text_title
    L2_2 = L1_2
    L1_2 = L1_2.SetCustomizedText
    L3_2 = L1_1
    L1_2(L2_2, L3_2)
    L2_2 = A0_2
    L1_2 = A0_2._async_load_sprite_to
    L3_2 = A0_2._binder
    L3_2 = L3_2.img_icon
    L4_2 = "SpriteOutput/AtlasIcon/EnemyIcon.png"
    L1_2(L2_2, L3_2, L4_2)
  end
  ::lbl_52::
end
L0_1._on_added = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L1_2 = CS
  L1_2 = L1_2.SuperScrollView
  L1_2 = L1_2.LoopListViewInitParam
  L1_2 = L1_2()
  L1_2.mDistanceForRecycle0 = 1100
  L1_2.mDistanceForNew0 = 1000
  L1_2.mDistanceForRecycle1 = 1100
  L1_2.mDistanceForNew1 = 1000
  L2_2 = A0_2._binder
  L2_2 = L2_2.monster_camp_list
  L3_2 = L2_2
  L2_2 = L2_2.SafeInitListView
  L4_2 = 0
  L5_2 = A0_2._on_get_monster_camp_item
  L6_2 = L1_2
  L7_2 = A0_2
  L2_2(L3_2, L4_2, L5_2, L6_2, L7_2)
  L3_2 = A0_2
  L2_2 = A0_2._refresh
  L2_2(L3_2)
end
L0_1._on_select = L2_1
function L2_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._data
  L2_2 = L1_2
  L1_2 = L1_2.ClearAllNewStatus
  L1_2(L2_2)
end
L0_1._on_unselect = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2._data
  L3_2 = L2_2
  L2_2 = L2_2.OnEntryClick
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
  L2_2 = G
  L2_2 = L2_2.UIManager
  L2_2 = L2_2.load_and_async_show
  L3_2 = "Ui.Archive.MonsterArchive.MonsterArchiveDetailPage"
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
end
L0_1._on_item_click = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.monster_camp_list
  L2_2 = L1_2
  L1_2 = L1_2.GetShownItemByItemIndex
  L3_2 = 0
  L1_2 = L1_2(L2_2, L3_2)
  if L1_2 == nil then
    L2_2 = A0_2._binder
    L2_2 = L2_2.monster_camp_list
    L3_2 = L2_2
    L2_2 = L2_2.MovePanelToItemIndex
    L4_2 = 0
    L2_2(L3_2, L4_2)
    L2_2 = A0_2._binder
    L2_2 = L2_2.monster_camp_list
    L3_2 = L2_2
    L2_2 = L2_2.GetShownItemByItemIndex
    L4_2 = 0
    L2_2 = L2_2(L3_2, L4_2)
    L1_2 = L2_2
  end
  if L1_2 ~= nil then
    L2_2 = L1_2.UserObjectData
    L3_2 = L2_2
    L2_2 = L2_2.get_first_selected_object
    return L2_2(L3_2)
  end
  L2_2 = nil
  return L2_2
end
L0_1.get_first_selected_object = L2_1
return L0_1
