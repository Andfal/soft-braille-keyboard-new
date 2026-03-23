.class public Lcom/nirenr/talkman/AlbumActivity;
.super Landroid/app/BaseListActivity;
.source "SourceFile"


# instance fields
.field private a:Ljava/lang/String;

.field private b:[Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/BaseListActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/app/ListActivity;->onCreate(Landroid/os/Bundle;)V

    invoke-static {}, Lcom/androlua/LuaApplication;->getInstance()Lcom/androlua/LuaApplication;

    move-result-object p1

    const v0, 0x7f0701f0

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/androlua/LuaApplication;->getLuaExtDir(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/nirenr/talkman/AlbumActivity;->a:Ljava/lang/String;

    new-instance p1, Ljava/io/File;

    iget-object v0, p0, Lcom/nirenr/talkman/AlbumActivity;->a:Ljava/lang/String;

    invoke-direct {p1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v0, Lcom/nirenr/talkman/AlbumActivity$a;

    invoke-direct {v0, p0}, Lcom/nirenr/talkman/AlbumActivity$a;-><init>(Lcom/nirenr/talkman/AlbumActivity;)V

    invoke-virtual {p1, v0}, Ljava/io/File;->list(Ljava/io/FilenameFilter;)[Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/nirenr/talkman/AlbumActivity;->b:[Ljava/lang/String;

    if-nez p1, :cond_0

    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/String;

    iput-object p1, p0, Lcom/nirenr/talkman/AlbumActivity;->b:[Ljava/lang/String;

    :cond_0
    iget-object p1, p0, Lcom/nirenr/talkman/AlbumActivity;->b:[Ljava/lang/String;

    new-instance v0, Lk2/p;

    invoke-direct {v0}, Lk2/p;-><init>()V

    invoke-static {p1, v0}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    new-instance p1, Landroid/widget/ArrayListAdapter;

    const-string v0, "\u529f\u80fd\u5f00\u53d1\u4e2d..."

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, p0, v0}, Landroid/widget/ArrayListAdapter;-><init>(Landroid/content/Context;[Ljava/lang/Object;)V

    invoke-virtual {p0, p1}, Landroid/app/ListActivity;->setListAdapter(Landroid/widget/ListAdapter;)V

    return-void
.end method
