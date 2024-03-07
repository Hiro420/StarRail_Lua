local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1, L6_1
L0_1 = require
L1_1 = "Ui.Expedition.AvatarSelect.ExpeditionAvatarSelectIconPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Expedition.AvatarSelect.ExpeditionAvatarSelectIconPanelBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Common.AvatarItemIconLitePanel"
L0_1(L1_1)
L0_1 = CS
L0_1 = L0_1.RPG
L0_1 = L0_1.Client
L0_1 = L0_1.GlobalVars
L0_1 = L0_1.s_ModuleManager
L0_1 = L0_1.AvatarModule
L1_1 = CS
L1_1 = L1_1.RPG
L1_1 = L1_1.Client
L1_1 = L1_1.GlobalVars
L1_1 = L1_1.s_ModuleManager
L1_1 = L1_1.ExpeditionModule
L2_1 = "UIText_Assignment_Assigned_Label"
L3_1 = "UIText_Assignment_Finished_Label"
L4_1 = G
L4_1 = L4_1.Class
L5_1 = "ExpeditionAvatarSelectPanel"
L6_1 = G
L6_1 = L6_1.BasePanel
L4_1 = L4_1(L5_1, L6_1)
function L5_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.scroll_avatars
  L2_2 = L1_2
  L1_2 = L1_2.SafeInitGridView
  L3_2 = 0
  L4_2 = A0_2._on_get_avatar_item
  L5_2 = nil
  L6_2 = nil
  L7_2 = A0_2
  L1_2(L2_2, L3_2, L4_2, L5_2, L6_2, L7_2)
end
L4_1._on_load = L5_1
function L5_1(A0_2, A1_2, A2_2)
  A0_2._selection_callback = A1_2
  A0_2._selection_handler = A2_2
end
L4_1.register_selection_callback = L5_1
function L5_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2
  A0_2._expedition_data = A2_2
  A0_2._selected_avatars = A1_2
  L3_2 = A0_2._expedition_data
  L3_2 = L3_2.MaxSelection
  A0_2._max_selected_num = L3_2
  L3_2 = A0_2._expedition_data
  L3_2 = L3_2.IsActivity
  if L3_2 == true then
    L3_2 = A0_2._max_selected_num
    L3_2 = L3_2 - 1
    A0_2._max_selected_num = L3_2
  end
  L3_2 = G
  L3_2 = L3_2.Utils
  L3_2 = L3_2.create_lua_table_from_cs_array
  L4_2 = A0_2._expedition_data
  L4_2 = L4_2.BonusProfessionTypes
  L3_2 = L3_2(L4_2)
  A0_2._bonus_types = L3_2
  L4_2 = A0_2
  L3_2 = A0_2._get_all_avatars
  L3_2 = L3_2(L4_2)
  A0_2._avatar_datas = L3_2
  L3_2 = A0_2._binder
  L3_2 = L3_2.scroll_avatars
  L4_2 = L3_2
  L3_2 = L3_2.SetListItemCount
  L5_2 = A0_2._avatar_datas
  L5_2 = #L5_2
  L6_2 = true
  L3_2(L4_2, L5_2, L6_2)
  L3_2 = A0_2._binder
  L3_2 = L3_2.scroll_avatars
  L4_2 = L3_2
  L3_2 = L3_2.RefreshAllShownItem
  L3_2(L4_2)
  L3_2 = A0_2._binder
  L3_2 = L3_2.txt_hint
  L4_2 = L3_2
  L3_2 = L3_2.SafeSetTextID
  L5_2 = A0_2._expedition_data
  L5_2 = L5_2.IsActivity
  if L5_2 == true then
    L5_2 = "UIText_ActivityExpedition_BonusDamageType_Tip"
    if L5_2 then
      goto lbl_45
    end
  end
  L5_2 = "UIText_Assignment_BonusDamageType_Tip"
  ::lbl_45::
  L3_2(L4_2, L5_2)
