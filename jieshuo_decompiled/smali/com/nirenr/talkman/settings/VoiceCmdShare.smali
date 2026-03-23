.class public Lcom/nirenr/talkman/settings/VoiceCmdShare;
.super Landroid/app/BaseListActivity;
.source "SourceFile"

# interfaces
.implements Lcom/nirenr/talkman/util/HttpUtil$HttpCallback;
.implements Landroid/widget/AdapterView$OnItemLongClickListener;


# instance fields
.field private a:Landroid/widget/ArrayListAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/widget/ArrayListAdapter<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private b:Ljava/lang/String;

.field private c:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private d:Ljava/text/DateFormat;

.field private e:Landroid/widget/EditText;

.field private f:Z

.field private g:Ljava/lang/String;

.field private h:Z

.field private i:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Landroid/app/BaseListActivity;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/nirenr/talkman/settings/VoiceCmdShare;->c:Ljava/util/ArrayList;

    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy.MM.dd HH:mm:ss"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    iput-object v0, p0, Lcom/nirenr/talkman/settings/VoiceCmdShare;->d:Ljava/text/DateFormat;

    return-void
.end method

.method static bridge synthetic a(Lcom/nirenr/talkman/settings/VoiceCmdShare;)Ljava/text/DateFormat;
    .locals 0

    iget-object p0, p0, Lcom/nirenr/talkman/settings/VoiceCmdShare;->d:Ljava/text/DateFormat;

    return-object p0
.end method

