.class public Lcom/nirenr/talkman/settings/HotKeySetting;
.super Landroid/app/BaseListActivity;
.source "SourceFile"

# interfaces
.implements Lcom/nirenr/talkman/dialog/EditDialog$EditDialogCallback;


# instance fields
.field private a:Lcom/androlua/LuaApplication;

.field private b:Ljava/io/File;

.field private c:Ljava/lang/String;

.field private d:[Ljava/lang/String;

.field private e:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private f:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private g:Landroid/widget/ArrayListAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/widget/ArrayListAdapter<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private h:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/app/BaseListActivity;-><init>()V

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/nirenr/talkman/settings/HotKeySetting;->d:[Ljava/lang/String;

    return-void
.end method

.method static bridge synthetic a(Lcom/nirenr/talkman/settings/HotKeySetting;)Lcom/androlua/LuaApplication;
    .locals 0

    iget-object p0, p0, Lcom/nirenr/talkman/settings/HotKeySetting;->a:Lcom/androlua/LuaApplication;

    return-object p0
.end method

.method static bridge synthetic b(Lcom/nirenr/talkman/settings/HotKeySetting;)Ljava/util/Map;
    .locals 0

    iget-object p0, p0, Lcom/nirenr/talkman/settings/HotKeySetting;->e:Ljava/util/Map;

    return-object p0
.end method

.method static bridge synthetic c(Lcom/nirenr/talkman/settings/HotKeySetting;)Ljava/util/ArrayList;
    .locals 0

    iget-object p0, p0, Lcom/nirenr/talkman/settings/HotKeySetting;->f:Ljava/util/ArrayList;

    return-object p0
.end method

.method static bridge synthetic d(Lcom/nirenr/talkman/settings/HotKeySetting;)[Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/nirenr/talkman/settings/HotKeySetting;->d:[Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic e(Lcom/nirenr/talkman/settings/HotKeySetting;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/nirenr/talkman/settings/HotKeySetting;->c:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic f(Lcom/nirenr/talkman/settings/HotKeySetting;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/nirenr/talkman/settings/HotKeySetting;->h(Ljava/lang/String;)V

    return-void
.end method

.method static bridge synthetic g(Lcom/nirenr/talkman/settings/HotKeySetting;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/nirenr/talkman/settings/HotKeySetting;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private h(Ljava/lang/String;)V
    .locals 3

    invoke-direct {p0}, Lcom/nirenr/talkman/settings/HotKeySetting;->j()V

    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/nirenr/talkman/settings/HotKeySetting;->d:[Ljava/lang/String;

    new-instance v2, Lcom/nirenr/talkman/settings/HotKeySetting$8;

    invoke-direct {v2, p0, p1}, Lcom/nirenr/talkman/settings/HotKeySetting$8;-><init>(Lcom/nirenr/talkman/settings/HotKeySetting;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f070095

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/nirenr/talkman/settings/HotKeySetting$7;

    invoke-direct {v1, p0, p1}, Lcom/nirenr/talkman/settings/HotKeySetting$7;-><init>(Lcom/nirenr/talkman/settings/HotKeySetting;Ljava/lang/String;)V

    const p1, 0x7f0701ea

    invoke-virtual {v0, p1, v1}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    return-void
.end method

.method private i(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/nirenr/talkman/settings/HotKeySetting;->h:Z

    if-nez p2, :cond_0

    iget-object p2, p0, Lcom/nirenr/talkman/settings/HotKeySetting;->e:Ljava/util/Map;

    invoke-interface {p2, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/nirenr/talkman/settings/HotKeySetting;->e:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    new-instance p1, Ljava/util/ArrayList;

    iget-object p2, p0, Lcom/nirenr/talkman/settings/HotKeySetting;->e:Ljava/util/Map;

    invoke-interface {p2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object p1, p0, Lcom/nirenr/talkman/settings/HotKeySetting;->f:Ljava/util/ArrayList;

    new-instance p2, Lk2/p;

    invoke-direct {p2}, Lk2/p;-><init>()V

    invoke-static {p1, p2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    iget-object p1, p0, Lcom/nirenr/talkman/settings/HotKeySetting;->g:Landroid/widget/ArrayListAdapter;

    invoke-virtual {p1}, Landroid/widget/ArrayListAdapter;->clear()V

    iget-object p1, p0, Lcom/nirenr/talkman/settings/HotKeySetting;->g:Landroid/widget/ArrayListAdapter;

    iget-object p2, p0, Lcom/nirenr/talkman/settings/HotKeySetting;->f:Ljava/util/ArrayList;

    invoke-virtual {p1, p2}, Landroid/widget/ArrayListAdapter;->addAll(Ljava/util/Collection;)V

    return-void
.end method

.method private j()V
    .locals 5

    iget-object v0, p0, Lcom/nirenr/talkman/settings/HotKeySetting;->b:Ljava/io/File;

    new-instance v1, Lcom/nirenr/talkman/settings/HotKeySetting$9;

    invoke-direct {v1, p0}, Lcom/nirenr/talkman/settings/HotKeySetting$9;-><init>(Lcom/nirenr/talkman/settings/HotKeySetting;)V

    invoke-virtual {v0, v1}, Ljava/io/File;->list(Ljava/io/FilenameFilter;)[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    new-array v0, v1, [Ljava/lang/String;

    :cond_0
    new-instance v2, Lk2/p;

    invoke-direct {v2}, Lk2/p;-><init>()V

    invoke-static {v0, v2}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    array-length v2, v0

    add-int/lit8 v2, v2, 0x8

    new-array v2, v2, [Ljava/lang/String;

    iput-object v2, p0, Lcom/nirenr/talkman/settings/HotKeySetting;->d:[Ljava/lang/String;

    const v3, 0x7f0708ae

    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v1

    iget-object v2, p0, Lcom/nirenr/talkman/settings/HotKeySetting;->d:[Ljava/lang/String;

    const v3, 0x7f070134

    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    aput-object v3, v2, v4

    iget-object v2, p0, Lcom/nirenr/talkman/settings/HotKeySetting;->d:[Ljava/lang/String;

    const v3, 0x7f0701f9

    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x2

    aput-object v3, v2, v4

    iget-object v2, p0, Lcom/nirenr/talkman/settings/HotKeySetting;->d:[Ljava/lang/String;

    const v3, 0x7f0701f1

    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x3

    aput-object v3, v2, v4

    iget-object v2, p0, Lcom/nirenr/talkman/settings/HotKeySetting;->d:[Ljava/lang/String;

    const v3, 0x7f0701fe

    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x4

    aput-object v3, v2, v4

    iget-object v2, p0, Lcom/nirenr/talkman/settings/HotKeySetting;->d:[Ljava/lang/String;

    const v3, 0x7f0701fd

    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x5

    aput-object v3, v2, v4

    iget-object v2, p0, Lcom/nirenr/talkman/settings/HotKeySetting;->d:[Ljava/lang/String;

    const v3, 0x7f070032

    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x6

    aput-object v3, v2, v4

    iget-object v2, p0, Lcom/nirenr/talkman/settings/HotKeySetting;->d:[Ljava/lang/String;

    const v3, 0x7f07029a

    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x7

    aput-object v3, v2, v4

    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_1

    iget-object v2, p0, Lcom/nirenr/talkman/settings/HotKeySetting;->d:[Ljava/lang/String;

    add-int/lit8 v3, v1, 0x8

    aget-object v4, v0, v1

    aput-object v4, v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method


# virtual methods
.method public onAdd(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/nirenr/talkman/settings/HotKeySetting;->h:Z

    const v0, 0x7f0701f9

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    const v0, 0x7f0701f1

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    const v0, 0x7f0701fe

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    const v0, 0x7f0701fd

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const v0, 0x7f070032

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/androlua/LuaApplication;->getInstance()Lcom/androlua/LuaApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/androlua/LuaApplication;->getAllApp()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    new-instance v0, Lk2/p;

    invoke-direct {v0}, Lk2/p;-><init>()V

    invoke-static {v1, v0}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    new-instance v0, Lcom/nirenr/talkman/dialog/FileDialog;

    new-instance v2, Lcom/nirenr/talkman/settings/HotKeySetting$11;

    invoke-direct {v2, p0, p1}, Lcom/nirenr/talkman/settings/HotKeySetting$11;-><init>(Lcom/nirenr/talkman/settings/HotKeySetting;Ljava/lang/String;)V

    invoke-direct {v0, p0, v2, p2, v1}, Lcom/nirenr/talkman/dialog/FileDialog;-><init>(Landroid/content/Context;Lcom/nirenr/talkman/dialog/FileDialog$OnAddListener;Ljava/lang/String;[Ljava/lang/String;)V

    return-void

    :cond_1
    const v0, 0x7f07029a

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Landroid/app/BaseListActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f010008

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/nirenr/talkman/dialog/FileDialog;

    new-instance v2, Lcom/nirenr/talkman/settings/HotKeySetting$12;

    invoke-direct {v2, p0, p1}, Lcom/nirenr/talkman/settings/HotKeySetting$12;-><init>(Lcom/nirenr/talkman/settings/HotKeySetting;Ljava/lang/String;)V

    array-length p1, v0

    const/4 v3, 0x5

    invoke-static {v0, v3, p1}, Ljava/util/Arrays;->copyOfRange([Ljava/lang/Object;II)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/String;

    invoke-direct {v1, p0, v2, p2, p1}, Lcom/nirenr/talkman/dialog/FileDialog;-><init>(Landroid/content/Context;Lcom/nirenr/talkman/dialog/FileDialog$OnAddListener;Ljava/lang/String;[Ljava/lang/String;)V

    return-void

    :cond_2
    invoke-direct {p0, p1, p2}, Lcom/nirenr/talkman/settings/HotKeySetting;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_3
    :goto_0
    new-instance v0, Lcom/nirenr/talkman/dialog/FileDialog;

    new-instance v1, Lcom/nirenr/talkman/settings/HotKeySetting$10;

    invoke-direct {v1, p0, p1}, Lcom/nirenr/talkman/settings/HotKeySetting$10;-><init>(Lcom/nirenr/talkman/settings/HotKeySetting;Ljava/lang/String;)V

    invoke-direct {v0, p0, v1, p2}, Lcom/nirenr/talkman/dialog/FileDialog;-><init>(Landroid/content/Context;Lcom/nirenr/talkman/dialog/FileDialog$OnAddListener;Ljava/lang/String;)V

    return-void
.end method

.method public onCallback(Ljava/lang/String;)V
    .locals 3

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/nirenr/talkman/settings/GestureEdit;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object v1, p0, Lcom/nirenr/talkman/settings/HotKeySetting;->a:Lcom/androlua/LuaApplication;

    iget-object v2, p0, Lcom/nirenr/talkman/settings/HotKeySetting;->c:Ljava/lang/String;

    invoke-virtual {v1, v2, p1}, Lcom/androlua/LuaApplication;->getHotKeysPath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "RES_ID"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    :cond_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    invoke-super {p0, p1}, Landroid/app/ListActivity;->onCreate(Landroid/os/Bundle;)V

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

    iput-object p1, p0, Lcom/nirenr/talkman/settings/HotKeySetting;->c:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_1

    const p1, 0x7f0701ba

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/nirenr/talkman/settings/HotKeySetting;->c:Ljava/lang/String;

    :cond_1
    invoke-static {}, Lcom/androlua/LuaApplication;->getInstance()Lcom/androlua/LuaApplication;

    move-result-object p1

    iput-object p1, p0, Lcom/nirenr/talkman/settings/HotKeySetting;->a:Lcom/androlua/LuaApplication;

    new-instance p1, Ljava/io/File;

    iget-object v0, p0, Lcom/nirenr/talkman/settings/HotKeySetting;->a:Lcom/androlua/LuaApplication;

    iget-object v1, p0, Lcom/nirenr/talkman/settings/HotKeySetting;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/androlua/LuaApplication;->getHotKeysDir(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/nirenr/talkman/settings/HotKeySetting;->b:Ljava/io/File;

    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result p1

    const-string v0, "config"

    if-eqz p1, :cond_2

    new-instance p1, Ljava/io/File;

    iget-object v1, p0, Lcom/nirenr/talkman/settings/HotKeySetting;->a:Lcom/androlua/LuaApplication;

    iget-object v2, p0, Lcom/nirenr/talkman/settings/HotKeySetting;->c:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Lcom/androlua/LuaApplication;->getHotKeysPath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p1, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result p1

    if-nez p1, :cond_3

    :cond_2
    iget-object p1, p0, Lcom/nirenr/talkman/settings/HotKeySetting;->b:Ljava/io/File;

    invoke-virtual {p1}, Ljava/io/File;->mkdirs()Z

    :try_start_0
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iget-object v1, p0, Lcom/nirenr/talkman/settings/HotKeySetting;->a:Lcom/androlua/LuaApplication;

    iget-object v2, p0, Lcom/nirenr/talkman/settings/HotKeySetting;->c:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Lcom/androlua/LuaApplication;->getHotKeysPath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, p1}, Lcom/nirenr/talkman/o;->m(Ljava/lang/String;Ljava/util/Map;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_3
    :goto_0
    iget-object p1, p0, Lcom/nirenr/talkman/settings/HotKeySetting;->c:Ljava/lang/String;

    invoke-virtual {p0, p1}, Landroid/app/Activity;->setTitle(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/nirenr/talkman/settings/HotKeySetting;->a:Lcom/androlua/LuaApplication;

    iget-object v1, p0, Lcom/nirenr/talkman/settings/HotKeySetting;->c:Ljava/lang/String;

    invoke-virtual {p1, v1, v0}, Lcom/androlua/LuaApplication;->getHotKeysPath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/nirenr/talkman/o;->h(Ljava/lang/String;)Ljava/util/Map;

    move-result-object p1

    iput-object p1, p0, Lcom/nirenr/talkman/settings/HotKeySetting;->e:Ljava/util/Map;

    new-instance p1, Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/nirenr/talkman/settings/HotKeySetting;->e:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object p1, p0, Lcom/nirenr/talkman/settings/HotKeySetting;->f:Ljava/util/ArrayList;

    new-instance v0, Lk2/p;

    invoke-direct {v0}, Lk2/p;-><init>()V

    invoke-static {p1, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    new-instance p1, Lcom/nirenr/talkman/settings/HotKeySetting$1;

    iget-object v0, p0, Lcom/nirenr/talkman/settings/HotKeySetting;->f:Ljava/util/ArrayList;

    invoke-direct {p1, p0, p0, v0}, Lcom/nirenr/talkman/settings/HotKeySetting$1;-><init>(Lcom/nirenr/talkman/settings/HotKeySetting;Landroid/content/Context;Ljava/util/List;)V

    iput-object p1, p0, Lcom/nirenr/talkman/settings/HotKeySetting;->g:Landroid/widget/ArrayListAdapter;

    invoke-virtual {p0, p1}, Landroid/app/ListActivity;->setListAdapter(Landroid/widget/ListAdapter;)V

    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 4

    const/4 v0, 0x6

    const v1, 0x7f070011

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

    invoke-super {p0, p1}, Landroid/app/ListActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result p1

    return p1
.end method

.method protected onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V
    .locals 0

    invoke-super/range {p0 .. p5}, Landroid/app/ListActivity;->onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V

    iget-object p1, p0, Lcom/nirenr/talkman/settings/HotKeySetting;->f:Ljava/util/ArrayList;

    invoke-virtual {p1, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/nirenr/talkman/settings/HotKeySetting;->h(Ljava/lang/String;)V

    return-void
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

    goto/16 :goto_3

    :pswitch_0
    new-instance v0, Lcom/nirenr/talkman/settings/HotKeySetting$4;

    invoke-direct {v0, p0, p0}, Lcom/nirenr/talkman/settings/HotKeySetting$4;-><init>(Lcom/nirenr/talkman/settings/HotKeySetting;Landroid/content/Context;)V

    const/high16 v1, 0x41c00000    # 24.0f

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f0702f7

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    new-instance v2, Lcom/nirenr/talkman/settings/HotKeySetting$6;

    invoke-direct {v2, p0}, Lcom/nirenr/talkman/settings/HotKeySetting$6;-><init>(Lcom/nirenr/talkman/settings/HotKeySetting;)V

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    new-instance v2, Lcom/nirenr/talkman/settings/HotKeySetting$5;

    invoke-direct {v2, p0, v0}, Lcom/nirenr/talkman/settings/HotKeySetting$5;-><init>(Lcom/nirenr/talkman/settings/HotKeySetting;Landroid/widget/TextView;)V

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f070095

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    const/4 v0, 0x1

    sput-boolean v0, Lcom/nirenr/talkman/h;->a:Z

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

    new-instance v3, Lcom/nirenr/talkman/settings/HotKeySetting$3;

    invoke-direct {v3, p0}, Lcom/nirenr/talkman/settings/HotKeySetting$3;-><init>(Lcom/nirenr/talkman/settings/HotKeySetting;)V

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/nirenr/talkman/dialog/EditDialog;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/nirenr/talkman/dialog/EditDialog$EditDialogCallback;)V

    goto :goto_2

    :pswitch_4
    new-instance v0, Landroid/content/Intent;

    const-class v2, Lcom/nirenr/talkman/settings/GestureFileManager;

    invoke-direct {v0, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    :goto_0
    iget-object v2, p0, Lcom/nirenr/talkman/settings/HotKeySetting;->b:Ljava/io/File;

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

    new-instance v3, Lcom/nirenr/talkman/settings/HotKeySetting$2;

    invoke-direct {v3, p0}, Lcom/nirenr/talkman/settings/HotKeySetting$2;-><init>(Lcom/nirenr/talkman/settings/HotKeySetting;)V

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

    :goto_3
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

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

.method protected onStop()V
    .locals 5

    const/4 v0, 0x0

    sput-boolean v0, Lcom/nirenr/talkman/h;->a:Z

    invoke-super {p0}, Landroid/app/ListActivity;->onStop()V

    iget-object v1, p0, Lcom/nirenr/talkman/settings/HotKeySetting;->a:Lcom/androlua/LuaApplication;

    iget-object v2, p0, Lcom/nirenr/talkman/settings/HotKeySetting;->c:Ljava/lang/String;

    const-string v3, "config"

    invoke-virtual {v1, v2, v3}, Lcom/androlua/LuaApplication;->getHotKeysPath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/nirenr/talkman/settings/HotKeySetting;->e:Ljava/util/Map;

    invoke-static {v1, v2}, Lcom/nirenr/talkman/o;->m(Ljava/lang/String;Ljava/util/Map;)V

    iget-boolean v1, p0, Lcom/nirenr/talkman/settings/HotKeySetting;->h:Z

    if-nez v1, :cond_0

    return-void

    :cond_0
    iput-boolean v0, p0, Lcom/nirenr/talkman/settings/HotKeySetting;->h:Z

    invoke-static {}, Lcom/nirenr/talkman/TalkManAccessibilityService;->getInstance()Lcom/nirenr/talkman/TalkManAccessibilityService;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    invoke-static {p0}, Lk2/b0;->c(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    const v2, 0x7f0702f3

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const v3, 0x7f0708b0

    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const v3, 0x7f070036

    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    invoke-interface {v1, v3, v4}, Landroid/content/SharedPreferences;->getStringSet(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;

    move-result-object v1

    invoke-virtual {v0, v2}, Lcom/nirenr/talkman/TalkManAccessibilityService;->loadHotKeyPackage(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/nirenr/talkman/TalkManAccessibilityService;->loadHotKeyPackage(Ljava/util/Set;)V

    const v1, 0x7f07037a

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/nirenr/talkman/TalkManAccessibilityService;->asyncSpeak(Ljava/lang/String;)V

    return-void
.end method
