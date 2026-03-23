.class public Lcom/nirenr/talkman/settings/CloudNote;
.super Landroid/app/BaseListActivity;
.source "SourceFile"

# interfaces
.implements Landroid/widget/AdapterView$OnItemLongClickListener;


# static fields
.field private static final f:Ljava/lang/String;


# instance fields
.field private a:Landroid/content/SharedPreferences;

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

.field private d:I

.field private e:Landroid/widget/EditText;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/lang/String;

    const/16 v1, 0xa

    new-array v1, v1, [C

    fill-array-data v1, :array_0

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([C)V

    sput-object v0, Lcom/nirenr/talkman/settings/CloudNote;->f:Ljava/lang/String;

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

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/nirenr/talkman/settings/CloudNote;->c:Ljava/util/ArrayList;

    const/16 v0, 0x2710

    iput v0, p0, Lcom/nirenr/talkman/settings/CloudNote;->d:I

    return-void
.end method

.method static bridge synthetic a(Lcom/nirenr/talkman/settings/CloudNote;)Landroid/widget/ArrayListAdapter;
    .locals 0

    iget-object p0, p0, Lcom/nirenr/talkman/settings/CloudNote;->b:Landroid/widget/ArrayListAdapter;

    return-object p0
.end method

.method static bridge synthetic b(Lcom/nirenr/talkman/settings/CloudNote;)Landroid/widget/EditText;
    .locals 0

    iget-object p0, p0, Lcom/nirenr/talkman/settings/CloudNote;->e:Landroid/widget/EditText;

    return-object p0
.end method

.method static bridge synthetic c(Lcom/nirenr/talkman/settings/CloudNote;)Ljava/util/ArrayList;
    .locals 0

    iget-object p0, p0, Lcom/nirenr/talkman/settings/CloudNote;->c:Ljava/util/ArrayList;

    return-object p0
.end method

.method static bridge synthetic d(Lcom/nirenr/talkman/settings/CloudNote;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/nirenr/talkman/settings/CloudNote;->m(Ljava/lang/String;)V

    return-void
.end method

.method static bridge synthetic e(Lcom/nirenr/talkman/settings/CloudNote;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/nirenr/talkman/settings/CloudNote;->n(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static bridge synthetic f(Lcom/nirenr/talkman/settings/CloudNote;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/nirenr/talkman/settings/CloudNote;->o(Ljava/lang/String;)V

    return-void
.end method

.method static bridge synthetic g(Lcom/nirenr/talkman/settings/CloudNote;)V
    .locals 0

    invoke-direct {p0}, Lcom/nirenr/talkman/settings/CloudNote;->p()V

    return-void
.end method

.method static bridge synthetic h(Lcom/nirenr/talkman/settings/CloudNote;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/nirenr/talkman/settings/CloudNote;->q(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static bridge synthetic i(Lcom/nirenr/talkman/settings/CloudNote;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/nirenr/talkman/settings/CloudNote;->r(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static bridge synthetic j(Lcom/nirenr/talkman/settings/CloudNote;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/nirenr/talkman/settings/CloudNote;->s(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static bridge synthetic k(Lcom/nirenr/talkman/settings/CloudNote;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/nirenr/talkman/settings/CloudNote;->t(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private l()Z
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

    sget-object v1, Lcom/nirenr/talkman/settings/CloudNote;->f:Ljava/lang/String;

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

.method private m(Ljava/lang/String;)V
    .locals 2

    new-instance v0, Lcom/nirenr/talkman/settings/CloudNote$12;

    invoke-direct {v0, p0}, Lcom/nirenr/talkman/settings/CloudNote$12;-><init>(Lcom/nirenr/talkman/settings/CloudNote;)V

    const-string v1, "note"

    invoke-static {v1, p1, v0}, Lcom/nirenr/talkman/util/a;->c(Ljava/lang/String;Ljava/lang/String;Lcom/nirenr/talkman/util/HttpUtil$HttpCallback;)V

    return-void
.end method

.method private n(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    new-instance v0, Lcom/nirenr/talkman/dialog/EditDialog;

    new-instance v1, Lcom/nirenr/talkman/settings/CloudNote$6;

    invoke-direct {v1, p0, p1}, Lcom/nirenr/talkman/settings/CloudNote$6;-><init>(Lcom/nirenr/talkman/settings/CloudNote;Ljava/lang/String;)V

    invoke-direct {v0, p0, p1, p2, v1}, Lcom/nirenr/talkman/dialog/EditDialog;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/nirenr/talkman/dialog/EditDialog$EditDialogCallback;)V

    iget p1, p0, Lcom/nirenr/talkman/settings/CloudNote;->d:I

    invoke-virtual {v0, p1}, Lcom/nirenr/talkman/dialog/EditDialog;->h(I)V

    return-void
.end method

.method private o(Ljava/lang/String;)V
    .locals 2

    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    const v0, 0x104000a

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    return-void
.end method

.method private p()V
    .locals 2

    new-instance v0, Lcom/nirenr/talkman/settings/CloudNote$9;

    invoke-direct {v0, p0}, Lcom/nirenr/talkman/settings/CloudNote$9;-><init>(Lcom/nirenr/talkman/settings/CloudNote;)V

    const-string v1, "note"

    invoke-static {v1, v0}, Lcom/nirenr/talkman/util/a;->m(Ljava/lang/String;Lcom/nirenr/talkman/util/HttpUtil$HttpCallback;)V

    return-void
.end method

.method private q(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    new-instance v0, Lcom/nirenr/talkman/settings/CloudNote$7;

    invoke-direct {v0, p0}, Lcom/nirenr/talkman/settings/CloudNote$7;-><init>(Lcom/nirenr/talkman/settings/CloudNote;)V

    const-string v1, "note"

    invoke-static {v1, p1, p2, v0}, Lcom/nirenr/talkman/util/a;->n(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/nirenr/talkman/util/HttpUtil$HttpCallback;)V

    return-void
.end method

.method private r(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    new-instance v0, Lcom/nirenr/talkman/settings/CloudNote$8;

    invoke-direct {v0, p0, p1}, Lcom/nirenr/talkman/settings/CloudNote$8;-><init>(Lcom/nirenr/talkman/settings/CloudNote;Ljava/lang/String;)V

    const-string v1, "note"

    invoke-static {v1, p1, p2, v0}, Lcom/nirenr/talkman/util/a;->n(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/nirenr/talkman/util/HttpUtil$HttpCallback;)V

    return-void
.end method

.method private s(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    new-instance v0, Lcom/nirenr/talkman/settings/CloudNote$11;

    invoke-direct {v0, p0}, Lcom/nirenr/talkman/settings/CloudNote$11;-><init>(Lcom/nirenr/talkman/settings/CloudNote;)V

    const-string v1, "note"

    invoke-static {v1, p1, p2, v0}, Lcom/nirenr/talkman/util/a;->t(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/nirenr/talkman/util/HttpUtil$HttpCallback;)V

    return-void
.end method

.method private t(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    invoke-virtual {p0}, Landroid/app/Activity;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Landroid/widget/SplitEditView;

    invoke-direct {v0, p0}, Landroid/widget/SplitEditView;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p2}, Landroid/widget/SplitEditView;->setText(Ljava/lang/String;)V

    new-instance p2, Lcom/nirenr/talkman/settings/CloudNote$4;

    invoke-direct {p2, p0, p1}, Lcom/nirenr/talkman/settings/CloudNote$4;-><init>(Lcom/nirenr/talkman/settings/CloudNote;Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Landroid/widget/SplitEditView;->setOnSaveListener(Landroid/widget/SplitEditView$OnSaveListener;)V

    new-instance p2, Landroid/app/Dialog;

    const v1, 0x1030128

    invoke-direct {p2, p0, v1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    invoke-virtual {p2, p1}, Landroid/app/Dialog;->setTitle(Ljava/lang/CharSequence;)V

    invoke-virtual {p2, v0}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    new-instance p1, Lcom/nirenr/talkman/settings/CloudNote$5;

    invoke-direct {p1, p0, p2}, Lcom/nirenr/talkman/settings/CloudNote$5;-><init>(Lcom/nirenr/talkman/settings/CloudNote;Landroid/app/Dialog;)V

    invoke-virtual {v0, p1}, Landroid/widget/SplitEditView;->setOnExitListener(Landroid/widget/SplitEditView$OnExitListener;)V

    invoke-virtual {p2}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    if-eqz p1, :cond_1

    const/16 v0, 0x10

    invoke-virtual {p1, v0}, Landroid/view/Window;->setSoftInputMode(I)V

    :cond_1
    invoke-virtual {p2}, Landroid/app/Dialog;->show()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/app/ListActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f07049a

    invoke-virtual {p0, p1}, Landroid/app/Activity;->setTitle(I)V

    invoke-static {p0}, Lk2/b0;->f(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p1

    iput-object p1, p0, Lcom/nirenr/talkman/settings/CloudNote;->a:Landroid/content/SharedPreferences;

    new-instance p1, Landroid/widget/ArrayListAdapter;

    invoke-direct {p1, p0}, Landroid/widget/ArrayListAdapter;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/nirenr/talkman/settings/CloudNote;->b:Landroid/widget/ArrayListAdapter;

    invoke-virtual {p0, p1}, Landroid/app/ListActivity;->setListAdapter(Landroid/widget/ListAdapter;)V

    iget-object p1, p0, Lcom/nirenr/talkman/settings/CloudNote;->a:Landroid/content/SharedPreferences;

    const v0, 0x7f0708a1

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    const v0, 0x7f070475

    invoke-static {p0, v0, p1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    iget-object p1, p0, Lcom/nirenr/talkman/settings/CloudNote;->b:Landroid/widget/ArrayListAdapter;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/ArrayListAdapter;->add(Ljava/lang/Object;)V

    return-void

    :cond_0
    invoke-direct {p0}, Lcom/nirenr/talkman/settings/CloudNote;->p()V

    invoke-virtual {p0}, Landroid/app/ListActivity;->getListView()Landroid/widget/ListView;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/widget/AdapterView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 3

    new-instance v0, Lcom/nirenr/talkman/settings/CloudNote$1;

    invoke-direct {v0, p0, p0}, Lcom/nirenr/talkman/settings/CloudNote$1;-><init>(Lcom/nirenr/talkman/settings/CloudNote;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/nirenr/talkman/settings/CloudNote;->e:Landroid/widget/EditText;

    const v1, 0x7f070318

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setHint(I)V

    const-string v0, ""

    invoke-interface {p1, v0}, Landroid/view/Menu;->add(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setShowAsActionFlags(I)Landroid/view/MenuItem;

    move-result-object v0

    iget-object v2, p0, Lcom/nirenr/talkman/settings/CloudNote;->e:Landroid/widget/EditText;

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setActionView(Landroid/view/View;)Landroid/view/MenuItem;

    const/4 v0, 0x0

    const v2, 0x7f0701a9

    invoke-interface {p1, v0, v0, v0, v2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setShowAsActionFlags(I)Landroid/view/MenuItem;

    invoke-super {p0, p1}, Landroid/app/ListActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result p1

    return p1
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

    new-instance p1, Landroid/app/AlertDialog$Builder;

    invoke-direct {p1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const/4 p2, 0x3

    new-array p2, p2, [Ljava/lang/String;

    const p4, 0x7f0701ea

    invoke-virtual {p0, p4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p4

    const/4 p5, 0x0

    aput-object p4, p2, p5

    const p4, 0x7f07055d

    invoke-virtual {p0, p4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p4

    const/4 p5, 0x1

    aput-object p4, p2, p5

    const p4, 0x7f070095

    invoke-virtual {p0, p4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p4

    const/4 v0, 0x2

    aput-object p4, p2, v0

    new-instance p4, Lcom/nirenr/talkman/settings/CloudNote$10;

    invoke-direct {p4, p0, p3}, Lcom/nirenr/talkman/settings/CloudNote$10;-><init>(Lcom/nirenr/talkman/settings/CloudNote;I)V

    invoke-virtual {p1, p2, p4}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    return p5
.end method

.method protected onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V
    .locals 0

    iget-object p2, p0, Lcom/nirenr/talkman/settings/CloudNote;->c:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_0

    return-void

    :cond_0
    iget-object p2, p0, Lcom/nirenr/talkman/settings/CloudNote;->b:Landroid/widget/ArrayListAdapter;

    invoke-virtual {p2, p3}, Landroid/widget/ArrayListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    new-instance p3, Lcom/nirenr/talkman/settings/CloudNote$3;

    invoke-direct {p3, p0, p1, p2}, Lcom/nirenr/talkman/settings/CloudNote$3;-><init>(Lcom/nirenr/talkman/settings/CloudNote;Landroid/widget/ListView;Ljava/lang/String;)V

    const-string p1, "note"

    invoke-static {p1, p2, p3}, Lcom/nirenr/talkman/util/a;->h(Ljava/lang/String;Ljava/lang/String;Lcom/nirenr/talkman/util/HttpUtil$HttpCallback;)V

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 4

    invoke-direct {p0}, Lcom/nirenr/talkman/settings/CloudNote;->l()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    const p1, 0x7f07037f

    :goto_0
    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/nirenr/talkman/settings/CloudNote;->o(Ljava/lang/String;)V

    return v1

    :cond_0
    iget-object v0, p0, Lcom/nirenr/talkman/settings/CloudNote;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/16 v2, 0x64

    if-le v0, v2, :cond_1

    const p1, 0x7f070375

    goto :goto_0

    :cond_1
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_1

    :cond_2
    new-instance v0, Lcom/nirenr/talkman/dialog/EditDialog;

    const v1, 0x7f070251

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/nirenr/talkman/settings/CloudNote$2;

    invoke-direct {v2, p0}, Lcom/nirenr/talkman/settings/CloudNote$2;-><init>(Lcom/nirenr/talkman/settings/CloudNote;)V

    const-string v3, ""

    invoke-direct {v0, p0, v1, v3, v2}, Lcom/nirenr/talkman/dialog/EditDialog;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/nirenr/talkman/dialog/EditDialog$EditDialogCallback;)V

    iget v1, p0, Lcom/nirenr/talkman/settings/CloudNote;->d:I

    invoke-virtual {v0, v1}, Lcom/nirenr/talkman/dialog/EditDialog;->h(I)V

    :goto_1
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1
.end method
