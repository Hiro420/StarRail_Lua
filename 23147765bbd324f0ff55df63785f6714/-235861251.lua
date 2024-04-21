local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1, L6_1, L7_1
L0_1 = require
L1_1 = "Ui.SpaceZoo.SpaceZooUtils"
L0_1(L1_1)
L0_1 = CS
L0_1 = L0_1.RPG
L0_1 = L0_1.GameCore
L0_1 = L0_1.SpaceZooChannelConfigExcelTable
L1_1 = CS
L1_1 = L1_1.RPG
L1_1 = L1_1.Client
L1_1 = L1_1.GlobalVars
L1_1 = L1_1.s_ModuleManager
L1_1 = L1_1.SpaceZooModule
L2_1 = {}
L3_1 = CS
L3_1 = L3_1.RPG
L3_1 = L3_1.GameCore
L3_1 = L3_1.SpaceZooChannelType
L3_1 = L3_1.HatColor
L3_1 = #L3_1
L2_1[L3_1] = 1
L3_1 = CS
L3_1 = L3_1.RPG
L3_1 = L3_1.GameCore
L3_1 = L3_1.SpaceZooChannelType
L3_1 = L3_1.BodyColor
L3_1 = #L3_1
L2_1[L3_1] = 2
L3_1 = CS
L3_1 = L3_1.RPG
L3_1 = L3_1.GameCore
L3_1 = L3_1.SpaceZooChannelType
L3_1 = L3_1.BodyDecal
L3_1 = #L3_1
L2_1[L3_1] = 3
L3_1 = CS
L3_1 = L3_1.RPG
L3_1 = L3_1.GameCore
L3_1 = L3_1.SpaceZooChannelType
L3_1 = L3_1.HatDecal
L3_1 = #L3_1
L2_1[L3_1] = 4
L3_1 = CS
L3_1 = L3_1.RPG
L3_1 = L3_1.GameCore
L3_1 = L3_1.SpaceZooChannelType
L3_1 = L3_1.TailDecal
L3_1 = #L3_1
L2_1[L3_1] = 4
L3_1 = CS
L3_1 = L3_1.RPG
L3_1 = L3_1.GameCore
L3_1 = L3_1.SpaceZooChannelType
L3_1 = L3_1.EyeDecal
L3_1 = #L3_1
L2_1[L3_1] = 5
L3_1 = "9618"
L4_1 = "CommonTabSwtich_From_B"
L5_1 = G
L5_1 = L5_1.Class
L6_1 = "SpaceZooFeatureHandbookPanel"
L7_1 = G
L7_1 = L7_1.TabItem
L5_1 = L5_1(L6_1, L7_1)
function L6_1(A0_2, A1_2, A2_2)
  A0_2._default_select_feature = 1
end
L5_1.ctor = L6_1
function L6_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2._setup_tab_btn_info
  L1_2(L2_2)
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.GlobalVars
  L1_2 = L1_2.s_ModuleManager
  L1_2 = L1_2.TutorialSupportModule
  L2_2 = L1_2
  L1_2 = L1_2.SetNodeDynamicKey
  L3_2 = A0_2._binder
  L3_2 = L3_2.tab_btn
  L3_2 = L3_2.gameObject
  L4_2 = A0_2.uid
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.anim_root
  L2_2 = L1_2
  L1_2 = L1_2.GetClip
  L3_2 = L4_1
  L1_2 = L1_2(L2_2, L3_2)
  L1_2 = L1_2.length
  A0_2._anim_length = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._add_count_down_timer
  L3_2 = A0_2._play_unlock_anim
  L4_2 = A0_2._anim_length
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2._anim_timer = L1_2
end
L5_1._on_added = L6_1
function L6_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = G
  L1_2 = L1_2.Utils
  L1_2 = L1_2.create_lua_table_from_cs_dict
  L2_2 = L1_1.SpaceZooData
  L2_2 = L2_2.Features
  L1_2 = L1_2(L2_2)
  A0_2._feature_data_table = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._setup_text
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._setup_feature_list_panel
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._setup_feature_unlock_anim
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._setup_custom_navigation
  L1_2(L2_2)
  L1_2 = G
  L1_2 = L1_2.NotifyManager
  L1_2 = L1_2.notify
  L2_2 = G
  L2_2 = L2_2.CS
  L2_2 = L2_2.NotifyType
  L2_2 = L2_2.TutorialTaskUnlock
  L3_2 = L3_1
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2._refresh
  L1_2(L2_2)
  L1_2 = A0_2._anim_timer
  L2_2 = L1_2
  L1_2 = L1_2.reset
  L1_2(L2_2)
  L1_2 = A0_2._anim_timer
  L2_2 = L1_2
  L1_2 = L1_2.start
  L1_2(L2_2)
