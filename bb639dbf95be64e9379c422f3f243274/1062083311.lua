local L0_1, L1_1, L2_1
L0_1 = require
L1_1 = "Ui.Activity.FantasticStoryActivity.Buff.FantasticStoryTrialAvatarIconPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Activity.FantasticStoryActivity.Buff.FantasticStoryAvatarIconListPanelBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.ActivityFeverTime.Buff.ActivityFeverTimeTrialAvatarIconPanelBinder"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "ActivityFeverTimeTrialAvatarIconPanel"
L2_1 = G
L2_1 = L2_1.BasePanel
L0_1 = L0_1(L1_1, L2_1)
L1_1 = CS
L1_1 = L1_1.RPG
L1_1 = L1_1.Client
L1_1 = L1_1.GlobalVars
L1_1 = L1_1.s_ModuleManager
L1_1 = L1_1.ActivityFeverTimeModule
function L2_1(A0_2)
  local L1_2
  L1_2 = {}
  A0_2._trial_avatar_icon_panel_list = L1_2
end
L0_1.ctor = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  A0_2._fever_time_id = A1_2
  L2_2 = G
  L2_2 = L2_2.Utils
  L2_2 = L2_2.create_lua_table_from_cs_list
  L3_2 = L1_1
  L4_2 = L3_2
  L3_2 = L3_2.GetTrialAvatarsByFeverTimeID
  L5_2 = A1_2
  L3_2, L4_2, L5_2 = L3_2(L4_2, L5_2)
  L2_2 = L2_2(L3_2, L4_2, L5_2)
  A0_2._trial_avatar_table = L2_2
  L3_2 = A0_2
  L2_2 = A0_2._setup_avatar_icon_list_view
  L2_2(L3_2)
end
L0_1.setup_view = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2
  L2_2 = A1_2 or nil
  if not A1_2 then
    L2_2 = L1_1
    L3_2 = L2_2
    L2_2 = L2_2.GetP1BuffID
    L4_2 = A0_2._fever_time_id
    L2_2 = L2_2(L3_2, L4_2)
  end
  L3_2 = pairs
  L4_2 = A0_2._trial_avatar_icon_panel_list
  L3_2, L4_2, L5_2 = L3_2(L4_2)
  for L6_2, L7_2 in L3_2, L4_2, L5_2 do
    L9_2 = L7_2
    L8_2 = L7_2.set_recommend_mark
    L11_2 = A0_2
    L10_2 = A0_2._check_is_recommend_avatar
    L12_2 = L2_2
    L13_2 = L6_2
    L10_2, L11_2, L12_2, L13_2 = L10_2(L11_2, L12_2, L13_2)
    L8_2(L9_2, L10_2, L11_2, L12_2, L13_2)
  end
