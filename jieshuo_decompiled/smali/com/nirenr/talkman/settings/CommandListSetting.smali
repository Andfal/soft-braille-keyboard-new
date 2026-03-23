.class public Lcom/nirenr/talkman/settings/CommandListSetting;
.super Landroid/app/BaseActivity;
.source "SourceFile"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;
.implements Landroid/widget/AdapterView$OnItemLongClickListener;
.implements Lcom/nirenr/talkman/dialog/FileDialog$OnAddListener;


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private c:Landroid/widget/ArrayListAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/widget/ArrayListAdapter<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private d:[Ljava/lang/String;

.field private e:I

.field private f:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/app/BaseActivity;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/nirenr/talkman/settings/CommandListSetting;->e:I

    iput v0, p0, Lcom/nirenr/talkman/settings/CommandListSetting;->f:I

    return-void
.end method

.method static bridge synthetic a(Lcom/nirenr/talkman/settings/CommandListSetting;)Landroid/widget/ArrayListAdapter;
    .locals 0

    iget-object p0, p0, Lcom/nirenr/talkman/settings/CommandListSetting;->c:Landroid/widget/ArrayListAdapter;

    return-object p0
.end method

.method static bridge synthetic b(Lcom/nirenr/talkman/settings/CommandListSetting;)[Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/nirenr/talkman/settings/CommandListSetting;->d:[Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic c(Lcom/nirenr/talkman/settings/CommandListSetting;I)V
    .locals 0

    iput p1, p0, Lcom/nirenr/talkman/settings/CommandListSetting;->f:I

    return-void
.end method

.method static bridge synthetic d(Lcom/nirenr/talkman/settings/CommandListSetting;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/nirenr/talkman/settings/CommandListSetting;->i(I)V

    return-void
.end method

.method static bridge synthetic e(Lcom/nirenr/talkman/settings/CommandListSetting;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/nirenr/talkman/settings/CommandListSetting;->l(I)V

    return-void
.end method

.method static bridge synthetic f(Lcom/nirenr/talkman/settings/CommandListSetting;)V
    .locals 0

    invoke-direct {p0}, Lcom/nirenr/talkman/settings/CommandListSetting;->save()V

    return-void
.end method

.method private g(Ljava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const v1, 0x7f0703a4

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    iget-object v0, p0, Lcom/nirenr/talkman/settings/CommandListSetting;->c:Landroid/widget/ArrayListAdapter;

    invoke-virtual {v0}, Landroid/widget/ArrayListAdapter;->getData()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    const/4 v1, -0x1

    if-le v0, v1, :cond_0

    iget-object v1, p0, Lcom/nirenr/talkman/settings/CommandListSetting;->c:Landroid/widget/ArrayListAdapter;

    invoke-virtual {v1, v0}, Landroid/widget/ArrayListAdapter;->remove(I)V

    :cond_0
    iget-object v0, p0, Lcom/nirenr/talkman/settings/CommandListSetting;->c:Landroid/widget/ArrayListAdapter;

    invoke-virtual {v0, p1}, Landroid/widget/ArrayListAdapter;->add(Ljava/lang/Object;)V

    return-void
.end method

.method private h(I)V
    .locals 5

    iput p1, p0, Lcom/nirenr/talkman/settings/CommandListSetting;->e:I

    invoke-virtual {p0}, Landroid/app/BaseActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f010008

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object p1

    iget v0, p0, Lcom/nirenr/talkman/settings/CommandListSetting;->e:I

    const/4 v1, -0x1

    const/4 v2, 0x0

    const v3, 0x7f070095

    const v4, 0x7f0705ab

    if-ne v0, v1, :cond_0

    new-instance v0, Landroid/widget/ListView;

    invoke-direct {v0, p0}, Landroid/widget/ListView;-><init>(Landroid/content/Context;)V

    new-instance v1, Landroid/widget/ArrayListAdapter;

    invoke-direct {v1, p0, p1}, Landroid/widget/ArrayListAdapter;-><init>(Landroid/content/Context;[Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    new-instance v1, Lcom/nirenr/talkman/settings/CommandListSetting$2;

    invoke-direct {v1, p0, p1}, Lcom/nirenr/talkman/settings/CommandListSetting$2;-><init>(Lcom/nirenr/talkman/settings/CommandListSetting;[Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/widget/AdapterView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    new-instance p1, Landroid/app/AlertDialog$Builder;

    invoke-direct {p1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {p1, v4}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    :goto_0
    invoke-virtual {p1, v3, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    return-void

    :cond_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/nirenr/talkman/settings/CommandListSetting$3;

    invoke-direct {v1, p0, p1}, Lcom/nirenr/talkman/settings/CommandListSetting$3;-><init>(Lcom/nirenr/talkman/settings/CommandListSetting;[Ljava/lang/String;)V

    invoke-virtual {v0, p1, v1}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    goto :goto_0
.end method

.method private i(I)V
    .locals 4

    iget-object v0, p0, Lcom/nirenr/talkman/settings/CommandListSetting;->c:Landroid/widget/ArrayListAdapter;

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

    new-instance v1, Lcom/nirenr/talkman/settings/CommandListSetting$5;

    invoke-direct {v1, p0, p1}, Lcom/nirenr/talkman/settings/CommandListSetting$5;-><init>(Lcom/nirenr/talkman/settings/CommandListSetting;I)V

    const p1, 0x104000a

    invoke-virtual {v0, p1, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    return-void
.end method

.method private j(Ljava/util/ArrayList;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "|"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private k(ILjava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/nirenr/talkman/settings/CommandListSetting;->c:Landroid/widget/ArrayListAdapter;

    invoke-virtual {v0, p1, p2}, Landroid/widget/ArrayListAdapter;->insert(ILjava/lang/Object;)V

    return-void
.end method

.method private l(I)V
    .locals 1

    iget-object v0, p0, Lcom/nirenr/talkman/settings/CommandListSetting;->c:Landroid/widget/ArrayListAdapter;

    invoke-virtual {v0, p1}, Landroid/widget/ArrayListAdapter;->remove(I)V

    return-void
.end method

.method private save()V
    .locals 3

    iget-object v0, p0, Lcom/nirenr/talkman/settings/CommandListSetting;->c:Landroid/widget/ArrayListAdapter;

    invoke-virtual {v0}, Landroid/widget/ArrayListAdapter;->getData()Ljava/util/ArrayList;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/nirenr/talkman/settings/CommandListSetting;->j(Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0}, Lk2/b0;->c(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    iget-object v2, p0, Lcom/nirenr/talkman/settings/CommandListSetting;->a:Ljava/lang/String;

    invoke-static {v1, v2, v0}, Lk2/b0;->l(Landroid/content/SharedPreferences;Ljava/lang/String;Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/nirenr/talkman/settings/CommandListSetting;->a:Ljava/lang/String;

    const v1, 0x7f07028a

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/nirenr/talkman/TalkManAccessibilityService;->getInstance()Lcom/nirenr/talkman/TalkManAccessibilityService;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/nirenr/talkman/TalkManAccessibilityService;->isUseFloatMenu()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/nirenr/talkman/TalkManAccessibilityService;->setUseFloatMenu(Z)V

    :cond_0
    return-void
.end method


# virtual methods
.method public onAdd(Ljava/lang/String;)V
    .locals 2

    iget v0, p0, Lcom/nirenr/talkman/settings/CommandListSetting;->e:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    invoke-direct {p0, p1}, Lcom/nirenr/talkman/settings/CommandListSetting;->g(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    invoke-direct {p0, v0}, Lcom/nirenr/talkman/settings/CommandListSetting;->l(I)V

    iget v0, p0, Lcom/nirenr/talkman/settings/CommandListSetting;->e:I

    invoke-direct {p0, v0, p1}, Lcom/nirenr/talkman/settings/CommandListSetting;->k(ILjava/lang/String;)V

    :goto_0
    invoke-direct {p0}, Lcom/nirenr/talkman/settings/CommandListSetting;->save()V

    return-void
.end method

.method public onAdd(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "/"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iget p2, p0, Lcom/nirenr/talkman/settings/CommandListSetting;->e:I

    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    invoke-direct {p0, p1}, Lcom/nirenr/talkman/settings/CommandListSetting;->g(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    invoke-direct {p0, p2}, Lcom/nirenr/talkman/settings/CommandListSetting;->l(I)V

    iget p2, p0, Lcom/nirenr/talkman/settings/CommandListSetting;->e:I

    invoke-direct {p0, p2, p1}, Lcom/nirenr/talkman/settings/CommandListSetting;->k(ILjava/lang/String;)V

    :goto_0
    invoke-direct {p0}, Lcom/nirenr/talkman/settings/CommandListSetting;->save()V

    return-void
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

    iput-object p1, p0, Lcom/nirenr/talkman/settings/CommandListSetting;->a:Ljava/lang/String;

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "DEF_VALUE"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/nirenr/talkman/settings/CommandListSetting;->d:[Ljava/lang/String;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/nirenr/talkman/settings/CommandListSetting;->b:Ljava/util/ArrayList;

    invoke-static {p0}, Lk2/b0;->c(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p1

    iget-object v0, p0, Lcom/nirenr/talkman/settings/CommandListSetting;->a:Ljava/lang/String;

    const-string v1, ""

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "\\|"

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    array-length v1, v0

    if-eqz v1, :cond_1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_2

    :cond_1
    iget-object v0, p0, Lcom/nirenr/talkman/settings/CommandListSetting;->d:[Ljava/lang/String;

    :cond_2
    new-instance p1, Landroid/widget/ListView;

    invoke-direct {p1, p0}, Landroid/widget/ListView;-><init>(Landroid/content/Context;)V

    new-instance v1, Landroid/widget/ArrayListAdapter;

    iget-object v2, p0, Lcom/nirenr/talkman/settings/CommandListSetting;->b:Ljava/util/ArrayList;

    invoke-direct {v1, p0, v2}, Landroid/widget/ArrayListAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    iput-object v1, p0, Lcom/nirenr/talkman/settings/CommandListSetting;->c:Landroid/widget/ArrayListAdapter;

    invoke-virtual {v1, v0}, Landroid/widget/ArrayListAdapter;->addAll([Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/nirenr/talkman/settings/CommandListSetting;->d:[Ljava/lang/String;

    if-ne v0, v1, :cond_3

    iget-object v0, p0, Lcom/nirenr/talkman/settings/CommandListSetting;->c:Landroid/widget/ArrayListAdapter;

    const v1, 0x7f070095

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ArrayListAdapter;->remove(Ljava/lang/Object;)V

    :cond_3
    iget-object v0, p0, Lcom/nirenr/talkman/settings/CommandListSetting;->c:Landroid/widget/ArrayListAdapter;

    invoke-virtual {p1, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    invoke-virtual {p0, p1}, Landroid/app/Activity;->setContentView(Landroid/view/View;)V

    invoke-virtual {p1, p0}, Landroid/widget/AdapterView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    invoke-virtual {p1, p0}, Landroid/widget/AdapterView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 3

    const v0, 0x7f070011

    const/4 v1, 0x0

    invoke-interface {p1, v1, v1, v1, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const/4 v2, 0x1

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setShowAsAction(I)V

    const v0, 0x7f0708ae

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

    iget p1, p0, Lcom/nirenr/talkman/settings/CommandListSetting;->f:I

    if-ltz p1, :cond_1

    iget-object p1, p0, Lcom/nirenr/talkman/settings/CommandListSetting;->c:Landroid/widget/ArrayListAdapter;

    invoke-virtual {p1}, Landroid/widget/ArrayListAdapter;->getData()Ljava/util/ArrayList;

    move-result-object p2

    iget p4, p0, Lcom/nirenr/talkman/settings/CommandListSetting;->f:I

    invoke-virtual {p2, p4}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    invoke-virtual {p1, p3, p2}, Landroid/widget/ArrayListAdapter;->insert(ILjava/lang/Object;)V

    iget-object p1, p0, Lcom/nirenr/talkman/settings/CommandListSetting;->c:Landroid/widget/ArrayListAdapter;

    invoke-virtual {p1}, Landroid/widget/ArrayListAdapter;->notifyDataSetChanged()V

    const/4 p1, -0x1

    iput p1, p0, Lcom/nirenr/talkman/settings/CommandListSetting;->f:I

    invoke-static {}, Lcom/nirenr/talkman/TalkManAccessibilityService;->getInstance()Lcom/nirenr/talkman/TalkManAccessibilityService;

    move-result-object p1

    if-eqz p1, :cond_0

    const p2, 0x7f0703fb

    invoke-virtual {p0, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    const/4 p4, 0x1

    new-array p4, p4, [Ljava/lang/Object;

    const/4 p5, 0x0

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    aput-object p3, p4, p5

    invoke-static {p2, p4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/nirenr/talkman/TalkManAccessibilityService;->speak(Ljava/lang/String;)V

    :cond_0
    invoke-direct {p0}, Lcom/nirenr/talkman/settings/CommandListSetting;->save()V

    return-void

    :cond_1
    invoke-direct {p0, p3}, Lcom/nirenr/talkman/settings/CommandListSetting;->h(I)V

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

    const/4 p1, -0x1

    iput p1, p0, Lcom/nirenr/talkman/settings/CommandListSetting;->f:I

    new-instance p1, Landroid/app/AlertDialog$Builder;

    invoke-direct {p1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const/4 p2, 0x4

    new-array p2, p2, [Ljava/lang/String;

    const p4, 0x7f07039e

    invoke-virtual {p0, p4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p4

    const/4 p5, 0x0

    aput-object p4, p2, p5

    const p4, 0x7f07039d

    invoke-virtual {p0, p4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p4

    const/4 p5, 0x1

    aput-object p4, p2, p5

    const p4, 0x7f0701ea

    invoke-virtual {p0, p4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p4

    const/4 v0, 0x2

    aput-object p4, p2, v0

    const p4, 0x7f07039c

    invoke-virtual {p0, p4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p4

    const/4 v0, 0x3

    aput-object p4, p2, v0

    new-instance p4, Lcom/nirenr/talkman/settings/CommandListSetting$4;

    invoke-direct {p4, p0, p3}, Lcom/nirenr/talkman/settings/CommandListSetting$4;-><init>(Lcom/nirenr/talkman/settings/CommandListSetting;I)V

    invoke-virtual {p1, p2, p4}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    return p5
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x1040014

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f07054b

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/nirenr/talkman/settings/CommandListSetting$1;

    invoke-direct {v1, p0}, Lcom/nirenr/talkman/settings/CommandListSetting$1;-><init>(Lcom/nirenr/talkman/settings/CommandListSetting;)V

    const v2, 0x104000a

    invoke-virtual {v0, v2, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f070095

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    goto :goto_0

    :cond_1
    const/4 v0, -0x1

    invoke-direct {p0, v0}, Lcom/nirenr/talkman/settings/CommandListSetting;->h(I)V

    :goto_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1
.end method

.method protected onStop()V
    .locals 3

    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    iget-object v0, p0, Lcom/nirenr/talkman/settings/CommandListSetting;->c:Landroid/widget/ArrayListAdapter;

    invoke-virtual {v0}, Landroid/widget/ArrayListAdapter;->getData()Ljava/util/ArrayList;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/nirenr/talkman/settings/CommandListSetting;->j(Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0}, Lk2/b0;->c(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    iget-object v2, p0, Lcom/nirenr/talkman/settings/CommandListSetting;->a:Ljava/lang/String;

    invoke-static {v1, v2, v0}, Lk2/b0;->l(Landroid/content/SharedPreferences;Ljava/lang/String;Ljava/lang/Object;)Z

    return-void
.end method
