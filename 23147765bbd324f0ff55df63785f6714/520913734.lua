local L0_1, L1_1, L2_1, L3_1
L0_1 = require
L1_1 = "Ui.Expedition.ActivityExpeditionStartDialogBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Expedition.ExpeditionUtils"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Expedition.Detail.ExpeditionAvatarHeadIconPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Expedition.Detail.ExpeditionAvatarHeadIconPanelBinder"
L0_1(L1_1)
L0_1 = "CommonDialogBanner_Disposables"
L1_1 = G
L1_1 = L1_1.Class
L2_1 = "ActivityExpeditionStartDialog"
L3_1 = G
L3_1 = L3_1.UIController
L1_1 = L1_1(L2_1, L3_1)
function L2_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = G
  L1_2 = L1_2.ImportCsToLua
  L1_2 = L1_2.CS_RPG_Client_UILayer_Dialog
  A0_2._ui_layer = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._create_binder
  L3_2 = G
  L3_2 = L3_2.ActivityExpeditionStartDialogBinder
  L1_2 = L1_2(L2_2, L3_2)
  A0_2._binder = L1_2
  A0_2._pause_game = true
end
L1_1.ctor = L2_1
function L2_1(A0_2, A1_2)
  A0_2._expedition_data = A1_2
end
L1_1.init = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_bg
  L4_2 = A0_2.exit
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.anim
  L2_2 = L1_2
  L1_2 = L1_2.GetClip
  L3_2 = L0_1
  L1_2 = L1_2(L2_2, L3_2)
  L1_2 = L1_2.length
  L3_2 = A0_2
  L2_2 = A0_2._add_count_down_timer
  L4_2 = A0_2.exit
  L5_2 = L1_2
  L2_2 = L2_2(L3_2, L4_2, L5_2)
  A0_2._count_down_timer = L2_2
end
L1_1._on_load = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.txt_time
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetTextID
  L3_2 = "UIText_Assignment_AssignTime_Choose_Btn"
  L4_2 = A0_2._expedition_data
  L4_2 = L4_2.Duration
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._setup_avatar_view
  L1_2(L2_2)
  L1_2 = G
  L1_2 = L1_2.ExpeditionUtils
  L1_2 = L1_2.get_grade_score_by_expedition_data
  L2_2 = A0_2._expedition_data
  L1_2 = L1_2(L2_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.panel_rank
  L3_2 = L2_2
  L2_2 = L2_2.setup_view
  L4_2 = G
  L4_2 = L4_2.ExpeditionUtils
  L4_2 = L4_2.get_score_rank
  L5_2 = L1_2
  L4_2, L5_2 = L4_2(L5_2)
  L2_2(L3_2, L4_2, L5_2)
  L2_2 = A0_2._count_down_timer
  L3_2 = L2_2
  L2_2 = L2_2.reset
  L2_2(L3_2)
  L2_2 = A0_2._count_down_timer
  L3_2 = L2_2
  L2_2 = L2_2.start
  L2_2(L3_2)
end
L1_1._setup_view = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2
  L1_2 = G
  L1_2 = L1_2.Utils
  L1_2 = L1_2.create_lua_table_from_cs_list
  L2_2 = A0_2._expedition_data
  L2_2 = L2_2.AvatarIdList
  L1_2 = L1_2(L2_2)
  L2_2 = ipairs
  L3_2 = A0_2._binder
  L3_2 = L3_2.nodes_avatar_activity
  L2_2, L3_2, L4_2 = L2_2(L3_2)
  for L5_2, L6_2 in L2_2, L3_2, L4_2 do
    L7_2 = #L1_2
    L7_2 = L5_2 <= L7_2
    L9_2 = L6_2
    L8_2 = L6_2.SafeSetActive
    L10_2 = L7_2
    L8_2(L9_2, L10_2)
    if L7_2 then
      L8_2 = CS
      L8_2 = L8_2.RPG
      L8_2 = L8_2.GameCore
      L8_2 = L8_2.AvatarExcelTable
      L8_2 = L8_2.GetData
      L9_2 = L1_2[L5_2]
      L8_2 = L8_2(L9_2)
      L10_2 = A0_2
      L9_2 = A0_2.load_sprite_to
      L11_2 = A0_2._binder
      L11_2 = L11_2.imgs_avatar_activity
      L11_2 = L11_2[L5_2]
      L12_2 = L8_2.AvatarSideIconPath
      L9_2(L10_2, L11_2, L12_2)
    end
  end
  L2_2 = A0_2._expedition_data
  L2_2 = L2_2.FriendAvatarID
  L2_2 = L2_2 ~= 0
  L3_2 = ipairs
  L4_2 = A0_2._binder
  L4_2 = L4_2.nodes_assist
  L3_2, L4_2, L5_2 = L3_2(L4_2)
  for L6_2, L7_2 in L3_2, L4_2, L5_2 do
    L9_2 = L7_2
    L8_2 = L7_2.SafeSetActive
    L10_2 = L2_2
    L8_2(L9_2, L10_2)
  end
  if L2_2 then
    L3_2 = CS
    L3_2 = L3_2.RPG
    L3_2 = L3_2.GameCore
    L3_2 = L3_2.AvatarExcelTable
    L3_2 = L3_2.GetData
    L4_2 = A0_2._expedition_data
    L4_2 = L4_2.FriendAvatarID
    L3_2 = L3_2(L4_2)
    L5_2 = A0_2
    L4_2 = A0_2.load_sprite_to
    L6_2 = A0_2._binder
    L6_2 = L6_2.img_avatar_assist
    L7_2 = L3_2.AvatarSideIconPath
    L4_2(L5_2, L6_2, L7_2)
  end
end
L1_1._setup_avatar_view = L2_1
return L1_1