end
L4_1.setup_view = L5_1
function L5_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  if A1_2 then
    L2_2 = A0_2._binder
    L2_2 = L2_2.scroll_avatars
    L3_2 = L2_2
    L2_2 = L2_2.MovePanelToItemByIndex
    L4_2 = 0
    L2_2(L3_2, L4_2)
    L2_2 = A0_2._binder
    L2_2 = L2_2.scroll_avatars
    L3_2 = L2_2
    L2_2 = L2_2.RefreshAllShownItem
    L2_2(L3_2)
    L2_2 = A0_2._binder
    L2_2 = L2_2.scroll_avatars
    L3_2 = L2_2
    L2_2 = L2_2.PlayFadeIn
    L4_2 = true
    L2_2(L3_2, L4_2)
  else
    L2_2 = A0_2._binder
    L2_2 = L2_2.scroll_avatars
    L3_2 = L2_2
    L2_2 = L2_2.RefreshAllShownItem
    L2_2(L3_2)
  end
end
L4_1.refresh_view = L5_1
function L5_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.scroll_avatars
  L3_2 = L2_2
  L2_2 = L2_2.MovePanelToItemByIndex
  L4_2 = A1_2 - 1
  L2_2(L3_2, L4_2)
end
L4_1.move_to_index = L5_1
function L5_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2
  if A1_2 == nil then
    return
  end
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.Client
  L2_2 = L2_2.AvatarData
  L2_2 = L2_2.Create
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.Client
  L3_2 = L3_2.AvatarData
  L3_2 = L3_2.ConvertRealIDToBase
  L4_2 = A1_2
  L3_2, L4_2, L5_2, L6_2 = L3_2(L4_2)
  L2_2 = L2_2(L3_2, L4_2, L5_2, L6_2)
  if L2_2 == nil then
    return
  end
  L4_2 = A0_2
  L3_2 = A0_2._update_selected_avatars
  L5_2 = L2_2
  L3_2(L4_2, L5_2)
  L4_2 = A0_2
  L3_2 = A0_2.refresh_view
  L3_2(L4_2)
  L3_2 = G
  L3_2 = L3_2.Utils
  L3_2 = L3_2.invoke_callback
  L4_2 = A0_2._selection_callback
  L5_2 = A0_2._selection_handler
  L6_2 = A0_2._selected_avatars
  L3_2(L4_2, L5_2, L6_2)
end
L4_1.try_unselect_avatar = L5_1
function L5_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L1_2 = {}
  L2_2 = L0_1.AllAvatars
  L3_2 = pairs
  L4_2 = L2_2
  L3_2, L4_2, L5_2 = L3_2(L4_2)
  for L6_2, L7_2 in L3_2, L4_2, L5_2 do
    L8_2 = L7_2.IsTrialPlayer
    if not L8_2 then
      L8_2 = table
      L8_2 = L8_2.insert
      L9_2 = L1_2
      L10_2 = L7_2
      L8_2(L9_2, L10_2)
    end
  end
  L3_2 = table
  L3_2 = L3_2.sort
  L4_2 = L1_2
  function L5_2(A0_3, A1_3)
    local L2_3, L3_3, L4_3, L5_3, L6_3, L7_3
    L2_3 = A0_2
    L3_3 = L2_3
    L2_3 = L2_3._is_avatar_in_progress
    L4_3 = A0_3
    L2_3 = L2_3(L3_3, L4_3)
    L3_3 = A0_2
    L4_3 = L3_3
    L3_3 = L3_3._is_avatar_in_progress
    L5_3 = A1_3
    L3_3 = L3_3(L4_3, L5_3)
    if L2_3 ~= L3_3 then
      L4_3 = not L2_3
      return L4_3
    end
    L4_3 = A0_2
    L5_3 = L4_3
    L4_3 = L4_3._is_avatar_bonus
    L6_3 = A0_3
    L4_3 = L4_3(L5_3, L6_3)
    L5_3 = A0_2
    L6_3 = L5_3
    L5_3 = L5_3._is_avatar_bonus
    L7_3 = A1_3
    L5_3 = L5_3(L6_3, L7_3)
    if L4_3 ~= L5_3 then
      return L4_3
    end
    L6_3 = A0_3.Level
    L7_3 = A1_3.Level
    if L6_3 > L7_3 then
      L6_3 = true
      return L6_3
    end
  end
  L3_2(L4_2, L5_2)
  return L1_2
