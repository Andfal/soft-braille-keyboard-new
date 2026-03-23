.class public Lcom/androlua/LuaEditActivity;
.super Landroid/app/BaseActivity;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Lcom/nirenr/talkman/dialog/FileDialog$OnAddListener;
.implements Lcom/nirenr/talkman/dialog/EditDialog$EditDialogCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/androlua/LuaEditActivity$Word6Extractor;
    }
.end annotation


# static fields
.field private static mHelp:Ljava/lang/String;

.field private static final youtu:Ljava/lang/String;


# instance fields
.field private dlg:Landroid/app/AlertDialog;

.field private dm:Landroid/util/DisplayMetrics;

.field private edit:Landroid/widget/SplitEditView;

.field private history:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/nirenr/talkman/o$a;",
            ">;"
        }
    .end annotation
.end field

.field private mData:Landroid/net/Uri;

.field private mDir:Ljava/io/File;

.field private mHelper:Z

.field private mHelperDir:Ljava/lang/String;

.field private mHistoryPath:Ljava/lang/String;

.field private mName:Ljava/lang/String;

.field private mNoteDir:Ljava/lang/String;

.field private mPlugin:Z

.field private mPluginDir:Ljava/lang/String;

.field private mProjectDir:Ljava/lang/String;

.field private mReading:Z

.field private mRun:Landroid/view/View;

.field private mTitle:Landroid/widget/TextView;

.field private mTool:Z

.field private mToolDir:Ljava/lang/String;

.field private path:Ljava/lang/String;

