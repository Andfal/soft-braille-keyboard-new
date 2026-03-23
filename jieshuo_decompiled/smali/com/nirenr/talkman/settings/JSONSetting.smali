.class public Lcom/nirenr/talkman/settings/JSONSetting;
.super Landroid/app/BaseListActivity;
.source "SourceFile"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;
.implements Landroid/widget/AdapterView$OnItemLongClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nirenr/talkman/settings/JSONSetting$EditDialog;
    }
.end annotation


# static fields
.field private static final g:Ljava/lang/String;


# instance fields
.field private a:Ljava/lang/String;

.field private b:Landroid/widget/ArrayListAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/widget/ArrayListAdapter<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private c:Ljava/lang/String;

.field private d:Lorg/json/JSONObject;

.field private e:Ljava/lang/String;

.field private f:Lorg/json/JSONObject;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/lang/String;

    const/16 v1, 0xa

    new-array v1, v1, [C

    fill-array-data v1, :array_0

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([C)V

    sput-object v0, Lcom/nirenr/talkman/settings/JSONSetting;->g:Ljava/lang/String;

    return-void

    nop

    :array_0
    .array-data 2
        0x5fs
        0x59s
        0x6fs
        0x75s
        0x54s
        0x75s
        0x5fs
        0x4bs
        0x65s
        0x79s
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/app/BaseListActivity;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nirenr/talkman/settings/JSONSetting;->e:Ljava/lang/String;

    iput-object v0, p0, Lcom/nirenr/talkman/settings/JSONSetting;->f:Lorg/json/JSONObject;

    return-void
.end method

.method static bridge synthetic a(Lcom/nirenr/talkman/settings/JSONSetting;)Landroid/widget/ArrayListAdapter;
    .locals 0

    iget-object p0, p0, Lcom/nirenr/talkman/settings/JSONSetting;->b:Landroid/widget/ArrayListAdapter;

    return-object p0
.end method

.method static bridge synthetic b(Lcom/nirenr/talkman/settings/JSONSetting;)Lorg/json/JSONObject;
    .locals 0

    iget-object p0, p0, Lcom/nirenr/talkman/settings/JSONSetting;->d:Lorg/json/JSONObject;

    return-object p0
.end method

.method static bridge synthetic c(Lcom/nirenr/talkman/settings/JSONSetting;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/nirenr/talkman/settings/JSONSetting;->g(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static bridge synthetic d(Lcom/nirenr/talkman/settings/JSONSetting;ILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/nirenr/talkman/settings/JSONSetting;->j(ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static bridge synthetic e(Lcom/nirenr/talkman/settings/JSONSetting;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/nirenr/talkman/settings/JSONSetting;->k(I)V

    return-void
.end method

.method private f()Z
    .locals 3

    invoke-static {}, Lcom/androlua/LuaApplication;->getInstance()Lcom/androlua/LuaApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/androlua/LuaApplication;->isAbc()Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    return v2

    :cond_0
    invoke-virtual {v0}, Lcom/androlua/LuaApplication;->getGlobalData()Ljava/util/Map;

    move-result-object v0

    sget-object v1, Lcom/nirenr/talkman/settings/JSONSetting;->g:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_1

    return v2

    :cond_1
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method private g(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/nirenr/talkman/settings/JSONSetting;->b:Landroid/widget/ArrayListAdapter;

    invoke-virtual {v0, p1}, Landroid/widget/ArrayListAdapter;->add(Ljava/lang/Object;)V

    :try_start_0
    iget-object v0, p0, Lcom/nirenr/talkman/settings/JSONSetting;->d:Lorg/json/JSONObject;

    invoke-virtual {v0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    :try_start_1
    iget-object v0, p0, Lcom/nirenr/talkman/settings/JSONSetting;->f:Lorg/json/JSONObject;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_0
    :goto_1
    return-void
.end method

.method private h()V
    .locals 2

    new-instance v0, Lcom/nirenr/talkman/settings/JSONSetting$EditDialog;

    const/4 v1, -0x1

    invoke-direct {v0, p0, v1}, Lcom/nirenr/talkman/settings/JSONSetting$EditDialog;-><init>(Lcom/nirenr/talkman/settings/JSONSetting;I)V

    invoke-virtual {v0}, Lcom/nirenr/talkman/settings/JSONSetting$EditDialog;->show()V

    return-void
.end method

.method private i(I)V
    .locals 4

    iget-object v0, p0, Lcom/nirenr/talkman/settings/JSONSetting;->b:Landroid/widget/ArrayListAdapter;

    invoke-virtual {v0}, Landroid/widget/ArrayListAdapter;->getData()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const v3, 0x7f0701ea

    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f070095

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/nirenr/talkman/settings/JSONSetting$3;

    invoke-direct {v1, p0, p1}, Lcom/nirenr/talkman/settings/JSONSetting$3;-><init>(Lcom/nirenr/talkman/settings/JSONSetting;I)V

    const p1, 0x104000a

    invoke-virtual {v0, p1, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    return-void
.end method

.method private j(ILjava/lang/String;Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/nirenr/talkman/settings/JSONSetting;->b:Landroid/widget/ArrayListAdapter;

    invoke-virtual {v0, p1, p2}, Landroid/widget/ArrayListAdapter;->insert(ILjava/lang/Object;)V

    :try_start_0
    iget-object p1, p0, Lcom/nirenr/talkman/settings/JSONSetting;->d:Lorg/json/JSONObject;

    invoke-virtual {p1, p2, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    :try_start_1
    iget-object p1, p0, Lcom/nirenr/talkman/settings/JSONSetting;->f:Lorg/json/JSONObject;

    if-eqz p1, :cond_0

    invoke-virtual {p1, p2, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_0
    :goto_1
    return-void
.end method

.method private k(I)V
    .locals 2

    iget-object v0, p0, Lcom/nirenr/talkman/settings/JSONSetting;->d:Lorg/json/JSONObject;

    iget-object v1, p0, Lcom/nirenr/talkman/settings/JSONSetting;->b:Landroid/widget/ArrayListAdapter;

    invoke-virtual {v1, p1}, Landroid/widget/ArrayListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/nirenr/talkman/settings/JSONSetting;->f:Lorg/json/JSONObject;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/nirenr/talkman/settings/JSONSetting;->b:Landroid/widget/ArrayListAdapter;

    invoke-virtual {v1, p1}, Landroid/widget/ArrayListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    :cond_0
    iget-object v0, p0, Lcom/nirenr/talkman/settings/JSONSetting;->b:Landroid/widget/ArrayListAdapter;

    invoke-virtual {v0, p1}, Landroid/widget/ArrayListAdapter;->remove(I)V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/app/ListActivity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Intent;->getDataString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/nirenr/talkman/settings/JSONSetting;->a:Ljava/lang/String;

    if-nez p1, :cond_0

    invoke-static {}, Lcom/androlua/LuaApplication;->getInstance()Lcom/androlua/LuaApplication;

    move-result-object p1

    const v0, 0x7f070278

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/androlua/LuaApplication;->getResourcesDir(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/nirenr/talkman/settings/JSONSetting;->a:Ljava/lang/String;

    :cond_0
    iget-object p1, p0, Lcom/nirenr/talkman/settings/JSONSetting;->a:Ljava/lang/String;

    invoke-static {p1}, Lcom/androlua/LuaUtil;->readAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string p1, "{}"

    :cond_1
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "RES_ID"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/nirenr/talkman/settings/JSONSetting;->c:Ljava/lang/String;

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "NAME"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {p0, v0}, Landroid/app/Activity;->setTitle(Ljava/lang/CharSequence;)V

    :cond_2
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/nirenr/talkman/settings/JSONSetting;->d:Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1}, Lorg/json/JSONObject;-><init>()V

    iput-object p1, p0, Lcom/nirenr/talkman/settings/JSONSetting;->d:Lorg/json/JSONObject;

    :goto_0
    iget-object p1, p0, Lcom/nirenr/talkman/settings/JSONSetting;->a:Ljava/lang/String;

    const-string v0, "_"

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    array-length v0, p1

    const/4 v1, 0x1

    if-le v0, v1, :cond_3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    aget-object p1, p1, v1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ".json"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/nirenr/talkman/settings/JSONSetting;->e:Ljava/lang/String;

    :try_start_1
    new-instance p1, Lorg/json/JSONObject;

    iget-object v0, p0, Lcom/nirenr/talkman/settings/JSONSetting;->e:Ljava/lang/String;

    invoke-static {v0}, Lcom/androlua/LuaUtil;->readAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/nirenr/talkman/settings/JSONSetting;->f:Lorg/json/JSONObject;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_3
    :goto_1
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iget-object v0, p0, Lcom/nirenr/talkman/settings/JSONSetting;->d:Lorg/json/JSONObject;

    invoke-virtual {v0}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_4
    new-instance v0, Lcom/nirenr/talkman/settings/JSONSetting$1;

    invoke-direct {v0, p0}, Lcom/nirenr/talkman/settings/JSONSetting$1;-><init>(Lcom/nirenr/talkman/settings/JSONSetting;)V

    invoke-static {p1, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    new-instance v0, Lcom/nirenr/talkman/settings/JSONSetting$2;

    invoke-direct {v0, p0, p0, p1}, Lcom/nirenr/talkman/settings/JSONSetting$2;-><init>(Lcom/nirenr/talkman/settings/JSONSetting;Landroid/content/Context;Ljava/util/List;)V

    iput-object v0, p0, Lcom/nirenr/talkman/settings/JSONSetting;->b:Landroid/widget/ArrayListAdapter;

    invoke-virtual {p0, v0}, Landroid/app/ListActivity;->setListAdapter(Landroid/widget/ListAdapter;)V

    invoke-virtual {p0}, Landroid/app/ListActivity;->getListView()Landroid/widget/ListView;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/widget/AdapterView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    invoke-virtual {p0}, Landroid/app/ListActivity;->getListView()Landroid/widget/ListView;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/widget/AdapterView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    invoke-direct {p0}, Lcom/nirenr/talkman/settings/JSONSetting;->f()Z

    move-result p1

    if-nez p1, :cond_5

    invoke-virtual {p0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object p1

    const v0, 0x7f0703e4

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/app/ActionBar;->setSubtitle(Ljava/lang/CharSequence;)V

    :cond_5
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2

    const/4 v0, 0x0

    const v1, 0x7f070011

    invoke-interface {p1, v0, v0, v0, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setShowAsAction(I)V

    invoke-super {p0, p1}, Landroid/app/ListActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result p1

    return p1
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    new-instance p1, Lcom/nirenr/talkman/settings/JSONSetting$EditDialog;

    invoke-direct {p1, p0, p3}, Lcom/nirenr/talkman/settings/JSONSetting$EditDialog;-><init>(Lcom/nirenr/talkman/settings/JSONSetting;I)V

    invoke-virtual {p1}, Lcom/nirenr/talkman/settings/JSONSetting$EditDialog;->show()V

    return-void
.end method

.method public onItemLongClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)Z"
        }
    .end annotation

    invoke-direct {p0, p3}, Lcom/nirenr/talkman/settings/JSONSetting;->i(I)V

    const/4 p1, 0x1

    return p1
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/nirenr/talkman/settings/JSONSetting;->h()V

    :goto_0
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1
.end method

.method protected onStop()V
    .locals 2

    invoke-super {p0}, Landroid/app/ListActivity;->onStop()V

    iget-object v0, p0, Lcom/nirenr/talkman/settings/JSONSetting;->a:Ljava/lang/String;

    iget-object v1, p0, Lcom/nirenr/talkman/settings/JSONSetting;->d:Lorg/json/JSONObject;

    invoke-static {v0, v1}, Lcom/nirenr/talkman/o;->n(Ljava/lang/String;Lorg/json/JSONObject;)V

    iget-object v0, p0, Lcom/nirenr/talkman/settings/JSONSetting;->f:Lorg/json/JSONObject;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/nirenr/talkman/settings/JSONSetting;->e:Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/nirenr/talkman/o;->n(Ljava/lang/String;Lorg/json/JSONObject;)V

    :cond_0
    :try_start_0
    invoke-static {}, Lk2/f;->i()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    :try_start_1
    invoke-static {}, Lk2/f;->k()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_1
    invoke-static {}, Lcom/nirenr/talkman/o;->l()V

    invoke-static {}, Lcom/nirenr/talkman/o;->k()V

    return-void
.end method