end
L4_1._get_all_avatars = L5_1
function L5_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L3_2 = A0_2
  L2_2 = A0_2._get_avatar_expedition
  L4_2 = A1_2
  L2_2 = L2_2(L3_2, L4_2)
  L2_2 = L2_2 ~= nil
  return L2_2
end
L4_1._is_avatar_in_progress = L5_1
function L5_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = A1_2.ID
  L3_2 = L1_1.RealAvatarIDToExpeditionData
  L4_2 = L3_2
  L3_2 = L3_2.ContainsKey
  L5_2 = L2_2
  L3_2 = L3_2(L4_2, L5_2)
  if L3_2 then
    L3_2 = L1_1.RealAvatarIDToExpeditionData
    L3_2 = L3_2[L2_2]
    return L3_2
  end
  L3_2 = L1_1.RealAvatarIDToActivityExpeditionData
  L4_2 = L3_2
  L3_2 = L3_2.ContainsKey
  L5_2 = L2_2
  L3_2 = L3_2(L4_2, L5_2)
  if L3_2 then
    L3_2 = L1_1.RealAvatarIDToActivityExpeditionData
    L3_2 = L3_2[L2_2]
    return L3_2
  end
  L3_2 = nil
  return L3_2
end
L4_1._get_avatar_expedition = L5_1
function L5_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = G
  L2_2 = L2_2.Utils
  L2_2 = L2_2.index_of_item
  L3_2 = A0_2._bonus_types
  L4_2 = A1_2.ProfessionType
  L2_2 = L2_2(L3_2, L4_2)
  L2_2 = L2_2 ~= nil
  return L2_2
end
L4_1._is_avatar_bonus = L5_1
function L5_1(A0_2, A1_2, A2_2)
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
    L7_2 = L7_2.ExpeditionAvatarSelectIconPanel
    L8_2 = G
    L8_2 = L8_2.ExpeditionAvatarSelectIconPanelBinder
    L5_2 = L5_2(L6_2, L7_2, L8_2)
    L4_2 = L5_2
    L6_2 = L4_2
    L5_2 = L4_2.bind
    L7_2 = L3_2.transform
    L5_2(L6_2, L7_2)
    L3_2.UserObjectData = L4_2
    L6_2 = L4_2
    L5_2 = L4_2.register_click_callback
    L7_2 = A0_2._on_click_avatar
    L8_2 = A0_2
    L5_2(L6_2, L7_2, L8_2)
  end
  L5_2 = A0_2._avatar_datas
  L6_2 = A2_2 + 1
  L5_2 = L5_2[L6_2]
  L7_2 = A0_2
  L6_2 = A0_2._setup_icon_view
  L8_2 = L4_2
  L9_2 = L5_2
  L6_2(L7_2, L8_2, L9_2)
  return L3_2
end
L4_1._on_get_avatar_item = L5_1
function L5_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L3_2 = G
  L3_2 = L3_2.AvatarUtils
  L3_2 = L3_2.index_of_nonsequence_avatar
  L4_2 = A0_2._selected_avatars
  L5_2 = A2_2
  L6_2 = A0_2._max_selected_num
  L3_2 = L3_2(L4_2, L5_2, L6_2)
  L4_2 = L3_2 ~= nil
  L5_2 = G
  L5_2 = L5_2.Utils
  L5_2 = L5_2.index_of_item
  L6_2 = A0_2._bonus_types
  L7_2 = A2_2.ProfessionType
  L5_2 = L5_2(L6_2, L7_2)
  L5_2 = L5_2 ~= nil
  L7_2 = A1_2
  L6_2 = A1_2.setup_view
  L8_2 = A2_2
  L9_2 = L5_2
  L6_2(L7_2, L8_2, L9_2)
  L7_2 = A0_2
  L6_2 = A0_2._get_avatar_expedition
  L8_2 = A2_2
  L6_2 = L6_2(L7_2, L8_2)
  L8_2 = A1_2
  L7_2 = A1_2.set_mask_hint
  L9_2 = L6_2 ~= nil
  if L6_2 ~= nil then
    L10_2 = L6_2.IsComplete
    if L10_2 then
      L10_2 = L3_1
      if L10_2 then
        goto lbl_46
      end
    end
    L10_2 = L2_1
    if L10_2 then
      goto lbl_46
    end
  end
  L10_2 = nil
  ::lbl_46::
  L7_2(L8_2, L9_2, L10_2)
  L8_2 = A1_2
  L7_2 = A1_2.setup_order
  L9_2 = L4_2
  L10_2 = L3_2
  L7_2(L8_2, L9_2, L10_2)
