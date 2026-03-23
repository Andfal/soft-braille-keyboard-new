.class public Lcom/nirenr/talkman/settings/VoiceSupperCmdManager;
.super Landroid/app/BaseListActivity;
.source "SourceFile"

# interfaces
.implements Landroid/widget/AdapterView$OnItemLongClickListener;


# instance fields
.field private a:Ljava/lang/String;

.field private b:[Ljava/lang/String;

.field private c:Landroid/widget/ArrayListAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/widget/ArrayListAdapter<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private d:Landroid/widget/EditText;

.field private e:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/BaseListActivity;-><init>()V

    return-void
.end method

.method static bridge synthetic a(Lcom/nirenr/talkman/settings/VoiceSupperCmdManager;)Landroid/widget/ArrayListAdapter;
    .locals 0

    iget-object p0, p0, Lcom/nirenr/talkman/settings/VoiceSupperCmdManager;->c:Landroid/widget/ArrayListAdapter;

    return-object p0
.end method

.method static bridge synthetic b(Lcom/nirenr/talkman/settings/VoiceSupperCmdManager;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/nirenr/talkman/settings/VoiceSupperCmdManager;->a:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic c(Lcom/nirenr/talkman/settings/VoiceSupperCmdManager;)V
    .locals 0

    invoke-direct {p0}, Lcom/nirenr/talkman/settings/VoiceSupperCmdManager;->d()V

    return-void
.end method

.method private d()V
    .locals 8

    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/nirenr/talkman/settings/VoiceSupperCmdManager;->a:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    new-array v0, v1, [Ljava/lang/String;

    :cond_0
    new-instance v2, Lk2/p;

    invoke-direct {v2}, Lk2/p;-><init>()V

    invoke-static {v0, v2}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    array-length v3, v0

    :goto_0
    if-ge v1, v3, :cond_2

    aget-object v4, v0, v1

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    new-instance v5, Ljava/io/File;

    new-instance v6, Ljava/io/File;

    iget-object v7, p0, Lcom/nirenr/talkman/settings/VoiceSupperCmdManager;->a:Ljava/lang/String;

    invoke-direct {v6, v7, v4}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-string v7, "main.lua"

    invoke-direct {v5, v6, v7}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/nirenr/talkman/settings/VoiceSupperCmdManager;->b:[Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    iget-object v0, p0, Lcom/nirenr/talkman/settings/VoiceSupperCmdManager;->c:Landroid/widget/ArrayListAdapter;

    invoke-virtual {v0}, Landroid/widget/ArrayListAdapter;->clear()V

    iget-object v0, p0, Lcom/nirenr/talkman/settings/VoiceSupperCmdManager;->c:Landroid/widget/ArrayListAdapter;

    iget-object v1, p0, Lcom/nirenr/talkman/settings/VoiceSupperCmdManager;->b:[Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/ArrayListAdapter;->addAll([Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/nirenr/talkman/settings/VoiceSupperCmdManager;->d:Landroid/widget/EditText;

    if-eqz v0, :cond_3

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_3
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 7

    invoke-super {p0, p1}, Landroid/app/ListActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0702dd

    invoke-virtual {p0, p1}, Landroid/app/Activity;->setTitle(I)V

    invoke-static {}, Lcom/androlua/LuaApplication;->getInstance()Lcom/androlua/LuaApplication;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/androlua/LuaApplication;->getHelpersDir()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/nirenr/talkman/settings/VoiceSupperCmdManager;->a:Ljava/lang/String;

    new-instance p1, Ljava/io/File;

    iget-object v0, p0, Lcom/nirenr/talkman/settings/VoiceSupperCmdManager;->a:Ljava/lang/String;

    invoke-direct {p1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v0, Lcom/nirenr/talkman/settings/VoiceSupperCmdManager$1;

    invoke-direct {v0, p0}, Lcom/nirenr/talkman/settings/VoiceSupperCmdManager$1;-><init>(Lcom/nirenr/talkman/settings/VoiceSupperCmdManager;)V

    invoke-virtual {p1, v0}, Ljava/io/File;->list(Ljava/io/FilenameFilter;)[Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    new-array p1, v0, [Ljava/lang/String;

    :cond_0
    new-instance v1, Lk2/p;

    invoke-direct {v1}, Lk2/p;-><init>()V

    invoke-static {p1, v1}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    array-length v2, p1

    :goto_0
    if-ge v0, v2, :cond_2

    aget-object v3, p1, v0

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    new-instance v4, Ljava/io/File;

    new-instance v5, Ljava/io/File;

    iget-object v6, p0, Lcom/nirenr/talkman/settings/VoiceSupperCmdManager;->a:Ljava/lang/String;

    invoke-direct {v5, v6, v3}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-string v6, "main.lua"

    invoke-direct {v4, v5, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result p1

    new-array p1, p1, [Ljava/lang/String;

    iput-object p1, p0, Lcom/nirenr/talkman/settings/VoiceSupperCmdManager;->b:[Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    new-instance p1, Landroid/widget/ArrayListAdapter;

    const v0, 0x1090003

    iget-object v1, p0, Lcom/nirenr/talkman/settings/VoiceSupperCmdManager;->b:[Ljava/lang/String;

    invoke-direct {p1, p0, v0, v1}, Landroid/widget/ArrayListAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/nirenr/talkman/settings/VoiceSupperCmdManager;->c:Landroid/widget/ArrayListAdapter;

    invoke-virtual {p0, p1}, Landroid/app/ListActivity;->setListAdapter(Landroid/widget/ListAdapter;)V

    invoke-virtual {p0}, Landroid/app/ListActivity;->getListView()Landroid/widget/ListView;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/widget/AdapterView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    invoke-static {p0}, Lcom/androlua/LuaUtil;->checkStorage(Landroid/app/Activity;)V

    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 3

    new-instance v0, Lcom/nirenr/talkman/settings/VoiceSupperCmdManager$2;

    invoke-direct {v0, p0, p0}, Lcom/nirenr/talkman/settings/VoiceSupperCmdManager$2;-><init>(Lcom/nirenr/talkman/settings/VoiceSupperCmdManager;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/nirenr/talkman/settings/VoiceSupperCmdManager;->d:Landroid/widget/EditText;

    const v1, 0x7f070318

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setHint(I)V

    const-string v0, ""

    invoke-interface {p1, v0}, Landroid/view/Menu;->add(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setShowAsActionFlags(I)Landroid/view/MenuItem;

    move-result-object v0

    iget-object v2, p0, Lcom/nirenr/talkman/settings/VoiceSupperCmdManager;->d:Landroid/widget/EditText;

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setActionView(Landroid/view/View;)Landroid/view/MenuItem;

    const v0, 0x7f0701a9

    const/4 v2, 0x0

    invoke-interface {p1, v2, v1, v2, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setShowAsActionFlags(I)Landroid/view/MenuItem;

    const/4 v0, 0x4

    const v1, 0x7f070248

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    const/4 v0, 0x2

    const v1, 0x7f0701f2

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    invoke-super {p0, p1}, Landroid/app/ListActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result p1

    return p1
.end method

.method protected onDestroy()V
    .locals 3

    new-instance v0, Ljava/io/File;

    invoke-static {}, Lcom/androlua/LuaApplication;->getInstance()Lcom/androlua/LuaApplication;

    move-result-object v1

    const-string v2, ".temp"

    invoke-virtual {v1, v2}, Lcom/androlua/LuaApplication;->getHelpersDir(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/androlua/LuaUtil;->rmDir(Ljava/io/File;)Z

    invoke-super {p0}, Landroid/app/ListActivity;->onDestroy()V

    return-void
.end method

.method public onItemLongClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)Z"
        }
    .end annotation

    check-cast p2, Landroid/widget/TextView;

    invoke-virtual {p2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance p2, Landroid/app/AlertDialog$Builder;

    invoke-direct {p2, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const/4 p4, 0x5

    new-array p4, p4, [Ljava/lang/String;

    const p5, 0x7f0701ea

    invoke-virtual {p0, p5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p5

    const/4 v0, 0x0

    aput-object p5, p4, v0

    const p5, 0x7f070248

    invoke-virtual {p0, p5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p5

    const/4 v0, 0x1

    aput-object p5, p4, v0

    const p5, 0x7f07055d

    invoke-virtual {p0, p5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p5

    const/4 v1, 0x2

    aput-object p5, p4, v1

    const p5, 0x7f0705dc

    invoke-virtual {p0, p5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p5

    const/4 v1, 0x3

    aput-object p5, p4, v1

    const p5, 0x7f070936

    invoke-virtual {p0, p5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p5

    const/4 v1, 0x4

    aput-object p5, p4, v1

    new-instance p5, Lcom/nirenr/talkman/settings/VoiceSupperCmdManager$4;

    invoke-direct {p5, p0, p1, p3}, Lcom/nirenr/talkman/settings/VoiceSupperCmdManager$4;-><init>(Lcom/nirenr/talkman/settings/VoiceSupperCmdManager;Ljava/lang/String;I)V

    invoke-virtual {p2, p4, p5}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    return v0
.end method

.method protected onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V
    .locals 0

    invoke-super/range {p0 .. p5}, Landroid/app/ListActivity;->onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V

    check-cast p2, Landroid/widget/TextView;

    invoke-virtual {p2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance p2, Landroid/content/Intent;

    const-class p3, Lcom/androlua/LuaEditActivity;

    invoke-direct {p2, p0, p3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    new-instance p3, Ljava/io/File;

    iget-object p4, p0, Lcom/nirenr/talkman/settings/VoiceSupperCmdManager;->a:Ljava/lang/String;

    invoke-direct {p3, p4, p1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p3}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object p1

    const/high16 p2, 0x10000000

    invoke-virtual {p1, p2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 4

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    goto :goto_1

    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/androlua/LuaEditActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/nirenr/talkman/settings/VoiceSupperCmdManager;->a:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v0

    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v0

    goto :goto_0

    :cond_1
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/nirenr/talkman/DownloadActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "url"

    const-string v2, "helper/"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const v1, 0x7f0702dd

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "title"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    :goto_0
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_1

    :cond_2
    new-instance v0, Lcom/nirenr/talkman/dialog/EditDialog;

    const v1, 0x7f070306

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/nirenr/talkman/settings/VoiceSupperCmdManager$3;

    invoke-direct {v2, p0}, Lcom/nirenr/talkman/settings/VoiceSupperCmdManager$3;-><init>(Lcom/nirenr/talkman/settings/VoiceSupperCmdManager;)V

    const-string v3, ""

    invoke-direct {v0, p0, v1, v3, v2}, Lcom/nirenr/talkman/dialog/EditDialog;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/nirenr/talkman/dialog/EditDialog$EditDialogCallback;)V

    invoke-virtual {v0}, Lcom/nirenr/talkman/dialog/EditDialog;->g()V

    :goto_1
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1
.end method

.method protected onPause()V
    .locals 1

    invoke-super {p0}, Landroid/app/BaseListActivity;->onPause()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/nirenr/talkman/settings/VoiceSupperCmdManager;->e:Z

    return-void
.end method

.method protected onResume()V
    .locals 1

    invoke-super {p0}, Landroid/app/BaseListActivity;->onResume()V

    iget-boolean v0, p0, Lcom/nirenr/talkman/settings/VoiceSupperCmdManager;->e:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/nirenr/talkman/settings/VoiceSupperCmdManager;->d()V

    :cond_0
    return-void
.end method