end
L0_1.refresh_avatar_icon_list_view = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2
  L1_2 = {}
  A0_2._trial_avatar_icon_panel_list = L1_2
  L1_2 = 1
  L2_2 = A0_2._trial_avatar_table
  L2_2 = #L2_2
  L3_2 = 1
  for L4_2 = L1_2, L2_2, L3_2 do
    L5_2 = L1_1
    L6_2 = L5_2
    L5_2 = L5_2.GetP1BuffID
    L7_2 = A0_2._fever_time_id
    L5_2 = L5_2(L6_2, L7_2)
    L7_2 = A0_2
    L6_2 = A0_2.instantiate_object
    L8_2 = A0_2._binder
    L8_2 = L8_2.prefab_load_meta_avatar
    L8_2 = L8_2.Prefab
    L9_2 = A0_2._binder
    L9_2 = L9_2.prefab_load_meta_avatar
    L9_2 = L9_2.transform
    L6_2 = L6_2(L7_2, L8_2, L9_2)
    L8_2 = A0_2
    L7_2 = A0_2.create_panel
    L9_2 = G
    L9_2 = L9_2.FantasticStoryTrialAvatarIconPanel
    L10_2 = G
    L10_2 = L10_2.FantasticStoryTrialAvatarIconPanelBinder
    L7_2 = L7_2(L8_2, L9_2, L10_2)
    L9_2 = L7_2
    L8_2 = L7_2.bind
    L10_2 = L6_2
    L8_2(L9_2, L10_2)
    L9_2 = L7_2
    L8_2 = L7_2.set_icon
    L10_2 = A0_2._trial_avatar_table
    L10_2 = L10_2[L4_2]
    L10_2 = L10_2.Row
    L10_2 = L10_2.AvatarSideIconPath
    L8_2(L9_2, L10_2)
    L9_2 = L7_2
    L8_2 = L7_2.set_trial_mark
    L10_2 = true
    L8_2(L9_2, L10_2)
    L9_2 = L7_2
    L8_2 = L7_2.set_recommend_mark
    L11_2 = A0_2
    L10_2 = A0_2._check_is_recommend_avatar
    L12_2 = L5_2
    L13_2 = A0_2._trial_avatar_table
    L13_2 = L13_2[L4_2]
    L13_2 = L13_2.Row
    L13_2 = L13_2.AvatarID
    L10_2, L11_2, L12_2, L13_2 = L10_2(L11_2, L12_2, L13_2)
    L8_2(L9_2, L10_2, L11_2, L12_2, L13_2)
    L9_2 = L7_2
    L8_2 = L7_2.set_callback
    L10_2 = A0_2
    L11_2 = A0_2._on_avatar_icon_click
    L12_2 = L4_2
    L8_2(L9_2, L10_2, L11_2, L12_2)
    L8_2 = A0_2._trial_avatar_icon_panel_list
    L9_2 = A0_2._trial_avatar_table
    L9_2 = L9_2[L4_2]
    L9_2 = L9_2.Row
    L9_2 = L9_2.AvatarID
    L8_2[L9_2] = L7_2
  end
end
L0_1._setup_avatar_icon_list_view = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_game_pad
  L4_2 = A0_2._on_btn_game_pad_click
  L1_2(L2_2, L3_2, L4_2)
end
L0_1._on_load = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L2_2 = G
  L2_2 = L2_2.new
  L3_2 = "Ui.Avatar.AvatarMainPage"
  L2_2 = L2_2(L3_2)
  L4_2 = L2_2
  L3_2 = L2_2.init
  L5_2 = nil
  L6_2 = 1
  L7_2 = nil
  L8_2 = A0_2._trial_avatar_table
  L8_2 = L8_2[A1_2]
  L9_2 = true
  L3_2(L4_2, L5_2, L6_2, L7_2, L8_2, L9_2)
  L4_2 = L2_2
  L3_2 = L2_2.set_avatar_data_list
  L5_2 = A0_2._trial_avatar_table
  L3_2(L4_2, L5_2)
  L4_2 = L2_2
  L3_2 = L2_2.async_show
  L3_2(L4_2)
end
L0_1._on_avatar_icon_click = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2
  L2_2 = A0_2
  L1_2 = A0_2._on_avatar_icon_click
  L3_2 = 1
  L1_2(L2_2, L3_2)
end
L0_1._on_btn_game_pad_click = L2_1
function L2_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  if A1_2 and 0 < A1_2 then
    L3_2 = CS
    L3_2 = L3_2.RPG
    L3_2 = L3_2.GameCore
    L3_2 = L3_2.ActivityFeverTimeTutorialExcelTable
    L3_2 = L3_2.GetData
    L4_2 = A1_2
    L3_2 = L3_2(L4_2)
    if L3_2 then
      L4_2 = 0
      L5_2 = L3_2.RecommendAvatarList
      L5_2 = L5_2.Length
      L5_2 = L5_2 - 1
      L6_2 = 1
      for L7_2 = L4_2, L5_2, L6_2 do
        L8_2 = L3_2.RecommendAvatarList
        L8_2 = L8_2[L7_2]
        if L8_2 == A2_2 then
          L8_2 = true
          return L8_2
        end
      end
    end
  end
  L3_2 = false
  return L3_2
end
L0_1._check_is_recommend_avatar = L2_1
return L0_1
