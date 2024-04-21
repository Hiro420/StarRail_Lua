local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1
L0_1 = require
L1_1 = "Ui.PhotoGraph.CameraOptions.PhotoGraphFreeStyleItemPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.PhotoGraph.CameraOptions.PhotoGraphFreeStyleItemPanelBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.PhotoGraph.PhotoGraphUtils"
L0_1(L1_1)
L0_1 = CS
L0_1 = L0_1.RPG
L0_1 = L0_1.Client
L0_1 = L0_1.GlobalVars
L0_1 = L0_1.s_ModuleManager
L0_1 = L0_1.PhotoGraphModule
L1_1 = "PhotoGraph_Title_Emotion"
L2_1 = "SpriteOutput/CameraIcon/CrameraTab/TabEmoji.png"
L3_1 = G
L3_1 = L3_1.Class
L4_1 = "PhotoGraphFacialExpressionPanel"
L5_1 = G
L5_1 = L5_1.TabItem
L3_1 = L3_1(L4_1, L5_1)
function L4_1(A0_2)
  local L1_2
  L1_2 = {}
  A0_2._em_item_data_list = L1_2
end
L3_1.ctor = L4_1
function L4_1(A0_2)
  local L1_2
  A0_2._em_item_data_list = nil
  A0_2._default_em_data = nil
end
L3_1._on_dispose = L4_1
function L4_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2._setup_tab_panel
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._load_em_data
  L1_2(L2_2)