end
L5_1._on_select = L6_1
function L6_1(A0_2)
  local L1_2
end
L5_1._on_unselect = L6_1
function L6_1(A0_2)
  local L1_2
end
L5_1._on_dispose = L6_1
function L6_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._default_select_feature
  if L1_2 ~= nil then
    L1_2 = A0_2._binder
    L1_2 = L1_2.panel_handbook
    L2_2 = A0_2._default_select_feature
    L1_2 = L1_2[L2_2]
    if L1_2 ~= nil then
      L3_2 = L1_2
      L2_2 = L1_2.get_first_selected_object
      return L2_2(L3_2)
    end
  end
end
L5_1.get_first_selected_object = L6_1
function L6_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.panel_handbook
  if L1_2 == nil then
    return
  end
  L1_2 = {}
  L2_2 = 1
  L3_2 = A0_2._binder
  L3_2 = L3_2.panel_handbook
  L3_2 = #L3_2
  L4_2 = 1
  for L5_2 = L2_2, L3_2, L4_2 do
    L6_2 = table
    L6_2 = L6_2.insert
    L7_2 = L1_2
    L8_2 = A0_2._binder
    L8_2 = L8_2.panel_handbook
    L8_2 = L8_2[L5_2]
    L9_2 = L8_2
    L8_2 = L8_2.get_btn
    L8_2, L9_2 = L8_2(L9_2)
    L6_2(L7_2, L8_2, L9_2)
  end
  if L1_2 ~= nil then
    L2_2 = #L1_2
    if 0 < L2_2 then
      L3_2 = A0_2
      L2_2 = A0_2.setup_navigation
      L4_2 = L1_2
      L5_2 = NavigationType
      L5_2 = L5_2.Horizontal
      L6_2 = true
      L2_2(L3_2, L4_2, L5_2, L6_2)
    end
  end
end
L5_1._setup_custom_navigation = L6_1
function L6_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = 1
  L2_2 = A0_2._binder
  L2_2 = L2_2.panel_handbook
  L2_2 = #L2_2
  L3_2 = 1
  for L4_2 = L1_2, L2_2, L3_2 do
    L5_2 = A0_2._binder
    L5_2 = L5_2.panel_handbook
    L5_2 = L5_2[L4_2]
    L6_2 = L5_2
    L5_2 = L5_2.stop_anim
    L5_2(L6_2)
  end
end
L5_1._refresh = L6_1
function L6_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.text_detail
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetTextID
  L3_2 = "UIText_ActivitySpaceZoo_SpecialFeaturesTips"
  L1_2(L2_2, L3_2)
end
L5_1._setup_text = L6_1
function L6_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.text_title
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetTextID
  L3_2 = "UIText_ActivitySpaceZoo_MuseumPage_Feature"
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2._async_load_sprite_to
  L3_2 = A0_2._binder
  L3_2 = L3_2.img_icon
  L4_2 = "SpriteOutput/Quest/SpaceZoo/SpaceZooIcon/SpaceZooTabCakePartIcon.png"
  L1_2(L2_2, L3_2, L4_2)
end
L5_1._setup_tab_btn_info = L6_1
function L6_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L1_2 = 1
  L2_2 = A0_2._binder
  L2_2 = L2_2.panel_handbook
  L2_2 = #L2_2
  L3_2 = 1
  for L4_2 = L1_2, L2_2, L3_2 do
    L5_2 = A0_2._binder
    L5_2 = L5_2.panel_handbook
    L5_2 = L5_2[L4_2]
    L6_2 = L5_2
    L5_2 = L5_2.register_select_trigger_callback
    L7_2 = A0_2._on_select_trigger
    L8_2 = A0_2
    L5_2(L6_2, L7_2, L8_2)
  end
