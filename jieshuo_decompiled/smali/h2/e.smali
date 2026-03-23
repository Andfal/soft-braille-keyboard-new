.class public Lh2/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Landroid/view/View$OnClickListener;
.implements Landroid/content/DialogInterface$OnDismissListener;


# instance fields
.field private final a:Landroid/content/Context;

.field private b:I

.field private c:Ljava/lang/String;

.field private d:[Ljava/lang/String;

.field private e:Landroid/app/AlertDialog;

.field private f:Landroid/widget/ListView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lh2/e;->a:Landroid/content/Context;

    iput-object p2, p0, Lh2/e;->c:Ljava/lang/String;

    iput p3, p0, Lh2/e;->b:I

    return-void
.end method

.method static bridge synthetic a(Lh2/e;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lh2/e;->a:Landroid/content/Context;

    return-object p0
.end method

.method static bridge synthetic b(Lh2/e;)[Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lh2/e;->d:[Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic c(Lh2/e;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lh2/e;->c:Ljava/lang/String;

    return-object p0
.end method

.method public static d(Landroid/content/Context;Ljava/util/ArrayList;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    invoke-static {}, Lcom/nirenr/talkman/TalkManAccessibilityService;->getInstance()Lcom/nirenr/talkman/TalkManAccessibilityService;

    move-result-object p0

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Lcom/nirenr/talkman/TalkManAccessibilityService;->getClipboardList()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v3

    sub-int/2addr v3, v1

    :goto_0
    if-ltz v3, :cond_0

    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    invoke-virtual {v2, v0, v1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/nirenr/talkman/TalkManAccessibilityService;->addClipboard()Z

    return v0

    :cond_1
    invoke-static {}, Lk2/c;->a()Ljava/util/ArrayList;

    move-result-object p0

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    sub-int/2addr v2, v1

    :goto_1
    if-ltz v2, :cond_2

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {p0, v3}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    invoke-virtual {p0, v0, v3}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    add-int/lit8 v2, v2, -0x1

    goto :goto_1

    :cond_2
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {p1}, Lk2/c;->f(Ljava/util/ArrayList;)V

    return v1
.end method

.method private e(Ljava/lang/String;)Z
    .locals 1

    invoke-static {p1}, Lcom/nirenr/talkman/o;->c(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p1

    iget-object v0, p0, Lh2/e;->a:Landroid/content/Context;

    invoke-static {v0, p1}, Lh2/e;->d(Landroid/content/Context;Ljava/util/ArrayList;)Z

    move-result p1

    return p1
.end method

.method public static f(Landroid/content/Context;Ljava/util/ArrayList;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    invoke-static {}, Lcom/nirenr/talkman/TalkManAccessibilityService;->getInstance()Lcom/nirenr/talkman/TalkManAccessibilityService;

    move-result-object p0

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Lcom/nirenr/talkman/TalkManAccessibilityService;->getFavoritesList()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v3

    sub-int/2addr v3, v1

    :goto_0
    if-ltz v3, :cond_0

    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    invoke-virtual {v2, v0, v1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/nirenr/talkman/TalkManAccessibilityService;->addFavorites(Ljava/lang/String;)Z

    return v0

    :cond_1
    invoke-static {}, Lk2/c;->c()Ljava/util/ArrayList;

    move-result-object p0

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    sub-int/2addr v2, v1

    :goto_1
    if-ltz v2, :cond_2

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {p0, v3}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    invoke-virtual {p0, v0, v3}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    add-int/lit8 v2, v2, -0x1

    goto :goto_1

    :cond_2
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {p1}, Lk2/c;->h(Ljava/util/ArrayList;)V

    return v1
.end method

.method private g(Ljava/lang/String;)Z
    .locals 1

    invoke-static {p1}, Lcom/nirenr/talkman/o;->c(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p1

    iget-object v0, p0, Lh2/e;->a:Landroid/content/Context;

    invoke-static {v0, p1}, Lh2/e;->f(Landroid/content/Context;Ljava/util/ArrayList;)Z

    move-result p1

    return p1
.end method


# virtual methods
.method public h(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lcom/nirenr/talkman/o;->g(Ljava/lang/String;)Ljava/util/Map;

    move-result-object p2

    invoke-virtual {v0}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {p2, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    if-eqz v3, :cond_1

    const-string v4, "_"

    const-string v5, " "

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    :cond_1
    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {p2, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_2
    invoke-static {p1, p2}, Lcom/nirenr/talkman/o;->m(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public i(Ljava/lang/String;)V
    .locals 6

    invoke-static {}, Lcom/androlua/LuaApplication;->getInstance()Lcom/androlua/LuaApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/androlua/LuaApplication;->getLabelsDir()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/androlua/LuaApplication;->getInstance()Lcom/androlua/LuaApplication;

    :try_start_0
    new-instance v1, Ljava/util/zip/ZipFile;

    invoke-direct {v1, p1}, Ljava/util/zip/ZipFile;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/util/zip/ZipFile;->entries()Ljava/util/Enumeration;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {p1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/zip/ZipEntry;

    new-instance v3, Ljava/io/File;

    invoke-virtual {v2}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v0, v4}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/zip/ZipFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object v2

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_0

    new-instance v4, Ljava/io/FileOutputStream;

    invoke-direct {v4, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-static {v2, v4}, Lcom/androlua/LuaUtil;->copyFile(Ljava/io/InputStream;Ljava/io/OutputStream;)Z

    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_1

    :cond_0
    :try_start_1
    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/String;

    invoke-static {v2}, Lcom/androlua/LuaUtil;->readAll(Ljava/io/InputStream;)[B

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {p0, v3, v4}, Lh2/e;->h(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_0
    move-exception v3

    :try_start_2
    invoke-virtual {v3}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_1
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    :catch_1
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_1
    invoke-static {}, Lcom/nirenr/talkman/o;->k()V

    return-void
.end method

.method public j()V
    .locals 5

    iget-object v0, p0, Lh2/e;->d:[Ljava/lang/String;

    if-nez v0, :cond_0

    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lh2/e;->c:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lh2/e;->d:[Ljava/lang/String;

    :cond_0
    iget-object v0, p0, Lh2/e;->d:[Ljava/lang/String;

    if-nez v0, :cond_1

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lh2/e;->d:[Ljava/lang/String;

    :cond_1
    iget-object v0, p0, Lh2/e;->d:[Ljava/lang/String;

    new-instance v1, Lk2/p;

    invoke-direct {v1}, Lk2/p;-><init>()V

    invoke-static {v0, v1}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    new-instance v0, Landroid/widget/ListView;

    iget-object v1, p0, Lh2/e;->a:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/ListView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lh2/e;->f:Landroid/widget/ListView;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->setChoiceMode(I)V

    iget-object v0, p0, Lh2/e;->f:Landroid/widget/ListView;

    new-instance v1, Lh2/e$a;

    iget-object v2, p0, Lh2/e;->a:Landroid/content/Context;

    const v3, 0x1090010

    iget-object v4, p0, Lh2/e;->d:[Ljava/lang/String;

    invoke-direct {v1, p0, v2, v3, v4}, Lh2/e$a;-><init>(Lh2/e;Landroid/content/Context;I[Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-object v0, p0, Lh2/e;->f:Landroid/widget/ListView;

    new-instance v1, Lh2/e$b;

    invoke-direct {v1, p0}, Lh2/e$b;-><init>(Lh2/e;)V

    invoke-virtual {v0, v1}, Landroid/widget/AdapterView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lh2/e;->a:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iget v1, p0, Lh2/e;->b:I

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    iget-object v1, p0, Lh2/e;->f:Landroid/widget/ListView;

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x104000d

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0701ea

    invoke-virtual {v0, v1, p0}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f070563

    invoke-virtual {v0, v1, p0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lh2/e;->e:Landroid/app/AlertDialog;

    iget-object v1, p0, Lh2/e;->a:Landroid/content/Context;

    instance-of v1, v1, Lcom/nirenr/talkman/TalkManAccessibilityService;

    if-eqz v1, :cond_3

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-eqz v0, :cond_3

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x16

    if-lt v1, v2, :cond_2

    const/16 v1, 0x7f0

    goto :goto_0

    :cond_2
    const/16 v1, 0x7da

    :goto_0
    invoke-virtual {v0, v1}, Landroid/view/Window;->setType(I)V

    :cond_3
    iget-object v0, p0, Lh2/e;->e:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    iget-object v0, p0, Lh2/e;->e:Landroid/app/AlertDialog;

    const/4 v1, -0x2

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 11

    const/4 p1, -0x3

    const v0, 0x7f0703f0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eq p2, p1, :cond_f

    const/4 p1, -0x2

    if-eq p2, p1, :cond_e

    const/4 p1, -0x1

    if-eq p2, p1, :cond_0

    goto/16 :goto_7

    :cond_0
    invoke-static {}, Lcom/androlua/LuaApplication;->getInstance()Lcom/androlua/LuaApplication;

    move-result-object p2

    invoke-virtual {p2}, Lcom/androlua/LuaApplication;->getBackupDir()Ljava/lang/String;

    iget-object v3, p0, Lh2/e;->f:Landroid/widget/ListView;

    invoke-virtual {v3}, Landroid/widget/AbsListView;->getCheckedItemPositions()Landroid/util/SparseBooleanArray;

    move-result-object v3

    iget-object v4, p0, Lh2/e;->f:Landroid/widget/ListView;

    invoke-virtual {v4}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v4

    invoke-interface {v4}, Landroid/widget/Adapter;->getCount()I

    move-result v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    :goto_0
    if-ge v5, v4, :cond_d

    invoke-virtual {v3, v5}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v7

    if-eqz v7, :cond_c

    add-int/lit8 v6, v6, 0x1

    iget-object v7, p0, Lh2/e;->d:[Ljava/lang/String;

    aget-object v7, v7, v5

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v8

    const/4 v9, 0x3

    sub-int/2addr v8, v9

    invoke-virtual {v7, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v8

    const-string v10, "."

    invoke-virtual {v7, v10}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v10

    if-lez v10, :cond_1

    invoke-virtual {v7, v2, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    :cond_1
    const-string v10, "_"

    invoke-virtual {v7, v10}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v10

    if-lez v10, :cond_2

    invoke-virtual {v7, v2, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    :cond_2
    const-string v10, "("

    invoke-virtual {v7, v10}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v10

    if-lez v10, :cond_3

    invoke-virtual {v7, v2, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    :cond_3
    const-string v10, "TalkManAccessibility"

    invoke-static {v10, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v10, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v8}, Ljava/lang/String;->hashCode()I

    invoke-virtual {v8}, Ljava/lang/String;->hashCode()I

    move-result v10

    sparse-switch v10, :sswitch_data_0

    :goto_1
    const/4 v9, -0x1

    goto :goto_2

    :sswitch_0
    const-string v9, "xpk"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_4

    goto :goto_1

    :cond_4
    const/4 v9, 0x7

    goto :goto_2

    :sswitch_1
    const-string v9, "spk"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_5

    goto :goto_1

    :cond_5
    const/4 v9, 0x6

    goto :goto_2

    :sswitch_2
    const-string v9, "ppk"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_6

    goto :goto_1

    :cond_6
    const/4 v9, 0x5

    goto :goto_2

    :sswitch_3
    const-string v9, "lpk"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_7

    goto :goto_1

    :cond_7
    const/4 v9, 0x4

    goto :goto_2

    :sswitch_4
    const-string v10, "gpk"

    invoke-virtual {v8, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_b

    goto :goto_1

    :sswitch_5
    const-string v9, "fbk"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_8

    goto :goto_1

    :cond_8
    const/4 v9, 0x2

    goto :goto_2

    :sswitch_6
    const-string v9, "cbk"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_9

    goto :goto_1

    :cond_9
    const/4 v9, 0x1

    goto :goto_2

    :sswitch_7
    const-string v9, "alp"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_a

    goto :goto_1

    :cond_a
    const/4 v9, 0x0

    :cond_b
    :goto_2
    packed-switch v9, :pswitch_data_0

    goto/16 :goto_3

    :pswitch_0
    :try_start_0
    new-instance v8, Ljava/io/File;

    iget-object v9, p0, Lh2/e;->c:Ljava/lang/String;

    iget-object v10, p0, Lh2/e;->d:[Ljava/lang/String;

    aget-object v10, v10, v5

    invoke-direct {v8, v9, v10}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v8}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p2, v7}, Lcom/androlua/LuaApplication;->getToolsDir(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v8, v7}, Lcom/androlua/LuaUtil;->unZip(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_3

    :pswitch_1
    new-instance v8, Ljava/io/File;

    iget-object v9, p0, Lh2/e;->c:Ljava/lang/String;

    iget-object v10, p0, Lh2/e;->d:[Ljava/lang/String;

    aget-object v10, v10, v5

    invoke-direct {v8, v9, v10}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v8}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p2, v7}, Lcom/androlua/LuaApplication;->getSoundsDir(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v8, v7}, Lcom/androlua/LuaUtil;->unZip(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :pswitch_2
    new-instance v7, Ljava/io/File;

    iget-object v8, p0, Lh2/e;->c:Ljava/lang/String;

    iget-object v9, p0, Lh2/e;->d:[Ljava/lang/String;

    aget-object v9, v9, v5

    invoke-direct {v7, v8, v9}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v7}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Lh2/e;->i(Ljava/lang/String;)V

    goto :goto_3

    :pswitch_3
    :try_start_1
    new-instance v8, Ljava/io/File;

    iget-object v9, p0, Lh2/e;->c:Ljava/lang/String;

    iget-object v10, p0, Lh2/e;->d:[Ljava/lang/String;

    aget-object v10, v10, v5

    invoke-direct {v8, v9, v10}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v8}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p2, v7}, Lcom/androlua/LuaApplication;->getGesturesDir(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v8, v7}, Lcom/androlua/LuaUtil;->unZip(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_3

    :pswitch_4
    new-instance v7, Ljava/io/File;

    iget-object v8, p0, Lh2/e;->c:Ljava/lang/String;

    iget-object v9, p0, Lh2/e;->d:[Ljava/lang/String;

    aget-object v9, v9, v5

    invoke-direct {v7, v8, v9}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v7}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7}, Lh2/e;->g(Ljava/lang/String;)Z

    goto :goto_3

    :pswitch_5
    new-instance v7, Ljava/io/File;

    iget-object v8, p0, Lh2/e;->c:Ljava/lang/String;

    iget-object v9, p0, Lh2/e;->d:[Ljava/lang/String;

    aget-object v9, v9, v5

    invoke-direct {v7, v8, v9}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v7}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7}, Lh2/e;->e(Ljava/lang/String;)Z

    goto :goto_3

    :pswitch_6
    :try_start_2
    new-instance v8, Ljava/io/File;

    iget-object v9, p0, Lh2/e;->c:Ljava/lang/String;

    iget-object v10, p0, Lh2/e;->d:[Ljava/lang/String;

    aget-object v10, v10, v5

    invoke-direct {v8, v9, v10}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v8}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p2, v7}, Lcom/androlua/LuaApplication;->getPluginsDir(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v8, v7}, Lcom/androlua/LuaUtil;->unZip(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_3

    :catch_0
    move-exception v7

    invoke-virtual {v7}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_c
    :goto_3
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_0

    :cond_d
    iget-object p1, p0, Lh2/e;->a:Landroid/content/Context;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lh2/e;->a:Landroid/content/Context;

    const v4, 0x7f070428

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lh2/e;->a:Landroid/content/Context;

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v1, v2

    invoke-virtual {v3, v0, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    goto :goto_6

    :cond_e
    :goto_4
    iget-object p1, p0, Lh2/e;->d:[Ljava/lang/String;

    array-length p1, p1

    sub-int/2addr p1, v1

    if-gt v2, p1, :cond_12

    iget-object p1, p0, Lh2/e;->f:Landroid/widget/ListView;

    invoke-virtual {p1, v2, v1}, Landroid/widget/AbsListView;->setItemChecked(IZ)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    :cond_f
    iget-object p1, p0, Lh2/e;->f:Landroid/widget/ListView;

    invoke-virtual {p1}, Landroid/widget/AbsListView;->getCheckedItemPositions()Landroid/util/SparseBooleanArray;

    move-result-object p1

    iget-object p2, p0, Lh2/e;->f:Landroid/widget/ListView;

    invoke-virtual {p2}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object p2

    invoke-interface {p2}, Landroid/widget/Adapter;->getCount()I

    move-result p2

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_5
    if-ge v3, p2, :cond_11

    invoke-virtual {p1, v3}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v5

    if-eqz v5, :cond_10

    add-int/lit8 v4, v4, 0x1

    new-instance v5, Ljava/io/File;

    iget-object v6, p0, Lh2/e;->c:Ljava/lang/String;

    iget-object v7, p0, Lh2/e;->d:[Ljava/lang/String;

    aget-object v7, v7, v3

    invoke-direct {v5, v6, v7}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v5}, Lcom/androlua/LuaUtil;->rmDir(Ljava/io/File;)Z

    :cond_10
    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    :cond_11
    iget-object p1, p0, Lh2/e;->a:Landroid/content/Context;

    new-array p2, v1, [Ljava/lang/Object;

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    aput-object v0, p2, v2

    const v0, 0x7f0703bb

    invoke-virtual {p1, v0, p2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    :goto_6
    invoke-static {p1, p2, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    :cond_12
    :goto_7
    return-void

    :sswitch_data_0
    .sparse-switch
        0x179a5 -> :sswitch_7
        0x17fec -> :sswitch_6
        0x18b2f -> :sswitch_5
        0x190a2 -> :sswitch_4
        0x1a367 -> :sswitch_3
        0x1b26b -> :sswitch_2
        0x1bdae -> :sswitch_1
        0x1d073 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_6
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onClick(Landroid/view/View;)V
    .locals 4

    iget-object p1, p0, Lh2/e;->f:Landroid/widget/ListView;

    invoke-virtual {p1}, Landroid/widget/AbsListView;->getCheckedItemPositions()Landroid/util/SparseBooleanArray;

    move-result-object p1

    iget-object v0, p0, Lh2/e;->f:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    invoke-interface {v0}, Landroid/widget/Adapter;->getCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    iget-object v2, p0, Lh2/e;->f:Landroid/widget/ListView;

    invoke-virtual {p1, v1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v3

    xor-int/lit8 v3, v3, 0x1

    invoke-virtual {v2, v1, v3}, Landroid/widget/AbsListView;->setItemChecked(IZ)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 0

    return-void
.end method