end
L4_1._setup_icon_view = L5_1
function L5_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L3_2 = A0_2
  L2_2 = A0_2._update_selected_avatars
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
  L3_2 = A0_2
  L2_2 = A0_2.refresh_view
  L2_2(L3_2)
  L2_2 = G
  L2_2 = L2_2.Utils
  L2_2 = L2_2.invoke_callback
  L3_2 = A0_2._selection_callback
  L4_2 = A0_2._selection_handler
  L5_2 = A0_2._selected_avatars
  L2_2(L3_2, L4_2, L5_2)
end
L4_1._on_click_avatar = L5_1
function L5_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2
  L2_2 = G
  L2_2 = L2_2.AvatarUtils
  L2_2 = L2_2.index_of_nonsequence_avatar
  L3_2 = A0_2._selected_avatars
  L4_2 = A1_2
  L5_2 = A0_2._max_selected_num
  L2_2 = L2_2(L3_2, L4_2, L5_2)
  L3_2 = L2_2 ~= nil
  if L3_2 then
    L5_2 = A0_2
    L4_2 = A0_2._try_unselect_avatar
    L6_2 = L2_2
    L4_2(L5_2, L6_2)
  else
    L5_2 = A0_2
    L4_2 = A0_2._try_select_avatar
    L6_2 = A1_2
    L4_2(L5_2, L6_2)
  end
end
L4_1._update_selected_avatars = L5_1
function L5_1(A0_2, A1_2)
  local L2_2
  L2_2 = A0_2._selected_avatars
  L2_2[A1_2] = nil
end
L4_1._try_unselect_avatar = L5_1
function L5_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L3_2 = A0_2
  L2_2 = A0_2._is_avatar_in_progress
  L4_2 = A1_2
  L2_2 = L2_2(L3_2, L4_2)
  if L2_2 then
    L2_2 = G
    L2_2 = L2_2.NotifyManager
    L2_2 = L2_2.notify
    L3_2 = G
    L3_2 = L3_2.CS
    L3_2 = L3_2.NotifyType
    L3_2 = L3_2.UIPileToastMessageTextID
    L4_2 = "UIText_Assignment_Toast_MemberInOtherAssignment"
    L2_2(L3_2, L4_2)
    return
  end
  L2_2 = nil
  L3_2 = 1
  L4_2 = A0_2._max_selected_num
  L5_2 = 1
  for L6_2 = L3_2, L4_2, L5_2 do
    L7_2 = A0_2._selected_avatars
    L7_2 = L7_2[L6_2]
    if L7_2 == nil and L2_2 == nil then
      L2_2 = L6_2
      break
    end
  end
  L3_2 = L2_2 ~= nil
  if not L3_2 then
    L4_2 = G
    L4_2 = L4_2.NotifyManager
    L4_2 = L4_2.notify
    L5_2 = G
    L5_2 = L5_2.CS
    L5_2 = L5_2.NotifyType
    L5_2 = L5_2.UIPileToastMessageTextID
    L6_2 = "UITextmap_TeamEditPage_Toast_MaxCount"
    L4_2(L5_2, L6_2)
    return
  end
  L4_2 = A0_2._selected_avatars
  L4_2[L2_2] = A1_2
end
L4_1._try_select_avatar = L5_1
function L5_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.scroll_avatars
  L2_2 = L1_2
  L1_2 = L1_2.GetShownItemByItemIndex
  L3_2 = 0
  L1_2 = L1_2(L2_2, L3_2)
  if L1_2 ~= nil then
    L2_2 = L1_2.UserObjectData
    if L2_2 ~= nil then
      goto lbl_13
    end
  end
  L2_2 = nil
  do return L2_2 end
  ::lbl_13::
  L2_2 = L1_2.UserObjectData
  L3_2 = L2_2
  L2_2 = L2_2.get_first_selected_object
  return L2_2(L3_2)
end
L4_1.get_first_selected_object = L5_1
return L4_1