.field private permissions:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/lang/String;

    const/16 v1, 0xa

    new-array v1, v1, [C

    fill-array-data v1, :array_0

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([C)V

    sput-object v0, Lcom/androlua/LuaEditActivity;->youtu:Ljava/lang/String;

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

    invoke-direct {p0}, Landroid/app/BaseActivity;-><init>()V

    invoke-static {}, Lcom/androlua/LuaApplication;->getInstance()Lcom/androlua/LuaApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/androlua/LuaApplication;->getToolsDir()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/androlua/LuaEditActivity;->mToolDir:Ljava/lang/String;

    invoke-static {}, Lcom/androlua/LuaApplication;->getInstance()Lcom/androlua/LuaApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/androlua/LuaApplication;->getPluginsDir()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/androlua/LuaEditActivity;->mPluginDir:Ljava/lang/String;

    invoke-static {}, Lcom/androlua/LuaApplication;->getInstance()Lcom/androlua/LuaApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/androlua/LuaApplication;->getNotesDir()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/androlua/LuaEditActivity;->mNoteDir:Ljava/lang/String;

    invoke-static {}, Lcom/androlua/LuaApplication;->getInstance()Lcom/androlua/LuaApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/androlua/LuaApplication;->getHelpersDir()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/androlua/LuaEditActivity;->mHelperDir:Ljava/lang/String;

    invoke-static {}, Lcom/androlua/LuaApplication;->getInstance()Lcom/androlua/LuaApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/androlua/LuaApplication;->getLuaExtDir()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/androlua/LuaEditActivity;->mProjectDir:Ljava/lang/String;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/androlua/LuaEditActivity;->history:Ljava/util/ArrayList;

    return-void
.end method

.method static bridge synthetic a(Lcom/androlua/LuaEditActivity;)Landroid/app/AlertDialog;
    .locals 0

    iget-object p0, p0, Lcom/androlua/LuaEditActivity;->dlg:Landroid/app/AlertDialog;

    return-object p0
.end method

.method private abcdefg()Z
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

    sget-object v1, Lcom/androlua/LuaEditActivity;->youtu:Ljava/lang/String;

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

.method static bridge synthetic b(Lcom/androlua/LuaEditActivity;)Landroid/widget/SplitEditView;
    .locals 0

    iget-object p0, p0, Lcom/androlua/LuaEditActivity;->edit:Landroid/widget/SplitEditView;

    return-object p0
.end method

.method static bridge synthetic c(Lcom/androlua/LuaEditActivity;)Ljava/util/ArrayList;
    .locals 0

    iget-object p0, p0, Lcom/androlua/LuaEditActivity;->history:Ljava/util/ArrayList;

    return-object p0
.end method

.method private checkPermission(Ljava/lang/String;)V
    .locals 1

    invoke-virtual {p0, p1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/androlua/LuaEditActivity;->permissions:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method private createButton(Ljava/lang/String;I)Landroid/view/View;
    .locals 2

    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p2}, Landroid/view/View;->setId(I)V

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/16 p1, 0x11

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setGravity(I)V

    const/high16 p1, 0x41000000    # 8.0f

    invoke-direct {p0, p1}, Lcom/androlua/LuaEditActivity;->dp(F)I

    move-result p2

    const/4 v1, 0x0

    invoke-direct {p0, p1}, Lcom/androlua/LuaEditActivity;->dp(F)I

    move-result p1

    invoke-virtual {v0, p2, v1, p1, v1}, Landroid/widget/TextView;->setPadding(IIII)V

    const/4 p1, 0x1

    const/high16 p2, 0x41800000    # 16.0f

    invoke-virtual {v0, p1, p2}, Landroid/widget/TextView;->setTextSize(IF)V

    new-instance p1, Landroid/view/ViewGroup$LayoutParams;

    const/high16 p2, 0x42000000    # 32.0f

    invoke-direct {p0, p2}, Lcom/androlua/LuaEditActivity;->dp(F)I

    move-result p2

    const/4 v1, -0x2

    invoke-direct {p1, v1, p2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v0, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    new-instance p1, Lcom/androlua/LuaEditActivity$7;

    invoke-direct {p1, p0, v0}, Lcom/androlua/LuaEditActivity$7;-><init>(Lcom/androlua/LuaEditActivity;Landroid/widget/TextView;)V

    invoke-virtual {v0, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-object v0
.end method

.method static bridge synthetic d(Lcom/androlua/LuaEditActivity;)Landroid/net/Uri;
    .locals 0

    iget-object p0, p0, Lcom/androlua/LuaEditActivity;->mData:Landroid/net/Uri;

    return-object p0
.end method

.method private dp(F)I
    .locals 2

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/androlua/LuaEditActivity;->dm:Landroid/util/DisplayMetrics;

    invoke-static {v0, p1, v1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p1

    float-to-int p1, p1

    return p1
.end method

.method static bridge synthetic e(Lcom/androlua/LuaEditActivity;)Ljava/io/File;
    .locals 0

    iget-object p0, p0, Lcom/androlua/LuaEditActivity;->mDir:Ljava/io/File;

    return-object p0
.end method

.method static bridge synthetic f(Lcom/androlua/LuaEditActivity;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/androlua/LuaEditActivity;->mHelper:Z

    return p0
.end method

.method static bridge synthetic g(Lcom/androlua/LuaEditActivity;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/androlua/LuaEditActivity;->mName:Ljava/lang/String;

    return-object p0
.end method

.method private static getJavaMethods(Ljava/lang/Class;)Ljava/util/ArrayList;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class;",
            ")",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Class;->getMethods()[Ljava/lang/reflect/Method;

    move-result-object p0

    array-length v1, p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, p0, v2

    invoke-virtual {v3}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-object v0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    return-object v0
.end method

.method private getLuaApplication()Lcom/androlua/LuaApplication;
    .locals 1

    invoke-static {}, Lcom/androlua/LuaApplication;->getInstance()Lcom/androlua/LuaApplication;

    move-result-object v0

    return-object v0
.end method

.method static bridge synthetic h(Lcom/androlua/LuaEditActivity;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/androlua/LuaEditActivity;->mPlugin:Z

    return p0
.end method

.method static bridge synthetic i(Lcom/androlua/LuaEditActivity;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/androlua/LuaEditActivity;->mProjectDir:Ljava/lang/String;

    return-object p0
.end method

.method private initDir()V
    .locals 3

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-static {v0}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "initDir: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "lua"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/androlua/LuaEditActivity;->mPluginDir:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    iput-boolean v2, p0, Lcom/androlua/LuaEditActivity;->mPlugin:Z

    iget-object v0, p0, Lcom/androlua/LuaEditActivity;->mPluginDir:Ljava/lang/String;

    iput-object v0, p0, Lcom/androlua/LuaEditActivity;->mProjectDir:Ljava/lang/String;

    invoke-static {}, Ld2/i;->E()Ld2/h;

    move-result-object v0

    invoke-static {v0}, Ld2/k;->g(Ld2/h;)V

    new-instance v0, Ljava/io/File;

    invoke-static {}, Lcom/androlua/LuaApplication;->getInstance()Lcom/androlua/LuaApplication;

    move-result-object v1

    invoke-virtual {v1}, Lcom/androlua/LuaApplication;->getPluginsDir()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_0
    iget-object v1, p0, Lcom/androlua/LuaEditActivity;->mToolDir:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    iput-boolean v2, p0, Lcom/androlua/LuaEditActivity;->mTool:Z

    invoke-static {}, Ld2/i;->E()Ld2/h;

    move-result-object v0

    invoke-static {v0}, Ld2/k;->g(Ld2/h;)V

    new-instance v0, Ljava/io/File;

    invoke-static {}, Lcom/androlua/LuaApplication;->getInstance()Lcom/androlua/LuaApplication;

    move-result-object v1

    invoke-virtual {v1}, Lcom/androlua/LuaApplication;->getToolsDir()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/androlua/LuaEditActivity;->mDir:Ljava/io/File;

    iget-object v0, p0, Lcom/androlua/LuaEditActivity;->mToolDir:Ljava/lang/String;

    :goto_0
    iput-object v0, p0, Lcom/androlua/LuaEditActivity;->mProjectDir:Ljava/lang/String;

    goto/16 :goto_2

    :cond_1
    iget-object v1, p0, Lcom/androlua/LuaEditActivity;->mNoteDir:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-static {}, Ld2/j;->E()Ld2/h;

    move-result-object v0

    invoke-static {v0}, Ld2/k;->g(Ld2/h;)V

    new-instance v0, Ljava/io/File;

    invoke-static {}, Lcom/androlua/LuaApplication;->getInstance()Lcom/androlua/LuaApplication;

    move-result-object v1

    invoke-virtual {v1}, Lcom/androlua/LuaApplication;->getNotesDir()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/androlua/LuaEditActivity;->mDir:Ljava/io/File;

    invoke-static {}, Lcom/androlua/LuaApplication;->getInstance()Lcom/androlua/LuaApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/androlua/LuaApplication;->getLuaExtDir()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/androlua/LuaEditActivity;->mHelperDir:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    iput-boolean v2, p0, Lcom/androlua/LuaEditActivity;->mHelper:Z

    invoke-static {}, Ld2/j;->E()Ld2/h;

    move-result-object v0

    invoke-static {v0}, Ld2/k;->g(Ld2/h;)V

    new-instance v0, Ljava/io/File;

    invoke-static {}, Lcom/androlua/LuaApplication;->getInstance()Lcom/androlua/LuaApplication;

    move-result-object v1

    invoke-virtual {v1}, Lcom/androlua/LuaApplication;->getHelpersDir()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/androlua/LuaEditActivity;->mDir:Ljava/io/File;

    iget-object v0, p0, Lcom/androlua/LuaEditActivity;->mHelperDir:Ljava/lang/String;

    goto :goto_0

    :cond_3
    invoke-static {}, Ld2/j;->E()Ld2/h;

    move-result-object v0

    invoke-static {v0}, Ld2/k;->g(Ld2/h;)V

    invoke-static {}, Lcom/androlua/LuaApplication;->getInstance()Lcom/androlua/LuaApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/androlua/LuaApplication;->getLuaExtDir()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/androlua/LuaEditActivity;->mProjectDir:Ljava/lang/String;

    new-instance v0, Ljava/io/File;

    invoke-static {}, Lcom/androlua/LuaApplication;->getInstance()Lcom/androlua/LuaApplication;

    move-result-object v1

    invoke-virtual {v1}, Lcom/androlua/LuaApplication;->getLuaExtDir()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    goto :goto_1

    :cond_4
    invoke-static {}, Ld2/j;->E()Ld2/h;

    move-result-object v0

    invoke-static {v0}, Ld2/k;->g(Ld2/h;)V

    new-instance v0, Ljava/io/File;

    invoke-static {}, Lcom/androlua/LuaApplication;->getInstance()Lcom/androlua/LuaApplication;

    move-result-object v1

    invoke-virtual {v1}, Lcom/androlua/LuaApplication;->getLuaExtDir()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    :goto_1
    iput-object v0, p0, Lcom/androlua/LuaEditActivity;->mDir:Ljava/io/File;

    :cond_5
    :goto_2
    return-void
.end method

.method private isDeleted([B)Z
    .locals 2

    new-instance v0, Lg4/a;

    invoke-direct {v0, p1}, Lg4/a;-><init>([B)V

    :cond_0
    invoke-virtual {v0}, Lg4/a;->a()Z

    move-result p1

    if-nez p1, :cond_1

    const/4 p1, 0x0

    return p1

    :cond_1
    invoke-virtual {v0}, Lg4/a;->b()Lg4/b;

    move-result-object p1

    invoke-virtual {p1}, Lg4/b;->b()I

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p1}, Lg4/b;->a()I

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1
.end method

.method static bridge synthetic j(Lcom/androlua/LuaEditActivity;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/androlua/LuaEditActivity;->path:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic k(Lcom/androlua/LuaEditActivity;Ljava/io/File;)V
    .locals 0

    iput-object p1, p0, Lcom/androlua/LuaEditActivity;->mDir:Ljava/io/File;

    return-void
.end method

.method static bridge synthetic l(Lcom/androlua/LuaEditActivity;Ljava/io/File;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/androlua/LuaEditActivity;->openFile(Ljava/io/File;)V

    return-void
.end method

.method static bridge synthetic m(Lcom/androlua/LuaEditActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/androlua/LuaEditActivity;->readFile()V

    return-void
.end method

.method static bridge synthetic n(Lcom/androlua/LuaEditActivity;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/androlua/LuaEditActivity;->readFile(Ljava/lang/String;)V

    return-void
.end method

.method static bridge synthetic o(Lcom/androlua/LuaEditActivity;I)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/androlua/LuaEditActivity;->readHistory(I)Z

    move-result p0

    return p0
.end method

.method private openFile(Ljava/io/File;)V
    .locals 8

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    const/4 v3, 0x0

    if-eqz v0, :cond_2

    array-length v4, v0

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v4, :cond_2

    aget-object v6, v0, v5

    invoke-virtual {v6}, Ljava/io/File;->isDirectory()Z

    move-result v7

    invoke-virtual {v6}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v6

    if-eqz v7, :cond_1

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_1
    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_2
    new-instance v0, Lk2/p;

    invoke-direct {v0}, Lk2/p;-><init>()V

    invoke-static {v1, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    new-instance v0, Lk2/p;

    invoke-direct {v0}, Lk2/p;-><init>()V

    invoke-static {v2, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    const v0, 0x7f070067

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v3, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const v3, 0x7f07050b

    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    new-instance v2, Lcom/androlua/LuaEditActivity$22;

    invoke-direct {v2, p0, p1, v0}, Lcom/androlua/LuaEditActivity$22;-><init>(Lcom/androlua/LuaEditActivity;Ljava/io/File;[Ljava/lang/String;)V

    invoke-virtual {v1, v0, v2}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f070095

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    new-instance v2, Lcom/androlua/LuaEditActivity$21;

    invoke-direct {v2, p0, p1}, Lcom/androlua/LuaEditActivity$21;-><init>(Lcom/androlua/LuaEditActivity;Ljava/io/File;)V

    const v3, 0x7f0701ac

    invoke-virtual {v1, v3, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    new-instance v2, Lcom/androlua/LuaEditActivity$20;

    invoke-direct {v2, p0, p1}, Lcom/androlua/LuaEditActivity$20;-><init>(Lcom/androlua/LuaEditActivity;Ljava/io/File;)V

    const v3, 0x7f070361

    invoke-virtual {v1, v3, v2}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Dialog;->show()V

    invoke-virtual {v1}, Landroid/app/AlertDialog;->getListView()Landroid/widget/ListView;

    move-result-object v2

    new-instance v3, Lcom/androlua/LuaEditActivity$23;

    invoke-direct {v3, p0, v1, p1, v0}, Lcom/androlua/LuaEditActivity$23;-><init>(Lcom/androlua/LuaEditActivity;Landroid/app/AlertDialog;Ljava/io/File;[Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Landroid/widget/AdapterView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    return-void
.end method

.method private openProjects()V
    .locals 6

    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/androlua/LuaEditActivity;->mProjectDir:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    if-eqz v0, :cond_1

    array-length v2, v0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v4, v0, v3

    invoke-virtual {v4}, Ljava/io/File;->isDirectory()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    new-instance v0, Lk2/p;

    invoke-direct {v0}, Lk2/p;-><init>()V

    invoke-static {v1, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f07050b

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    new-instance v2, Lcom/androlua/LuaEditActivity$18;

    invoke-direct {v2, p0, v0}, Lcom/androlua/LuaEditActivity$18;-><init>(Lcom/androlua/LuaEditActivity;[Ljava/lang/String;)V

    invoke-virtual {v1, v0, v2}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f070095

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Dialog;->show()V

    invoke-virtual {v1}, Landroid/app/AlertDialog;->getListView()Landroid/widget/ListView;

    move-result-object v2

    new-instance v3, Lcom/androlua/LuaEditActivity$19;

    invoke-direct {v3, p0, v1, v0}, Lcom/androlua/LuaEditActivity$19;-><init>(Lcom/androlua/LuaEditActivity;Landroid/app/AlertDialog;[Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Landroid/widget/AdapterView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    return-void
.end method

.method static bridge synthetic p(Lcom/androlua/LuaEditActivity;Landroid/graphics/pdf/PdfRenderer;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/androlua/LuaEditActivity;->readPdf(Landroid/graphics/pdf/PdfRenderer;I)V

    return-void
.end method

.method static bridge synthetic q(Lcom/androlua/LuaEditActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/androlua/LuaEditActivity;->save()V

    return-void
.end method

.method private readDoc(Ljava/io/InputStream;)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/androlua/LuaEditActivity;->mData:Landroid/net/Uri;

    invoke-direct {p0}, Lcom/androlua/LuaEditActivity;->abcdefg()Z

    move-result v0

    if-nez v0, :cond_0

    const p1, 0x7f07037f

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    invoke-virtual {p0, p1}, Lcom/androlua/LuaEditActivity;->extractText(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private readDocx(Ljava/io/InputStream;)Ljava/lang/String;
    .locals 6

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/androlua/LuaEditActivity;->mData:Landroid/net/Uri;

    invoke-direct {p0}, Lcom/androlua/LuaEditActivity;->abcdefg()Z

    move-result v0

    if-nez v0, :cond_0

    const p1, 0x7f07037f

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    new-instance v0, Ljava/lang/String;

    const-string v1, "word/document.xml"

    invoke-static {p1, v1}, Lcom/androlua/LuaUtil;->readZip(Ljava/io/InputStream;Ljava/lang/String;)[B

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/String;-><init>([B)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "<w:p>([\\s\\S]*?)</w:p>|<w:p [^<>]*>([\\s\\S]*?)</w:p>"

    invoke-static {v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    const-string v1, "<w:t>([\\s\\S]*?)</w:t>|<w:t [^<>]*>([\\s\\S]*?)</w:t>"

    invoke-static {v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    :goto_0
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    :goto_1
    invoke-virtual {v2}, Ljava/util/regex/Matcher;->find()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v2}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v3

    const-string v4, "<[^<>]*>"

    const-string v5, ""

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_1
    const-string v2, "\n"

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private readFile()V
    .locals 3

    const-string v0, "main.lua"

    :try_start_0
    invoke-static {}, Ld2/i;->E()Ld2/h;

    move-result-object v1

    invoke-static {v1}, Ld2/k;->g(Ld2/h;)V

    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/androlua/LuaEditActivity;->mDir:Ljava/io/File;

    invoke-direct {v1, v2, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/androlua/LuaEditActivity;->path:Ljava/lang/String;

    iget-object v2, p0, Lcom/androlua/LuaEditActivity;->edit:Landroid/widget/SplitEditView;

    invoke-virtual {v2, v1}, Landroid/widget/SplitEditView;->open(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/androlua/LuaEditActivity;->mName:Ljava/lang/String;

    iget-object v0, p0, Lcom/androlua/LuaEditActivity;->mTitle:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/androlua/LuaEditActivity;->path:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const v2, 0x7f070409

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {p0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    return-void
.end method

.method private readFile(Ljava/io/InputStream;Ljava/lang/String;)V
    .locals 6

    const-string v0, "doc"

    invoke-virtual {p2, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_b

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v0

    const-string v1, "application/msword"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_5

    :cond_0
    const-string v0, "docx"

    invoke-virtual {p2, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_a

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v0

    const-string v1, "application/vnd.openxmlformats-officedocument.wordprocessingml.document"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto/16 :goto_4

    :cond_1
    const-string v0, "pdf"

    invoke-virtual {p2, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_9

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v0

    const-string v1, "application/pdf"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto/16 :goto_3

    :cond_2
    invoke-static {p1}, Lcom/androlua/LuaUtil;->readAll(Ljava/io/InputStream;)[B

    move-result-object p1

    array-length v0, p1

    const/4 v1, 0x3

    if-ge v0, v1, :cond_3

    iget-object v0, p0, Lcom/androlua/LuaEditActivity;->edit:Landroid/widget/SplitEditView;

    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, p1}, Ljava/lang/String;-><init>([B)V

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/SplitEditView;->setText(Ljava/lang/String;)V

    goto :goto_1

    :cond_3
    const/4 v0, 0x0

    aget-byte v1, p1, v0

    const/4 v2, 0x1

    const/4 v3, -0x1

    const/4 v4, -0x2

    if-ne v1, v3, :cond_4

    aget-byte v5, p1, v2

    if-ne v5, v4, :cond_4

    iget-object v0, p0, Lcom/androlua/LuaEditActivity;->edit:Landroid/widget/SplitEditView;

    new-instance v1, Ljava/lang/String;

    const-string v2, "UTF16LE"

    invoke-direct {v1, p1, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    goto :goto_0

    :cond_4
    aget-byte v2, p1, v2

    if-ne v2, v3, :cond_5

    if-ne v1, v4, :cond_5

    iget-object v0, p0, Lcom/androlua/LuaEditActivity;->edit:Landroid/widget/SplitEditView;

    new-instance v1, Ljava/lang/String;

    const-string v2, "UTF16BE"

    invoke-direct {v1, p1, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    goto :goto_0

    :cond_5
    const/16 v3, -0x11

    if-ne v1, v3, :cond_6

    const/16 v1, -0x45

    if-ne v2, v1, :cond_6

    const/4 v1, 0x2

    aget-byte v1, p1, v1

    const/16 v2, -0x41

    if-ne v1, v2, :cond_6

    iget-object v0, p0, Lcom/androlua/LuaEditActivity;->edit:Landroid/widget/SplitEditView;

    new-instance v1, Ljava/lang/String;

    const-string v2, "UTF8"

    invoke-direct {v1, p1, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    goto :goto_0

    :cond_6
    new-instance v1, Lv3/i;

    invoke-direct {v1, v0}, Lv3/i;-><init>(I)V

    new-instance v2, Lcom/androlua/LuaEditActivity$9;

    invoke-direct {v2, p0, p1}, Lcom/androlua/LuaEditActivity$9;-><init>(Lcom/androlua/LuaEditActivity;[B)V

    invoke-virtual {v1, v2}, Lv3/i;->i(Lv3/r;)V

    array-length v2, p1

    invoke-virtual {v1, p1, v2, v0}, Lv3/i;->h([BIZ)Z

    move-result v0

    if-nez v0, :cond_7

    iget-object v0, p0, Lcom/androlua/LuaEditActivity;->edit:Landroid/widget/SplitEditView;

    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, p1}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v0, v2}, Landroid/widget/SplitEditView;->setText(Ljava/lang/String;)V

    :cond_7
    invoke-virtual {v1}, Lv3/v;->a()V

    :goto_1
    const-string p1, "lua"

    invoke-virtual {p2, p1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_8

    invoke-static {}, Ld2/i;->E()Ld2/h;

    move-result-object p1

    goto :goto_2

    :cond_8
    invoke-static {}, Ld2/j;->E()Ld2/h;

    move-result-object p1

    :goto_2
    invoke-static {p1}, Ld2/k;->g(Ld2/h;)V

    goto :goto_7

    :cond_9
    :goto_3
    invoke-static {}, Ld2/j;->E()Ld2/h;

    move-result-object p2

    invoke-static {p2}, Ld2/k;->g(Ld2/h;)V

    invoke-direct {p0, p1}, Lcom/androlua/LuaEditActivity;->readPdf(Ljava/io/InputStream;)V

    goto :goto_7

    :cond_a
    :goto_4
    invoke-static {}, Ld2/j;->E()Ld2/h;

    move-result-object p2

    invoke-static {p2}, Ld2/k;->g(Ld2/h;)V

    iget-object p2, p0, Lcom/androlua/LuaEditActivity;->edit:Landroid/widget/SplitEditView;

    invoke-direct {p0, p1}, Lcom/androlua/LuaEditActivity;->readDocx(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object p1

    goto :goto_6

    :cond_b
    :goto_5
    invoke-static {}, Ld2/j;->E()Ld2/h;

    move-result-object p2

    invoke-static {p2}, Ld2/k;->g(Ld2/h;)V

    iget-object p2, p0, Lcom/androlua/LuaEditActivity;->edit:Landroid/widget/SplitEditView;

    invoke-direct {p0, p1}, Lcom/androlua/LuaEditActivity;->readDoc(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object p1

    :goto_6
    invoke-virtual {p2, p1}, Landroid/widget/SplitEditView;->setText(Ljava/lang/String;)V

    :goto_7
    return-void
.end method

.method private readFile(Ljava/lang/String;)V
    .locals 4

    const/4 v0, 0x0

    :try_start_0
    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/androlua/LuaEditActivity;->mDir:Ljava/io/File;

    invoke-direct {v1, v2, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/androlua/LuaEditActivity;->path:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-string v2, "doc"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    const-string v3, "pdf"

    if-nez v2, :cond_4

    :try_start_1
    const-string v2, "docx"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_4

    invoke-virtual {v1, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_2

    :cond_0
    iget-object v1, p0, Lcom/androlua/LuaEditActivity;->edit:Landroid/widget/SplitEditView;

    iget-object v2, p0, Lcom/androlua/LuaEditActivity;->path:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/SplitEditView;->open(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/androlua/LuaEditActivity;->mName:Ljava/lang/String;

    iget-object p1, p0, Lcom/androlua/LuaEditActivity;->history:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/nirenr/talkman/o$a;

    invoke-virtual {v1}, Lcom/nirenr/talkman/o$a;->b()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/androlua/LuaEditActivity;->path:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/androlua/LuaEditActivity;->edit:Landroid/widget/SplitEditView;

    invoke-virtual {v1}, Lcom/nirenr/talkman/o$a;->a()I

    move-result v1

    invoke-virtual {v2, v1}, Landroid/widget/SplitEditView;->setSelection(I)V

    goto :goto_0

    :cond_2
    iget-object p1, p0, Lcom/androlua/LuaEditActivity;->mTitle:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/androlua/LuaEditActivity;->path:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/androlua/LuaEditActivity;->path:Ljava/lang/String;

    const-string v1, "lua"

    invoke-virtual {p1, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_3

    invoke-static {}, Ld2/i;->E()Ld2/h;

    move-result-object p1

    invoke-static {p1}, Ld2/k;->g(Ld2/h;)V

    iget-object p1, p0, Lcom/androlua/LuaEditActivity;->mRun:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    :cond_3
    invoke-static {}, Ld2/j;->E()Ld2/h;

    move-result-object p1

    invoke-static {p1}, Ld2/k;->g(Ld2/h;)V

    iget-object p1, p0, Lcom/androlua/LuaEditActivity;->mRun:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    :goto_1
    invoke-direct {p0}, Lcom/androlua/LuaEditActivity;->save()V

    goto :goto_4

    :cond_4
    :goto_2
    invoke-virtual {v1, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_5

    invoke-static {}, Lcom/nirenr/talkman/TalkManAccessibilityService;->getInstance()Lcom/nirenr/talkman/TalkManAccessibilityService;

    move-result-object p1

    if-nez p1, :cond_5

    const p1, 0x7f0703df

    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void

    :cond_5
    iget-object p1, p0, Lcom/androlua/LuaEditActivity;->mTitle:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/androlua/LuaEditActivity;->path:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :try_start_2
    new-instance p1, Ljava/io/FileInputStream;

    iget-object v1, p0, Lcom/androlua/LuaEditActivity;->path:Ljava/lang/String;

    invoke-direct {p1, v1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/androlua/LuaEditActivity;->path:Ljava/lang/String;

    invoke-direct {p0, p1, v1}, Lcom/androlua/LuaEditActivity;->readFile(Ljava/io/InputStream;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_3

    :catch_0
    move-exception p1

    :try_start_3
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    iget-object v1, p0, Lcom/androlua/LuaEditActivity;->edit:Landroid/widget/SplitEditView;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroid/widget/SplitEditView;->setText(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    :goto_3
    return-void

    :catch_1
    move-exception p1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const v2, 0x7f070409

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_4
    return-void
.end method

.method private readHistory(I)Z
    .locals 5

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/androlua/LuaEditActivity;->history:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/nirenr/talkman/o$a;

    invoke-virtual {v1}, Lcom/nirenr/talkman/o$a;->b()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/androlua/LuaEditActivity;->path:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-string v2, "doc"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    const/4 v3, 0x1

    const-string v4, "pdf"

    if-nez v2, :cond_2

    :try_start_1
    const-string v2, "docx"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    invoke-virtual {v1, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_1

    :cond_0
    iget-object v1, p0, Lcom/androlua/LuaEditActivity;->edit:Landroid/widget/SplitEditView;

    iget-object v2, p0, Lcom/androlua/LuaEditActivity;->path:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/SplitEditView;->open(Ljava/lang/String;)V

    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/androlua/LuaEditActivity;->path:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/androlua/LuaEditActivity;->mName:Ljava/lang/String;

    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/androlua/LuaEditActivity;->path:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v1

    iput-object v1, p0, Lcom/androlua/LuaEditActivity;->mDir:Ljava/io/File;

    iget-object v1, p0, Lcom/androlua/LuaEditActivity;->edit:Landroid/widget/SplitEditView;

    iget-object v2, p0, Lcom/androlua/LuaEditActivity;->history:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/nirenr/talkman/o$a;

    invoke-virtual {p1}, Lcom/nirenr/talkman/o$a;->a()I

    move-result p1

    invoke-virtual {v1, p1}, Landroid/widget/SplitEditView;->setSelection(I)V

    iget-object p1, p0, Lcom/androlua/LuaEditActivity;->mTitle:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/androlua/LuaEditActivity;->path:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/androlua/LuaEditActivity;->path:Ljava/lang/String;

    const-string v1, "lua"

    invoke-virtual {p1, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-static {}, Ld2/i;->E()Ld2/h;

    move-result-object p1

    invoke-static {p1}, Ld2/k;->g(Ld2/h;)V

    iget-object p1, p0, Lcom/androlua/LuaEditActivity;->mRun:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_1
    invoke-static {}, Ld2/j;->E()Ld2/h;

    move-result-object p1

    invoke-static {p1}, Ld2/k;->g(Ld2/h;)V

    iget-object p1, p0, Lcom/androlua/LuaEditActivity;->mRun:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    :goto_0
    return v3

    :cond_2
    :goto_1
    invoke-virtual {v1, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_3

    invoke-static {}, Lcom/nirenr/talkman/TalkManAccessibilityService;->getInstance()Lcom/nirenr/talkman/TalkManAccessibilityService;

    move-result-object p1

    if-nez p1, :cond_3

    const p1, 0x7f0703df

    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return v0

    :cond_3
    iget-object p1, p0, Lcom/androlua/LuaEditActivity;->mTitle:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/androlua/LuaEditActivity;->path:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :try_start_2
    new-instance p1, Ljava/io/FileInputStream;

    iget-object v1, p0, Lcom/androlua/LuaEditActivity;->path:Ljava/lang/String;

    invoke-direct {p1, v1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/androlua/LuaEditActivity;->path:Ljava/lang/String;

    invoke-direct {p0, p1, v1}, Lcom/androlua/LuaEditActivity;->readFile(Ljava/io/InputStream;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_2

    :catch_0
    move-exception p1

    :try_start_3
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    iget-object v1, p0, Lcom/androlua/LuaEditActivity;->edit:Landroid/widget/SplitEditView;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroid/widget/SplitEditView;->setText(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    :goto_2
    return v3

    :catch_1
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    return v0
.end method

.method private readPdf(Landroid/graphics/pdf/PdfRenderer;I)V
    .locals 10

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/androlua/LuaEditActivity;->mReading:Z

    invoke-static {}, Lcom/nirenr/talkman/TalkManAccessibilityService;->getInstance()Lcom/nirenr/talkman/TalkManAccessibilityService;

    move-result-object v0

    invoke-virtual {p0}, Landroid/app/Activity;->isDestroyed()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object p1, p0, Lcom/androlua/LuaEditActivity;->dlg:Landroid/app/AlertDialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    return-void

    :cond_0
    invoke-virtual {p1}, Landroid/graphics/pdf/PdfRenderer;->getPageCount()I

    move-result v1

    const/4 v2, 0x0

    if-lt p2, v1, :cond_2

    iput-boolean v2, p0, Lcom/androlua/LuaEditActivity;->mReading:Z

    invoke-virtual {p1}, Landroid/graphics/pdf/PdfRenderer;->close()V

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/nirenr/talkman/TalkManAccessibilityService;->playSoundTick()V

    :cond_1
    const p1, 0x7f07040f

    invoke-static {p0, p1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p2

    invoke-virtual {p2}, Landroid/widget/Toast;->show()V

    iget-object p2, p0, Lcom/androlua/LuaEditActivity;->dlg:Landroid/app/AlertDialog;

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/androlua/LuaEditActivity;->dlg:Landroid/app/AlertDialog;

    const/4 p2, -0x1

    invoke-virtual {p1, p2}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object p1

    const p2, 0x104000a

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(I)V

    return-void

    :cond_2
    if-eqz v0, :cond_3

    int-to-double v3, p2

    const-wide/high16 v5, 0x3ff0000000000000L    # 1.0

    mul-double v3, v3, v5

    invoke-virtual {p1}, Landroid/graphics/pdf/PdfRenderer;->getPageCount()I

    move-result v1

    int-to-double v5, v1

    div-double/2addr v3, v5

    const-wide/high16 v5, 0x3fe0000000000000L    # 0.5

    add-double/2addr v3, v5

    double-to-float v1, v3

    invoke-virtual {v0, v1}, Lcom/nirenr/talkman/TalkManAccessibilityService;->playSoundScroll(F)V

    :cond_3
    :try_start_0
    new-instance v0, Lcom/androlua/LuaEditActivity$10;

    invoke-direct {v0, p0, p2, p1}, Lcom/androlua/LuaEditActivity$10;-><init>(Lcom/androlua/LuaEditActivity;ILandroid/graphics/pdf/PdfRenderer;)V

    invoke-virtual {p0, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    invoke-virtual {p1, p2}, Landroid/graphics/pdf/PdfRenderer;->openPage(I)Landroid/graphics/pdf/PdfRenderer$Page;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/pdf/PdfRenderer$Page;->getWidth()I

    move-result v1

    invoke-virtual {v0}, Landroid/graphics/pdf/PdfRenderer$Page;->getHeight()I

    move-result v3

    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v1, v3, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v4

    new-instance v5, Landroid/graphics/Canvas;

    invoke-direct {v5, v4}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    const/16 v6, 0xff

    invoke-virtual {v5, v6, v6, v6, v6}, Landroid/graphics/Canvas;->drawARGB(IIII)V

    const-string v5, "readPdf"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, ""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v7, Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/pdf/PdfRenderer$Page;->getWidth()I

    move-result v8

    invoke-virtual {v0}, Landroid/graphics/pdf/PdfRenderer$Page;->getHeight()I

    move-result v9

    invoke-direct {v7, v2, v2, v8, v9}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v5, Landroid/graphics/Rect;

    invoke-direct {v5, v2, v2, v1, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    const/4 v1, 0x0

    const/4 v2, 0x2

    invoke-virtual {v0, v4, v5, v1, v2}, Landroid/graphics/pdf/PdfRenderer$Page;->render(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Matrix;I)V

    invoke-virtual {v0}, Landroid/graphics/pdf/PdfRenderer$Page;->close()V

    new-instance v0, Lcom/androlua/LuaEditActivity$11;

    invoke-direct {v0, p0, p1, p2}, Lcom/androlua/LuaEditActivity$11;-><init>(Lcom/androlua/LuaEditActivity;Landroid/graphics/pdf/PdfRenderer;I)V

    invoke-static {v4, v0}, Lcom/nirenr/talkman/ai/h;->t(Landroid/graphics/Bitmap;Lcom/nirenr/talkman/ai/OcrResult$OCRListener;)Lcom/androlua/util/AsyncTaskX;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    iget-object p2, p0, Lcom/androlua/LuaEditActivity;->edit:Landroid/widget/SplitEditView;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/widget/SplitEditView;->setText(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method private readPdf(Ljava/io/InputStream;)V
    .locals 8

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/androlua/LuaEditActivity;->mData:Landroid/net/Uri;

    iget-object v1, p0, Lcom/androlua/LuaEditActivity;->edit:Landroid/widget/SplitEditView;

    const-string v2, ""

    invoke-virtual {v1, v2}, Landroid/widget/SplitEditView;->setText(Ljava/lang/String;)V

    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v3, 0x7f0701da

    invoke-virtual {v1, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v3, 0x7f0702df

    invoke-virtual {v1, v3, v0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/androlua/LuaEditActivity;->dlg:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    invoke-direct {p0}, Lcom/androlua/LuaEditActivity;->abcdefg()Z

    move-result v0

    if-nez v0, :cond_0

    const p1, 0x7f07037f

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    iget-object v0, p0, Lcom/androlua/LuaEditActivity;->dlg:Landroid/app/AlertDialog;

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    return-void

    :cond_0
    invoke-static {}, Lcom/nirenr/talkman/TalkManAccessibilityService;->getInstance()Lcom/nirenr/talkman/TalkManAccessibilityService;

    move-result-object v0

    const v3, 0x104000a

    const/4 v4, -0x1

    if-nez v0, :cond_1

    const p1, 0x7f0703df

    invoke-static {p0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    iget-object v0, p0, Lcom/androlua/LuaEditActivity;->dlg:Landroid/app/AlertDialog;

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/androlua/LuaEditActivity;->dlg:Landroid/app/AlertDialog;

    invoke-virtual {p1, v4}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object p1

    invoke-virtual {p1, v3}, Landroid/widget/TextView;->setText(I)V

    return-void

    :cond_1
    const-string v0, "readPdf"

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    const-string v5, "tmp"

    const-string v6, ".pdf"

    invoke-static {v5, v6}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v5

    new-instance v6, Ljava/io/FileOutputStream;

    invoke-direct {v6, v5}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-static {p1, v6}, Lcom/androlua/LuaUtil;->copyFile(Ljava/io/InputStream;Ljava/io/OutputStream;)Z

    invoke-virtual {p1}, Ljava/io/InputStream;->close()V

    invoke-virtual {v6}, Ljava/io/FileOutputStream;->close()V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p1, Landroid/graphics/pdf/PdfRenderer;

    const/high16 v6, 0x10000000

    invoke-static {v5, v6}, Landroid/os/ParcelFileDescriptor;->open(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;

    move-result-object v5

    invoke-direct {p1, v5}, Landroid/graphics/pdf/PdfRenderer;-><init>(Landroid/os/ParcelFileDescriptor;)V

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1}, Landroid/graphics/pdf/PdfRenderer;->getPageCount()I

    move-result v5

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v1

    const v7, 0x7f0701d9

    invoke-virtual {p0, v7, v6}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-static {p0, v6, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/Toast;->show()V

    invoke-direct {p0, p1, v1}, Lcom/androlua/LuaEditActivity;->readPdf(Landroid/graphics/pdf/PdfRenderer;I)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    iget-object v0, p0, Lcom/androlua/LuaEditActivity;->edit:Landroid/widget/SplitEditView;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/SplitEditView;->setText(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/androlua/LuaEditActivity;->dlg:Landroid/app/AlertDialog;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/androlua/LuaEditActivity;->dlg:Landroid/app/AlertDialog;

    invoke-virtual {p1, v4}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object p1

    invoke-virtual {p1, v3}, Landroid/widget/TextView;->setText(I)V

    :goto_0
    return-void
.end method

.method private save()V
    .locals 6

    iget-object v0, p0, Lcom/androlua/LuaEditActivity;->edit:Landroid/widget/SplitEditView;

    invoke-virtual {v0}, Landroid/widget/SplitEditView;->getFilePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/androlua/LuaEditActivity;->path:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/androlua/LuaEditActivity;->saveHistory(Ljava/lang/String;)V

    :cond_0
    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/androlua/LuaEditActivity;->edit:Landroid/widget/SplitEditView;

    invoke-virtual {v1}, Landroid/widget/SplitEditView;->isEdited()Z

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    if-eqz v1, :cond_3

    const v1, 0x7f07059d

    :try_start_1
    iget-object v2, p0, Lcom/androlua/LuaEditActivity;->mData:Landroid/net/Uri;

    if-eqz v2, :cond_1

    new-instance v2, Ljava/io/BufferedWriter;

    new-instance v3, Ljava/io/OutputStreamWriter;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    iget-object v5, p0, Lcom/androlua/LuaEditActivity;->mData:Landroid/net/Uri;

    invoke-virtual {v4, v5}, Landroid/content/ContentResolver;->openOutputStream(Landroid/net/Uri;)Ljava/io/OutputStream;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V

    invoke-direct {v2, v3}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    iget-object v3, p0, Lcom/androlua/LuaEditActivity;->edit:Landroid/widget/SplitEditView;

    invoke-virtual {v3}, Landroid/widget/SplitEditView;->getText()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    invoke-static {p0, v1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    return-void

    :catch_0
    move-exception v2

    :try_start_2
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_1
    iget-object v2, p0, Lcom/androlua/LuaEditActivity;->edit:Landroid/widget/SplitEditView;

    invoke-virtual {v2}, Landroid/widget/SplitEditView;->getFilePath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-direct {p0}, Lcom/androlua/LuaEditActivity;->saveAs()V

    return-void

    :cond_2
    iget-object v2, p0, Lcom/androlua/LuaEditActivity;->edit:Landroid/widget/SplitEditView;

    invoke-virtual {v2}, Landroid/widget/SplitEditView;->save()V

    invoke-static {p0, v1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Landroid/app/Activity;->isDestroyed()Z

    move-result v1

    if-eqz v1, :cond_4

    return-void

    :cond_4
    iget-object v1, p0, Lcom/androlua/LuaEditActivity;->edit:Landroid/widget/SplitEditView;

    invoke-virtual {v1}, Landroid/widget/SplitEditView;->getFilePath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-direct {p0}, Lcom/androlua/LuaEditActivity;->saveAs()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    return-void

    :catch_1
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    const v1, 0x7f07042a

    invoke-static {p0, v1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    invoke-direct {p0}, Lcom/androlua/LuaEditActivity;->saveAs()V

    :cond_5
    :goto_0
    return-void
.end method

.method private saveAs()V
    .locals 5

    iget-object v0, p0, Lcom/androlua/LuaEditActivity;->edit:Landroid/widget/SplitEditView;

    invoke-virtual {v0}, Landroid/widget/SplitEditView;->getText()Ljava/lang/String;

    move-result-object v0

    const-string v1, "\\.[ \r\n]|[^a-zA-Z0-9][\\. ]+|[,!?;\u3002\uff1f\uff01\uff0c\r\n\u201c\u201d\uff1a\uff1b\\?!]+|[ \\.,!?;\u3002\uff1f\uff01\uff0c\r\n\u201c\u201d\uff1a\uff1b\\?!]+"

    invoke-static {v0, v1}, Lk2/g0;->d(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    aget-object v0, v0, v2

    const-string v3, ""

    invoke-virtual {v0, v1, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v4, 0x20

    if-le v1, v4, :cond_0

    invoke-virtual {v0, v2, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    :cond_0
    iget-object v1, p0, Lcom/androlua/LuaEditActivity;->mData:Landroid/net/Uri;

    const-string v2, "\\.\\w*$"

    if-eqz v1, :cond_1

    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/androlua/LuaEditActivity;->mData:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    :goto_0
    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_1
    iget-object v1, p0, Lcom/androlua/LuaEditActivity;->mTitle:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/androlua/LuaEditActivity;->mTitle:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    :goto_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ".txt"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/nirenr/talkman/dialog/EditDialog;

    const v2, 0x7f070304

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/androlua/LuaEditActivity$8;

    invoke-direct {v3, p0}, Lcom/androlua/LuaEditActivity$8;-><init>(Lcom/androlua/LuaEditActivity;)V

    invoke-direct {v1, p0, v2, v0, v3}, Lcom/nirenr/talkman/dialog/EditDialog;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/nirenr/talkman/dialog/EditDialog$EditDialogCallback;)V

    invoke-virtual {v1}, Lcom/nirenr/talkman/dialog/EditDialog;->g()V

    return-void
.end method

.method private saveHistory(Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/androlua/LuaEditActivity;->history:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/nirenr/talkman/o$a;

    invoke-virtual {v1}, Lcom/nirenr/talkman/o$a;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_2

    iget-object v0, p0, Lcom/androlua/LuaEditActivity;->history:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    :cond_2
    iget-object v0, p0, Lcom/androlua/LuaEditActivity;->history:Ljava/util/ArrayList;

    new-instance v1, Lcom/nirenr/talkman/o$a;

    iget-object v2, p0, Lcom/androlua/LuaEditActivity;->edit:Landroid/widget/SplitEditView;

    invoke-virtual {v2}, Landroid/widget/SplitEditView;->getCaretPosition()I

    move-result v2

    invoke-direct {v1, p1, v2}, Lcom/nirenr/talkman/o$a;-><init>(Ljava/lang/String;I)V

    const/4 p1, 0x0

    invoke-virtual {v0, p1, v1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    iget-object p1, p0, Lcom/androlua/LuaEditActivity;->mHistoryPath:Ljava/lang/String;

    iget-object v0, p0, Lcom/androlua/LuaEditActivity;->history:Ljava/util/ArrayList;

    invoke-static {p1, v0}, Lcom/nirenr/talkman/o;->p(Ljava/lang/String;Ljava/util/ArrayList;)V

    return-void
.end method


# virtual methods
.method public extractText(Ljava/io/InputStream;)Ljava/lang/String;
    .locals 11

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v0, Lr3/j;

    invoke-direct {v0, p1}, Lr3/j;-><init>(Ljava/io/InputStream;)V

    invoke-virtual {v0}, Lr3/j;->d()Lr3/a;

    move-result-object p1

    const-string v1, "WordDocument"

    invoke-interface {p1, v1}, Lr3/a;->a(Ljava/lang/String;)Lr3/f;

    move-result-object p1

    check-cast p1, Lr3/c;

    invoke-virtual {v0, v1}, Lr3/j;->c(Ljava/lang/String;)Lr3/d;

    move-result-object v1

    invoke-interface {p1}, Lr3/c;->getSize()I

    move-result p1

    new-array p1, p1, [B

    invoke-virtual {v1, p1}, Lr3/d;->read([B)I

    invoke-virtual {v1}, Lr3/d;->close()V

    const/16 v1, 0xa

    invoke-static {p1, v1}, Lu3/g;->f([BI)S

    move-result v1

    and-int/lit16 v2, v1, 0x100

    if-nez v2, :cond_b

    const/4 v2, 0x2

    invoke-static {p1, v2}, Lu3/g;->f([BI)S

    move-result v2

    packed-switch v2, :pswitch_data_0

    and-int/lit16 v1, v1, 0x200

    const/4 v8, 0x0

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :pswitch_0
    new-instance v0, Lcom/androlua/LuaEditActivity$Word6Extractor;

    invoke-direct {v0}, Lcom/androlua/LuaEditActivity$Word6Extractor;-><init>()V

    invoke-virtual {v0, p1}, Lcom/androlua/LuaEditActivity$Word6Extractor;->extractText([B)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 v1, 0x0

    :goto_0
    const/16 v2, 0x1a2

    invoke-static {p1, v2}, Lu3/g;->b([BI)I

    move-result v9

    if-eqz v1, :cond_1

    const-string v1, "1Table"

    goto :goto_1

    :cond_1
    const-string v1, "0Table"

    :goto_1
    invoke-virtual {v0}, Lr3/j;->d()Lr3/a;

    move-result-object v2

    invoke-interface {v2, v1}, Lr3/a;->a(Ljava/lang/String;)Lr3/f;

    move-result-object v2

    check-cast v2, Lr3/c;

    invoke-interface {v2}, Lr3/c;->getSize()I

    move-result v2

    new-array v10, v2, [B

    invoke-virtual {v0, v1}, Lr3/j;->c(Ljava/lang/String;)Lr3/d;

    move-result-object v0

    invoke-virtual {v0, v10}, Lr3/d;->read([B)I

    invoke-virtual {v0}, Lr3/d;->close()V

    const/16 v0, 0xfa

    invoke-static {p1, v0}, Lu3/g;->b([BI)I

    move-result v5

    const/16 v0, 0xfe

    invoke-static {p1, v0}, Lu3/g;->b([BI)I

    move-result v6

    const/16 v0, 0x18

    invoke-static {p1, v0}, Lu3/g;->b([BI)I

    move-result v0

    new-instance v1, Lp3/a;

    move-object v2, v1

    move-object v3, p1

    move-object v4, v10

    move v7, v0

    invoke-direct/range {v2 .. v7}, Lp3/a;-><init>([B[BIII)V

    new-instance v2, Lp3/e;

    invoke-direct {v2, p1, v10, v9, v0}, Lp3/e;-><init>([B[BII)V

    invoke-virtual {v2}, Lp3/e;->a()Lp3/l;

    move-result-object p1

    invoke-virtual {p1}, Lp3/l;->a()Ljava/util/List;

    move-result-object p1

    invoke-virtual {v1}, Lp3/a;->a()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lp3/k;

    invoke-virtual {v1}, Lp3/j;->b()I

    move-result v2

    invoke-virtual {v1}, Lp3/j;->a()I

    move-result v3

    new-instance v4, Le4/b;

    invoke-direct {v4}, Le4/b;-><init>()V

    :cond_2
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-nez v5, :cond_3

    invoke-virtual {v4}, Le4/b;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_3
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lp3/c;

    invoke-virtual {v5}, Lp3/c;->d()[B

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/androlua/LuaEditActivity;->isDeleted([B)Z

    move-result v6

    if-nez v6, :cond_2

    invoke-virtual {v5}, Lp3/j;->b()I

    move-result v6

    invoke-virtual {v5}, Lp3/j;->a()I

    move-result v5

    :goto_3
    if-lt v6, v3, :cond_5

    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-nez v7, :cond_4

    goto :goto_4

    :cond_4
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lp3/k;

    invoke-virtual {v1}, Lp3/j;->b()I

    move-result v2

    invoke-virtual {v1}, Lp3/j;->a()I

    move-result v3

    goto :goto_3

    :cond_5
    :goto_4
    if-ge v5, v3, :cond_7

    sub-int/2addr v6, v2

    sub-int/2addr v5, v2

    invoke-virtual {v1, v6, v5}, Lp3/k;->e(II)Ljava/lang/String;

    move-result-object v5

    :cond_6
    :goto_5
    invoke-virtual {v4, v5}, Le4/b;->a(Ljava/lang/String;)V

    goto :goto_2

    :cond_7
    if-gt v5, v3, :cond_8

    sub-int/2addr v6, v2

    sub-int/2addr v5, v2

    invoke-virtual {v1, v6, v5}, Lp3/k;->e(II)Ljava/lang/String;

    move-result-object v5

    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_6

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lp3/k;

    invoke-virtual {v1}, Lp3/j;->b()I

    move-result v2

    invoke-virtual {v1}, Lp3/j;->a()I

    move-result v3

    goto :goto_5

    :cond_8
    :goto_6
    if-le v5, v3, :cond_a

    sub-int/2addr v6, v2

    sub-int/2addr v3, v2

    invoke-virtual {v1, v6, v3}, Lp3/k;->e(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Le4/b;->a(Ljava/lang/String;)V

    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_9

    invoke-virtual {v4}, Le4/b;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_9
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lp3/k;

    invoke-virtual {v1}, Lp3/j;->b()I

    move-result v6

    invoke-virtual {v1}, Lp3/j;->a()I

    move-result v3

    move v2, v6

    goto :goto_6

    :cond_a
    sub-int/2addr v5, v2

    invoke-virtual {v1, v8, v5}, Lp3/k;->e(II)Ljava/lang/String;

    move-result-object v5

    goto :goto_5

    :cond_b
    new-instance p1, Le4/a;

    const-string v0, "This document is password protected"

    invoke-direct {p1, v0}, Le4/a;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_data_0
    .packed-switch 0x65
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public onAdd(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    const v0, 0x7f0701f1

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    iget-object p1, p0, Lcom/androlua/LuaEditActivity;->edit:Landroid/widget/SplitEditView;

    invoke-virtual {p1}, Landroid/widget/SplitEditView;->getSelectionEnd()I

    move-result v0

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p2, v2, v1

    const-string p2, "\nif service.cmd(\"%s\")\nreturn true\nend\n"

    invoke-static {p2, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    :goto_0
    invoke-virtual {p1, v0, p2}, Landroid/widget/SplitEditView;->insert(ILjava/lang/String;)V

    goto/16 :goto_1

    :cond_0
    const v0, 0x7f0701f9

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object p1, p0, Lcom/androlua/LuaEditActivity;->edit:Landroid/widget/SplitEditView;

    invoke-virtual {p1}, Landroid/widget/SplitEditView;->getSelectionEnd()I

    move-result v0

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p2, v2, v1

    const-string p2, "\nif service.plugin(\"%s\",node)\nreturn true\nend\n"

    invoke-static {p2, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    :cond_1
    const v0, 0x7f0701fe

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object p1, p0, Lcom/androlua/LuaEditActivity;->edit:Landroid/widget/SplitEditView;

    invoke-virtual {p1}, Landroid/widget/SplitEditView;->getSelectionEnd()I

    move-result v0

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p2, v2, v1

    const-string p2, "\nif service.tool(\"%s\")\nreturn true\nend\n"

    invoke-static {p2, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    :cond_2
    const v0, 0x7f070032

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object p1, p0, Lcom/androlua/LuaEditActivity;->edit:Landroid/widget/SplitEditView;

    invoke-virtual {p1}, Landroid/widget/SplitEditView;->getSelectionEnd()I

    move-result v0

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p2, v2, v1

    const-string p2, "\nif service.startApp(\"%s\")\nreturn true\nend\n"

    invoke-static {p2, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    :cond_3
    const v0, 0x7f07029a

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/androlua/LuaEditActivity;->edit:Landroid/widget/SplitEditView;

    invoke-virtual {p1}, Landroid/widget/SplitEditView;->getSelectionEnd()I

    move-result v0

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p2, v2, v1

    const-string p2, "\nif service.execute(\"%s\")\nreturn true\nend\n"

    invoke-static {p2, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    :cond_4
    :goto_1
    return-void
.end method

.method public onCallback(Ljava/lang/String;)V
    .locals 6

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const-string v0, "\n"

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\nif service.click({\n{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v1, p1

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_2

    aget-object v4, p1, v3

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1

    const-string v4, "},\n{"

    goto :goto_1

    :cond_1
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    aput-object v4, v5, v2

    const-string v4, "\"%s\",\n"

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    :goto_1
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    const-string p1, "}\n})\n"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "return true\n"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "end\n"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/androlua/LuaEditActivity;->edit:Landroid/widget/SplitEditView;

    invoke-virtual {p1}, Landroid/widget/SplitEditView;->getSelectionEnd()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Landroid/widget/SplitEditView;->insert(ILjava/lang/String;)V

    return-void
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    add-int/lit8 p2, p2, 0x1

    packed-switch p2, :pswitch_data_0

    goto/16 :goto_0

    :pswitch_0
    new-instance p1, Lcom/nirenr/talkman/dialog/EditDialog;

    const p2, 0x7f07024c

    invoke-virtual {p0, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    const-string v0, ""

    invoke-direct {p1, p0, p2, v0, p0}, Lcom/nirenr/talkman/dialog/EditDialog;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/nirenr/talkman/dialog/EditDialog$EditDialogCallback;)V

    invoke-virtual {p1}, Lcom/nirenr/talkman/dialog/EditDialog;->g()V

    goto :goto_0

    :pswitch_1
    invoke-static {}, Lcom/androlua/LuaApplication;->getInstance()Lcom/androlua/LuaApplication;

    move-result-object p1

    invoke-virtual {p1}, Lcom/androlua/LuaApplication;->getAllApp()Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p2

    new-array p2, p2, [Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    new-instance p1, Lk2/p;

    invoke-direct {p1}, Lk2/p;-><init>()V

    invoke-static {p2, p1}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    new-instance p1, Lcom/nirenr/talkman/dialog/FileDialog;

    const v0, 0x7f070032

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, p0, p0, v0, p2}, Lcom/nirenr/talkman/dialog/FileDialog;-><init>(Landroid/content/Context;Lcom/nirenr/talkman/dialog/FileDialog$OnAddListener;Ljava/lang/String;[Ljava/lang/String;)V

    goto :goto_0

    :pswitch_2
    new-instance p1, Lcom/nirenr/talkman/dialog/FileDialog;

    const p2, 0x7f0701f1

    invoke-virtual {p0, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p0, p0, p2}, Lcom/nirenr/talkman/dialog/FileDialog;-><init>(Landroid/content/Context;Lcom/nirenr/talkman/dialog/FileDialog$OnAddListener;Ljava/lang/String;)V

    goto :goto_0

    :pswitch_3
    new-instance p1, Lcom/nirenr/talkman/dialog/FileDialog;

    const p2, 0x7f0701fe

    invoke-virtual {p0, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p0, p0, p2}, Lcom/nirenr/talkman/dialog/FileDialog;-><init>(Landroid/content/Context;Lcom/nirenr/talkman/dialog/FileDialog$OnAddListener;Ljava/lang/String;)V

    goto :goto_0

    :pswitch_4
    new-instance p1, Lcom/nirenr/talkman/dialog/FileDialog;

    const p2, 0x7f0701f9

    invoke-virtual {p0, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p0, p0, p2}, Lcom/nirenr/talkman/dialog/FileDialog;-><init>(Landroid/content/Context;Lcom/nirenr/talkman/dialog/FileDialog$OnAddListener;Ljava/lang/String;)V

    goto :goto_0

    :pswitch_5
    invoke-virtual {p0}, Landroid/app/BaseActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f010008

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object p1

    new-instance p2, Lcom/nirenr/talkman/dialog/FileDialog;

    const v0, 0x7f07029a

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    array-length v1, p1

    const/4 v2, 0x5

    invoke-static {p1, v2, v1}, Ljava/util/Arrays;->copyOfRange([Ljava/lang/Object;II)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/String;

    invoke-direct {p2, p0, p0, v0, p1}, Lcom/nirenr/talkman/dialog/FileDialog;-><init>(Landroid/content/Context;Lcom/nirenr/talkman/dialog/FileDialog$OnAddListener;Ljava/lang/String;[Ljava/lang/String;)V

    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 35

    move-object/from16 v1, p0

    invoke-super/range {p0 .. p1}, Landroid/app/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual/range {p0 .. p0}, Landroid/app/BaseActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iput-object v0, v1, Lcom/androlua/LuaEditActivity;->dm:Landroid/util/DisplayMetrics;

    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v2, 0x10

    invoke-virtual {v0, v2}, Landroid/view/Window;->setSoftInputMode(I)V

    invoke-direct/range {p0 .. p0}, Lcom/androlua/LuaEditActivity;->initDir()V

    new-instance v0, Ljava/io/File;

    iget-object v2, v1, Lcom/androlua/LuaEditActivity;->mProjectDir:Ljava/lang/String;

    const-string v3, "history.json"

    invoke-direct {v0, v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/androlua/LuaEditActivity;->mHistoryPath:Ljava/lang/String;

    invoke-static {v0}, Lcom/nirenr/talkman/o;->d(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, v1, Lcom/androlua/LuaEditActivity;->history:Ljava/util/ArrayList;

    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "LuaEditActivity: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "lua"

    invoke-static {v3, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, -0x1

    const/4 v3, 0x0

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_4

    invoke-static {v4}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/io/File;

    const-string v6, "main.lua"

    invoke-direct {v5, v4, v6}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_3

    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v5, v1, Lcom/androlua/LuaEditActivity;->mDir:Ljava/io/File;

    new-instance v4, Ljava/io/File;

    iget-object v5, v1, Lcom/androlua/LuaEditActivity;->mDir:Ljava/io/File;

    invoke-direct {v4, v5, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v1, Lcom/androlua/LuaEditActivity;->path:Ljava/lang/String;

    const/4 v4, 0x0

    :goto_0
    iget-object v5, v1, Lcom/androlua/LuaEditActivity;->history:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v4, v5, :cond_1

    iget-object v5, v1, Lcom/androlua/LuaEditActivity;->history:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/nirenr/talkman/o$a;

    invoke-virtual {v5}, Lcom/nirenr/talkman/o$a;->b()Ljava/lang/String;

    move-result-object v5

    iget-object v6, v1, Lcom/androlua/LuaEditActivity;->path:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    const/4 v4, -0x1

    :goto_1
    if-le v4, v2, :cond_2

    iget-object v5, v1, Lcom/androlua/LuaEditActivity;->history:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/nirenr/talkman/o$a;

    invoke-virtual {v5, v3, v4}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    goto :goto_2

    :cond_2
    iget-object v4, v1, Lcom/androlua/LuaEditActivity;->history:Ljava/util/ArrayList;

    new-instance v5, Lcom/nirenr/talkman/o$a;

    iget-object v6, v1, Lcom/androlua/LuaEditActivity;->path:Ljava/lang/String;

    invoke-direct {v5, v6, v3}, Lcom/nirenr/talkman/o$a;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_3
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_4

    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/File;->isFile()Z

    move-result v5

    if-eqz v5, :cond_4

    iput-object v4, v1, Lcom/androlua/LuaEditActivity;->path:Ljava/lang/String;

    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v4

    iput-object v4, v1, Lcom/androlua/LuaEditActivity;->mDir:Ljava/io/File;

    :cond_4
    :goto_2
    new-instance v4, Ljava/io/File;

    iget-object v5, v1, Lcom/androlua/LuaEditActivity;->mDir:Ljava/io/File;

    const-string v6, "android.json"

    invoke-direct {v4, v5, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Ld2/m;->e(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_3

    :cond_5
    invoke-static/range {p0 .. p0}, Ld2/m;->d(Landroid/content/Context;)V

    :goto_3
    new-instance v4, Landroid/widget/SplitEditView;

    invoke-direct {v4, v1}, Landroid/widget/SplitEditView;-><init>(Landroid/content/Context;)V

    iput-object v4, v1, Lcom/androlua/LuaEditActivity;->edit:Landroid/widget/SplitEditView;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Landroid/widget/SplitEditView;->setShowLineNumbers(Z)V

    iget-object v4, v1, Lcom/androlua/LuaEditActivity;->edit:Landroid/widget/SplitEditView;

    invoke-virtual {v4, v5}, Landroid/widget/SplitEditView;->setAutoComplete(Z)V

    iget-object v4, v1, Lcom/androlua/LuaEditActivity;->edit:Landroid/widget/SplitEditView;

    invoke-virtual {v4, v5}, Landroid/widget/SplitEditView;->setHighlight(Z)V

    iget-object v4, v1, Lcom/androlua/LuaEditActivity;->edit:Landroid/widget/SplitEditView;

    invoke-virtual {v4, v3}, Landroid/widget/SplitEditView;->setWordWrap(Z)V

    iget-object v4, v1, Lcom/androlua/LuaEditActivity;->edit:Landroid/widget/SplitEditView;

    const-class v6, Lcom/androlua/LuaActivity;

    invoke-static {v6}, Lcom/androlua/LuaEditActivity;->getJavaMethods(Ljava/lang/Class;)Ljava/util/ArrayList;

    move-result-object v6

    const-string v7, "activity"

    invoke-virtual {v4, v7, v6}, Landroid/widget/SplitEditView;->addPackage(Ljava/lang/String;Ljava/util/ArrayList;)V

    iget-object v4, v1, Lcom/androlua/LuaEditActivity;->edit:Landroid/widget/SplitEditView;

    const-class v6, Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-static {v6}, Lcom/androlua/LuaEditActivity;->getJavaMethods(Ljava/lang/Class;)Ljava/util/ArrayList;

    move-result-object v6

    const-string v7, "service"

    invoke-virtual {v4, v7, v6}, Landroid/widget/SplitEditView;->addPackage(Ljava/lang/String;Ljava/util/ArrayList;)V

    new-instance v4, Landroid/widget/LinearLayout;

    invoke-direct {v4, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const-string v6, "("

    const-string v7, ")"

    const-string v8, "["

    const-string v9, "]"

    const-string v10, "{"

    const-string v11, "}"

    const-string v12, "\""

    const-string v13, "="

    const-string v14, ":"

    const-string v15, "."

    const-string v16, ","

    const-string v17, "_"

    const-string v18, "+"

    const-string v19, "-"

    const-string v20, "*"

    const-string v21, "/"

    const-string v22, "\\"

    const-string v23, "%"

    const-string v24, "#"

    const-string v25, "^"

    const-string v26, "$"

    const-string v27, "?"

    const-string v28, "&"

    const-string v29, "|"

    const-string v30, "<"

    const-string v31, ">"

    const-string v32, "~"

    const-string v33, ";"

    const-string v34, "\'"

    filled-new-array/range {v6 .. v34}, [Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    :goto_4
    const/16 v8, 0x11

    const/16 v9, 0x1d

    if-ge v7, v9, :cond_6

    aget-object v9, v6, v7

    new-instance v10, Landroid/widget/TextView;

    invoke-direct {v10, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    invoke-virtual {v10, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v10, v8}, Landroid/widget/TextView;->setGravity(I)V

    invoke-virtual {v10, v3, v3, v3, v3}, Landroid/widget/TextView;->setPadding(IIII)V

    const/high16 v8, 0x41800000    # 16.0f

    invoke-virtual {v10, v5, v8}, Landroid/widget/TextView;->setTextSize(IF)V

    new-instance v8, Landroid/view/ViewGroup$LayoutParams;

    const/high16 v9, 0x42100000    # 36.0f

    invoke-direct {v1, v9}, Lcom/androlua/LuaEditActivity;->dp(F)I

    move-result v9

    const/high16 v11, 0x42000000    # 32.0f

    invoke-direct {v1, v11}, Lcom/androlua/LuaEditActivity;->dp(F)I

    move-result v11

    invoke-direct {v8, v9, v11}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v10, v8}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v8, Lcom/androlua/LuaEditActivity$1;

    invoke-direct {v8, v1, v10}, Lcom/androlua/LuaEditActivity$1;-><init>(Lcom/androlua/LuaEditActivity;Landroid/widget/TextView;)V

    invoke-virtual {v10, v8}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v4, v10}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    add-int/lit8 v7, v7, 0x1

    goto :goto_4

    :cond_6
    new-instance v6, Landroid/widget/LinearLayout;

    invoke-direct {v6, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    invoke-virtual {v6, v5}, Landroid/widget/LinearLayout;->setOrientation(I)V

    new-instance v7, Landroid/widget/LinearLayout;

    invoke-direct {v7, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    invoke-virtual {v7, v5}, Landroid/widget/LinearLayout;->setOrientation(I)V

    new-instance v10, Landroid/widget/TextView;

    invoke-direct {v10, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v10, v1, Lcom/androlua/LuaEditActivity;->mTitle:Landroid/widget/TextView;

    sget-object v11, Landroid/text/TextUtils$TruncateAt;->START:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    iget-object v10, v1, Lcom/androlua/LuaEditActivity;->mTitle:Landroid/widget/TextView;

    invoke-virtual {v10, v5}, Landroid/widget/TextView;->setSingleLine(Z)V

    iget-object v10, v1, Lcom/androlua/LuaEditActivity;->mTitle:Landroid/widget/TextView;

    new-instance v11, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v12, -0x2

    invoke-direct {v11, v2, v12}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v7, v10, v11}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v10, Landroid/widget/LinearLayout;

    invoke-direct {v10, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const v11, 0x7f0706c5

    invoke-virtual {v1, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v1, v11, v5}, Lcom/androlua/LuaEditActivity;->createButton(Ljava/lang/String;I)Landroid/view/View;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    const v11, 0x7f07055a

    invoke-virtual {v1, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v11

    const/4 v13, 0x2

    invoke-direct {v1, v11, v13}, Lcom/androlua/LuaEditActivity;->createButton(Ljava/lang/String;I)Landroid/view/View;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    const v11, 0x7f070935

    invoke-virtual {v1, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v11

    const/4 v13, 0x7

    invoke-direct {v1, v11, v13}, Lcom/androlua/LuaEditActivity;->createButton(Ljava/lang/String;I)Landroid/view/View;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    const v13, 0x7f07031e

    invoke-virtual {v1, v13}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v13

    const/16 v14, 0xc

    invoke-direct {v1, v13, v14}, Lcom/androlua/LuaEditActivity;->createButton(Ljava/lang/String;I)Landroid/view/View;

    move-result-object v13

    invoke-virtual {v10, v13}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    const v13, 0x7f07050b

    invoke-virtual {v1, v13}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v13

    const/4 v14, 0x4

    invoke-direct {v1, v13, v14}, Lcom/androlua/LuaEditActivity;->createButton(Ljava/lang/String;I)Landroid/view/View;

    move-result-object v13

    invoke-virtual {v10, v13}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    const v13, 0x7f070599

    invoke-virtual {v1, v13}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v13

    const/4 v14, 0x6

    invoke-direct {v1, v13, v14}, Lcom/androlua/LuaEditActivity;->createButton(Ljava/lang/String;I)Landroid/view/View;

    move-result-object v13

    invoke-virtual {v10, v13}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    const v13, 0x7f0701ac

    invoke-virtual {v1, v13}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v13

    const/4 v14, 0x5

    invoke-direct {v1, v13, v14}, Lcom/androlua/LuaEditActivity;->createButton(Ljava/lang/String;I)Landroid/view/View;

    move-result-object v13

    invoke-virtual {v10, v13}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    iget-boolean v13, v1, Lcom/androlua/LuaEditActivity;->mPlugin:Z

    if-nez v13, :cond_7

    iget-boolean v13, v1, Lcom/androlua/LuaEditActivity;->mTool:Z

    if-nez v13, :cond_7

    iget-boolean v13, v1, Lcom/androlua/LuaEditActivity;->mHelper:Z

    if-eqz v13, :cond_8

    :cond_7
    const v13, 0x7f07050e

    invoke-virtual {v1, v13}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v13

    const/16 v14, 0xd

    invoke-direct {v1, v13, v14}, Lcom/androlua/LuaEditActivity;->createButton(Ljava/lang/String;I)Landroid/view/View;

    move-result-object v13

    invoke-virtual {v10, v13}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    const v13, 0x7f0701b0

    invoke-virtual {v1, v13}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v13

    const/16 v14, 0xb

    invoke-direct {v1, v13, v14}, Lcom/androlua/LuaEditActivity;->createButton(Ljava/lang/String;I)Landroid/view/View;

    move-result-object v13

    invoke-virtual {v10, v13}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    const v13, 0x7f070297

    invoke-virtual {v1, v13}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v13

    const/4 v14, 0x3

    invoke-direct {v1, v13, v14}, Lcom/androlua/LuaEditActivity;->createButton(Ljava/lang/String;I)Landroid/view/View;

    move-result-object v13

    invoke-virtual {v10, v13}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    const v13, 0x7f070288

    invoke-virtual {v1, v13}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v13

    const/16 v14, 0xa

    invoke-direct {v1, v13, v14}, Lcom/androlua/LuaEditActivity;->createButton(Ljava/lang/String;I)Landroid/view/View;

    move-result-object v13

    invoke-virtual {v10, v13}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    const v13, 0x7f0700f2

    invoke-virtual {v1, v13}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v13

    const/16 v14, 0x9

    invoke-direct {v1, v13, v14}, Lcom/androlua/LuaEditActivity;->createButton(Ljava/lang/String;I)Landroid/view/View;

    move-result-object v13

    invoke-virtual {v10, v13}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    :cond_8
    new-instance v13, Landroid/widget/HorizontalScrollView;

    invoke-direct {v13, v1}, Landroid/widget/HorizontalScrollView;-><init>(Landroid/content/Context;)V

    invoke-virtual {v13, v10}, Landroid/widget/HorizontalScrollView;->addView(Landroid/view/View;)V

    new-instance v10, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v10, v2, v12}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v7, v13, v10}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v10, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v10, v2, v12}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v6, v7, v10}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v7, Landroid/widget/LinearLayout;

    invoke-direct {v7, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    new-instance v10, Lcom/androlua/LuaEditActivity$2;

    invoke-direct {v10, v1, v1}, Lcom/androlua/LuaEditActivity$2;-><init>(Lcom/androlua/LuaEditActivity;Landroid/content/Context;)V

    new-instance v14, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v15, 0x3f800000    # 1.0f

    invoke-direct {v14, v2, v12, v15}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v7, v10, v14}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    const/16 v14, 0x1c

    const-string v8, "\u25bc"

    invoke-direct {v1, v8, v14}, Lcom/androlua/LuaEditActivity;->createButton(Ljava/lang/String;I)Landroid/view/View;

    move-result-object v14

    const v5, 0x7f07027b

    invoke-virtual {v1, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v14, v5}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    invoke-virtual {v7, v14}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    const-string v5, "\u25b2"

    invoke-direct {v1, v5, v9}, Lcom/androlua/LuaEditActivity;->createButton(Ljava/lang/String;I)Landroid/view/View;

    move-result-object v9

    const v14, 0x7f07027d

    invoke-virtual {v1, v14}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v9, v14}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    invoke-virtual {v7, v9}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    const/16 v9, 0x8

    invoke-virtual {v7, v9}, Landroid/view/View;->setVisibility(I)V

    new-instance v14, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v14, v2, v12}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v6, v7, v14}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v14, Lcom/androlua/LuaEditActivity$3;

    invoke-direct {v14, v1, v7, v10}, Lcom/androlua/LuaEditActivity$3;-><init>(Lcom/androlua/LuaEditActivity;Landroid/widget/LinearLayout;Landroid/widget/EditText;)V

    invoke-virtual {v11, v14}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v7, v1, Lcom/androlua/LuaEditActivity;->edit:Landroid/widget/SplitEditView;

    new-instance v10, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v10, v2, v2, v15}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v6, v7, v10}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v7, Landroid/widget/LinearLayout;

    invoke-direct {v7, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const v10, 0x7f070596

    invoke-virtual {v1, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v1, v10, v3}, Lcom/androlua/LuaEditActivity;->createButton(Ljava/lang/String;I)Landroid/view/View;

    move-result-object v10

    iput-object v10, v1, Lcom/androlua/LuaEditActivity;->mRun:Landroid/view/View;

    invoke-virtual {v7, v10}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    iget-boolean v10, v1, Lcom/androlua/LuaEditActivity;->mPlugin:Z

    if-eqz v10, :cond_9

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    const-string v11, ""

    aput-object v11, v10, v3

    const v11, 0x7f070308

    invoke-virtual {v1, v11, v10}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    const/16 v11, 0x11

    invoke-direct {v1, v10, v11}, Lcom/androlua/LuaEditActivity;->createButton(Ljava/lang/String;I)Landroid/view/View;

    move-result-object v10

    invoke-virtual {v7, v10}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    :cond_9
    new-instance v10, Landroid/widget/LinearLayout;

    invoke-direct {v10, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const v11, 0x104000d

    invoke-virtual {v1, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v11

    const/16 v14, 0x14

    invoke-direct {v1, v11, v14}, Lcom/androlua/LuaEditActivity;->createButton(Ljava/lang/String;I)Landroid/view/View;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    const v11, 0x1040003

    invoke-virtual {v1, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v11

    const/16 v14, 0x15

    invoke-direct {v1, v11, v14}, Lcom/androlua/LuaEditActivity;->createButton(Ljava/lang/String;I)Landroid/view/View;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    const v11, 0x1040001

    invoke-virtual {v1, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v11

    const/16 v14, 0x16

    invoke-direct {v1, v11, v14}, Lcom/androlua/LuaEditActivity;->createButton(Ljava/lang/String;I)Landroid/view/View;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    const v11, 0x104000b

    invoke-virtual {v1, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v11

    const/16 v14, 0x17

    invoke-direct {v1, v11, v14}, Lcom/androlua/LuaEditActivity;->createButton(Ljava/lang/String;I)Landroid/view/View;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    const-string v11, "\u25c0"

    const/16 v14, 0x18

    invoke-direct {v1, v11, v14}, Lcom/androlua/LuaEditActivity;->createButton(Ljava/lang/String;I)Landroid/view/View;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    const-string v11, "\u25b6"

    const/16 v14, 0x1a

    invoke-direct {v1, v11, v14}, Lcom/androlua/LuaEditActivity;->createButton(Ljava/lang/String;I)Landroid/view/View;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    const/16 v11, 0x19

    invoke-direct {v1, v5, v11}, Lcom/androlua/LuaEditActivity;->createButton(Ljava/lang/String;I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v10, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    const/16 v5, 0x1b

    invoke-direct {v1, v8, v5}, Lcom/androlua/LuaEditActivity;->createButton(Ljava/lang/String;I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v10, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    invoke-virtual {v10, v9}, Landroid/view/View;->setVisibility(I)V

    new-instance v5, Landroid/widget/HorizontalScrollView;

    invoke-direct {v5, v1}, Landroid/widget/HorizontalScrollView;-><init>(Landroid/content/Context;)V

    invoke-virtual {v5, v10}, Landroid/widget/HorizontalScrollView;->addView(Landroid/view/View;)V

    invoke-virtual {v7, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    iget-object v5, v1, Lcom/androlua/LuaEditActivity;->edit:Landroid/widget/SplitEditView;

    new-instance v8, Lcom/androlua/LuaEditActivity$4;

    invoke-direct {v8, v1, v10}, Lcom/androlua/LuaEditActivity$4;-><init>(Lcom/androlua/LuaEditActivity;Landroid/widget/LinearLayout;)V

    invoke-virtual {v5, v8}, Landroid/widget/SplitEditView;->setOnSelectionChangedListener(Lcom/myopicmobile/textwarrior/android/g;)V

    new-instance v5, Landroid/widget/HorizontalScrollView;

    invoke-direct {v5, v1}, Landroid/widget/HorizontalScrollView;-><init>(Landroid/content/Context;)V

    invoke-virtual {v5, v4}, Landroid/widget/HorizontalScrollView;->addView(Landroid/view/View;)V

    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v4, v2, v12}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v7, v5, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v4, v2, v12}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v6, v7, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v1, v6}, Landroid/app/Activity;->setContentView(Landroid/view/View;)V

    iget-object v2, v1, Lcom/androlua/LuaEditActivity;->edit:Landroid/widget/SplitEditView;

    new-instance v4, Lcom/androlua/LuaEditActivity$5;

    invoke-direct {v4, v1, v7, v13}, Lcom/androlua/LuaEditActivity$5;-><init>(Lcom/androlua/LuaEditActivity;Landroid/widget/LinearLayout;Landroid/widget/HorizontalScrollView;)V

    invoke-virtual {v2, v4}, Landroid/widget/SplitEditView;->setOnModeChangedListener(Landroid/widget/SplitEditView$OnModeChangedListener;)V

    iget-object v2, v1, Lcom/androlua/LuaEditActivity;->edit:Landroid/widget/SplitEditView;

    new-instance v4, Lcom/androlua/LuaEditActivity$6;

    invoke-direct {v4, v1}, Lcom/androlua/LuaEditActivity$6;-><init>(Lcom/androlua/LuaEditActivity;)V

    invoke-virtual {v2, v4}, Landroid/widget/SplitEditView;->setOnSaveListener(Landroid/widget/SplitEditView$OnSaveListener;)V

    if-eqz v0, :cond_a

    invoke-virtual {v0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v2

    const-string v4, "content"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    iget-object v2, v1, Lcom/androlua/LuaEditActivity;->path:Ljava/lang/String;

    if-nez v2, :cond_a

    iget-object v2, v1, Lcom/androlua/LuaEditActivity;->mRun:Landroid/view/View;

    invoke-virtual {v2, v9}, Landroid/view/View;->setVisibility(I)V

    iput-object v0, v1, Lcom/androlua/LuaEditActivity;->mData:Landroid/net/Uri;

    :try_start_0
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v2

    invoke-virtual {v0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/androlua/LuaEditActivity;->readFile(Ljava/io/InputStream;Ljava/lang/String;)V

    iget-object v2, v1, Lcom/androlua/LuaEditActivity;->mTitle:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_5

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    iget-object v2, v1, Lcom/androlua/LuaEditActivity;->edit:Landroid/widget/SplitEditView;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/SplitEditView;->setText(Ljava/lang/String;)V

    :goto_5
    invoke-virtual {v5, v9}, Landroid/view/View;->setVisibility(I)V

    return-void

    :cond_a
    invoke-static {}, Lcom/nirenr/talkman/TalkManAccessibilityService;->getInstance()Lcom/nirenr/talkman/TalkManAccessibilityService;

    move-result-object v0

    if-eqz v0, :cond_b

    invoke-virtual {v5, v9}, Landroid/view/View;->setVisibility(I)V

    goto :goto_6

    :cond_b
    invoke-virtual {v5, v3}, Landroid/view/View;->setVisibility(I)V

    :goto_6
    iget-object v0, v1, Lcom/androlua/LuaEditActivity;->path:Ljava/lang/String;

    if-eqz v0, :cond_c

    new-instance v0, Ljava/io/File;

    iget-object v2, v1, Lcom/androlua/LuaEditActivity;->path:Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/androlua/LuaEditActivity;->readFile(Ljava/lang/String;)V

    return-void

    :cond_c
    iget-object v0, v1, Lcom/androlua/LuaEditActivity;->history:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_d

    invoke-direct {v1, v3}, Lcom/androlua/LuaEditActivity;->readHistory(I)Z

    move-result v0

    if-eqz v0, :cond_d

    return-void

    :cond_d
    iget-object v0, v1, Lcom/androlua/LuaEditActivity;->mDir:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    iget-object v2, v1, Lcom/androlua/LuaEditActivity;->mNoteDir:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    iget-object v0, v1, Lcom/androlua/LuaEditActivity;->mDir:Ljava/io/File;

    invoke-direct {v1, v0}, Lcom/androlua/LuaEditActivity;->openFile(Ljava/io/File;)V

    return-void

    :cond_e
    new-instance v0, Ljava/io/File;

    iget-object v2, v1, Lcom/androlua/LuaEditActivity;->mProjectDir:Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_f

    array-length v0, v0

    if-lez v0, :cond_f

    invoke-direct/range {p0 .. p0}, Lcom/androlua/LuaEditActivity;->openProjects()V

    return-void

    :cond_f
    invoke-direct/range {p0 .. p0}, Lcom/androlua/LuaEditActivity;->readFile()V

    return-void
.end method

.method protected onDestroy()V
    .locals 0

    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/View;)V
    .locals 8

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const v0, 0x7f07042a

    const v1, 0x7f070095

    const-string v2, ""

    const/4 v3, 0x0

    const/4 v4, 0x0

    packed-switch p1, :pswitch_data_0

    :pswitch_0
    goto/16 :goto_4

    :pswitch_1
    iget-object p1, p0, Lcom/androlua/LuaEditActivity;->edit:Landroid/widget/SplitEditView;

    invoke-virtual {p1}, Landroid/widget/SplitEditView;->findBack()V

    goto/16 :goto_4

    :pswitch_2
    iget-object p1, p0, Lcom/androlua/LuaEditActivity;->edit:Landroid/widget/SplitEditView;

    invoke-virtual {p1}, Landroid/widget/SplitEditView;->findNext()V

    goto/16 :goto_4

    :pswitch_3
    iget-object p1, p0, Lcom/androlua/LuaEditActivity;->edit:Landroid/widget/SplitEditView;

    invoke-virtual {p1}, Landroid/widget/SplitEditView;->moveCaretDown()V

    goto/16 :goto_4

    :pswitch_4
    iget-object p1, p0, Lcom/androlua/LuaEditActivity;->edit:Landroid/widget/SplitEditView;

    invoke-virtual {p1}, Landroid/widget/SplitEditView;->moveCaretRight()V

    goto/16 :goto_4

    :pswitch_5
    iget-object p1, p0, Lcom/androlua/LuaEditActivity;->edit:Landroid/widget/SplitEditView;

    invoke-virtual {p1}, Landroid/widget/SplitEditView;->moveCaretUp()V

    goto/16 :goto_4

    :pswitch_6
    iget-object p1, p0, Lcom/androlua/LuaEditActivity;->edit:Landroid/widget/SplitEditView;

    invoke-virtual {p1}, Landroid/widget/SplitEditView;->moveCaretLeft()V

    goto/16 :goto_4

    :pswitch_7
    iget-object p1, p0, Lcom/androlua/LuaEditActivity;->edit:Landroid/widget/SplitEditView;

    invoke-virtual {p1}, Landroid/widget/SplitEditView;->paste()V

    goto/16 :goto_4

    :pswitch_8
    iget-object p1, p0, Lcom/androlua/LuaEditActivity;->edit:Landroid/widget/SplitEditView;

    invoke-virtual {p1}, Landroid/widget/SplitEditView;->copy()V

    goto/16 :goto_4

    :pswitch_9
    iget-object p1, p0, Lcom/androlua/LuaEditActivity;->edit:Landroid/widget/SplitEditView;

    invoke-virtual {p1}, Landroid/widget/SplitEditView;->cut()V

    goto/16 :goto_4

    :pswitch_a
    iget-object p1, p0, Lcom/androlua/LuaEditActivity;->edit:Landroid/widget/SplitEditView;

    invoke-virtual {p1}, Landroid/widget/SplitEditView;->selectAll()V

    goto/16 :goto_4

    :pswitch_b
    new-instance p1, Landroid/app/AlertDialog$Builder;

    invoke-direct {p1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x1

    new-array v5, v0, [Ljava/lang/Object;

    aput-object v2, v5, v4

    const v2, 0x7f070308

    invoke-virtual {p0, v2, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    const/4 v5, 0x6

    new-array v5, v5, [Ljava/lang/String;

    new-array v6, v0, [Ljava/lang/Object;

    const v7, 0x7f07029a

    invoke-virtual {p0, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v4

    invoke-virtual {p0, v2, v6}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v4

    new-array v6, v0, [Ljava/lang/Object;

    const v7, 0x7f0701f9

    invoke-virtual {p0, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v4

    invoke-virtual {p0, v2, v6}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v0

    new-array v6, v0, [Ljava/lang/Object;

    const v7, 0x7f0701fe

    invoke-virtual {p0, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v4

    invoke-virtual {p0, v2, v6}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x2

    aput-object v6, v5, v7

    new-array v6, v0, [Ljava/lang/Object;

    const v7, 0x7f0701f1

    invoke-virtual {p0, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v4

    invoke-virtual {p0, v2, v6}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x3

    aput-object v6, v5, v7

    new-array v6, v0, [Ljava/lang/Object;

    const v7, 0x7f070032

    invoke-virtual {p0, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v4

    invoke-virtual {p0, v2, v6}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x4

    aput-object v6, v5, v7

    new-array v0, v0, [Ljava/lang/Object;

    const v6, 0x7f07004e

    invoke-virtual {p0, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v0, v4

    invoke-virtual {p0, v2, v0}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x5

    aput-object v0, v5, v2

    invoke-virtual {p1, v5, p0}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    goto/16 :goto_1

    :pswitch_c
    invoke-direct {p0}, Lcom/androlua/LuaEditActivity;->save()V

    invoke-direct {p0}, Lcom/androlua/LuaEditActivity;->openProjects()V

    goto/16 :goto_4

    :pswitch_d
    iget-object p1, p0, Lcom/androlua/LuaEditActivity;->history:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    new-array p1, p1, [Ljava/lang/String;

    :goto_0
    iget-object v0, p0, Lcom/androlua/LuaEditActivity;->history:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v4, v0, :cond_0

    iget-object v0, p0, Lcom/androlua/LuaEditActivity;->history:Ljava/util/ArrayList;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nirenr/talkman/o$a;

    invoke-virtual {v0}, Lcom/nirenr/talkman/o$a;->b()Ljava/lang/String;

    move-result-object v0

    aput-object v0, p1, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f07031e

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v2, Lcom/androlua/LuaEditActivity$13;

    invoke-direct {v2, p0}, Lcom/androlua/LuaEditActivity$13;-><init>(Lcom/androlua/LuaEditActivity;)V

    invoke-virtual {v0, p1, v2}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    goto :goto_1

    :pswitch_e
    invoke-direct {p0}, Lcom/androlua/LuaEditActivity;->save()V

    new-instance p1, Lcom/nirenr/talkman/dialog/EditDialog;

    const v0, 0x7f070306

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/androlua/LuaEditActivity$15;

    invoke-direct {v1, p0}, Lcom/androlua/LuaEditActivity$15;-><init>(Lcom/androlua/LuaEditActivity;)V

    invoke-direct {p1, p0, v0, v2, v1}, Lcom/nirenr/talkman/dialog/EditDialog;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/nirenr/talkman/dialog/EditDialog$EditDialogCallback;)V

    goto/16 :goto_3

    :pswitch_f
    iget-object p1, p0, Lcom/androlua/LuaEditActivity;->edit:Landroid/widget/SplitEditView;

    invoke-virtual {p1}, Landroid/widget/SplitEditView;->getText()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ld2/a;->c(Ljava/lang/CharSequence;)[Ljava/lang/String;

    move-result-object p1

    new-instance v0, Lk2/p;

    invoke-direct {v0}, Lk2/p;-><init>()V

    invoke-static {p1, v0}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    array-length v0, p1

    new-array v0, v0, [Z

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v4, Landroid/app/AlertDialog$Builder;

    invoke-direct {v4, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v5, 0x7f070288

    invoke-virtual {v4, v5}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    new-instance v5, Lcom/androlua/LuaEditActivity$17;

    invoke-direct {v5, p0, v0}, Lcom/androlua/LuaEditActivity$17;-><init>(Lcom/androlua/LuaEditActivity;[Z)V

    invoke-virtual {v4, p1, v0, v5}, Landroid/app/AlertDialog$Builder;->setMultiChoiceItems([Ljava/lang/CharSequence;[ZLandroid/content/DialogInterface$OnMultiChoiceClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    new-instance v5, Lcom/androlua/LuaEditActivity$16;

    invoke-direct {v5, p0, p1, v0, v2}, Lcom/androlua/LuaEditActivity$16;-><init>(Lcom/androlua/LuaEditActivity;[Ljava/lang/String;[ZLjava/lang/StringBuilder;)V

    const p1, 0x1040001

    invoke-virtual {v4, p1, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    :goto_1
    invoke-virtual {p1, v1, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    goto :goto_2

    :pswitch_10
    new-instance p1, Landroid/app/AlertDialog$Builder;

    invoke-direct {p1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v0, 0x7f0700f2

    invoke-virtual {p1, v0}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    const v0, 0x7f010005

    invoke-virtual {p1, v0, v3}, Landroid/app/AlertDialog$Builder;->setItems(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    const v0, 0x104000a

    invoke-virtual {p1, v0, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    :goto_2
    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    goto/16 :goto_4

    :pswitch_11
    iget-object p1, p0, Lcom/androlua/LuaEditActivity;->edit:Landroid/widget/SplitEditView;

    invoke-virtual {p1}, Landroid/widget/SplitEditView;->search()V

    goto/16 :goto_4

    :pswitch_12
    :try_start_0
    invoke-direct {p0}, Lcom/androlua/LuaEditActivity;->save()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_4

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    invoke-static {p0, v0, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    goto/16 :goto_4

    :pswitch_13
    invoke-direct {p0}, Lcom/androlua/LuaEditActivity;->save()V

    new-instance p1, Lcom/nirenr/talkman/dialog/EditDialog;

    const v0, 0x7f070304

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/androlua/LuaEditActivity$14;

    invoke-direct {v1, p0}, Lcom/androlua/LuaEditActivity$14;-><init>(Lcom/androlua/LuaEditActivity;)V

    invoke-direct {p1, p0, v0, v2, v1}, Lcom/nirenr/talkman/dialog/EditDialog;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/nirenr/talkman/dialog/EditDialog$EditDialogCallback;)V

    :goto_3
    invoke-virtual {p1}, Lcom/nirenr/talkman/dialog/EditDialog;->g()V

    goto/16 :goto_4

    :pswitch_14
    iget-object p1, p0, Lcom/androlua/LuaEditActivity;->edit:Landroid/widget/SplitEditView;

    invoke-virtual {p1}, Landroid/widget/SplitEditView;->getFilePath()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_1

    invoke-direct {p0}, Lcom/androlua/LuaEditActivity;->save()V

    :cond_1
    iget-object p1, p0, Lcom/androlua/LuaEditActivity;->mDir:Ljava/io/File;

    invoke-direct {p0, p1}, Lcom/androlua/LuaEditActivity;->openFile(Ljava/io/File;)V

    goto/16 :goto_4

    :pswitch_15
    iget-object p1, p0, Lcom/androlua/LuaEditActivity;->edit:Landroid/widget/SplitEditView;

    invoke-virtual {p1}, Landroid/widget/SplitEditView;->format()V

    goto/16 :goto_4

    :pswitch_16
    iget-object p1, p0, Lcom/androlua/LuaEditActivity;->edit:Landroid/widget/SplitEditView;

    invoke-virtual {p1}, Landroid/widget/SplitEditView;->redo()V

    goto/16 :goto_4

    :pswitch_17
    iget-object p1, p0, Lcom/androlua/LuaEditActivity;->edit:Landroid/widget/SplitEditView;

    invoke-virtual {p1}, Landroid/widget/SplitEditView;->undo()V

    goto/16 :goto_4

    :pswitch_18
    :try_start_1
    iget-object p1, p0, Lcom/androlua/LuaEditActivity;->edit:Landroid/widget/SplitEditView;

    invoke-virtual {p1}, Landroid/widget/SplitEditView;->save()V

    iget-boolean p1, p0, Lcom/androlua/LuaEditActivity;->mHelper:Z

    if-eqz p1, :cond_2

    const p1, 0x7f070450

    invoke-static {p0, p1, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    goto :goto_4

    :cond_2
    iget-boolean p1, p0, Lcom/androlua/LuaEditActivity;->mPlugin:Z

    if-eqz p1, :cond_4

    invoke-static {}, Lcom/nirenr/talkman/TalkManAccessibilityService;->getInstance()Lcom/nirenr/talkman/TalkManAccessibilityService;

    move-result-object p1

    if-nez p1, :cond_3

    const p1, 0x7f07040c

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void

    :cond_3
    invoke-virtual {p1}, Lcom/nirenr/talkman/TalkManAccessibilityService;->toHome()V

    invoke-virtual {p1}, Lcom/nirenr/talkman/TalkManAccessibilityService;->getHandler()Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Lcom/androlua/LuaEditActivity$12;

    invoke-direct {v2, p0, p1}, Lcom/androlua/LuaEditActivity$12;-><init>(Lcom/androlua/LuaEditActivity;Lcom/nirenr/talkman/TalkManAccessibilityService;)V

    const-wide/16 v5, 0x3e8

    invoke-virtual {v1, v2, v5, v6}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_4

    :cond_4
    new-instance p1, Landroid/content/Intent;

    const-class v1, Lcom/androlua/LuaActivity;

    invoke-direct {p1, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object v1, p0, Lcom/androlua/LuaEditActivity;->mDir:Ljava/io/File;

    invoke-static {v1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_4

    :catch_1
    move-exception p1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ": "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_4
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_0
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_b
        :pswitch_0
        :pswitch_0
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method protected onPause()V
    .locals 0

    invoke-super {p0}, Landroid/app/BaseActivity;->onPause()V

    return-void
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 0

    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V

    invoke-direct {p0}, Lcom/androlua/LuaEditActivity;->readFile()V

    return-void
.end method

.method protected onResume()V
    .locals 0

    invoke-super {p0}, Landroid/app/BaseActivity;->onResume()V

    return-void
.end method

.method protected onStop()V
    .locals 1

    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    iget-object v0, p0, Lcom/androlua/LuaEditActivity;->edit:Landroid/widget/SplitEditView;

    invoke-virtual {v0}, Landroid/widget/SplitEditView;->isEdited()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/androlua/LuaEditActivity;->edit:Landroid/widget/SplitEditView;

    invoke-virtual {v0}, Landroid/widget/SplitEditView;->getFilePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/androlua/LuaEditActivity;->path:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/androlua/LuaEditActivity;->saveHistory(Ljava/lang/String;)V

    :cond_0
    return-void

    :cond_1
    iget-boolean v0, p0, Lcom/androlua/LuaEditActivity;->mReading:Z

    if-nez v0, :cond_2

    invoke-direct {p0}, Lcom/androlua/LuaEditActivity;->save()V

    :cond_2
    return-void
.end method