.method static bridge synthetic b(Lcom/nirenr/talkman/settings/VoiceCmdShare;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/nirenr/talkman/settings/VoiceCmdShare;->i:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic c(Lcom/nirenr/talkman/settings/VoiceCmdShare;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/nirenr/talkman/settings/VoiceCmdShare;->g:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic d(Lcom/nirenr/talkman/settings/VoiceCmdShare;)Landroid/widget/ArrayListAdapter;
    .locals 0

    iget-object p0, p0, Lcom/nirenr/talkman/settings/VoiceCmdShare;->a:Landroid/widget/ArrayListAdapter;

    return-object p0
.end method

.method static bridge synthetic e(Lcom/nirenr/talkman/settings/VoiceCmdShare;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/nirenr/talkman/settings/VoiceCmdShare;->h:Z

    return p0
.end method

.method static bridge synthetic f(Lcom/nirenr/talkman/settings/VoiceCmdShare;)V
    .locals 0

    invoke-direct {p0}, Lcom/nirenr/talkman/settings/VoiceCmdShare;->g()V

    return-void
.end method

.method private g()V
    .locals 5

    const-string v0, "share"

    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    const-string v2, "Username"

    iget-object v3, p0, Lcom/nirenr/talkman/settings/VoiceCmdShare;->b:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "FileName"

    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v1

    iget-boolean v2, p0, Lcom/nirenr/talkman/settings/VoiceCmdShare;->f:Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    const-string v3, "cmd"

    if-nez v2, :cond_0

    :try_start_1
    const-string v2, "dir"

    iget-object v4, p0, Lcom/nirenr/talkman/settings/VoiceCmdShare;->g:Ljava/lang/String;

    invoke-virtual {v1, v2, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "type"

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_0
    iget-object v1, p0, Lcom/nirenr/talkman/settings/VoiceCmdShare;->g:Ljava/lang/String;

    invoke-static {v1, v3, v0, p0}, Lcom/nirenr/talkman/util/a;->l(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/nirenr/talkman/util/HttpUtil$HttpCallback;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    iget-object v1, p0, Lcom/nirenr/talkman/settings/VoiceCmdShare;->a:Landroid/widget/ArrayListAdapter;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/ArrayListAdapter;->add(Ljava/lang/Object;)V

    :goto_0
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/app/ListActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0705dc

    invoke-virtual {p0, p1}, Landroid/app/Activity;->setTitle(I)V

    new-instance p1, Lcom/nirenr/talkman/settings/VoiceCmdShare$1;

    invoke-direct {p1, p0, p0}, Lcom/nirenr/talkman/settings/VoiceCmdShare$1;-><init>(Lcom/nirenr/talkman/settings/VoiceCmdShare;Landroid/content/Context;)V

    iput-object p1, p0, Lcom/nirenr/talkman/settings/VoiceCmdShare;->a:Landroid/widget/ArrayListAdapter;

    invoke-virtual {p0, p1}, Landroid/app/ListActivity;->setListAdapter(Landroid/widget/ListAdapter;)V

    invoke-static {}, Lcom/androlua/LuaApplication;->getInstance()Lcom/androlua/LuaApplication;

    move-result-object p1

    const-string v0, ""

    invoke-virtual {p1, v0}, Lcom/androlua/LuaApplication;->getUserName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/nirenr/talkman/settings/VoiceCmdShare;->b:Ljava/lang/String;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "_"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/nirenr/talkman/settings/VoiceCmdShare;->b:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/nirenr/talkman/settings/VoiceCmdShare;->i:Ljava/lang/String;

    iget-object p1, p0, Lcom/nirenr/talkman/settings/VoiceCmdShare;->b:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    const v0, 0x7f070475

    invoke-static {p0, v0, p1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    iget-object p1, p0, Lcom/nirenr/talkman/settings/VoiceCmdShare;->a:Landroid/widget/ArrayListAdapter;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/ArrayListAdapter;->add(Ljava/lang/Object;)V

    return-void

    :cond_0
    iget-object p1, p0, Lcom/nirenr/talkman/settings/VoiceCmdShare;->a:Landroid/widget/ArrayListAdapter;

    const v0, 0x7f070973

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/ArrayListAdapter;->add(Ljava/lang/Object;)V

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/nirenr/talkman/settings/VoiceCmdShare;->g:Ljava/lang/String;

    const-string v0, "zh"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/nirenr/talkman/settings/VoiceCmdShare;->g:Ljava/lang/String;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/nirenr/talkman/settings/VoiceCmdShare;->f:Z

    :cond_1
    invoke-direct {p0}, Lcom/nirenr/talkman/settings/VoiceCmdShare;->g()V

    invoke-virtual {p0}, Landroid/app/ListActivity;->getListView()Landroid/widget/ListView;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/widget/AdapterView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2

    new-instance v0, Lcom/nirenr/talkman/settings/VoiceCmdShare$2;

    invoke-direct {v0, p0, p0}, Lcom/nirenr/talkman/settings/VoiceCmdShare$2;-><init>(Lcom/nirenr/talkman/settings/VoiceCmdShare;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/nirenr/talkman/settings/VoiceCmdShare;->e:Landroid/widget/EditText;

    const v1, 0x7f070318

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setHint(I)V

    const-string v0, ""

    invoke-interface {p1, v0}, Landroid/view/Menu;->add(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setShowAsActionFlags(I)Landroid/view/MenuItem;

    move-result-object v0

    iget-object v1, p0, Lcom/nirenr/talkman/settings/VoiceCmdShare;->e:Landroid/widget/EditText;

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setActionView(Landroid/view/View;)Landroid/view/MenuItem;

    invoke-super {p0, p1}, Landroid/app/ListActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result p1

    return p1
.end method

.method public onDone(Lcom/nirenr/talkman/util/HttpUtil$c;)V
    .locals 5

    iget-object v0, p0, Lcom/nirenr/talkman/settings/VoiceCmdShare;->a:Landroid/widget/ArrayListAdapter;

    invoke-virtual {v0}, Landroid/widget/ArrayListAdapter;->clear()V

    iget-object v0, p0, Lcom/nirenr/talkman/settings/VoiceCmdShare;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget v0, p1, Lcom/nirenr/talkman/util/HttpUtil$c;->a:I

    const/16 v1, 0xc8

    if-ne v0, v1, :cond_7

    :try_start_0
    new-instance v0, Lorg/json/JSONArray;

    iget-object p1, p1, Lcom/nirenr/talkman/util/HttpUtil$c;->b:Ljava/lang/String;

    invoke-direct {v0, p1}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result p1

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x0

    :goto_0
    if-ge v2, p1, :cond_1

    invoke-virtual {v0, v2}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    new-instance p1, Lk2/p;

    invoke-direct {p1}, Lk2/p;-><init>()V

    invoke-static {v1, p1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_2
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v2, p0, Lcom/nirenr/talkman/settings/VoiceCmdShare;->i:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/nirenr/talkman/settings/VoiceCmdShare;->c:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_3
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_4
    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/nirenr/talkman/settings/VoiceCmdShare;->i:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_4

    iget-object v1, p0, Lcom/nirenr/talkman/settings/VoiceCmdShare;->c:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_5
    iget-object p1, p0, Lcom/nirenr/talkman/settings/VoiceCmdShare;->c:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_3
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/nirenr/talkman/settings/VoiceCmdShare;->a:Landroid/widget/ArrayListAdapter;

    invoke-virtual {v1, v0}, Landroid/widget/ArrayListAdapter;->add(Ljava/lang/Object;)V

    goto :goto_3

    :cond_6
    const-string p1, "lua"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onDone 2: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/nirenr/talkman/settings/VoiceCmdShare;->a:Landroid/widget/ArrayListAdapter;

    invoke-virtual {v1}, Landroid/widget/ArrayListAdapter;->getData()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/nirenr/talkman/settings/VoiceCmdShare;->h:Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_5

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    iget-object v0, p0, Lcom/nirenr/talkman/settings/VoiceCmdShare;->a:Landroid/widget/ArrayListAdapter;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_4

    :cond_7
    iget-object v0, p0, Lcom/nirenr/talkman/settings/VoiceCmdShare;->a:Landroid/widget/ArrayListAdapter;

    iget-object p1, p1, Lcom/nirenr/talkman/util/HttpUtil$c;->b:Ljava/lang/String;

    :goto_4
    invoke-virtual {v0, p1}, Landroid/widget/ArrayListAdapter;->add(Ljava/lang/Object;)V

    :goto_5
    return-void
.end method

.method public onItemLongClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)Z"
        }
    .end annotation

    iget-object p1, p0, Lcom/nirenr/talkman/settings/VoiceCmdShare;->c:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    const/4 p2, 0x1

    if-eqz p1, :cond_0

    return p2

    :cond_0
    iget-object p1, p0, Lcom/nirenr/talkman/settings/VoiceCmdShare;->a:Landroid/widget/ArrayListAdapter;

    invoke-virtual {p1, p3}, Landroid/widget/ArrayListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    iget-object p3, p0, Lcom/nirenr/talkman/settings/VoiceCmdShare;->i:Ljava/lang/String;

    invoke-virtual {p1, p3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p3

    if-nez p3, :cond_1

    return p2

    :cond_1
    const-string p3, "_"

    invoke-virtual {p1, p3}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result p3

    const/4 p4, 0x0

    invoke-virtual {p1, p4, p3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    new-instance p3, Landroid/app/AlertDialog$Builder;

    invoke-direct {p3, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const/4 p5, 0x2

    new-array p5, p5, [Ljava/lang/String;

    const v0, 0x7f0701ea

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, p5, p4

    const p4, 0x7f07055d

    invoke-virtual {p0, p4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p4

    aput-object p4, p5, p2

    new-instance p4, Lcom/nirenr/talkman/settings/VoiceCmdShare$4;

    invoke-direct {p4, p0, p1}, Lcom/nirenr/talkman/settings/VoiceCmdShare$4;-><init>(Lcom/nirenr/talkman/settings/VoiceCmdShare;Ljava/lang/String;)V

    invoke-virtual {p3, p5, p4}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    return p2
.end method

.method protected onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V
    .locals 2

    iget-object v0, p0, Lcom/nirenr/talkman/settings/VoiceCmdShare;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-super/range {p0 .. p5}, Landroid/app/ListActivity;->onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V

    iget-object p1, p0, Lcom/nirenr/talkman/settings/VoiceCmdShare;->a:Landroid/widget/ArrayListAdapter;

    invoke-virtual {p1, p3}, Landroid/widget/ArrayListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    iget-boolean p3, p0, Lcom/nirenr/talkman/settings/VoiceCmdShare;->f:Z

    if-nez p3, :cond_1

    iget-object p3, p0, Lcom/nirenr/talkman/settings/VoiceCmdShare;->g:Ljava/lang/String;

    move-object p4, p1

    goto :goto_0

    :cond_1
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "share/"

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    const/4 p4, 0x0

    move-object v1, p4

    move-object p4, p3

    move-object p3, v1

    :goto_0
    new-instance p5, Lcom/nirenr/talkman/settings/VoiceCmdShare$3;

    invoke-direct {p5, p0, p2, p1}, Lcom/nirenr/talkman/settings/VoiceCmdShare$3;-><init>(Lcom/nirenr/talkman/settings/VoiceCmdShare;Landroid/view/View;Ljava/lang/String;)V

    const-string p1, "cmd"

    invoke-static {p3, p1, p4, p5}, Lcom/nirenr/talkman/util/a;->r(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/nirenr/talkman/util/HttpUtil$HttpCallback;)V

    return-void
.end method
