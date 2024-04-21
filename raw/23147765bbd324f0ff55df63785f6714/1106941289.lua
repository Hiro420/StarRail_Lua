local L0_1, L1_1, L2_1
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "LoadingTipsPanel"
L2_1 = G
L2_1 = L2_1.BasePanel
L0_1 = L0_1(L1_1, L2_1)
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.Client
  L2_2 = L2_2.GlobalVars
  L2_2 = L2_2.s_ModuleManager
  L2_2 = L2_2.LoadingTipsModule
  L3_2 = L2_2
  L2_2 = L2_2.SetupWorldTeleTips
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
end
L0_1.update_tips_world_tele = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.Client
  L2_2 = L2_2.GlobalVars
  L2_2 = L2_2.s_ModuleManager
  L2_2 = L2_2.LoadingTipsModule
  L3_2 = L2_2
  L2_2 = L2_2.SetupStoryLineTips
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
end
L0_1.update_tips_story_line = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.GlobalVars
  L1_2 = L1_2.s_ModuleManager
  L1_2 = L1_2.LoadingTipsModule
  L2_2 = L1_2
  L1_2 = L1_2.GetOneTip
  L1_2 = L1_2(L2_2)
  L3_2 = A0_2
  L2_2 = A0_2._setup_tip_text
  L4_2 = L1_2
  L2_2(L3_2, L4_2)
  L3_2 = A0_2
  L2_2 = A0_2._setup_tip_icon
  L4_2 = L1_2
  L2_2(L3_2, L4_2)
end
L0_1.show_next_tip = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_txt
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = A1_2 ~= nil
  L2_2(L3_2, L4_2)
  if A1_2 ~= nil then
    L2_2 = A0_2._binder
    L2_2 = L2_2.txt_title
    L3_2 = L2_2
    L2_2 = L2_2.SafeSetTextID
    L4_2 = A1_2.TitleTextmapID
    L2_2(L3_2, L4_2)
    L2_2 = A0_2._binder
    L2_2 = L2_2.txt_desc
    L3_2 = L2_2
    L2_2 = L2_2.SafeSetTextID
    L4_2 = A1_2.DescTextmapID
    L2_2(L3_2, L4_2)
  end
end
L0_1._setup_tip_text = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2
  if A1_2 == nil then
    L2_2 = A0_2._binder
    L2_2 = L2_2.img_icon
    L3_2 = L2_2
    L2_2 = L2_2.SafeSetActive
    L4_2 = false
    L2_2(L3_2, L4_2)
    return
  end
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.GameCore
  L2_2 = L2_2.LoadingImageExcelTable
  L2_2 = L2_2.GetData
  L3_2 = A1_2.ImageID
  L2_2 = L2_2(L3_2)
  if L2_2 ~= nil then
    L3_2 = G
    L3_2 = L3_2.StrExt
    L3_2 = L3_2.IsNullOrEmpty
    L4_2 = L2_2.ImagePath
    L3_2 = L3_2(L4_2)
    if not L3_2 then
      goto lbl_31
    end
  end
  L3_2 = A0_2._binder
  L3_2 = L3_2.img_icon
  L4_2 = L3_2
  L3_2 = L3_2.SafeSetActive
  L5_2 = false
  L3_2(L4_2, L5_2)
  do return end
  ::lbl_31::
  L3_2 = A0_2._binder
  L3_2 = L3_2.img_icon
  L4_2 = L3_2
  L3_2 = L3_2.SafeSetActive
  L5_2 = true
  L3_2(L4_2, L5_2)
  L4_2 = A0_2
  L3_2 = A0_2._async_load_sprite_to
  L5_2 = A0_2._binder
  L5_2 = L5_2.img_icon
  L6_2 = L2_2.ImagePath
  L3_2(L4_2, L5_2, L6_2)
end
L0_1._setup_tip_icon = L1_1
return L0_1