end
L3_1._on_added = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.scroll_em_list
  L2_2 = L1_2
  L1_2 = L1_2.SafeInitGridView
  L3_2 = 0
  L4_2 = A0_2._on_em_change
  L5_2 = nil
  L6_2 = nil
  L7_2 = A0_2
  L1_2(L2_2, L3_2, L4_2, L5_2, L6_2, L7_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.text_title
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetTextID
  L3_2 = L1_1
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2._async_load_sprite_to
  L3_2 = A0_2._binder
  L3_2 = L3_2.img_title_icon
  L4_2 = L2_1
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._set_cur_em
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._refresh
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._on_em_click
  L3_2 = A0_2._cur_em_data
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2.force_set_first_navigation_target
  L1_2(L2_2)
end
L3_1._on_select = L4_1
function L4_1(A0_2)
  local L1_2
end
L3_1._on_unselect = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2
  L2_2 = A0_2
  L1_2 = A0_2._get_cur_em_data_btn
  L1_2 = L1_2(L2_2)
  if L1_2 == nil then
    L3_2 = A0_2
    L2_2 = A0_2._get_first_em_data_btn
    L2_2 = L2_2(L3_2)
    L1_2 = L2_2
  end
  if L1_2 ~= nil then
    L2_2 = L1_2.gameObject
    return L2_2
  end
  L2_2 = nil
  return L2_2
end
L3_1.get_first_selected_object = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2._get_cur_em_data_index
  L1_2 = L1_2(L2_2)
  if L1_2 ~= nil then
    L2_2 = A0_2._binder
    L2_2 = L2_2.scroll_em_list
    L3_2 = L2_2
    L2_2 = L2_2.GetShownItemByItemIndex
    L4_2 = L1_2 - 1
    L2_2 = L2_2(L3_2, L4_2)
    if L2_2 ~= nil then
      L3_2 = L2_2.UserObjectData
      if L3_2 ~= nil then
        L3_2 = L2_2.UserObjectData
        L3_2 = L3_2._binder
        L3_2 = L3_2.btn_root
        return L3_2
      end
    end
  end
end
L3_1._get_cur_em_data_btn = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.scroll_em_list
  L2_2 = L1_2
  L1_2 = L1_2.GetShownItemByItemIndex
  L3_2 = 0
  L1_2 = L1_2(L2_2, L3_2)
  if L1_2 ~= nil then
    L2_2 = L1_2.UserObjectData
    if L2_2 ~= nil then
      L2_2 = L1_2.UserObjectData
      L2_2 = L2_2._binder
      L2_2 = L2_2.btn_root
      return L2_2
    end
  end
end
L3_1._get_first_em_data_btn = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._cur_em_data
  if L1_2 ~= nil then
    L1_2 = A0_2._em_item_data_list
    if L1_2 ~= nil then
      L1_2 = G
      L1_2 = L1_2.Utils
      L1_2 = L1_2.index_of_item
      L2_2 = A0_2._em_item_data_list
      L3_2 = A0_2._cur_em_data
      return L1_2(L2_2, L3_2)
    end
  end
end
L3_1._get_cur_em_data_index = L4_1
function L4_1(A0_2)
  local L1_2
  L1_2 = A0_2._cur_em_data
  return L1_2
end
L3_1.get_cur_em_data = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L1_2 = L0_1.CurEmotionID
  L2_2 = pairs
  L3_2 = A0_2._em_item_data_list
  L2_2, L3_2, L4_2 = L2_2(L3_2)
  for L5_2, L6_2 in L2_2, L3_2, L4_2 do
    L7_2 = L6_2.EmotionID
    if L7_2 == L1_2 then
      A0_2._cur_em_data = L6_2
    end
  end
end
L3_1.init_cur_em_data = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._cur_em_data
  if L1_2 then
    L2_2 = A0_2
    L1_2 = A0_2._is_default_em
    L3_2 = A0_2._cur_em_data
    return L1_2(L2_2, L3_2)
  end
  L1_2 = A0_2._default_em_data
  if L1_2 then
    L2_2 = A0_2
    L1_2 = A0_2._is_default_em
    L3_2 = A0_2._default_em_data
    return L1_2(L2_2, L3_2)
  end
  L1_2 = false
  return L1_2
end
L3_1.is_in_default_em = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L1_2 = G
  L1_2 = L1_2.PhotoGraphUtils
  L1_2 = L1_2.get_em_avatar_id
  L1_2 = L1_2()
  L2_2 = L0_1
  L3_2 = L2_2
  L2_2 = L2_2.GetAvatarEmotionConfigs
  L4_2 = L1_2
  L2_2 = L2_2(L3_2, L4_2)
  L3_2 = L0_1.PhotoGraphSettingConfig
  L3_2 = L3_2.DefaultEmotionConfigID
  L4_2 = CS
  L4_2 = L4_2.RPG
  L4_2 = L4_2.GameCore
  L4_2 = L4_2.PhotoGraphEmotionConfigExcelTable
  L4_2 = L4_2.GetData
  L5_2 = L3_2
  L4_2 = L4_2(L5_2)
  A0_2._default_em_data = L4_2
  L4_2 = {}
  A0_2._em_item_data_list = L4_2
  L4_2 = A0_2._em_item_data_list
  L5_2 = A0_2._default_em_data
  L4_2[1] = L5_2
  L4_2 = 0
  L5_2 = L2_2.Count
  L5_2 = L5_2 - 1
  L6_2 = 1
  for L7_2 = L4_2, L5_2, L6_2 do
    L8_2 = A0_2._em_item_data_list
    L9_2 = A0_2._em_item_data_list
    L9_2 = #L9_2
    L9_2 = L9_2 + 1
    L10_2 = L2_2[L7_2]
    L8_2[L9_2] = L10_2
  end
end
L3_1._load_em_data = L4_1
function L4_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2._setup_em_list
  L1_2(L2_2)
end
L3_1._refresh = L4_1
function L4_1(A0_2)
  local L1_2
  L1_2 = A0_2._cur_em_data
  if L1_2 ~= nil then
    return
  end
  L1_2 = A0_2._em_item_data_list
  L1_2 = L1_2[1]
  A0_2._cur_em_data = L1_2
end
L3_1._set_cur_em = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.scroll_em_list
  L2_2 = L1_2
  L1_2 = L1_2.SetListItemCount
  L3_2 = A0_2._em_item_data_list
  L3_2 = #L3_2
  L4_2 = true
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.scroll_em_list
  L2_2 = L1_2
  L1_2 = L1_2.RefreshAllShownItem
  L1_2(L2_2)
end
L3_1._setup_em_list = L4_1
function L4_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L4_2 = A1_2
  L3_2 = A1_2.NewListViewItem
  L5_2 = 0
  L3_2 = L3_2(L4_2, L5_2)
  L4_2 = L3_2.UserObjectData
  if L4_2 == nil then
    L3_2.UserObjectData = nil
    L6_2 = A0_2
    L5_2 = A0_2.create_panel
    L7_2 = G
    L7_2 = L7_2.PhotoGraphFreeStyleItemPanel
    L8_2 = G
    L8_2 = L8_2.PhotoGraphFreeStyleItemPanelBinder
    L5_2 = L5_2(L6_2, L7_2, L8_2)
    L4_2 = L5_2
    L6_2 = L4_2
    L5_2 = L4_2.bind
    L7_2 = L3_2.transform
    L5_2(L6_2, L7_2)
    L3_2.UserObjectData = L4_2
  end
  L5_2 = A0_2._em_item_data_list
  L6_2 = A2_2 + 1
  L5_2 = L5_2[L6_2]
  L7_2 = L4_2
  L6_2 = L4_2.set_data
  L8_2 = L5_2
  L9_2 = A2_2 + 1
  L10_2 = true
  L6_2(L7_2, L8_2, L9_2, L10_2)
  L7_2 = L4_2
  L6_2 = L4_2.setup_title
  L8_2 = L5_2.EmotionName
  L6_2(L7_2, L8_2)
  L7_2 = L4_2
  L6_2 = L4_2.setup_icon
  L8_2 = L5_2.EmotionIconPath
  L6_2(L7_2, L8_2)
  L7_2 = L4_2
  L6_2 = L4_2.set_state
  L8_2 = false
  L9_2 = false
  L6_2(L7_2, L8_2, L9_2)
  L7_2 = L4_2
  L6_2 = L4_2.set_select
  L8_2 = A0_2._cur_em_data
  if L8_2 then
    L8_2 = L5_2.EmotionID
    L9_2 = A0_2._cur_em_data
    L9_2 = L9_2.EmotionID
    L8_2 = L8_2 == L9_2
  end
  L6_2(L7_2, L8_2)
  L7_2 = L4_2
  L6_2 = L4_2.register_click_handler
  L8_2 = A0_2._on_em_click
  L9_2 = A0_2
  L6_2(L7_2, L8_2, L9_2)
  return L3_2
end
L3_1._on_em_change = L4_1
function L4_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2
  if A1_2 == nil then
    return
  end
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.Client
  L2_2 = L2_2.GlobalVars
  L2_2 = L2_2.s_GamePhaseManager
  L3_2 = L2_2
  L2_2 = L2_2.GetCurrentPhase
  L2_2 = L2_2(L3_2)
  if L2_2 ~= nil then
    L3_2 = L2_2.CurrentPlayingTeamMember
    L5_2 = A0_2
    L4_2 = A0_2._is_default_em
    L6_2 = A1_2
    L4_2 = L4_2(L5_2, L6_2)
    if L4_2 then
      L0_1.CurEmotionID = 0
      L4_2 = G
      L4_2 = L4_2.PhotoGraphUtils
      L4_2 = L4_2.reset_emotion
      L5_2 = L3_2
      L4_2(L5_2)
    else
      L4_2 = A1_2.EmotionID
      L0_1.CurEmotionID = L4_2
      L4_2 = G
      L4_2 = L4_2.PhotoGraphUtils
      L4_2 = L4_2.set_emotion
      L5_2 = L2_2.CurrentPlayingTeamMember
      L6_2 = A1_2.EmotionID
      L4_2(L5_2, L6_2)
    end
  end
  A0_2._cur_em_data = A1_2
  L4_2 = A0_2
  L3_2 = A0_2._refresh
  L3_2(L4_2)
end
L3_1._on_em_click = L4_1
function L4_1(A0_2, A1_2)
  local L2_2, L3_2
  L2_2 = A1_2.EmotionID
  L3_2 = A0_2._default_em_data
  L3_2 = L3_2.EmotionID
  L2_2 = L2_2 == L3_2
  return L2_2
end
L3_1._is_default_em = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2._async_load_sprite_to
  L3_2 = A0_2._binder
  L3_2 = L3_2.img_icon
  L4_2 = "SpriteOutput/CameraIcon/CrameraTab/TabEmoji.png"
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._async_load_sprite_to
  L3_2 = A0_2._binder
  L3_2 = L3_2.img_icon_unselect
  L4_2 = "SpriteOutput/CameraIcon/CrameraTab/TabEmoji.png"
  L1_2(L2_2, L3_2, L4_2)
end
L3_1._setup_tab_panel = L4_1
return L3_1