end
L5_1._setup_feature_list_panel = L6_1
function L6_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.Prefs
  L1_2 = L1_2.User
  L1_2 = L1_2.SpaceZooNewFeatures
  L2_2 = 1
  L3_2 = A0_2._feature_data_table
  L3_2 = #L3_2
  L4_2 = 1
  for L5_2 = L2_2, L3_2, L4_2 do
    L7_2 = L1_2
    L6_2 = L1_2.Contains
    L8_2 = A0_2._feature_data_table
    L8_2 = L8_2[L5_2]
    L8_2 = L8_2.FeatureID
    L6_2 = L6_2(L7_2, L8_2)
    if L6_2 then
      L6_2 = A0_2._feature_data_table
      L6_2 = L6_2[L5_2]
      L6_2 = L6_2.Row
      L6_2 = L6_2.Channel
      L6_2 = #L6_2
      L6_2 = L2_1[L6_2]
      L8_2 = A0_2
      L7_2 = A0_2._set_scroll_rect_transform
      L9_2 = L6_2
      L7_2(L8_2, L9_2)
      return
    end
  end
end
L5_1._setup_feature_unlock_anim = L6_1
function L6_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L1_2 = A0_2._anim_timer
  L2_2 = L1_2
  L1_2 = L1_2.stop
  L1_2(L2_2)
  L1_2 = 1
  L2_2 = A0_2._feature_data_table
  L2_2 = #L2_2
  L3_2 = 1
  for L4_2 = L1_2, L2_2, L3_2 do
    L5_2 = CS
    L5_2 = L5_2.RPG
    L5_2 = L5_2.Client
    L5_2 = L5_2.Prefs
    L5_2 = L5_2.User
    L5_2 = L5_2.SpaceZooNewFeatures
    L6_2 = L5_2
    L5_2 = L5_2.Contains
    L7_2 = A0_2._feature_data_table
    L7_2 = L7_2[L4_2]
    L7_2 = L7_2.FeatureID
    L5_2 = L5_2(L6_2, L7_2)
    if L5_2 then
      L5_2 = A0_2._feature_data_table
      L5_2 = L5_2[L4_2]
      L5_2 = L5_2.Row
      L5_2 = L5_2.Channel
      L5_2 = #L5_2
      L5_2 = L2_1[L5_2]
      L6_2 = A0_2._binder
      L6_2 = L6_2.panel_handbook
      L6_2 = L6_2[L5_2]
      L7_2 = L6_2
      L6_2 = L6_2.play_feature_unlock_anim
      L8_2 = A0_2._feature_data_table
      L8_2 = L8_2[L4_2]
      L8_2 = L8_2.FeatureID
      L6_2(L7_2, L8_2)
      L6_2 = CS
      L6_2 = L6_2.RPG
      L6_2 = L6_2.Client
      L6_2 = L6_2.Prefs
      L6_2 = L6_2.User
      L6_2 = L6_2.SpaceZooNewFeatures
      L7_2 = L6_2
      L6_2 = L6_2.Remove
      L8_2 = A0_2._feature_data_table
      L8_2 = L8_2[L4_2]
      L8_2 = L8_2.FeatureID
      L6_2(L7_2, L8_2)
    end
  end
end
L5_1._play_unlock_anim = L6_1
function L6_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.scroll_rect
  L3_2 = L2_2
  L2_2 = L2_2.ScrollToTransform
  L4_2 = A0_2._binder
  L4_2 = L4_2.panel_handbook
  L4_2 = L4_2[A1_2]
  L5_2 = L4_2
  L4_2 = L4_2.get_root_transform
  L4_2 = L4_2(L5_2)
  L5_2 = 0.0
  L6_2 = true
  L7_2 = CS
  L7_2 = L7_2.UnityEngine
  L7_2 = L7_2.UI
  L7_2 = L7_2.ScrollRect
  L7_2 = L7_2.AlignDirection
  L7_2 = L7_2.TopOrLeft
  L8_2 = true
  L2_2(L3_2, L4_2, L5_2, L6_2, L7_2, L8_2)
end
L5_1._set_scroll_rect_transform = L6_1
function L6_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = #A1_2
  L2_2 = L2_1[L2_2]
  L4_2 = A0_2
  L3_2 = A0_2._set_scroll_rect_transform
  L5_2 = L2_2
  L3_2(L4_2, L5_2)
end
L5_1._on_select_trigger = L6_1
return L5_1
