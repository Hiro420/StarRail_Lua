local L0_1, L1_1, L2_1, L3_1
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "SpaceZooToggleBtnPanel"
L2_1 = G
L2_1 = L2_1.BasePanel
L0_1 = L0_1(L1_1, L2_1)
L1_1 = "Unchecked"
L2_1 = "UIText_ActivitySpaceZoo_LockedFilter"
function L3_1(A0_2)
  local L1_2
end
L0_1.ctor = L3_1
function L3_1(A0_2, A1_2, A2_2)
  A0_2._callback = A1_2
  A0_2._callback_self = A2_2
end
L0_1.register_click_callback = L3_1
function L3_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2
  A0_2._feature_id = A1_2
  L4_2 = A0_2
  L3_2 = A0_2._init_img
  L3_2(L4_2)
  L4_2 = A0_2
  L3_2 = A0_2._set_state
  L3_2(L4_2)
  if A2_2 then
    L4_2 = A0_2
    L3_2 = A0_2._reset_animator
    L3_2(L4_2)
  end
end
L0_1.setup_view = L3_1
function L3_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.btn_root
  L3_2 = L2_2
  L2_2 = L2_2.SetChecked
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
end
L0_1.set_btn_checked = L3_1
function L3_1(A0_2)
  local L1_2
  L1_2 = A0_2._feature_id
  return L1_2
end
L0_1.get_feature_id = L3_1
function L3_1(A0_2)
  local L1_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.btn_root
  return L1_2
end
L0_1.get_root_btn = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_root
  L4_2 = A0_2._on_btn_root
  L1_2(L2_2, L3_2, L4_2)
end
L0_1._on_load = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = A0_2._feature_id
  if L1_2 == nil then
    return
  end
  L1_2 = A0_2._binder
  L1_2 = L1_2.panel_cat_image
  L2_2 = L1_2
  L1_2 = L1_2.safe_set_active
  L3_2 = true
  L1_2(L2_2, L3_2)
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.GameCore
  L1_2 = L1_2.SpaceZooFeatureConfigExcelTable
  L2_2 = L1_2.GetData
  L3_2 = A0_2._feature_id
  L2_2 = L2_2(L3_2)
  L2_2 = L2_2.ImagePath
  if L2_2 ~= nil and L2_2 ~= "" then
    L3_2 = A0_2._binder
    L3_2 = L3_2.panel_cat_image
    L4_2 = L3_2
    L3_2 = L3_2.setup_view_by_feature_images
    L5_2 = {}
    L6_2 = L2_2
    L5_2[1] = L6_2
    L3_2(L4_2, L5_2)
  else
    L3_2 = A0_2._binder
    L3_2 = L3_2.panel_cat_image
    L4_2 = L3_2
    L3_2 = L3_2.safe_set_active
    L5_2 = false
    L3_2(L4_2, L5_2)
  end
end
L0_1._init_img = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L1_2 = false
  L2_2 = G
  L2_2 = L2_2.Utils
  L2_2 = L2_2.create_lua_table_from_cs_dict
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.Client
  L3_2 = L3_2.GlobalVars
  L3_2 = L3_2.s_ModuleManager
  L3_2 = L3_2.SpaceZooModule
  L3_2 = L3_2.SpaceZooData
  L3_2 = L3_2.Cats
  L2_2 = L2_2(L3_2)
  L3_2 = 1
  L4_2 = #L2_2
  L5_2 = 1
  for L6_2 = L3_2, L4_2, L5_2 do
    L7_2 = L2_2[L6_2]
    L7_2 = L7_2.Features
    L8_2 = L7_2
    L7_2 = L7_2.ContainsValue
    L9_2 = A0_2._feature_id
    L7_2 = L7_2(L8_2, L9_2)
    if L7_2 then
      L1_2 = true
      break
    end
  end
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_root
  L4_2 = not L1_2
  L3_2.IsInFakeDisableState = L4_2
end
L0_1._set_state = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.animator_root
  L2_2 = L1_2
  L1_2 = L1_2.Play
  L3_2 = L1_1
  L4_2 = -1
  L5_2 = 0
  L1_2(L2_2, L3_2, L4_2, L5_2)
end
L0_1._reset_animator = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.btn_root
  L1_2 = L1_2.IsInFakeDisableState
  if L1_2 then
    L1_2 = G
    L1_2 = L1_2.NotifyManager
    L1_2 = L1_2.notify
    L2_2 = G
    L2_2 = L2_2.CS
    L2_2 = L2_2.NotifyType
    L2_2 = L2_2.UIPileToastMessageTextID
    L3_2 = L2_1
    L1_2(L2_2, L3_2)
    return
  end
  L1_2 = G
  L1_2 = L1_2.Utils
  L1_2 = L1_2.invoke_callback
  L2_2 = A0_2._callback
  L3_2 = A0_2._callback_self
  L4_2 = A0_2._feature_id
  L1_2(L2_2, L3_2, L4_2)
end
L0_1._on_btn_root = L3_1
return L0_1
