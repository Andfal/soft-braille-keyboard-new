.class public Lcom/nirenr/talkman/DownloadActivity;
.super Landroid/app/BaseListActivity;
.source "SourceFile"

# interfaces
.implements Lcom/nirenr/talkman/util/HttpUtil$HttpCallback;
.implements Landroid/widget/AdapterView$OnItemLongClickListener;


# static fields
.field public static u:Ljava/lang/String; = "https://jieshuo.ltd/download/"

.field private static final v:[Ljava/lang/String;

.field private static w:I


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

.field private c:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private d:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private e:Landroid/view/MenuItem;

.field private f:Z

.field private g:Ljava/lang/String;

.field private h:Ljava/lang/String;

.field private i:Ljava/lang/String;

.field private j:Landroid/view/MenuItem;

.field private k:Z

.field private l:Z

.field private m:Z

.field private n:Z

.field private o:Z

.field private p:I

.field private q:I

.field private r:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private s:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private t:Z


# direct methods
.method static constructor <clinit>()V
    .locals 17

    const-string v0, "downloaded/"

    const-string v1, "jieshuo/"

    const-string v2, "release/"

    const-string v3, "app/"

    const-string v4, "sound/"

    const-string v5, "gesture/"

    const-string v6, "gesture2/"

    const-string v7, "hotkey/"

    const-string v8, "hotkey2/"

    const-string v9, "plugin/"

    const-string v10, "tool/"

    const-string v11, "helper/"

    const-string v12, "media/"

    const-string v13, "res/"

    const-string v14, "lang/"

    const-string v15, "beta/"

    const-string v16, "game/"

    filled-new-array/range {v0 .. v16}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/nirenr/talkman/DownloadActivity;->v:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/app/BaseListActivity;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/nirenr/talkman/DownloadActivity;->c:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/nirenr/talkman/DownloadActivity;->d:Ljava/util/ArrayList;

    sget-object v0, Lcom/nirenr/talkman/DownloadActivity;->u:Ljava/lang/String;

    iput-object v0, p0, Lcom/nirenr/talkman/DownloadActivity;->i:Ljava/lang/String;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/nirenr/talkman/DownloadActivity;->r:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/nirenr/talkman/DownloadActivity;->s:Ljava/util/ArrayList;

    return-void
.end method

.method static bridge synthetic a(Lcom/nirenr/talkman/DownloadActivity;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/nirenr/talkman/DownloadActivity;->i:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic b(Lcom/nirenr/talkman/DownloadActivity;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/nirenr/talkman/DownloadActivity;->g:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic c(Lcom/nirenr/talkman/DownloadActivity;)Landroid/widget/ArrayListAdapter;
    .locals 0

    iget-object p0, p0, Lcom/nirenr/talkman/DownloadActivity;->b:Landroid/widget/ArrayListAdapter;

    return-object p0
.end method

.method static bridge synthetic d(Lcom/nirenr/talkman/DownloadActivity;)Ljava/util/ArrayList;
    .locals 0

    iget-object p0, p0, Lcom/nirenr/talkman/DownloadActivity;->d:Ljava/util/ArrayList;

    return-object p0
.end method

.method static bridge synthetic e(Lcom/nirenr/talkman/DownloadActivity;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/nirenr/talkman/DownloadActivity;->m:Z

    return p0
.end method

.method static bridge synthetic f(Lcom/nirenr/talkman/DownloadActivity;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/nirenr/talkman/DownloadActivity;->f:Z

    return p0
.end method

.method static bridge synthetic g(Lcom/nirenr/talkman/DownloadActivity;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/nirenr/talkman/DownloadActivity;->n:Z

    return p0
.end method

.method static bridge synthetic h(Lcom/nirenr/talkman/DownloadActivity;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/nirenr/talkman/DownloadActivity;->l:Z

    return p0
.end method

.method static bridge synthetic i(Lcom/nirenr/talkman/DownloadActivity;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/nirenr/talkman/DownloadActivity;->a:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic j(Lcom/nirenr/talkman/DownloadActivity;)Ljava/util/ArrayList;
    .locals 0

    iget-object p0, p0, Lcom/nirenr/talkman/DownloadActivity;->c:Ljava/util/ArrayList;

    return-object p0
.end method

.method static bridge synthetic k(Lcom/nirenr/talkman/DownloadActivity;I)V
    .locals 0

    iput p1, p0, Lcom/nirenr/talkman/DownloadActivity;->p:I

    return-void
.end method

.method static bridge synthetic l(Lcom/nirenr/talkman/DownloadActivity;I)V
    .locals 0

    iput p1, p0, Lcom/nirenr/talkman/DownloadActivity;->q:I

    return-void
.end method

.method static bridge synthetic m(Lcom/nirenr/talkman/DownloadActivity;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/nirenr/talkman/DownloadActivity;->q(Ljava/lang/String;)V

    return-void
.end method

.method static bridge synthetic n()I
    .locals 1

    sget v0, Lcom/nirenr/talkman/DownloadActivity;->w:I

    return v0
.end method

.method static bridge synthetic o(I)V
    .locals 0

    sput p0, Lcom/nirenr/talkman/DownloadActivity;->w:I

    return-void
.end method

.method private q(Ljava/lang/String;)V
    .locals 7

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "apk"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x1

    const-string v2, "android.intent.action.VIEW"

    if-eqz v0, :cond_0

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/androlua/LuaApplication;->getInstance()Lcom/androlua/LuaApplication;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/androlua/LuaApplication;->getUriForPath(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/nirenr/talkman/DownloadActivity;->startActivity(Landroid/content/Intent;)V

    return-void

    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v3, "strings.json"

    invoke-virtual {v0, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {p1}, Lcom/nirenr/talkman/o;->h(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const v2, 0x7f0703ed

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "lang:\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "lang"

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    goto :goto_0

    :cond_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ":\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/nirenr/talkman/DownloadActivity$b;

    invoke-direct {v1, p0, p1}, Lcom/nirenr/talkman/DownloadActivity$b;-><init>(Lcom/nirenr/talkman/DownloadActivity;Ljava/lang/String;)V

    const v3, 0x7f070517

    invoke-virtual {v0, v3, v1}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f070095

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/nirenr/talkman/DownloadActivity$a;

    invoke-direct {v1, p0, p1}, Lcom/nirenr/talkman/DownloadActivity$a;-><init>(Lcom/nirenr/talkman/DownloadActivity;Ljava/lang/String;)V

    const p1, 0x7f070370

    invoke-virtual {v0, p1, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    return-void

    :cond_3
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v3, "pk"

    invoke-virtual {v0, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/nirenr/talkman/settings/ManagerActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "file://"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/nirenr/talkman/DownloadActivity;->startActivity(Landroid/content/Intent;)V

    return-void

    :cond_4
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/androlua/LuaApplication;->getInstance()Lcom/androlua/LuaApplication;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/androlua/LuaApplication;->getUriForPath(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/nirenr/talkman/DownloadActivity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 8

    invoke-super {p0, p1}, Landroid/app/ListActivity;->onCreate(Landroid/os/Bundle;)V

    const-string p1, "base_url"

    const-string v0, "https://jieshuo.ltd/download/"

    invoke-static {p0, p1, v0}, Lk2/b0;->i(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    sput-object p1, Lcom/nirenr/talkman/DownloadActivity;->u:Ljava/lang/String;

    const p1, 0x7f07023d

    invoke-static {p0, p1, v0}, Lk2/b0;->h(Landroid/content/Context;ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/nirenr/talkman/DownloadActivity;->i:Ljava/lang/String;

    invoke-static {}, Lcom/androlua/LuaApplication;->getInstance()Lcom/androlua/LuaApplication;

    move-result-object p1

    const-string v0, "\u672a\u767b\u5f55"

    invoke-virtual {p1, v0}, Lcom/androlua/LuaApplication;->getUserName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/nirenr/talkman/DownloadActivity;->h:Ljava/lang/String;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "_"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/nirenr/talkman/DownloadActivity;->h:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/nirenr/talkman/DownloadActivity;->g:Ljava/lang/String;

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v1, "url"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/nirenr/talkman/DownloadActivity;->a:Ljava/lang/String;

    new-instance v1, Lcom/nirenr/talkman/DownloadActivity$e;

    invoke-direct {v1, p0, p0}, Lcom/nirenr/talkman/DownloadActivity$e;-><init>(Lcom/nirenr/talkman/DownloadActivity;Landroid/content/Context;)V

    iput-object v1, p0, Lcom/nirenr/talkman/DownloadActivity;->b:Landroid/widget/ArrayListAdapter;

    invoke-virtual {p0, v1}, Landroid/app/ListActivity;->setListAdapter(Landroid/widget/ListAdapter;)V

    invoke-static {p0}, Lcom/androlua/LuaUtil;->checkStorage(Landroid/app/Activity;)V

    iget-object v1, p0, Lcom/nirenr/talkman/DownloadActivity;->a:Ljava/lang/String;

    const-string v2, "zh"

    const/4 v3, 0x1

    if-nez v1, :cond_3

    const p1, 0x7f07023a

    invoke-virtual {p0, p1}, Landroid/app/Activity;->setTitle(I)V

    iget-object p1, p0, Lcom/nirenr/talkman/DownloadActivity;->b:Landroid/widget/ArrayListAdapter;

    const v0, 0x7f07023e

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/ArrayListAdapter;->add(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/nirenr/talkman/DownloadActivity;->b:Landroid/widget/ArrayListAdapter;

    const-string v0, "Github"

    invoke-virtual {p1, v0}, Landroid/widget/ArrayListAdapter;->add(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/nirenr/talkman/DownloadActivity;->b:Landroid/widget/ArrayListAdapter;

    const v0, 0x7f07003b

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/ArrayListAdapter;->add(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/nirenr/talkman/DownloadActivity;->b:Landroid/widget/ArrayListAdapter;

    const v0, 0x7f070032

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/ArrayListAdapter;->add(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/nirenr/talkman/DownloadActivity;->b:Landroid/widget/ArrayListAdapter;

    const v0, 0x7f070606

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/ArrayListAdapter;->add(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/nirenr/talkman/DownloadActivity;->b:Landroid/widget/ArrayListAdapter;

    const v0, 0x7f0702ca

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/ArrayListAdapter;->add(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/nirenr/talkman/DownloadActivity;->b:Landroid/widget/ArrayListAdapter;

    const v0, 0x7f070035

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/ArrayListAdapter;->add(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/nirenr/talkman/DownloadActivity;->b:Landroid/widget/ArrayListAdapter;

    const v0, 0x7f0702f4

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/ArrayListAdapter;->add(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/nirenr/talkman/DownloadActivity;->b:Landroid/widget/ArrayListAdapter;

    const v0, 0x7f070038

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/ArrayListAdapter;->add(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/nirenr/talkman/DownloadActivity;->b:Landroid/widget/ArrayListAdapter;

    const v0, 0x7f070525

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/ArrayListAdapter;->add(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/nirenr/talkman/DownloadActivity;->b:Landroid/widget/ArrayListAdapter;

    const v0, 0x7f07068f

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/ArrayListAdapter;->add(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/nirenr/talkman/DownloadActivity;->b:Landroid/widget/ArrayListAdapter;

    const v0, 0x7f0702dd

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/ArrayListAdapter;->add(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/nirenr/talkman/DownloadActivity;->b:Landroid/widget/ArrayListAdapter;

    const v0, 0x7f070369

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/ArrayListAdapter;->add(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/nirenr/talkman/DownloadActivity;->b:Landroid/widget/ArrayListAdapter;

    const v0, 0x7f070515

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/ArrayListAdapter;->add(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/nirenr/talkman/DownloadActivity;->b:Landroid/widget/ArrayListAdapter;

    const v0, 0x7f07031d

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/ArrayListAdapter;->add(Ljava/lang/Object;)V

    invoke-static {}, Lcom/androlua/LuaApplication;->getInstance()Lcom/androlua/LuaApplication;

    move-result-object p1

    invoke-virtual {p1}, Lcom/androlua/LuaApplication;->isAbc()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/nirenr/talkman/DownloadActivity;->b:Landroid/widget/ArrayListAdapter;

    const v0, 0x7f070311

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/ArrayListAdapter;->add(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    sget-object p1, Lcom/nirenr/talkman/DownloadActivity;->v:[Ljava/lang/String;

    const/16 v0, 0xf

    const-string v1, "game/"

    aput-object v1, p1, v0

    :goto_0
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    iput-boolean v3, p0, Lcom/nirenr/talkman/DownloadActivity;->o:Z

    :cond_1
    iget-boolean p1, p0, Lcom/nirenr/talkman/DownloadActivity;->o:Z

    if-eqz p1, :cond_2

    goto :goto_1

    :cond_2
    iget-object p1, p0, Lcom/nirenr/talkman/DownloadActivity;->b:Landroid/widget/ArrayListAdapter;

    const-string v0, "Game"

    invoke-virtual {p1, v0}, Landroid/widget/ArrayListAdapter;->add(Ljava/lang/Object;)V

    :goto_1
    return-void

    :cond_3
    const-string v4, "sound/"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/nirenr/talkman/DownloadActivity;->g:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    :cond_4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/nirenr/talkman/DownloadActivity;->g:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_2
    iput-object v0, p0, Lcom/nirenr/talkman/DownloadActivity;->g:Ljava/lang/String;

    const-string v0, "title"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/app/Activity;->setTitle(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Landroid/app/ListActivity;->getListView()Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/widget/AdapterView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    iget-object v1, p0, Lcom/nirenr/talkman/DownloadActivity;->a:Ljava/lang/String;

    sget-object v4, Lcom/nirenr/talkman/DownloadActivity;->v:[Ljava/lang/String;

    const/4 v5, 0x0

    aget-object v6, v4, v5

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    new-instance p1, Ljava/io/File;

    invoke-static {}, Lcom/androlua/LuaApplication;->getInstance()Lcom/androlua/LuaApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/androlua/LuaApplication;->getDownloadDir()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_5

    new-array p1, v5, [Ljava/lang/String;

    :cond_5
    iget-object v0, p0, Lcom/nirenr/talkman/DownloadActivity;->c:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    new-instance p1, Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/nirenr/talkman/DownloadActivity;->c:Ljava/util/ArrayList;

    invoke-direct {p1, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object p1, p0, Lcom/nirenr/talkman/DownloadActivity;->d:Ljava/util/ArrayList;

    new-instance p1, Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/nirenr/talkman/DownloadActivity;->c:Ljava/util/ArrayList;

    invoke-direct {p1, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object p1, p0, Lcom/nirenr/talkman/DownloadActivity;->r:Ljava/util/ArrayList;

    iget-object p1, p0, Lcom/nirenr/talkman/DownloadActivity;->c:Ljava/util/ArrayList;

    new-instance v0, Lk2/p;

    invoke-direct {v0}, Lk2/p;-><init>()V

    invoke-static {p1, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    iget-object p1, p0, Lcom/nirenr/talkman/DownloadActivity;->b:Landroid/widget/ArrayListAdapter;

    iget-object v0, p0, Lcom/nirenr/talkman/DownloadActivity;->c:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Landroid/widget/ArrayListAdapter;->addAll(Ljava/util/Collection;)V

    iput-boolean v3, p0, Lcom/nirenr/talkman/DownloadActivity;->m:Z

    iput-boolean v3, p0, Lcom/nirenr/talkman/DownloadActivity;->n:Z

    iput-boolean v3, p0, Lcom/nirenr/talkman/DownloadActivity;->f:Z

    return-void

    :cond_6
    iget-object v1, p0, Lcom/nirenr/talkman/DownloadActivity;->a:Ljava/lang/String;

    aget-object v4, v4, v3

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    new-instance p1, Landroid/content/Intent;

    const-class v0, Lcom/nirenr/talkman/settings/GithubActivity;

    invoke-direct {p1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, p1}, Lcom/nirenr/talkman/DownloadActivity;->startActivity(Landroid/content/Intent;)V

    return-void

    :cond_7
    iget-object v1, p0, Lcom/nirenr/talkman/DownloadActivity;->a:Ljava/lang/String;

    const-string v4, "app/"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const-string v6, "release/"

    const-string v7, "beta/"

    if-nez v1, :cond_8

    iget-object v1, p0, Lcom/nirenr/talkman/DownloadActivity;->a:Ljava/lang/String;

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    iget-object v1, p0, Lcom/nirenr/talkman/DownloadActivity;->a:Ljava/lang/String;

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    :cond_8
    const v1, 0x7f07031b

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    const/4 v1, 0x1

    goto :goto_3

    :cond_9
    const/4 v1, 0x0

    :goto_3
    iput-boolean v1, p0, Lcom/nirenr/talkman/DownloadActivity;->l:Z

    iget-object v1, p0, Lcom/nirenr/talkman/DownloadActivity;->a:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_b

    iget-object v1, p0, Lcom/nirenr/talkman/DownloadActivity;->a:Ljava/lang/String;

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_b

    iget-object v1, p0, Lcom/nirenr/talkman/DownloadActivity;->a:Ljava/lang/String;

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    goto :goto_4

    :cond_a
    const/4 v3, 0x0

    :cond_b
    :goto_4
    iput-boolean v3, p0, Lcom/nirenr/talkman/DownloadActivity;->n:Z

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/app/Activity;->setTitle(Ljava/lang/CharSequence;)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v0, Lcom/nirenr/talkman/DownloadActivity;->u:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/nirenr/talkman/DownloadActivity;->a:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, p0}, Lcom/nirenr/talkman/util/HttpUtil;->f(Ljava/lang/String;Lcom/nirenr/talkman/util/HttpUtil$HttpCallback;)Lcom/nirenr/talkman/util/HttpUtil$d;

    sget p1, Lcom/nirenr/talkman/DownloadActivity;->w:I

    if-nez p1, :cond_c

    const-string p1, "sort_mode"

    invoke-static {p0, p1}, Lk2/b0;->d(Landroid/content/Context;Ljava/lang/String;)I

    move-result p1

    sput p1, Lcom/nirenr/talkman/DownloadActivity;->w:I

    :cond_c
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 5

    iget-object v0, p0, Lcom/nirenr/talkman/DownloadActivity;->a:Ljava/lang/String;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    new-instance v0, Lcom/nirenr/talkman/DownloadActivity$f;

    invoke-direct {v0, p0, p0}, Lcom/nirenr/talkman/DownloadActivity$f;-><init>(Lcom/nirenr/talkman/DownloadActivity;Landroid/content/Context;)V

    const v2, 0x7f070318

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setHint(I)V

    const-string v2, ""

    invoke-interface {p1, v2}, Landroid/view/Menu;->add(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v2

    invoke-interface {v2, v1}, Landroid/view/MenuItem;->setShowAsActionFlags(I)Landroid/view/MenuItem;

    move-result-object v2

    invoke-interface {v2, v0}, Landroid/view/MenuItem;->setActionView(Landroid/view/View;)Landroid/view/MenuItem;

    :cond_0
    const v0, 0x7f070029

    invoke-interface {p1, v0}, Landroid/view/Menu;->add(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setShowAsActionFlags(I)Landroid/view/MenuItem;

    move-result-object v0

    iput-object v0, p0, Lcom/nirenr/talkman/DownloadActivity;->e:Landroid/view/MenuItem;

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    iget-object v0, p0, Lcom/nirenr/talkman/DownloadActivity;->e:Landroid/view/MenuItem;

    new-instance v3, Lcom/nirenr/talkman/DownloadActivity$g;

    invoke-direct {v3, p0}, Lcom/nirenr/talkman/DownloadActivity$g;-><init>(Lcom/nirenr/talkman/DownloadActivity;)V

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    const v0, 0x7f070468

    invoke-interface {p1, v0}, Landroid/view/Menu;->add(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setShowAsActionFlags(I)Landroid/view/MenuItem;

    move-result-object v0

    new-instance v3, Lcom/nirenr/talkman/DownloadActivity$h;

    invoke-direct {v3, p0}, Lcom/nirenr/talkman/DownloadActivity$h;-><init>(Lcom/nirenr/talkman/DownloadActivity;)V

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    move-result-object v0

    iput-object v0, p0, Lcom/nirenr/talkman/DownloadActivity;->j:Landroid/view/MenuItem;

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    iget-object v0, p0, Lcom/nirenr/talkman/DownloadActivity;->a:Ljava/lang/String;

    if-eqz v0, :cond_6

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v3

    const/4 v4, -0x1

    sparse-switch v3, :sswitch_data_0

    :goto_0
    const/4 v1, -0x1

    goto :goto_1

    :sswitch_0
    const-string v1, "game/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x3

    goto :goto_1

    :sswitch_1
    const-string v1, "res/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    const/4 v1, 0x2

    goto :goto_1

    :sswitch_2
    const-string v2, "media/"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    goto :goto_0

    :sswitch_3
    const-string v1, "downloaded/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    goto :goto_0

    :cond_3
    const/4 v1, 0x0

    :cond_4
    :goto_1
    packed-switch v1, :pswitch_data_0

    invoke-virtual {p0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    sget v1, Lcom/nirenr/talkman/DownloadActivity;->w:I

    const v2, 0x7f0705e5

    const v3, 0x7f0705e6

    if-nez v1, :cond_5

    const v1, 0x7f0705e5

    goto :goto_2

    :cond_5
    const v1, 0x7f0705e6

    :goto_2
    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setSubtitle(I)V

    const v0, 0x7f0705e7

    invoke-interface {p1, v0}, Landroid/view/Menu;->addSubMenu(I)Landroid/view/SubMenu;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/view/Menu;->add(I)Landroid/view/MenuItem;

    move-result-object v1

    new-instance v2, Lcom/nirenr/talkman/DownloadActivity$i;

    invoke-direct {v2, p0}, Lcom/nirenr/talkman/DownloadActivity$i;-><init>(Lcom/nirenr/talkman/DownloadActivity;)V

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    invoke-interface {v0, v3}, Landroid/view/Menu;->add(I)Landroid/view/MenuItem;

    move-result-object v0

    new-instance v1, Lcom/nirenr/talkman/DownloadActivity$j;

    invoke-direct {v1, p0}, Lcom/nirenr/talkman/DownloadActivity$j;-><init>(Lcom/nirenr/talkman/DownloadActivity;)V

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    goto :goto_3

    :pswitch_0
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result p1

    return p1

    :cond_6
    :goto_3
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result p1

    return p1

    :sswitch_data_0
    .sparse-switch
        -0x48306e18 -> :sswitch_3
        -0x40417335 -> :sswitch_2
        0x355b8f -> :sswitch_1
        0x5d9327d -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public onDone(Lcom/nirenr/talkman/util/HttpUtil$c;)V
    .locals 6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onDone: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "download"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const v1, 0x7f07031b

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget v1, p1, Lcom/nirenr/talkman/util/HttpUtil$c;->a:I

    const/16 v2, 0xc8

    const/4 v3, 0x1

    if-ne v1, v2, :cond_8

    iput-boolean v3, p0, Lcom/nirenr/talkman/DownloadActivity;->f:Z

    iget-object p1, p1, Lcom/nirenr/talkman/util/HttpUtil$c;->b:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    const-string v1, "\n"

    invoke-virtual {p1, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    array-length v1, p1

    const/4 v2, 0x0

    if-ne v1, v3, :cond_0

    aget-object v1, p1, v2

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const v1, 0x7f070389

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, p1, v2

    :cond_0
    iget-object v1, p0, Lcom/nirenr/talkman/DownloadActivity;->c:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    iget-object v1, p0, Lcom/nirenr/talkman/DownloadActivity;->d:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    array-length v1, p1

    :goto_0
    if-ge v2, v1, :cond_2

    aget-object v4, p1, v2

    const-string v5, "txt"

    invoke-virtual {v4, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_1

    iget-object v5, p0, Lcom/nirenr/talkman/DownloadActivity;->d:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v4, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/nirenr/talkman/DownloadActivity;->c:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    iget-object p1, p0, Lcom/nirenr/talkman/DownloadActivity;->c:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/nirenr/talkman/DownloadActivity;->c:Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/nirenr/talkman/DownloadActivity;->d:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    :cond_3
    iget-object p1, p0, Lcom/nirenr/talkman/DownloadActivity;->c:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    iget-object v0, p0, Lcom/nirenr/talkman/DownloadActivity;->d:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-eq p1, v0, :cond_5

    iget-object p1, p0, Lcom/nirenr/talkman/DownloadActivity;->e:Landroid/view/MenuItem;

    if-eqz p1, :cond_4

    invoke-interface {p1, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    :cond_4
    iget-object p1, p0, Lcom/nirenr/talkman/DownloadActivity;->j:Landroid/view/MenuItem;

    if-eqz p1, :cond_5

    invoke-interface {p1, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    :cond_5
    iget-object p1, p0, Lcom/nirenr/talkman/DownloadActivity;->a:Ljava/lang/String;

    const-string v0, "sound/"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_6

    iget-object p1, p0, Lcom/nirenr/talkman/DownloadActivity;->j:Landroid/view/MenuItem;

    if-eqz p1, :cond_6

    invoke-interface {p1, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    :cond_6
    new-instance p1, Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/nirenr/talkman/DownloadActivity;->d:Ljava/util/ArrayList;

    invoke-direct {p1, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object p1, p0, Lcom/nirenr/talkman/DownloadActivity;->r:Ljava/util/ArrayList;

    new-instance p1, Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/nirenr/talkman/DownloadActivity;->c:Ljava/util/ArrayList;

    invoke-direct {p1, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object p1, p0, Lcom/nirenr/talkman/DownloadActivity;->s:Ljava/util/ArrayList;

    iget-object p1, p0, Lcom/nirenr/talkman/DownloadActivity;->d:Ljava/util/ArrayList;

    new-instance v0, Lk2/p;

    invoke-direct {v0}, Lk2/p;-><init>()V

    invoke-static {p1, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    iget-object p1, p0, Lcom/nirenr/talkman/DownloadActivity;->c:Ljava/util/ArrayList;

    new-instance v0, Lk2/p;

    invoke-direct {v0}, Lk2/p;-><init>()V

    invoke-static {p1, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    iget-object p1, p0, Lcom/nirenr/talkman/DownloadActivity;->b:Landroid/widget/ArrayListAdapter;

    invoke-virtual {p1}, Landroid/widget/ArrayListAdapter;->clear()V

    sget p1, Lcom/nirenr/talkman/DownloadActivity;->w:I

    if-nez p1, :cond_7

    iget-object p1, p0, Lcom/nirenr/talkman/DownloadActivity;->b:Landroid/widget/ArrayListAdapter;

    iget-object v0, p0, Lcom/nirenr/talkman/DownloadActivity;->c:Ljava/util/ArrayList;

    goto :goto_1

    :cond_7
    iget-object p1, p0, Lcom/nirenr/talkman/DownloadActivity;->b:Landroid/widget/ArrayListAdapter;

    iget-object v0, p0, Lcom/nirenr/talkman/DownloadActivity;->s:Ljava/util/ArrayList;

    :goto_1
    invoke-virtual {p1, v0}, Landroid/widget/ArrayListAdapter;->addAll(Ljava/util/Collection;)V

    goto :goto_3

    :cond_8
    iget-boolean v0, p0, Lcom/nirenr/talkman/DownloadActivity;->k:Z

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/nirenr/talkman/DownloadActivity;->b:Landroid/widget/ArrayListAdapter;

    iget-object p1, p1, Lcom/nirenr/talkman/util/HttpUtil$c;->b:Ljava/lang/String;

    invoke-virtual {v0, p1}, Landroid/widget/ArrayListAdapter;->add(Ljava/lang/Object;)V

    goto :goto_2

    :cond_9
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lcom/nirenr/talkman/DownloadActivity;->i:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/nirenr/talkman/DownloadActivity;->a:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, p0}, Lcom/nirenr/talkman/util/HttpUtil;->f(Ljava/lang/String;Lcom/nirenr/talkman/util/HttpUtil$HttpCallback;)Lcom/nirenr/talkman/util/HttpUtil$d;

    :goto_2
    iput-boolean v3, p0, Lcom/nirenr/talkman/DownloadActivity;->k:Z

    :goto_3
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

    iget-object p1, p0, Lcom/nirenr/talkman/DownloadActivity;->a:Ljava/lang/String;

    sget-object p2, Lcom/nirenr/talkman/DownloadActivity;->v:[Ljava/lang/String;

    const/4 v0, 0x0

    aget-object p2, p2, v0

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    const/4 p2, 0x1

    if-eqz p1, :cond_0

    invoke-virtual {p0, p3, p4, p5}, Lcom/nirenr/talkman/DownloadActivity;->p(IJ)Z

    return p2

    :cond_0
    iget-object p1, p0, Lcom/nirenr/talkman/DownloadActivity;->b:Landroid/widget/ArrayListAdapter;

    invoke-virtual {p1, p3}, Landroid/widget/ArrayListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    iget-object p4, p0, Lcom/nirenr/talkman/DownloadActivity;->g:Ljava/lang/String;

    invoke-virtual {p1, p4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_1

    new-instance p1, Landroid/app/AlertDialog$Builder;

    invoke-direct {p1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const p5, 0x7f0701ea

    invoke-virtual {p0, p5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p5

    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p5, " "

    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p5, p0, Lcom/nirenr/talkman/DownloadActivity;->b:Landroid/widget/ArrayListAdapter;

    invoke-virtual {p5, p3}, Landroid/widget/ArrayListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p5

    check-cast p5, Ljava/lang/String;

    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p1, p4}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    new-instance p4, Lcom/nirenr/talkman/DownloadActivity$d;

    invoke-direct {p4, p0, p3}, Lcom/nirenr/talkman/DownloadActivity$d;-><init>(Lcom/nirenr/talkman/DownloadActivity;I)V

    const p3, 0x104000a

    invoke-virtual {p1, p3, p4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    const p3, 0x7f070095

    const/4 p4, 0x0

    invoke-virtual {p1, p3, p4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    :cond_1
    return p2
.end method

.method protected onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V
    .locals 2

    invoke-super/range {p0 .. p5}, Landroid/app/ListActivity;->onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V

    check-cast p2, Landroid/widget/TextView;

    invoke-virtual {p2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    iget-object p4, p0, Lcom/nirenr/talkman/DownloadActivity;->a:Ljava/lang/String;

    if-nez p4, :cond_2

    const-string p2, "title"

    const-string p4, "url"

    const-class p5, Lcom/nirenr/talkman/DownloadActivity;

    if-nez p3, :cond_0

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p0, p5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    sget-object p5, Lcom/nirenr/talkman/DownloadActivity;->v:[Ljava/lang/String;

    aget-object p3, p5, p3

    :goto_0
    invoke-virtual {v0, p4, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p3

    invoke-virtual {p3, p2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object p1

    :goto_1
    invoke-virtual {p0, p1}, Lcom/nirenr/talkman/DownloadActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_2

    :cond_0
    const/4 v0, 0x1

    if-ne p3, v0, :cond_1

    new-instance p1, Landroid/content/Intent;

    const-class p2, Lcom/nirenr/talkman/settings/GithubActivity;

    invoke-direct {p1, p0, p2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    goto :goto_1

    :cond_1
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p0, p5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    sget-object p5, Lcom/nirenr/talkman/DownloadActivity;->v:[Ljava/lang/String;

    aget-object p3, p5, p3

    goto :goto_0

    :goto_2
    return-void

    :cond_2
    iget-object p1, p0, Lcom/nirenr/talkman/DownloadActivity;->c:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_3

    return-void

    :cond_3
    iget-object p1, p0, Lcom/nirenr/talkman/DownloadActivity;->b:Landroid/widget/ArrayListAdapter;

    invoke-virtual {p1, p3}, Landroid/widget/ArrayListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3

    if-nez p3, :cond_7

    const p3, 0x7f070389

    invoke-virtual {p0, p3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_4

    goto/16 :goto_4

    :cond_4
    invoke-static {}, Lcom/androlua/LuaApplication;->getInstance()Lcom/androlua/LuaApplication;

    move-result-object p3

    invoke-virtual {p3, p1}, Lcom/androlua/LuaApplication;->getDownloadPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    new-instance p4, Landroid/widget/ArrayListAdapter;

    invoke-direct {p4, p0}, Landroid/widget/ArrayListAdapter;-><init>(Landroid/content/Context;)V

    new-instance p5, Landroid/app/AlertDialog$Builder;

    invoke-direct {p5, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {p2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p2

    invoke-virtual {p5, p2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object p2

    const/4 p5, 0x0

    invoke-virtual {p2, p4, p5}, Landroid/app/AlertDialog$Builder;->setAdapter(Landroid/widget/ListAdapter;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p2

    iget-boolean v0, p0, Lcom/nirenr/talkman/DownloadActivity;->m:Z

    if-eqz v0, :cond_5

    const v0, 0x7f07050b

    goto :goto_3

    :cond_5
    const v0, 0x7f0701f2

    :goto_3
    new-instance v1, Lcom/nirenr/talkman/DownloadActivity$k;

    invoke-direct {v1, p0, p3, p1}, Lcom/nirenr/talkman/DownloadActivity$k;-><init>(Lcom/nirenr/talkman/DownloadActivity;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p2, v0, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p2

    const p3, 0x7f070095

    invoke-virtual {p2, p3, p5}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p2

    const p3, 0x7f070198

    invoke-virtual {p2, p3, p5}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p2

    invoke-virtual {p2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p2

    invoke-virtual {p2}, Landroid/app/Dialog;->show()V

    iget-boolean p3, p0, Lcom/nirenr/talkman/DownloadActivity;->m:Z

    const/4 p5, -0x3

    if-eqz p3, :cond_6

    invoke-virtual {p2, p5}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object p1

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    return-void

    :cond_6
    invoke-virtual {p2, p5}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object p2

    new-instance p3, Lcom/nirenr/talkman/DownloadActivity$l;

    invoke-direct {p3, p0, p1, p4}, Lcom/nirenr/talkman/DownloadActivity$l;-><init>(Lcom/nirenr/talkman/DownloadActivity;Ljava/lang/String;Landroid/widget/ArrayListAdapter;)V

    invoke-virtual {p2, p3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object p3, Lcom/nirenr/talkman/DownloadActivity;->u:Ljava/lang/String;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lcom/nirenr/talkman/DownloadActivity;->a:Ljava/lang/String;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ".txt"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance p2, Lcom/nirenr/talkman/DownloadActivity$m;

    invoke-direct {p2, p0, p4}, Lcom/nirenr/talkman/DownloadActivity$m;-><init>(Lcom/nirenr/talkman/DownloadActivity;Landroid/widget/ArrayListAdapter;)V

    invoke-static {p1, p2}, Lcom/nirenr/talkman/util/HttpUtil;->f(Ljava/lang/String;Lcom/nirenr/talkman/util/HttpUtil$HttpCallback;)Lcom/nirenr/talkman/util/HttpUtil$d;

    :cond_7
    :goto_4
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 0

    invoke-super {p0, p1}, Landroid/app/ListActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1
.end method

.method protected onPause()V
    .locals 0

    invoke-super {p0}, Landroid/app/BaseListActivity;->onPause()V

    return-void
.end method

.method protected onResume()V
    .locals 0

    invoke-super {p0}, Landroid/app/BaseListActivity;->onResume()V

    return-void
.end method

.method public p(IJ)Z
    .locals 4

    iget-object p2, p0, Lcom/nirenr/talkman/DownloadActivity;->b:Landroid/widget/ArrayListAdapter;

    invoke-virtual {p2, p1}, Landroid/widget/ArrayListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    new-instance p3, Landroid/app/AlertDialog$Builder;

    invoke-direct {p3, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const v1, 0x7f0701ea

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const v1, 0x7f07055d

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const v1, 0x7f070936

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x2

    aput-object v1, v0, v3

    new-instance v1, Lcom/nirenr/talkman/DownloadActivity$c;

    invoke-direct {v1, p0, p2, p1}, Lcom/nirenr/talkman/DownloadActivity$c;-><init>(Lcom/nirenr/talkman/DownloadActivity;Ljava/lang/String;I)V

    invoke-virtual {p3, v0, v1}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    return v2
.end method

.method public r(Z)V
    .locals 3

    iget-object v0, p0, Lcom/nirenr/talkman/DownloadActivity;->r:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iput-boolean p1, p0, Lcom/nirenr/talkman/DownloadActivity;->t:Z

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const v1, 0x7f07031b

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/nirenr/talkman/DownloadActivity;->b:Landroid/widget/ArrayListAdapter;

    invoke-virtual {p1}, Landroid/widget/ArrayListAdapter;->isFilter()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/nirenr/talkman/DownloadActivity;->b:Landroid/widget/ArrayListAdapter;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/ArrayListAdapter;->filter(Ljava/lang/CharSequence;)V

    return-void

    :cond_1
    iget-object p1, p0, Lcom/nirenr/talkman/DownloadActivity;->c:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    sget p1, Lcom/nirenr/talkman/DownloadActivity;->w:I

    if-nez p1, :cond_2

    iget-object p1, p0, Lcom/nirenr/talkman/DownloadActivity;->c:Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/nirenr/talkman/DownloadActivity;->d:Ljava/util/ArrayList;

    goto :goto_0

    :cond_2
    iget-object p1, p0, Lcom/nirenr/talkman/DownloadActivity;->c:Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/nirenr/talkman/DownloadActivity;->r:Ljava/util/ArrayList;

    :goto_0
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    iget-object p1, p0, Lcom/nirenr/talkman/DownloadActivity;->b:Landroid/widget/ArrayListAdapter;

    invoke-virtual {p1}, Landroid/widget/ArrayListAdapter;->clear()V

    iget-object p1, p0, Lcom/nirenr/talkman/DownloadActivity;->b:Landroid/widget/ArrayListAdapter;

    iget-object v0, p0, Lcom/nirenr/talkman/DownloadActivity;->c:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Landroid/widget/ArrayListAdapter;->addAll(Ljava/util/Collection;)V

    goto :goto_3

    :cond_3
    iget-object p1, p0, Lcom/nirenr/talkman/DownloadActivity;->c:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    sget p1, Lcom/nirenr/talkman/DownloadActivity;->w:I

    if-nez p1, :cond_5

    iget-object p1, p0, Lcom/nirenr/talkman/DownloadActivity;->d:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_4
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/nirenr/talkman/DownloadActivity;->c:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_5
    iget-object p1, p0, Lcom/nirenr/talkman/DownloadActivity;->r:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_6
    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_6

    iget-object v2, p0, Lcom/nirenr/talkman/DownloadActivity;->c:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_7
    iget-object p1, p0, Lcom/nirenr/talkman/DownloadActivity;->b:Landroid/widget/ArrayListAdapter;

    invoke-virtual {p1}, Landroid/widget/ArrayListAdapter;->clear()V

    iget-object p1, p0, Lcom/nirenr/talkman/DownloadActivity;->b:Landroid/widget/ArrayListAdapter;

    iget-object v0, p0, Lcom/nirenr/talkman/DownloadActivity;->c:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Landroid/widget/ArrayListAdapter;->addAll(Ljava/util/Collection;)V

    iget-object p1, p0, Lcom/nirenr/talkman/DownloadActivity;->b:Landroid/widget/ArrayListAdapter;

    invoke-virtual {p1}, Landroid/widget/ArrayListAdapter;->notifyDataSetChanged()V

    :goto_3
    return-void
.end method

.method public startActivity(Landroid/content/Intent;)V
    .locals 1

    :try_start_0
    invoke-super {p0, p1}, Landroid/app/ListActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const p1, 0x7f070409

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    :goto_0
    return-void
.end method
