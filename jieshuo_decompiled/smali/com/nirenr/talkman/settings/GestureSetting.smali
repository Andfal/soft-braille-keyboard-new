.class public Lcom/nirenr/talkman/settings/GestureSetting;
.super Landroid/app/BaseActivity;
.source "SourceFile"

# interfaces
.implements Lcom/nirenr/talkman/dialog/EditDialog$EditDialogCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nirenr/talkman/settings/GestureSetting$GesturePreferenceFragment;
    }
.end annotation


# static fields
.field private static e:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static f:[Ljava/lang/String;


# instance fields
.field private a:Lcom/androlua/LuaApplication;

.field private b:Ljava/io/File;

.field private c:Ljava/lang/String;

.field private d:Lcom/nirenr/talkman/settings/GestureSetting$GesturePreferenceFragment;


# direct methods
.method static constructor <clinit>()V
    .locals 64

    invoke-static {}, Lk2/j;->j()Ljava/util/HashMap;

    move-result-object v0

    sput-object v0, Lcom/nirenr/talkman/settings/GestureSetting;->e:Ljava/util/HashMap;

    const-string v1, "up"

    const-string v2, "down"

    const-string v3, "left"

    const-string v4, "right"

    const-string v5, "left_right"

    const-string v6, "right_left"

    const-string v7, "up_down"

    const-string v8, "down_up"

    const-string v9, "left_up"

    const-string v10, "left_down"

    const-string v11, "right_up"

    const-string v12, "right_down"

    const-string v13, "up_left"

    const-string v14, "up_right"

    const-string v15, "down_left"

    const-string v16, "down_right"

    const-string v17, "2_single_tap"

    const-string v18, "2_double_tap"

    const-string v19, "2_triple_tap"

    const-string v20, "3_single_tap"

    const-string v21, "3_double_tap"

    const-string v22, "3_triple_tap"

    const-string v23, "2_swipe_up"

    const-string v24, "2_swipe_down"

    const-string v25, "2_swipe_left"

    const-string v26, "2_swipe_right"

    const-string v27, "3_swipe_up"

    const-string v28, "3_swipe_down"

    const-string v29, "3_swipe_left"

    const-string v30, "3_swipe_right"

    const-string v31, "4_swipe_up"

    const-string v32, "4_swipe_down"

    const-string v33, "4_swipe_left"

    const-string v34, "4_swipe_right"

    const-string v35, "4_single_tap"

    const-string v36, "4_double_tap"

    const-string v37, "4_triple_tap"

    const-string v38, "2_double_tap_hold"

    const-string v39, "3_double_tap_hold"

    const-string v40, "4_double_tap_hold"

    const-string v41, "2_triple_tap_hold"

    const-string v42, "3_single_tap_hold"

    const-string v43, "3_triple_tap_hold"

    const-string v44, "up_long"

    const-string v45, "down_long"

    const-string v46, "left_long"

    const-string v47, "right_long"

    const-string v48, "left_right_long"

    const-string v49, "right_left_long"

    const-string v50, "up_down_long"

    const-string v51, "down_up_long"

    const-string v52, "left_up_long"

    const-string v53, "left_down_long"

    const-string v54, "right_up_long"

    const-string v55, "right_down_long"

    const-string v56, "up_left_long"

    const-string v57, "up_right_long"

    const-string v58, "down_left_long"

    const-string v59, "down_right_long"

    const-string v60, "edge_left"

    const-string v61, "edge_right"

    const-string v62, "edge_left_long"

    const-string v63, "edge_right_long"

    filled-new-array/range {v1 .. v63}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/nirenr/talkman/settings/GestureSetting;->f:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/BaseActivity;-><init>()V

    return-void
.end method

.method static bridge synthetic a(Lcom/nirenr/talkman/settings/GestureSetting;)Lcom/androlua/LuaApplication;
    .locals 0

    iget-object p0, p0, Lcom/nirenr/talkman/settings/GestureSetting;->a:Lcom/androlua/LuaApplication;

    return-object p0
.end method

.method static bridge synthetic b(Lcom/nirenr/talkman/settings/GestureSetting;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/nirenr/talkman/settings/GestureSetting;->c:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic c()Ljava/util/HashMap;
    .locals 1

    sget-object v0, Lcom/nirenr/talkman/settings/GestureSetting;->e:Ljava/util/HashMap;

    return-object v0
.end method

.method static bridge synthetic d()[Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/nirenr/talkman/settings/GestureSetting;->f:[Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public onCallback(Ljava/lang/String;)V
    .locals 3

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/nirenr/talkman/settings/GestureEdit;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object v1, p0, Lcom/nirenr/talkman/settings/GestureSetting;->a:Lcom/androlua/LuaApplication;

    iget-object v2, p0, Lcom/nirenr/talkman/settings/GestureSetting;->c:Ljava/lang/String;

    invoke-virtual {v1, v2, p1}, Lcom/androlua/LuaApplication;->getGesturePath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "RES_ID"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 6

    invoke-super {p0, p1}, Landroid/app/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    const v0, 0x1080038

    invoke-virtual {p1, v0}, Landroid/app/ActionBar;->setHomeAsUpIndicator(I)V

    const v0, 0x7f07026b

    invoke-virtual {p1, v0}, Landroid/app/ActionBar;->setHomeActionContentDescription(I)V

    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "RES_ID"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/nirenr/talkman/settings/GestureSetting;->c:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_1

    const p1, 0x7f0701ba

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/nirenr/talkman/settings/GestureSetting;->c:Ljava/lang/String;

    :cond_1
    invoke-static {}, Lcom/androlua/LuaApplication;->getInstance()Lcom/androlua/LuaApplication;

    move-result-object p1

    iput-object p1, p0, Lcom/nirenr/talkman/settings/GestureSetting;->a:Lcom/androlua/LuaApplication;

    new-instance p1, Ljava/io/File;

    iget-object v0, p0, Lcom/nirenr/talkman/settings/GestureSetting;->a:Lcom/androlua/LuaApplication;

    iget-object v1, p0, Lcom/nirenr/talkman/settings/GestureSetting;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/androlua/LuaApplication;->getGesturesDir(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/nirenr/talkman/settings/GestureSetting;->b:Ljava/io/File;

    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result p1

    if-nez p1, :cond_4

    iget-object p1, p0, Lcom/nirenr/talkman/settings/GestureSetting;->b:Ljava/io/File;

    invoke-virtual {p1}, Ljava/io/File;->mkdirs()Z

    move-result p1

    if-eqz p1, :cond_4

    :try_start_0
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    sget-object v0, Lcom/nirenr/talkman/settings/GestureSetting;->f:[Ljava/lang/String;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_3

    aget-object v3, v0, v2

    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x1f

    if-lt v4, v5, :cond_2

    const-string v4, "2_swipe"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    goto :goto_1

    :cond_2
    const v4, 0x7f0708ae

    invoke-virtual {p0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/nirenr/talkman/settings/GestureSetting;->a:Lcom/androlua/LuaApplication;

    iget-object v1, p0, Lcom/nirenr/talkman/settings/GestureSetting;->c:Ljava/lang/String;

    const-string v2, "config"

    invoke-virtual {v0, v1, v2}, Lcom/androlua/LuaApplication;->getGesturePath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/nirenr/talkman/o;->m(Ljava/lang/String;Ljava/util/Map;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_4
    :goto_2
    iget-object p1, p0, Lcom/nirenr/talkman/settings/GestureSetting;->c:Ljava/lang/String;

    invoke-virtual {p0, p1}, Landroid/app/Activity;->setTitle(Ljava/lang/CharSequence;)V

    invoke-static {p0}, Lcom/androlua/LuaUtil;->checkStorage(Landroid/app/Activity;)V

    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 4

    const/4 v0, 0x6

    const v1, 0x7f070599

    const/4 v2, 0x0

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setShowAsActionFlags(I)Landroid/view/MenuItem;

    const/4 v0, 0x5

    const v3, 0x7f0705dc

    invoke-interface {p1, v2, v0, v2, v3}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setShowAsActionFlags(I)Landroid/view/MenuItem;

    const v0, 0x7f07029b

    invoke-interface {p1, v2, v2, v2, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    const v0, 0x7f07004f

    invoke-interface {p1, v2, v1, v2, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    const/4 v0, 0x2

    const v1, 0x7f07029c

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    const/4 v0, 0x3

    const v1, 0x7f0700ee

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    const/4 v0, 0x4

    const v1, 0x7f0700f0

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result p1

    return p1
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 4

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-eq v0, v1, :cond_0

    const-string v1, "RES_ID"

    const-string v2, ""

    const v3, 0x7f070251

    packed-switch v0, :pswitch_data_0

    goto :goto_3

    :pswitch_0
    iget-object v0, p0, Lcom/nirenr/talkman/settings/GestureSetting;->d:Lcom/nirenr/talkman/settings/GestureSetting$GesturePreferenceFragment;

    if-eqz v0, :cond_1

    invoke-static {v0}, Lcom/nirenr/talkman/settings/GestureSetting$GesturePreferenceFragment;->i(Lcom/nirenr/talkman/settings/GestureSetting$GesturePreferenceFragment;)V

    goto :goto_3

    :pswitch_1
    new-instance v0, Landroid/content/Intent;

    const-class v2, Lcom/nirenr/talkman/settings/GestureFileShare;

    invoke-direct {v0, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    goto :goto_0

    :pswitch_2
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/nirenr/talkman/settings/VoiceCmdManager;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    goto :goto_1

    :pswitch_3
    new-instance v0, Lcom/nirenr/talkman/dialog/EditDialog;

    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v3, Lcom/nirenr/talkman/settings/GestureSetting$2;

    invoke-direct {v3, p0}, Lcom/nirenr/talkman/settings/GestureSetting$2;-><init>(Lcom/nirenr/talkman/settings/GestureSetting;)V

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/nirenr/talkman/dialog/EditDialog;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/nirenr/talkman/dialog/EditDialog$EditDialogCallback;)V

    goto :goto_2

    :pswitch_4
    new-instance v0, Landroid/content/Intent;

    const-class v2, Lcom/nirenr/talkman/settings/GestureFileManager;

    invoke-direct {v0, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    :goto_0
    iget-object v2, p0, Lcom/nirenr/talkman/settings/GestureSetting;->b:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    :goto_1
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_3

    :pswitch_5
    new-instance v0, Lcom/nirenr/talkman/dialog/EditDialog;

    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v3, Lcom/nirenr/talkman/settings/GestureSetting$1;

    invoke-direct {v3, p0}, Lcom/nirenr/talkman/settings/GestureSetting$1;-><init>(Lcom/nirenr/talkman/settings/GestureSetting;)V

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/nirenr/talkman/dialog/EditDialog;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/nirenr/talkman/dialog/EditDialog$EditDialogCallback;)V

    goto :goto_2

    :pswitch_6
    new-instance v0, Lcom/nirenr/talkman/dialog/EditDialog;

    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, v1, v2, p0}, Lcom/nirenr/talkman/dialog/EditDialog;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/nirenr/talkman/dialog/EditDialog$EditDialogCallback;)V

    :goto_2
    invoke-virtual {v0}, Lcom/nirenr/talkman/dialog/EditDialog;->g()V

    goto :goto_3

    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    :cond_1
    :goto_3
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected onPause()V
    .locals 0

    invoke-super {p0}, Landroid/app/BaseActivity;->onPause()V

    return-void
.end method

.method protected onResume()V
    .locals 3

    invoke-super {p0}, Landroid/app/BaseActivity;->onResume()V

    new-instance v0, Lcom/nirenr/talkman/settings/GestureSetting$GesturePreferenceFragment;

    invoke-direct {v0}, Lcom/nirenr/talkman/settings/GestureSetting$GesturePreferenceFragment;-><init>()V

    iput-object v0, p0, Lcom/nirenr/talkman/settings/GestureSetting;->d:Lcom/nirenr/talkman/settings/GestureSetting$GesturePreferenceFragment;

    invoke-virtual {p0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v0

    const v1, 0x1020002

    iget-object v2, p0, Lcom/nirenr/talkman/settings/GestureSetting;->d:Lcom/nirenr/talkman/settings/GestureSetting$GesturePreferenceFragment;

    invoke-virtual {v0, v1, v2}, Landroid/app/FragmentTransaction;->replace(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentTransaction;->commit()I

    return-void
.end method
