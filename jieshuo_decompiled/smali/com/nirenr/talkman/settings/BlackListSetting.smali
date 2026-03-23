.class public Lcom/nirenr/talkman/settings/BlackListSetting;
.super Landroid/app/BaseActivity;
.source "SourceFile"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;
.implements Landroid/widget/AdapterView$OnItemLongClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nirenr/talkman/settings/BlackListSetting$EditDialog2;,
        Lcom/nirenr/talkman/settings/BlackListSetting$EditDialog;
    }
.end annotation


# static fields
.field private static e:[Ljava/lang/String;


# instance fields
.field private a:Ljava/lang/String;

.field private b:Lorg/json/JSONObject;

.field private c:Landroid/widget/ArrayListAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/widget/ArrayListAdapter<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private d:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/BaseActivity;-><init>()V

    return-void
.end method

.method static bridge synthetic a(Lcom/nirenr/talkman/settings/BlackListSetting;)Landroid/widget/ArrayListAdapter;
    .locals 0

    iget-object p0, p0, Lcom/nirenr/talkman/settings/BlackListSetting;->c:Landroid/widget/ArrayListAdapter;

    return-object p0
.end method

.method static bridge synthetic b(Lcom/nirenr/talkman/settings/BlackListSetting;)Lorg/json/JSONObject;
    .locals 0

    iget-object p0, p0, Lcom/nirenr/talkman/settings/BlackListSetting;->b:Lorg/json/JSONObject;

    return-object p0
.end method

.method static bridge synthetic c(Lcom/nirenr/talkman/settings/BlackListSetting;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/nirenr/talkman/settings/BlackListSetting;->a:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic d(Lcom/nirenr/talkman/settings/BlackListSetting;)I
    .locals 0

    iget p0, p0, Lcom/nirenr/talkman/settings/BlackListSetting;->d:I

    return p0
.end method

.method static bridge synthetic e(Lcom/nirenr/talkman/settings/BlackListSetting;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/nirenr/talkman/settings/BlackListSetting;->f(I)V

    return-void
.end method

.method private f(I)V
    .locals 6

    iput p1, p0, Lcom/nirenr/talkman/settings/BlackListSetting;->d:I

    iget-object v0, p0, Lcom/nirenr/talkman/settings/BlackListSetting;->c:Landroid/widget/ArrayListAdapter;

    invoke-virtual {v0}, Landroid/widget/ArrayListAdapter;->getData()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/nirenr/talkman/settings/BlackListSetting;->b:Lorg/json/JSONObject;

    invoke-direct {p0, v1, v0}, Lcom/nirenr/talkman/settings/BlackListSetting;->i(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v2

    new-array v3, v2, [Ljava/lang/String;

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v2, :cond_0

    const-string v5, ""

    invoke-virtual {v1, v4, v5}, Lorg/json/JSONArray;->optString(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-direct {v2, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2, v0}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v2, Lcom/nirenr/talkman/settings/BlackListSetting$4;

    invoke-direct {v2, p0, v1}, Lcom/nirenr/talkman/settings/BlackListSetting$4;-><init>(Lcom/nirenr/talkman/settings/BlackListSetting;Lorg/json/JSONArray;)V

    invoke-virtual {v0, v3, v2}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v2, Lcom/nirenr/talkman/settings/BlackListSetting$3;

    invoke-direct {v2, p0, v1}, Lcom/nirenr/talkman/settings/BlackListSetting$3;-><init>(Lcom/nirenr/talkman/settings/BlackListSetting;Lorg/json/JSONArray;)V

    const v3, 0x7f070011

    invoke-virtual {v0, v3, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v2, 0x7f070095

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    iget-object v2, p0, Lcom/nirenr/talkman/settings/BlackListSetting;->a:Ljava/lang/String;

    const v3, 0x7f0704a3

    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/nirenr/talkman/settings/BlackListSetting;->a:Ljava/lang/String;

    const v3, 0x7f0704c3

    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    :cond_1
    new-instance v2, Lcom/nirenr/talkman/settings/BlackListSetting$5;

    invoke-direct {v2, p0, v1}, Lcom/nirenr/talkman/settings/BlackListSetting$5;-><init>(Lcom/nirenr/talkman/settings/BlackListSetting;Lorg/json/JSONArray;)V

    const v3, 0x7f070029

    invoke-virtual {v0, v3, v2}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    :cond_2
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->getListView()Landroid/widget/ListView;

    move-result-object v2

    new-instance v3, Lcom/nirenr/talkman/settings/BlackListSetting$6;

    invoke-direct {v3, p0, v1, v0, p1}, Lcom/nirenr/talkman/settings/BlackListSetting$6;-><init>(Lcom/nirenr/talkman/settings/BlackListSetting;Lorg/json/JSONArray;Landroid/app/AlertDialog;I)V

    invoke-virtual {v2, v3}, Landroid/widget/AdapterView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    return-void
.end method

.method private g()V
    .locals 7

    new-instance v0, Landroid/widget/ArrayListAdapter;

    invoke-virtual {p0}, Lcom/nirenr/talkman/settings/BlackListSetting;->getAllAppList()[Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Landroid/widget/ArrayListAdapter;-><init>(Landroid/content/Context;[Ljava/lang/Object;)V

    new-instance v1, Landroid/widget/EditText;

    invoke-direct {v1, p0}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    const v2, 0x7f070318

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setHint(I)V

    new-instance v2, Lcom/nirenr/talkman/settings/BlackListSetting$1;

    invoke-direct {v2, p0, v0}, Lcom/nirenr/talkman/settings/BlackListSetting$1;-><init>(Lcom/nirenr/talkman/settings/BlackListSetting;Landroid/widget/ArrayListAdapter;)V

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    new-instance v2, Landroid/widget/ListView;

    invoke-direct {v2, p0}, Landroid/widget/ListView;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    new-instance v3, Landroid/widget/LinearLayout;

    invoke-direct {v3, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->setOrientation(I)V

    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v5, -0x2

    const/4 v6, -0x1

    invoke-direct {v4, v6, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v3, v1, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v1, v6, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v3, v2, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v4, 0x7f0705ac

    invoke-virtual {v1, v4}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v3, 0x7f070095

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Dialog;->show()V

    new-instance v3, Lcom/nirenr/talkman/settings/BlackListSetting$2;

    invoke-direct {v3, p0, v0, v1}, Lcom/nirenr/talkman/settings/BlackListSetting$2;-><init>(Lcom/nirenr/talkman/settings/BlackListSetting;Landroid/widget/ArrayListAdapter;Landroid/app/AlertDialog;)V

    invoke-virtual {v2, v3}, Landroid/widget/AdapterView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    return-void
.end method

.method private h(I)V
    .locals 4

    iget-object v0, p0, Lcom/nirenr/talkman/settings/BlackListSetting;->c:Landroid/widget/ArrayListAdapter;

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

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f070095

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    new-instance v2, Lcom/nirenr/talkman/settings/BlackListSetting$7;

    invoke-direct {v2, p0, p1, v0}, Lcom/nirenr/talkman/settings/BlackListSetting$7;-><init>(Lcom/nirenr/talkman/settings/BlackListSetting;ILjava/lang/String;)V

    const p1, 0x104000a

    invoke-virtual {v1, p1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    return-void
.end method

.method private i(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONArray;
    .locals 1

    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    :try_start_0
    invoke-virtual {p1, p2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    return-object v0
.end method

.method private j()V
    .locals 3

    iget-object v0, p0, Lcom/nirenr/talkman/settings/BlackListSetting;->a:Ljava/lang/String;

    const v1, 0x7f07019b

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x7f07019c

    :goto_0
    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lcom/nirenr/talkman/settings/BlackListSetting;->a:Ljava/lang/String;

    const v1, 0x7f0704a3

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const v0, 0x7f0704a4

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/nirenr/talkman/settings/BlackListSetting;->a:Ljava/lang/String;

    const v1, 0x7f0704c3

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const v0, 0x7f0704c4

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/nirenr/talkman/settings/BlackListSetting;->a:Ljava/lang/String;

    const v1, 0x7f07005b

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const v0, 0x7f07005c

    goto :goto_0

    :goto_1
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x104000a

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    :cond_3
    return-void
.end method


# virtual methods
.method public getAllAppList()[Ljava/lang/String;
    .locals 2

    sget-object v0, Lcom/nirenr/talkman/settings/BlackListSetting;->e:[Ljava/lang/String;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/androlua/LuaApplication;->getInstance()Lcom/androlua/LuaApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/androlua/LuaApplication;->getAllApp()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    sput-object v1, Lcom/nirenr/talkman/settings/BlackListSetting;->e:[Ljava/lang/String;

    return-object v1

    :cond_0
    return-object v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    invoke-super {p0, p1}, Landroid/app/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "NAME"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0, p1}, Landroid/app/Activity;->setTitle(Ljava/lang/CharSequence;)V

    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "RES_ID"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/nirenr/talkman/settings/BlackListSetting;->a:Ljava/lang/String;

    :try_start_0
    new-instance p1, Lorg/json/JSONObject;

    invoke-static {p0}, Lk2/b0;->c(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    iget-object v1, p0, Lcom/nirenr/talkman/settings/BlackListSetting;->a:Ljava/lang/String;

    const-string v2, "{}"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/nirenr/talkman/settings/BlackListSetting;->b:Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iget-object v0, p0, Lcom/nirenr/talkman/settings/BlackListSetting;->b:Lorg/json/JSONObject;

    invoke-virtual {v0}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    new-instance v0, Landroid/widget/ListView;

    invoke-direct {v0, p0}, Landroid/widget/ListView;-><init>(Landroid/content/Context;)V

    new-instance v1, Landroid/widget/ArrayListAdapter;

    invoke-direct {v1, p0, p1}, Landroid/widget/ArrayListAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    iput-object v1, p0, Lcom/nirenr/talkman/settings/BlackListSetting;->c:Landroid/widget/ArrayListAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    invoke-virtual {p0, v0}, Landroid/app/Activity;->setContentView(Landroid/view/View;)V

    invoke-virtual {v0, p0}, Landroid/widget/AdapterView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    invoke-virtual {v0, p0}, Landroid/widget/AdapterView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    return-void

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 3

    const v0, 0x7f0701a9

    const/4 v1, 0x0

    invoke-interface {p1, v1, v1, v1, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const/4 v2, 0x1

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setShowAsAction(I)V

    const v0, 0x7f0701ee

    invoke-interface {p1, v1, v2, v1, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setShowAsAction(I)V

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

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

    invoke-direct {p0, p3}, Lcom/nirenr/talkman/settings/BlackListSetting;->f(I)V

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

    invoke-direct {p0, p3}, Lcom/nirenr/talkman/settings/BlackListSetting;->h(I)V

    const/4 p1, 0x1

    return p1
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/nirenr/talkman/settings/BlackListSetting;->j()V

    goto :goto_0

    :cond_1
    invoke-direct {p0}, Lcom/nirenr/talkman/settings/BlackListSetting;->g()V

    :goto_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1
.end method

.method protected onStop()V
    .locals 4

    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    iget-object v0, p0, Lcom/nirenr/talkman/settings/BlackListSetting;->b:Lorg/json/JSONObject;

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0}, Lk2/b0;->c(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    iget-object v2, p0, Lcom/nirenr/talkman/settings/BlackListSetting;->a:Ljava/lang/String;

    invoke-static {v1, v2, v0}, Lk2/b0;->l(Landroid/content/SharedPreferences;Ljava/lang/String;Ljava/lang/Object;)Z

    invoke-static {}, Lcom/nirenr/talkman/TalkManAccessibilityService;->getInstance()Lcom/nirenr/talkman/TalkManAccessibilityService;

    move-result-object v1

    if-eqz v1, :cond_3

    iget-object v2, p0, Lcom/nirenr/talkman/settings/BlackListSetting;->a:Ljava/lang/String;

    const v3, 0x7f07019b

    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1, v0}, Lcom/nirenr/talkman/TalkManAccessibilityService;->loadContentBlacklist(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lcom/nirenr/talkman/settings/BlackListSetting;->a:Ljava/lang/String;

    const v3, 0x7f0704a3

    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v1, v0}, Lcom/nirenr/talkman/TalkManAccessibilityService;->loadNotificationBlackList(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lcom/nirenr/talkman/settings/BlackListSetting;->a:Ljava/lang/String;

    const v3, 0x7f0704c3

    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {v1, v0}, Lcom/nirenr/talkman/TalkManAccessibilityService;->loadNotificationWhiteList(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    iget-object v2, p0, Lcom/nirenr/talkman/settings/BlackListSetting;->a:Ljava/lang/String;

    const v3, 0x7f07005b

    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {v1, v0}, Lcom/nirenr/talkman/TalkManAccessibilityService;->loadAutoSpeakBlacklist(Ljava/lang/String;)V

    :cond_3
    :goto_0
    return-void
.end method
