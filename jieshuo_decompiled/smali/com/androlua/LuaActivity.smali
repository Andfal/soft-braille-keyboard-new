.class public Lcom/androlua/LuaActivity;
.super Landroid/app/Activity;
.source "SourceFile"

# interfaces
.implements Lcom/androlua/LuaBroadcastReceiver$OnReceiveListerer;
.implements Lcom/androlua/LuaContext;
.implements Landroid/widget/AdapterView$OnItemClickListener;
.implements Landroid/widget/AdapterView$OnItemLongClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/androlua/LuaActivity$MainHandler;
    }
.end annotation


# static fields
.field private static final DATA:Ljava/lang/String; = "data"

.field private static final NAME:Ljava/lang/String; = "name"

.field private static final PATH:Ljava/lang/String; = "path"

.field private static prjCache:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private L:Lcom/luajava/LuaState;

.field private adapter:Landroid/widget/ArrayListAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/widget/ArrayListAdapter<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private appList:[Ljava/lang/String;

.field private gclist:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/androlua/LuaGcable;",
            ">;"
        }
    .end annotation
.end field

.field public handler:Landroid/os/Handler;

.field private isCreate:Ljava/lang/Boolean;

.field private isSetViewed:Z

.field private isUpdata:Z

.field private lastShow:J

.field private layout:Landroid/widget/LinearLayout;

.field private libDir:Ljava/lang/String;

.field private list:Landroid/widget/ListView;

.field private localDir:Ljava/lang/String;

.field public luaCpath:Ljava/lang/String;

.field public luaDir:Ljava/lang/String;

.field private luaExtDir:Ljava/lang/String;

.field private luaLpath:Ljava/lang/String;

.field private luaMdDir:Ljava/lang/String;

.field private luaPath:Ljava/lang/String;

.field private mDebug:Z

.field private mHeight:I

.field private mListView:Landroid/widget/ListView;

.field private mLuaDexLoader:Lcom/androlua/LuaDexLoader;

.field private mOnKeyDown:Lcom/luajava/LuaObject;

.field private mOnKeyLongPress:Lcom/luajava/LuaObject;

.field private mOnKeyUp:Lcom/luajava/LuaObject;

.field private mOnTouchEvent:Lcom/luajava/LuaObject;

.field private mReceiver:Lcom/androlua/LuaBroadcastReceiver;

.field private mResources:Landroid/content/res/Resources;

.field private mTheme:Landroid/content/res/Resources$Theme;

.field private mView:Landroid/view/View;

.field private mWidth:I

.field private odexDir:Ljava/lang/String;

.field private optionsMenu:Landroid/view/Menu;

.field private pageName:Ljava/lang/String;

.field public status:Landroid/widget/TextView;

.field private toast:Landroid/widget/Toast;

.field private toastbuilder:Ljava/lang/StringBuilder;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/androlua/LuaActivity;->prjCache:Ljava/util/ArrayList;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/androlua/LuaActivity;->toastbuilder:Ljava/lang/StringBuilder;

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/androlua/LuaActivity;->isCreate:Ljava/lang/Boolean;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/androlua/LuaActivity;->mDebug:Z

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/androlua/LuaActivity;->gclist:Ljava/util/ArrayList;

    const-string v0, "main"

    iput-object v0, p0, Lcom/androlua/LuaActivity;->pageName:Ljava/lang/String;

    return-void
.end method

.method static bridge synthetic a(Lcom/androlua/LuaActivity;)Landroid/widget/ArrayListAdapter;
    .locals 0

    iget-object p0, p0, Lcom/androlua/LuaActivity;->adapter:Landroid/widget/ArrayListAdapter;

    return-object p0
.end method

.method static bridge synthetic b(Lcom/androlua/LuaActivity;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/androlua/LuaActivity;->mDebug:Z

    return p0
.end method

.method private biaozhu(I[Ljava/io/File;)V
    .locals 4

    aget-object v0, p2, p1

    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ".txt"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " ex "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/androlua/LuaActivity;->sendMsg(Ljava/lang/String;)V

    add-int/lit8 p1, p1, 0x1

    invoke-direct {p0, p1, p2}, Lcom/androlua/LuaActivity;->biaozhu(I[Ljava/io/File;)V

    return-void

    :cond_0
    :try_start_0
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/androlua/LuaBitmap;->getLocalBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v1

    new-instance v2, Lcom/androlua/LuaActivity$1;

    invoke-direct {v2, p0, p1, v0, p2}, Lcom/androlua/LuaActivity$1;-><init>(Lcom/androlua/LuaActivity;ILjava/io/File;[Ljava/io/File;)V

    const/16 v3, 0xc

    invoke-static {v3, v1, v2}, Lcom/nirenr/talkman/ai/h;->j(ILandroid/graphics/Bitmap;Lcom/nirenr/talkman/ai/OcrResult$OCRListener;)Lcom/androlua/util/AsyncTaskX;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " er "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/androlua/LuaActivity;->sendMsg(Ljava/lang/String;)V

    add-int/lit8 p1, p1, 0x1

    invoke-direct {p0, p1, p2}, Lcom/androlua/LuaActivity;->biaozhu(I[Ljava/io/File;)V

    :goto_0
    return-void
.end method

.method static bridge synthetic c(Lcom/androlua/LuaActivity;I[Ljava/io/File;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/androlua/LuaActivity;->biaozhu(I[Ljava/io/File;)V

    return-void
.end method

.method static bridge synthetic d(Lcom/androlua/LuaActivity;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/androlua/LuaActivity;->setField(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method private errorReason(I)Ljava/lang/String;
    .locals 2

    packed-switch p1, :pswitch_data_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown error "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :pswitch_0
    const-string p1, "error error"

    return-object p1

    :pswitch_1
    const-string p1, "GC error"

    return-object p1

    :pswitch_2
    const-string p1, "Out of memory"

    return-object p1

    :pswitch_3
    const-string p1, "Syntax error"

    return-object p1

    :pswitch_4
    const-string p1, "Runtime error"

    return-object p1

    :pswitch_5
    const-string p1, "Yield error"

    return-object p1

    nop

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

.method private getAllApp()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lcom/androlua/LuaApplication;->getInstance()Lcom/androlua/LuaApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/androlua/LuaApplication;->getAllApp()Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method private getAllApp2()V
    .locals 6

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.MAIN"

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const-string v2, "android.intent.category.LAUNCHER"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v1

    new-instance v3, Landroid/content/pm/ResolveInfo$DisplayNameComparator;

    invoke-direct {v3, v0}, Landroid/content/pm/ResolveInfo$DisplayNameComparator;-><init>(Landroid/content/pm/PackageManager;)V

    invoke-static {v1, v3}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    new-array v4, v3, [Ljava/lang/String;

    iput-object v4, p0, Lcom/androlua/LuaActivity;->appList:[Ljava/lang/String;

    :goto_0
    if-ge v2, v3, :cond_0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/ResolveInfo;

    iget-object v4, v4, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v0, v4}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v4

    iget-object v5, p0, Lcom/androlua/LuaActivity;->appList:[Ljava/lang/String;

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v5, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private getType(Ljava/io/File;)Ljava/lang/String;
    .locals 2

    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x2e

    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    if-ltz v0, :cond_0

    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p1

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {}, Landroid/webkit/MimeTypeMap;->getSingleton()Landroid/webkit/MimeTypeMap;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/webkit/MimeTypeMap;->getMimeTypeFromExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    return-object p1

    :cond_0
    const-string p1, "application/octet-stream"

    return-object p1
.end method

.method private initENV()V
    .locals 5

    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/androlua/LuaActivity;->luaDir:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/init.lua"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/androlua/LuaActivity;->L:Lcom/luajava/LuaState;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/androlua/LuaActivity;->luaDir:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/luajava/LuaState;->b(Ljava/lang/String;)I

    move-result v0

    const/4 v1, -0x1

    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/androlua/LuaActivity;->L:Lcom/luajava/LuaState;

    invoke-virtual {v0}, Lcom/luajava/LuaState;->L()V

    iget-object v0, p0, Lcom/androlua/LuaActivity;->L:Lcom/luajava/LuaState;

    invoke-virtual {v0, v1}, Lcom/luajava/LuaState;->s(I)Lcom/luajava/LuaObject;

    move-result-object v0

    iget-object v2, p0, Lcom/androlua/LuaActivity;->L:Lcom/luajava/LuaState;

    const/4 v3, -0x2

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Lcom/luajava/LuaState;->q0(II)Ljava/lang/String;

    iget-object v2, p0, Lcom/androlua/LuaActivity;->L:Lcom/luajava/LuaState;

    const/4 v3, 0x0

    invoke-virtual {v2, v3, v3, v3}, Lcom/luajava/LuaState;->P(III)I

    move-result v2

    if-nez v2, :cond_5

    const-string v1, "appname"

    invoke-virtual {v0, v1}, Lcom/luajava/LuaObject;->getField(Ljava/lang/String;)Lcom/luajava/LuaObject;

    move-result-object v1

    invoke-virtual {v1}, Lcom/luajava/LuaObject;->isString()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v1}, Lcom/luajava/LuaObject;->getString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/androlua/LuaActivity;->setTitle(Ljava/lang/CharSequence;)V

    :cond_1
    const-string v1, "debugmode"

    invoke-virtual {v0, v1}, Lcom/luajava/LuaObject;->getField(Ljava/lang/String;)Lcom/luajava/LuaObject;

    move-result-object v1

    invoke-virtual {v1}, Lcom/luajava/LuaObject;->isBoolean()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {v1}, Lcom/luajava/LuaObject;->getBoolean()Z

    move-result v1

    iput-boolean v1, p0, Lcom/androlua/LuaActivity;->mDebug:Z

    :cond_2
    const-string v1, "theme"

    invoke-virtual {v0, v1}, Lcom/luajava/LuaObject;->getField(Ljava/lang/String;)Lcom/luajava/LuaObject;

    move-result-object v0

    invoke-virtual {v0}, Lcom/luajava/LuaObject;->isNumber()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {v0}, Lcom/luajava/LuaObject;->getInteger()J

    move-result-wide v0

    long-to-int v1, v0

    invoke-virtual {p0, v1}, Landroid/content/Context;->setTheme(I)V

    goto :goto_0

    :cond_3
    invoke-virtual {v0}, Lcom/luajava/LuaObject;->isString()Z

    move-result v1

    if-eqz v1, :cond_4

    const-class v1, Landroid/R$style;

    invoke-virtual {v0}, Lcom/luajava/LuaObject;->getString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/content/Context;->setTheme(I)V

    :cond_4
    :goto_0
    return-void

    :cond_5
    move v0, v2

    :cond_6
    new-instance v2, Lcom/luajava/LuaException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0, v0}, Lcom/androlua/LuaActivity;->errorReason(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ": "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/androlua/LuaActivity;->L:Lcom/luajava/LuaState;

    invoke-virtual {v0, v1}, Lcom/luajava/LuaState;->v0(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Lcom/luajava/LuaException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/androlua/LuaActivity;->sendMsg(Ljava/lang/String;)V

    return-void
.end method

.method private initLua()V
    .locals 4

    invoke-static {}, Lcom/luajava/LuaStateFactory;->c()Lcom/luajava/LuaState;

    move-result-object v0

    iput-object v0, p0, Lcom/androlua/LuaActivity;->L:Lcom/luajava/LuaState;

    invoke-virtual {v0}, Lcom/luajava/LuaState;->O()V

    iget-object v0, p0, Lcom/androlua/LuaActivity;->L:Lcom/luajava/LuaState;

    invoke-virtual {v0, p0}, Lcom/luajava/LuaState;->X(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/androlua/LuaActivity;->L:Lcom/luajava/LuaState;

    const-string v1, "activity"

    invoke-virtual {v0, v1}, Lcom/luajava/LuaState;->m0(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/androlua/LuaActivity;->L:Lcom/luajava/LuaState;

    invoke-virtual {v0, v1}, Lcom/luajava/LuaState;->p(Ljava/lang/String;)I

    iget-object v0, p0, Lcom/androlua/LuaActivity;->L:Lcom/luajava/LuaState;

    const-string v1, "this"

    invoke-virtual {v0, v1}, Lcom/luajava/LuaState;->m0(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/androlua/LuaActivity;->L:Lcom/luajava/LuaState;

    invoke-virtual {v0, p0}, Lcom/luajava/LuaState;->S(Lcom/androlua/LuaContext;)V

    iget-object v0, p0, Lcom/androlua/LuaActivity;->L:Lcom/luajava/LuaState;

    invoke-static {}, Lcom/nirenr/talkman/TalkManAccessibilityService;->getInstance()Lcom/nirenr/talkman/TalkManAccessibilityService;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/luajava/LuaState;->X(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/androlua/LuaActivity;->L:Lcom/luajava/LuaState;

    const-string v1, "service"

    invoke-virtual {v0, v1}, Lcom/luajava/LuaState;->m0(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/androlua/LuaActivity;->L:Lcom/luajava/LuaState;

    const-string v1, "luajava"

    invoke-virtual {v0, v1}, Lcom/luajava/LuaState;->p(Ljava/lang/String;)I

    iget-object v0, p0, Lcom/androlua/LuaActivity;->L:Lcom/luajava/LuaState;

    iget-object v1, p0, Lcom/androlua/LuaActivity;->luaDir:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/luajava/LuaState;->c0(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/androlua/LuaActivity;->L:Lcom/luajava/LuaState;

    const-string v1, "luadir"

    const/4 v2, -0x2

    invoke-virtual {v0, v2, v1}, Lcom/luajava/LuaState;->l0(ILjava/lang/String;)V

    iget-object v0, p0, Lcom/androlua/LuaActivity;->L:Lcom/luajava/LuaState;

    iget-object v1, p0, Lcom/androlua/LuaActivity;->luaPath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/luajava/LuaState;->c0(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/androlua/LuaActivity;->L:Lcom/luajava/LuaState;

    const-string v1, "luapath"

    invoke-virtual {v0, v2, v1}, Lcom/luajava/LuaState;->l0(ILjava/lang/String;)V

    iget-object v0, p0, Lcom/androlua/LuaActivity;->L:Lcom/luajava/LuaState;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/luajava/LuaState;->Q(I)V

    invoke-direct {p0}, Lcom/androlua/LuaActivity;->initENV()V

    new-instance v0, Lcom/androlua/LuaPrint;

    iget-object v3, p0, Lcom/androlua/LuaActivity;->L:Lcom/luajava/LuaState;

    invoke-direct {v0, p0, v3}, Lcom/androlua/LuaPrint;-><init>(Lcom/androlua/LuaContext;Lcom/luajava/LuaState;)V

    const-string v3, "print"

    invoke-virtual {v0, v3}, Lcom/luajava/JavaFunction;->register(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/androlua/LuaActivity;->L:Lcom/luajava/LuaState;

    const-string v3, "package"

    invoke-virtual {v0, v3}, Lcom/luajava/LuaState;->p(Ljava/lang/String;)I

    iget-object v0, p0, Lcom/androlua/LuaActivity;->L:Lcom/luajava/LuaState;

    iget-object v3, p0, Lcom/androlua/LuaActivity;->luaLpath:Ljava/lang/String;

    invoke-virtual {v0, v3}, Lcom/luajava/LuaState;->c0(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/androlua/LuaActivity;->L:Lcom/luajava/LuaState;

    const-string v3, "path"

    invoke-virtual {v0, v2, v3}, Lcom/luajava/LuaState;->l0(ILjava/lang/String;)V

    iget-object v0, p0, Lcom/androlua/LuaActivity;->L:Lcom/luajava/LuaState;

    iget-object v3, p0, Lcom/androlua/LuaActivity;->luaCpath:Ljava/lang/String;

    invoke-virtual {v0, v3}, Lcom/luajava/LuaState;->c0(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/androlua/LuaActivity;->L:Lcom/luajava/LuaState;

    const-string v3, "cpath"

    invoke-virtual {v0, v2, v3}, Lcom/luajava/LuaState;->l0(ILjava/lang/String;)V

    iget-object v0, p0, Lcom/androlua/LuaActivity;->L:Lcom/luajava/LuaState;

    invoke-virtual {v0, v1}, Lcom/luajava/LuaState;->Q(I)V

    new-instance v0, Lcom/androlua/LuaActivity$4;

    iget-object v1, p0, Lcom/androlua/LuaActivity;->L:Lcom/luajava/LuaState;

    invoke-direct {v0, p0, v1}, Lcom/androlua/LuaActivity$4;-><init>(Lcom/androlua/LuaActivity;Lcom/luajava/LuaState;)V

    const-string v1, "set"

    invoke-virtual {v0, v1}, Lcom/luajava/JavaFunction;->register(Ljava/lang/String;)V

    new-instance v0, Lcom/androlua/LuaActivity$5;

    iget-object v1, p0, Lcom/androlua/LuaActivity;->L:Lcom/luajava/LuaState;

    invoke-direct {v0, p0, v1}, Lcom/androlua/LuaActivity$5;-><init>(Lcom/androlua/LuaActivity;Lcom/luajava/LuaState;)V

    const-string v1, "call"

    invoke-virtual {v0, v1}, Lcom/luajava/JavaFunction;->register(Ljava/lang/String;)V

    return-void
.end method

.method private static readAll(Ljava/io/InputStream;)[B
    .locals 4

    new-instance v0, Ljava/io/ByteArrayOutputStream;

    const/16 v1, 0x1000

    invoke-direct {v0, v1}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    new-array v1, v1, [B

    :goto_0
    invoke-virtual {p0, v1}, Ljava/io/InputStream;->read([B)I

    move-result v2

    const/4 v3, -0x1

    if-eq v3, v2, :cond_0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v2}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V

    return-object p0
.end method

.method private setField(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lcom/androlua/LuaActivity;->L:Lcom/luajava/LuaState;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/androlua/LuaActivity;->L:Lcom/luajava/LuaState;

    invoke-virtual {v1, p2}, Lcom/luajava/LuaState;->a0(Ljava/lang/Object;)V

    iget-object p2, p0, Lcom/androlua/LuaActivity;->L:Lcom/luajava/LuaState;

    invoke-virtual {p2, p1}, Lcom/luajava/LuaState;->m0(Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/luajava/LuaException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :catch_0
    move-exception p1

    :try_start_1
    const-string p2, "setField"

    invoke-virtual {p0, p2, p1}, Lcom/androlua/LuaActivity;->sendError(Ljava/lang/String;Ljava/lang/Exception;)V

    :goto_0
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method private start()V
    .locals 3

    new-instance v0, Ljava/io/File;

    const-string v1, "\u56fe\u7247"

    invoke-virtual {p0, v1}, Lcom/androlua/LuaActivity;->getLuaExtDir(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/androlua/LuaActivity;->sendMsg(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u5171\u6709 "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v2, v0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/androlua/LuaActivity;->sendMsg(Ljava/lang/String;)V

    const/4 v1, 0x0

    invoke-direct {p0, v1, v0}, Lcom/androlua/LuaActivity;->biaozhu(I[Ljava/io/File;)V

    return-void
.end method


# virtual methods
.method public assetsToSD(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, p2}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/androlua/LuaActivity;->getAssets()Landroid/content/res/AssetManager;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object p1

    const/16 p2, 0x2000

    new-array p2, p2, [B

    :goto_0
    invoke-virtual {p1, p2}, Ljava/io/InputStream;->read([B)I

    move-result v1

    if-lez v1, :cond_0

    const/4 v2, 0x0

    invoke-virtual {v0, p2, v2, v1}, Ljava/io/OutputStream;->write([BII)V

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V

    invoke-virtual {p1}, Ljava/io/InputStream;->close()V

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    return-void
.end method

.method public call(J)V
    .locals 3

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_0

    const-string v0, "android.permission.CALL_PHONE"

    invoke-virtual {p0, v0}, Landroid/app/Activity;->checkSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    const p1, 0x7f070476

    const/4 p2, 0x0

    invoke-static {p0, p1, p2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void

    :cond_0
    new-instance v0, Landroid/content/Intent;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "tel:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    const-string p2, "android.intent.action.CALL"

    invoke-direct {v0, p2, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public call(Ljava/lang/String;)V
    .locals 2

    :try_start_0
    invoke-static {p1}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/androlua/LuaActivity;->call(J)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 v0, 0x2

    invoke-virtual {p0, v0, p1}, Lcom/androlua/LuaActivity;->push(ILjava/lang/String;)V

    :goto_0
    return-void
.end method

.method public call(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1

    array-length v0, p2

    if-nez v0, :cond_0

    const/4 p2, 0x2

    invoke-virtual {p0, p2, p1}, Lcom/androlua/LuaActivity;->push(ILjava/lang/String;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x3

    invoke-virtual {p0, v0, p1, p2}, Lcom/androlua/LuaActivity;->push(ILjava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public createShortcut(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "android.intent.category.DEFAULT"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const-class v2, Lcom/androlua/LuaActivity;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x16

    if-lt v1, v2, :cond_0

    const/high16 v2, 0x80000

    invoke-virtual {v0, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const/high16 v2, 0x8000000

    invoke-virtual {v0, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    :cond_0
    const/16 v2, 0x1a

    const v3, 0x7f030001

    const/4 v4, 0x0

    if-lt v1, v2, :cond_1

    const-string v1, "shortcut"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ShortcutManager;

    new-instance v2, Landroid/content/pm/ShortcutInfo$Builder;

    invoke-direct {v2, p0, p1}, Landroid/content/pm/ShortcutInfo$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-static {p0, v3}, Lcom/androlua/b;->a(Landroid/content/Context;I)Landroid/graphics/drawable/Icon;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/androlua/c;->a(Landroid/content/pm/ShortcutInfo$Builder;Landroid/graphics/drawable/Icon;)Landroid/content/pm/ShortcutInfo$Builder;

    move-result-object p1

    invoke-static {p1, p2}, Lcom/androlua/d;->a(Landroid/content/pm/ShortcutInfo$Builder;Ljava/lang/CharSequence;)Landroid/content/pm/ShortcutInfo$Builder;

    move-result-object p1

    invoke-static {p1, v0}, Lcom/androlua/e;->a(Landroid/content/pm/ShortcutInfo$Builder;Landroid/content/Intent;)Landroid/content/pm/ShortcutInfo$Builder;

    move-result-object p1

    invoke-static {p1}, Lcom/androlua/f;->a(Landroid/content/pm/ShortcutInfo$Builder;)Landroid/content/pm/ShortcutInfo;

    move-result-object p1

    const/4 p2, 0x0

    :try_start_0
    invoke-static {v1, p1, p2}, Lcom/androlua/g;->a(Landroid/content/pm/ShortcutManager;Landroid/content/pm/ShortcutInfo;Landroid/content/IntentSender;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    const-string p1, "\u6dfb\u52a0\u5feb\u6377\u65b9\u5f0f\u51fa\u9519"

    goto :goto_0

    :cond_1
    new-instance p1, Landroid/content/Intent;

    const-string v1, "com.android.launcher.action.INSTALL_SHORTCUT"

    invoke-direct {p1, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {p0, v3}, Landroid/content/Intent$ShortcutIconResource;->fromContext(Landroid/content/Context;I)Landroid/content/Intent$ShortcutIconResource;

    move-result-object v1

    const-string v2, "android.intent.extra.shortcut.NAME"

    invoke-virtual {p1, v2, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p2, "android.intent.extra.shortcut.INTENT"

    invoke-virtual {p1, p2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string p2, "duplicate"

    invoke-virtual {p1, p2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string p2, "android.intent.extra.shortcut.ICON_RESOURCE"

    invoke-virtual {p1, p2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    invoke-virtual {p0, p1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    const-string p1, "\u5df2\u6dfb\u52a0\u5feb\u6377\u65b9\u5f0f"

    :goto_0
    invoke-static {p0, p1, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    :goto_1
    return-void
.end method

.method public createShortcut(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "android.intent.category.DEFAULT"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const-class v2, Lcom/androlua/LuaActivity;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x16

    if-lt v1, v2, :cond_0

    const/high16 v2, 0x80000

    invoke-virtual {v0, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const/high16 v2, 0x8000000

    invoke-virtual {v0, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    :cond_0
    const/16 v2, 0x1a

    const/4 v3, 0x0

    if-lt v1, v2, :cond_1

    const-string v1, "shortcut"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ShortcutManager;

    new-instance v2, Landroid/content/pm/ShortcutInfo$Builder;

    invoke-direct {v2, p0, p1}, Landroid/content/pm/ShortcutInfo$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-static {p3}, Lcom/androlua/h;->a(Ljava/lang/String;)Landroid/graphics/drawable/Icon;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/androlua/c;->a(Landroid/content/pm/ShortcutInfo$Builder;Landroid/graphics/drawable/Icon;)Landroid/content/pm/ShortcutInfo$Builder;

    move-result-object p1

    invoke-static {p1, p2}, Lcom/androlua/d;->a(Landroid/content/pm/ShortcutInfo$Builder;Ljava/lang/CharSequence;)Landroid/content/pm/ShortcutInfo$Builder;

    move-result-object p1

    invoke-static {p1, v0}, Lcom/androlua/e;->a(Landroid/content/pm/ShortcutInfo$Builder;Landroid/content/Intent;)Landroid/content/pm/ShortcutInfo$Builder;

    move-result-object p1

    invoke-static {p1}, Lcom/androlua/f;->a(Landroid/content/pm/ShortcutInfo$Builder;)Landroid/content/pm/ShortcutInfo;

    move-result-object p1

    const/4 p2, 0x0

    :try_start_0
    invoke-static {v1, p1, p2}, Lcom/androlua/g;->a(Landroid/content/pm/ShortcutManager;Landroid/content/pm/ShortcutInfo;Landroid/content/IntentSender;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    const-string p1, "\u6dfb\u52a0\u5feb\u6377\u65b9\u5f0f\u51fa\u9519"

    goto :goto_0

    :cond_1
    new-instance p1, Landroid/content/Intent;

    const-string v1, "com.android.launcher.action.INSTALL_SHORTCUT"

    invoke-direct {p1, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "android.intent.extra.shortcut.NAME"

    invoke-virtual {p1, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p2, "android.intent.extra.shortcut.INTENT"

    invoke-virtual {p1, p2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string p2, "duplicate"

    invoke-virtual {p1, p2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string p2, "android.intent.extra.shortcut.ICON"

    invoke-static {p3}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object p3

    invoke-virtual {p1, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    invoke-virtual {p0, p1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    const-string p1, "\u5df2\u6dfb\u52a0\u5feb\u6377\u65b9\u5f0f"

    :goto_0
    invoke-static {p0, p1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    :goto_1
    return-void
.end method

.method public varargs doAsset(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0, p1}, Lcom/androlua/LuaActivity;->readAsset(Ljava/lang/String;)[B

    move-result-object v1

    iget-object v2, p0, Lcom/androlua/LuaActivity;->L:Lcom/luajava/LuaState;

    invoke-virtual {v2, v0}, Lcom/luajava/LuaState;->p0(I)V

    iget-object v2, p0, Lcom/androlua/LuaActivity;->L:Lcom/luajava/LuaState;

    invoke-virtual {v2, v1, p1}, Lcom/luajava/LuaState;->a([BLjava/lang/String;)I

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    const/4 v1, -0x1

    if-nez p1, :cond_1

    :try_start_1
    iget-object v2, p0, Lcom/androlua/LuaActivity;->L:Lcom/luajava/LuaState;

    const-string v3, "debug"

    invoke-virtual {v2, v3}, Lcom/luajava/LuaState;->p(Ljava/lang/String;)I

    iget-object v2, p0, Lcom/androlua/LuaActivity;->L:Lcom/luajava/LuaState;

    const-string v3, "traceback"

    invoke-virtual {v2, v1, v3}, Lcom/luajava/LuaState;->m(ILjava/lang/String;)I

    iget-object v2, p0, Lcom/androlua/LuaActivity;->L:Lcom/luajava/LuaState;

    const/4 v3, -0x2

    invoke-virtual {v2, v3}, Lcom/luajava/LuaState;->j0(I)V

    iget-object v2, p0, Lcom/androlua/LuaActivity;->L:Lcom/luajava/LuaState;

    invoke-virtual {v2, v3}, Lcom/luajava/LuaState;->A(I)V

    array-length v2, p2

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    iget-object v4, p0, Lcom/androlua/LuaActivity;->L:Lcom/luajava/LuaState;

    aget-object v5, p2, v3

    invoke-virtual {v4, v5}, Lcom/luajava/LuaState;->a0(Ljava/lang/Object;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    iget-object p2, p0, Lcom/androlua/LuaActivity;->L:Lcom/luajava/LuaState;

    rsub-int/lit8 v3, v2, -0x2

    invoke-virtual {p2, v2, v0, v3}, Lcom/luajava/LuaState;->P(III)I

    move-result v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    if-nez v0, :cond_2

    :try_start_2
    iget-object p1, p0, Lcom/androlua/LuaActivity;->L:Lcom/luajava/LuaState;

    invoke-virtual {p1, v1}, Lcom/luajava/LuaState;->t0(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :catch_0
    move-exception p2

    move v0, p1

    goto :goto_1

    :cond_1
    move v0, p1

    :cond_2
    new-instance p1, Lcom/luajava/LuaException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0, v0}, Lcom/androlua/LuaActivity;->errorReason(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ": "

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/androlua/LuaActivity;->L:Lcom/luajava/LuaState;

    invoke-virtual {v2, v1}, Lcom/luajava/LuaState;->v0(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/luajava/LuaException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    :catch_1
    move-exception p2

    :goto_1
    invoke-direct {p0, v0}, Lcom/androlua/LuaActivity;->errorReason(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/androlua/LuaActivity;->setTitle(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/androlua/LuaActivity;->layout:Landroid/widget/LinearLayout;

    invoke-virtual {p0, p1}, Lcom/androlua/LuaActivity;->setContentView(Landroid/view/View;)V

    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/androlua/LuaActivity;->sendMsg(Ljava/lang/String;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method public doFile(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {p0, p1, v0}, Lcom/androlua/LuaActivity;->doFile(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public doFile(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8

    const/4 v0, 0x1

    const/4 v1, -0x1

    const/4 v2, 0x0

    :try_start_0
    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x2f

    if-eq v3, v4, :cond_0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/androlua/LuaActivity;->luaDir:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :cond_0
    iget-object v3, p0, Lcom/androlua/LuaActivity;->L:Lcom/luajava/LuaState;

    invoke-virtual {v3, v2}, Lcom/luajava/LuaState;->p0(I)V

    iget-object v3, p0, Lcom/androlua/LuaActivity;->L:Lcom/luajava/LuaState;

    invoke-virtual {v3, p1}, Lcom/luajava/LuaState;->b(Ljava/lang/String;)I

    move-result p1
    :try_end_0
    .catch Lcom/luajava/LuaException; {:try_start_0 .. :try_end_0} :catch_1

    if-nez p1, :cond_2

    :try_start_1
    iget-object v3, p0, Lcom/androlua/LuaActivity;->L:Lcom/luajava/LuaState;

    const-string v4, "debug"

    invoke-virtual {v3, v4}, Lcom/luajava/LuaState;->p(Ljava/lang/String;)I

    iget-object v3, p0, Lcom/androlua/LuaActivity;->L:Lcom/luajava/LuaState;

    const-string v4, "traceback"

    invoke-virtual {v3, v1, v4}, Lcom/luajava/LuaState;->m(ILjava/lang/String;)I

    iget-object v3, p0, Lcom/androlua/LuaActivity;->L:Lcom/luajava/LuaState;

    const/4 v4, -0x2

    invoke-virtual {v3, v4}, Lcom/luajava/LuaState;->j0(I)V

    iget-object v3, p0, Lcom/androlua/LuaActivity;->L:Lcom/luajava/LuaState;

    invoke-virtual {v3, v4}, Lcom/luajava/LuaState;->A(I)V

    array-length v3, p2

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_1

    iget-object v5, p0, Lcom/androlua/LuaActivity;->L:Lcom/luajava/LuaState;

    aget-object v6, p2, v4

    invoke-virtual {v5, v6}, Lcom/luajava/LuaState;->a0(Ljava/lang/Object;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    iget-object p2, p0, Lcom/androlua/LuaActivity;->L:Lcom/luajava/LuaState;

    rsub-int/lit8 v4, v3, -0x2

    invoke-virtual {p2, v3, v0, v4}, Lcom/luajava/LuaState;->P(III)I

    move-result p1

    if-nez p1, :cond_2

    iget-object p2, p0, Lcom/androlua/LuaActivity;->L:Lcom/luajava/LuaState;

    invoke-virtual {p2, v1}, Lcom/luajava/LuaState;->t0(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_2
    new-instance p2, Landroid/content/Intent;

    invoke-direct {p2}, Landroid/content/Intent;-><init>()V

    const-string v3, "data"

    iget-object v4, p0, Lcom/androlua/LuaActivity;->L:Lcom/luajava/LuaState;

    invoke-virtual {v4, v1}, Lcom/luajava/LuaState;->v0(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, p1, p2}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    new-instance p2, Lcom/luajava/LuaException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0, p1}, Lcom/androlua/LuaActivity;->errorReason(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ": "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/androlua/LuaActivity;->L:Lcom/luajava/LuaState;

    invoke-virtual {v4, v1}, Lcom/luajava/LuaState;->v0(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p2, v3}, Lcom/luajava/LuaException;-><init>(Ljava/lang/String;)V

    throw p2
    :try_end_1
    .catch Lcom/luajava/LuaException; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    move-exception p2

    move-object v7, p2

    move p2, p1

    move-object p1, v7

    goto :goto_1

    :catch_1
    move-exception p1

    const/4 p2, 0x0

    :goto_1
    invoke-direct {p0, p2}, Lcom/androlua/LuaActivity;->errorReason(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/androlua/LuaActivity;->setTitle(Ljava/lang/CharSequence;)V

    iget-object p2, p0, Lcom/androlua/LuaActivity;->layout:Landroid/widget/LinearLayout;

    invoke-virtual {p0, p2}, Lcom/androlua/LuaActivity;->setContentView(Landroid/view/View;)V

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/androlua/LuaActivity;->sendMsg(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    const-string p2, "android.permission."

    invoke-virtual {p1, p2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result p2

    const/4 v3, 0x0

    if-lez p2, :cond_4

    add-int/lit8 p2, p2, 0x13

    const-string v4, "."

    invoke-virtual {p1, v4, p2}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v4

    if-le v4, p2, :cond_4

    invoke-virtual {p1, p2, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    iget-object p2, p0, Lcom/androlua/LuaActivity;->L:Lcom/luajava/LuaState;

    const-string v4, "require"

    invoke-virtual {p2, v4}, Lcom/luajava/LuaState;->p(Ljava/lang/String;)I

    iget-object p2, p0, Lcom/androlua/LuaActivity;->L:Lcom/luajava/LuaState;

    const-string v4, "permission"

    invoke-virtual {p2, v4}, Lcom/luajava/LuaState;->c0(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/androlua/LuaActivity;->L:Lcom/luajava/LuaState;

    invoke-virtual {p2, v0, v2, v2}, Lcom/luajava/LuaState;->P(III)I

    iget-object p2, p0, Lcom/androlua/LuaActivity;->L:Lcom/luajava/LuaState;

    const-string v0, "permission_info"

    invoke-virtual {p2, v0}, Lcom/luajava/LuaState;->p(Ljava/lang/String;)I

    iget-object p2, p0, Lcom/androlua/LuaActivity;->L:Lcom/luajava/LuaState;

    invoke-virtual {p2, v1, p1}, Lcom/luajava/LuaState;->m(ILjava/lang/String;)I

    iget-object p2, p0, Lcom/androlua/LuaActivity;->L:Lcom/luajava/LuaState;

    invoke-virtual {p2, v1}, Lcom/luajava/LuaState;->I(I)Z

    move-result p2

    if-eqz p2, :cond_3

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " ("

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/androlua/LuaActivity;->L:Lcom/luajava/LuaState;

    invoke-virtual {p1, v1}, Lcom/luajava/LuaState;->v0(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :cond_3
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "\u6743\u9650\u9519\u8bef: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/androlua/LuaActivity;->sendMsg(Ljava/lang/String;)V

    :cond_4
    return-object v3
.end method

.method public varargs doString(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    :try_start_0
    iget-object v0, p0, Lcom/androlua/LuaActivity;->L:Lcom/luajava/LuaState;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/luajava/LuaState;->p0(I)V

    iget-object v0, p0, Lcom/androlua/LuaActivity;->L:Lcom/luajava/LuaState;

    invoke-virtual {v0, p1}, Lcom/luajava/LuaState;->c(Ljava/lang/String;)I

    move-result p1

    const/4 v0, -0x1

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/androlua/LuaActivity;->L:Lcom/luajava/LuaState;

    const-string v2, "debug"

    invoke-virtual {p1, v2}, Lcom/luajava/LuaState;->p(Ljava/lang/String;)I

    iget-object p1, p0, Lcom/androlua/LuaActivity;->L:Lcom/luajava/LuaState;

    const-string v2, "traceback"

    invoke-virtual {p1, v0, v2}, Lcom/luajava/LuaState;->m(ILjava/lang/String;)I

    iget-object p1, p0, Lcom/androlua/LuaActivity;->L:Lcom/luajava/LuaState;

    const/4 v2, -0x2

    invoke-virtual {p1, v2}, Lcom/luajava/LuaState;->j0(I)V

    iget-object p1, p0, Lcom/androlua/LuaActivity;->L:Lcom/luajava/LuaState;

    invoke-virtual {p1, v2}, Lcom/luajava/LuaState;->A(I)V

    array-length p1, p2

    :goto_0
    if-ge v1, p1, :cond_0

    iget-object v2, p0, Lcom/androlua/LuaActivity;->L:Lcom/luajava/LuaState;

    aget-object v3, p2, v1

    invoke-virtual {v2, v3}, Lcom/luajava/LuaState;->a0(Ljava/lang/Object;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    iget-object p2, p0, Lcom/androlua/LuaActivity;->L:Lcom/luajava/LuaState;

    rsub-int/lit8 v1, p1, -0x2

    const/4 v2, 0x1

    invoke-virtual {p2, p1, v2, v1}, Lcom/luajava/LuaState;->P(III)I

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/androlua/LuaActivity;->L:Lcom/luajava/LuaState;

    invoke-virtual {p1, v0}, Lcom/luajava/LuaState;->t0(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_1
    new-instance p2, Lcom/luajava/LuaException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0, p1}, Lcom/androlua/LuaActivity;->errorReason(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ": "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/androlua/LuaActivity;->L:Lcom/luajava/LuaState;

    invoke-virtual {p1, v0}, Lcom/luajava/LuaState;->v0(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/luajava/LuaException;-><init>(Ljava/lang/String;)V

    throw p2
    :try_end_0
    .catch Lcom/luajava/LuaException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/androlua/LuaActivity;->sendMsg(Ljava/lang/String;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method public finish()V
    .locals 0

    invoke-virtual {p0}, Landroid/app/Activity;->finishAndRemoveTask()V

    return-void
.end method

.method public get(Ljava/lang/String;)Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lcom/androlua/LuaActivity;->L:Lcom/luajava/LuaState;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/androlua/LuaActivity;->L:Lcom/luajava/LuaState;

    invoke-virtual {v1, p1}, Lcom/luajava/LuaState;->p(Ljava/lang/String;)I

    iget-object p1, p0, Lcom/androlua/LuaActivity;->L:Lcom/luajava/LuaState;

    const/4 v1, -0x1

    invoke-virtual {p1, v1}, Lcom/luajava/LuaState;->t0(I)Ljava/lang/Object;

    move-result-object p1

    monitor-exit v0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public getAllAppList()[Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/androlua/LuaActivity;->appList:[Ljava/lang/String;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/androlua/LuaActivity;->getAllApp()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    iput-object v1, p0, Lcom/androlua/LuaActivity;->appList:[Ljava/lang/String;

    return-object v1

    :cond_0
    return-object v0
.end method

.method public getAssets()Landroid/content/res/AssetManager;
    .locals 1

    iget-object v0, p0, Lcom/androlua/LuaActivity;->mLuaDexLoader:Lcom/androlua/LuaDexLoader;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/androlua/LuaDexLoader;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/androlua/LuaActivity;->mLuaDexLoader:Lcom/androlua/LuaDexLoader;

    invoke-virtual {v0}, Lcom/androlua/LuaDexLoader;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    return-object v0

    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    return-object v0
.end method

.method public getClassLoaders()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/ClassLoader;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/androlua/LuaActivity;->mLuaDexLoader:Lcom/androlua/LuaDexLoader;

    invoke-virtual {v0}, Lcom/androlua/LuaDexLoader;->getClassLoaders()Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public getContext()Landroid/content/Context;
    .locals 0

    return-object p0
.end method

.method public getDecorView()Landroid/view/View;
    .locals 1

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public getGlobalData()Ljava/util/Map;
    .locals 1

    invoke-virtual {p0}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lcom/androlua/LuaApplication;

    invoke-virtual {v0}, Lcom/androlua/LuaApplication;->getGlobalData()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public getHeight()I
    .locals 1

    iget v0, p0, Lcom/androlua/LuaActivity;->mHeight:I

    return v0
.end method

.method public getLibrarys()Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/androlua/LuaActivity;->mLuaDexLoader:Lcom/androlua/LuaDexLoader;

    invoke-virtual {v0}, Lcom/androlua/LuaDexLoader;->getLibrarys()Ljava/util/HashMap;

    move-result-object v0

    return-object v0
.end method

.method public getListView()Landroid/widget/ListView;
    .locals 1

    iget-object v0, p0, Lcom/androlua/LuaActivity;->mListView:Landroid/widget/ListView;

    return-object v0
.end method

.method public getLocalDir()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/androlua/LuaActivity;->localDir:Ljava/lang/String;

    return-object v0
.end method

.method public getLuaCpath()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/androlua/LuaActivity;->luaCpath:Ljava/lang/String;

    return-object v0
.end method

.method public getLuaDir()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/androlua/LuaActivity;->luaDir:Ljava/lang/String;

    return-object v0
.end method

.method public getLuaDir(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Lcom/androlua/LuaActivity;->getLuaDir()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p1

    if-nez p1, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getLuaExtDir()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/androlua/LuaActivity;->luaExtDir:Ljava/lang/String;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    invoke-static {}, Lcom/androlua/LuaApplication;->getInstance()Lcom/androlua/LuaApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/androlua/LuaApplication;->getLuaExtDir()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/androlua/LuaActivity;->luaExtDir:Ljava/lang/String;

    return-object v0
.end method

.method public getLuaExtDir(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Lcom/androlua/LuaActivity;->getLuaExtDir()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p1

    if-nez p1, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    move-result p1

    if-nez p1, :cond_1

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result p1

    if-nez p1, :cond_1

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    :cond_1
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getLuaExtPath(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Lcom/androlua/LuaActivity;->getLuaExtDir()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getLuaExtPath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    new-instance v0, Ljava/io/File;

    invoke-virtual {p0, p1}, Lcom/androlua/LuaActivity;->getLuaExtDir(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1, p2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getLuaLpath()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/androlua/LuaActivity;->luaLpath:Ljava/lang/String;

    return-object v0
.end method

.method public getLuaPath()Ljava/lang/String;
    .locals 5

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "path"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_1

    invoke-virtual {v0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    invoke-virtual {v0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v1

    :cond_1
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    const-string v2, "main.lua"

    if-eqz v0, :cond_2

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    :cond_2
    iput-object v1, p0, Lcom/androlua/LuaActivity;->luaPath:Ljava/lang/String;

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v3, Ljava/io/File;

    iget-object v4, p0, Lcom/androlua/LuaActivity;->luaPath:Ljava/lang/String;

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/androlua/LuaActivity;->luaDir:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v3, "init.lua"

    if-eqz v0, :cond_3

    new-instance v0, Ljava/io/File;

    iget-object v4, p0, Lcom/androlua/LuaActivity;->luaDir:Ljava/lang/String;

    invoke-direct {v0, v4, v3}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_3

    sget-object v0, Lcom/androlua/LuaActivity;->prjCache:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/androlua/LuaActivity;->luaDir:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    :goto_0
    sget-object v0, Lcom/androlua/LuaActivity;->prjCache:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/androlua/LuaActivity;->luaDir:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_3
    iget-object v0, p0, Lcom/androlua/LuaActivity;->luaDir:Ljava/lang/String;

    :goto_1
    if-eqz v0, :cond_6

    sget-object v4, Lcom/androlua/LuaActivity;->prjCache:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    iput-object v0, p0, Lcom/androlua/LuaActivity;->luaDir:Ljava/lang/String;

    goto :goto_2

    :cond_4
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_5

    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_5

    iput-object v0, p0, Lcom/androlua/LuaActivity;->luaDir:Ljava/lang/String;

    sget-object v2, Lcom/androlua/LuaActivity;->prjCache:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    goto :goto_0

    :cond_5
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_6
    :goto_2
    return-object v1
.end method

.method public getLuaPath(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Lcom/androlua/LuaActivity;->getLuaDir()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getLuaPath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    new-instance v0, Ljava/io/File;

    invoke-virtual {p0, p1}, Lcom/androlua/LuaActivity;->getLuaDir(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1, p2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getLuaState()Lcom/luajava/LuaState;
    .locals 1

    iget-object v0, p0, Lcom/androlua/LuaActivity;->L:Lcom/luajava/LuaState;

    return-object v0
.end method

.method public getOptionsMenu()Landroid/view/Menu;
    .locals 1

    iget-object v0, p0, Lcom/androlua/LuaActivity;->optionsMenu:Landroid/view/Menu;

    return-object v0
.end method

.method public getSharedData(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1

    invoke-static {}, Lcom/androlua/LuaApplication;->getInstance()Lcom/androlua/LuaApplication;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/androlua/LuaApplication;->getSharedData(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getSharedData(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    invoke-static {}, Lcom/androlua/LuaApplication;->getInstance()Lcom/androlua/LuaApplication;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/androlua/LuaApplication;->getSharedData(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-lt v0, v1, :cond_0

    invoke-virtual {p0}, Landroid/app/Activity;->createDeviceProtectedStorageContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    return-object p1

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    return-object p1
.end method

.method public getUriForFile(Ljava/io/File;)Landroid/net/Uri;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ".fileprovider"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, p1}, Landroid/content/FileProvider;->g(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;)Landroid/net/Uri;

    move-result-object p1

    return-object p1
.end method

.method public getUriForPath(Ljava/lang/String;)Landroid/net/Uri;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ".fileprovider"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {p0, v0, v1}, Landroid/content/FileProvider;->g(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;)Landroid/net/Uri;

    move-result-object p1

    return-object p1
.end method

.method public getWidth()I
    .locals 1

    iget v0, p0, Lcom/androlua/LuaActivity;->mWidth:I

    return v0
.end method

.method public initMain()V
    .locals 2

    sget-object v0, Lcom/androlua/LuaActivity;->prjCache:Ljava/util/ArrayList;

    invoke-virtual {p0}, Lcom/androlua/LuaActivity;->getLocalDir()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public installApk(Ljava/lang/String;)V
    .locals 2

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/4 p1, 0x1

    invoke-virtual {v0, p1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    invoke-virtual {p0, v1}, Lcom/androlua/LuaActivity;->getUriForFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object p1

    invoke-direct {p0, v1}, Lcom/androlua/LuaActivity;->getType(Ljava/io/File;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    const/high16 p1, 0x10000000

    invoke-virtual {v0, p1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public loadBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 0

    invoke-static {p0, p1}, Lcom/androlua/LuaBitmap;->getBitmap(Lcom/androlua/LuaContext;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1
.end method

.method public loadDex(Ljava/lang/String;)Ldalvik/system/DexClassLoader;
    .locals 1

    iget-object v0, p0, Lcom/androlua/LuaActivity;->mLuaDexLoader:Lcom/androlua/LuaDexLoader;

    invoke-virtual {v0, p1}, Lcom/androlua/LuaDexLoader;->loadDex(Ljava/lang/String;)Ldalvik/system/DexClassLoader;

    move-result-object p1

    return-object p1
.end method

.method public loadLib(Ljava/lang/String;)Ljava/lang/Object;
    .locals 7

    const-string v0, "."

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x0

    if-lez v0, :cond_0

    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, p1

    :goto_0
    new-instance v2, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/androlua/LuaActivity;->libDir:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "/lib"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ".so"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_2

    new-instance v2, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/androlua/LuaActivity;->luaDir:Ljava/lang/String;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/androlua/LuaActivity;->luaDir:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/androlua/LuaActivity;->libDir:Ljava/lang/String;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/androlua/LuaUtil;->copyFile(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    new-instance v0, Lcom/luajava/LuaException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "can not find lib "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/luajava/LuaException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/androlua/LuaActivity;->L:Lcom/luajava/LuaState;

    const-string v2, "require"

    invoke-virtual {v0, v2}, Lcom/luajava/LuaState;->v(Ljava/lang/String;)Lcom/luajava/LuaObject;

    move-result-object v0

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p1, v2, v1

    invoke-virtual {v0, v2}, Lcom/luajava/LuaObject;->call([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public loadResources(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/androlua/LuaActivity;->mLuaDexLoader:Lcom/androlua/LuaDexLoader;

    invoke-virtual {v0, p1}, Lcom/androlua/LuaDexLoader;->loadResources(Ljava/lang/String;)V

    return-void
.end method

.method public newActivity(ILjava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/androlua/LuaActivity;->newActivity(ILjava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public newActivity(ILjava/lang/String;II)V
    .locals 6

    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/androlua/LuaActivity;->newActivity(ILjava/lang/String;II[Ljava/lang/Object;)V

    return-void
.end method

.method public newActivity(ILjava/lang/String;II[Ljava/lang/Object;)V
    .locals 5

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/androlua/LuaActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "name"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/4 v1, 0x0

    invoke-virtual {p2, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x2f

    if-eq v1, v2, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/androlua/LuaActivity;->luaDir:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    :cond_0
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-eqz v2, :cond_1

    new-instance v2, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "/main.lua"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    :cond_1
    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-nez v2, :cond_2

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_3

    :cond_2
    const-string v1, ".lua"

    invoke-virtual {p2, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_3

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    :cond_3
    :goto_0
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_5

    const-string v1, "path"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    if-eqz p5, :cond_4

    const-string p2, "arg"

    invoke-virtual {v0, p2, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    :cond_4
    invoke-virtual {p0, v0, p1}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    invoke-virtual {p0, p3, p4}, Landroid/app/Activity;->overridePendingTransition(II)V

    return-void

    :cond_5
    new-instance p1, Ljava/io/FileNotFoundException;

    invoke-direct {p1, p2}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public newActivity(ILjava/lang/String;[Ljava/lang/Object;)V
    .locals 5

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/androlua/LuaActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "name"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/4 v1, 0x0

    invoke-virtual {p2, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x2f

    if-eq v1, v2, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/androlua/LuaActivity;->luaDir:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    :cond_0
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-eqz v2, :cond_1

    new-instance v2, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "/main.lua"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    :cond_1
    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-nez v2, :cond_2

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_3

    :cond_2
    const-string v1, ".lua"

    invoke-virtual {p2, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_3

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    :cond_3
    :goto_0
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_5

    const-string v1, "path"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    if-eqz p3, :cond_4

    const-string p2, "arg"

    invoke-virtual {v0, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    :cond_4
    invoke-virtual {p0, v0, p1}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void

    :cond_5
    new-instance p1, Ljava/io/FileNotFoundException;

    invoke-direct {p1, p2}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public newActivity(Ljava/lang/String;)V
    .locals 2

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Lcom/androlua/LuaActivity;->newActivity(ILjava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public newActivity(Ljava/lang/String;II)V
    .locals 6

    const/4 v1, 0x1

    const/4 v5, 0x0

    move-object v0, p0

    move-object v2, p1

    move v3, p2

    move v4, p3

    invoke-virtual/range {v0 .. v5}, Lcom/androlua/LuaActivity;->newActivity(ILjava/lang/String;II[Ljava/lang/Object;)V

    return-void
.end method

.method public newActivity(Ljava/lang/String;II[Ljava/lang/Object;)V
    .locals 6

    const/4 v1, 0x1

    move-object v0, p0

    move-object v2, p1

    move v3, p2

    move v4, p3

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/androlua/LuaActivity;->newActivity(ILjava/lang/String;II[Ljava/lang/Object;)V

    return-void
.end method

.method public newActivity(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, v0, p1, p2}, Lcom/androlua/LuaActivity;->newActivity(ILjava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public newTask(Lcom/luajava/LuaObject;)Lcom/androlua/LuaAsyncTask;
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, v0}, Lcom/androlua/LuaActivity;->newTask(Lcom/luajava/LuaObject;Lcom/luajava/LuaObject;Lcom/luajava/LuaObject;)Lcom/androlua/LuaAsyncTask;

    move-result-object p1

    return-object p1
.end method

.method public newTask(Lcom/luajava/LuaObject;Lcom/luajava/LuaObject;)Lcom/androlua/LuaAsyncTask;
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p2}, Lcom/androlua/LuaActivity;->newTask(Lcom/luajava/LuaObject;Lcom/luajava/LuaObject;Lcom/luajava/LuaObject;)Lcom/androlua/LuaAsyncTask;

    move-result-object p1

    return-object p1
.end method

.method public newTask(Lcom/luajava/LuaObject;Lcom/luajava/LuaObject;Lcom/luajava/LuaObject;)Lcom/androlua/LuaAsyncTask;
    .locals 1

    new-instance v0, Lcom/androlua/LuaAsyncTask;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/androlua/LuaAsyncTask;-><init>(Lcom/androlua/LuaContext;Lcom/luajava/LuaObject;Lcom/luajava/LuaObject;Lcom/luajava/LuaObject;)V

    return-object v0
.end method

.method public newThread(Lcom/luajava/LuaObject;)Lcom/androlua/LuaThread;
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/androlua/LuaActivity;->newThread(Lcom/luajava/LuaObject;[Ljava/lang/Object;)Lcom/androlua/LuaThread;

    move-result-object p1

    return-object p1
.end method

.method public newThread(Lcom/luajava/LuaObject;[Ljava/lang/Object;)Lcom/androlua/LuaThread;
    .locals 2

    new-instance v0, Lcom/androlua/LuaThread;

    const/4 v1, 0x1

    invoke-direct {v0, p0, p1, v1, p2}, Lcom/androlua/LuaThread;-><init>(Lcom/androlua/LuaContext;Lcom/luajava/LuaObject;Z[Ljava/lang/Object;)V

    return-object v0
.end method

.method public newTimer(Lcom/luajava/LuaObject;)Lcom/androlua/LuaTimer;
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/androlua/LuaActivity;->newTimer(Lcom/luajava/LuaObject;[Ljava/lang/Object;)Lcom/androlua/LuaTimer;

    move-result-object p1

    return-object p1
.end method

.method public newTimer(Lcom/luajava/LuaObject;[Ljava/lang/Object;)Lcom/androlua/LuaTimer;
    .locals 1

    new-instance v0, Lcom/androlua/LuaTimer;

    invoke-direct {v0, p0, p1, p2}, Lcom/androlua/LuaTimer;-><init>(Lcom/androlua/LuaContext;Lcom/luajava/LuaObject;[Ljava/lang/Object;)V

    return-object v0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 7

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p3, :cond_2

    const-string v2, "name"

    invoke-virtual {p3, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_2

    const-string v3, "data"

    invoke-virtual {p3, v3}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v3

    check-cast v3, [Ljava/lang/Object;

    const-string v4, "onTransResult"

    if-nez v3, :cond_0

    new-array v3, v0, [Ljava/lang/Object;

    aput-object v2, v3, v1

    invoke-virtual {p0, v4, v3}, Lcom/androlua/LuaActivity;->runFunc(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_0
    array-length v5, v3

    add-int/2addr v5, v0

    new-array v5, v5, [Ljava/lang/Object;

    aput-object v2, v5, v1

    const/4 v2, 0x0

    :goto_0
    array-length v6, v3

    if-ge v2, v6, :cond_1

    add-int/lit8 v6, v2, 0x1

    aget-object v2, v3, v2

    aput-object v2, v5, v6

    move v2, v6

    goto :goto_0

    :cond_1
    invoke-virtual {p0, v4, v5}, Lcom/androlua/LuaActivity;->runFunc(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    const-class v4, Ljava/lang/Boolean;

    if-ne v3, v4, :cond_2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_2

    return-void

    :cond_2
    :goto_1
    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v2, v0

    const/4 v0, 0x2

    aput-object p3, v2, v0

    const-string v0, "onActivityResult"

    invoke-virtual {p0, v0, v2}, Lcom/androlua/LuaActivity;->runFunc(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    const-string v0, "window"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    iget v0, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    iput v0, p0, Lcom/androlua/LuaActivity;->mWidth:I

    iget v0, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    iput v0, p0, Lcom/androlua/LuaActivity;->mHeight:I

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const-string p1, "onConfigurationChanged"

    invoke-virtual {p0, p1, v0}, Lcom/androlua/LuaActivity;->runFunc(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public onContentChanged()V
    .locals 1

    invoke-super {p0}, Landroid/app/Activity;->onContentChanged()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/androlua/LuaActivity;->isSetViewed:Z

    return-void
.end method

.method public onContextItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const-string v1, "onContextItemSelected"

    invoke-virtual {p0, v1, v0}, Lcom/androlua/LuaActivity;->runFunc(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    invoke-super {p0, p1}, Landroid/app/Activity;->onContextItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 9

    const-string v0, "main"

    const/high16 v1, 0x7f080000

    invoke-virtual {p0, v1}, Landroid/content/Context;->setTheme(I)V

    const/4 v1, 0x0

    invoke-super {p0, v1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    const-string v2, "window"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/WindowManager;

    new-instance v3, Landroid/util/DisplayMetrics;

    invoke-direct {v3}, Landroid/util/DisplayMetrics;-><init>()V

    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    iget v2, v3, Landroid/util/DisplayMetrics;->widthPixels:I

    iput v2, p0, Lcom/androlua/LuaActivity;->mWidth:I

    iget v2, v3, Landroid/util/DisplayMetrics;->heightPixels:I

    iput v2, p0, Lcom/androlua/LuaActivity;->mHeight:I

    new-instance v2, Landroid/widget/LinearLayout;

    invoke-direct {v2, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/androlua/LuaActivity;->layout:Landroid/widget/LinearLayout;

    new-instance v2, Landroid/widget/ScrollView;

    invoke-direct {v2, p0}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;)V

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/widget/ScrollView;->setFillViewport(Z)V

    new-instance v4, Landroid/widget/TextView;

    invoke-direct {v4, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/androlua/LuaActivity;->status:Landroid/widget/TextView;

    const/high16 v5, -0x1000000

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v4, p0, Lcom/androlua/LuaActivity;->status:Landroid/widget/TextView;

    new-instance v5, Landroid/view/ViewGroup$LayoutParams;

    const/4 v6, -0x1

    const/4 v7, -0x2

    invoke-direct {v5, v6, v7}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v4, v5}, Landroid/widget/ScrollView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v2, p0, Lcom/androlua/LuaActivity;->status:Landroid/widget/TextView;

    const-string v4, ""

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v2, p0, Lcom/androlua/LuaActivity;->status:Landroid/widget/TextView;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextIsSelectable(Z)V

    new-instance v2, Landroid/widget/ListView;

    invoke-direct {v2, p0}, Landroid/widget/ListView;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/androlua/LuaActivity;->list:Landroid/widget/ListView;

    invoke-virtual {v2, v3}, Landroid/widget/AbsListView;->setFastScrollEnabled(Z)V

    new-instance v2, Lcom/androlua/LuaActivity$2;

    const v5, 0x1090003

    invoke-direct {v2, p0, p0, v5}, Lcom/androlua/LuaActivity$2;-><init>(Lcom/androlua/LuaActivity;Landroid/content/Context;I)V

    iput-object v2, p0, Lcom/androlua/LuaActivity;->adapter:Landroid/widget/ArrayListAdapter;

    iget-object v5, p0, Lcom/androlua/LuaActivity;->list:Landroid/widget/ListView;

    invoke-virtual {v5, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-object v2, p0, Lcom/androlua/LuaActivity;->layout:Landroid/widget/LinearLayout;

    iget-object v5, p0, Lcom/androlua/LuaActivity;->list:Landroid/widget/ListView;

    new-instance v8, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v8, v6, v7}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v5, v8}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v2, Landroid/widget/ListView;

    invoke-direct {v2, p0}, Landroid/widget/ListView;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/androlua/LuaActivity;->mListView:Landroid/widget/ListView;

    invoke-virtual {v2, p0}, Landroid/widget/AdapterView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    iget-object v2, p0, Lcom/androlua/LuaActivity;->mListView:Landroid/widget/ListView;

    invoke-virtual {v2, p0}, Landroid/widget/AdapterView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    invoke-virtual {p0}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v2

    check-cast v2, Lcom/androlua/LuaApplication;

    invoke-virtual {v2}, Lcom/androlua/LuaApplication;->getLocalDir()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/androlua/LuaActivity;->localDir:Ljava/lang/String;

    invoke-virtual {v2}, Lcom/androlua/LuaApplication;->getOdexDir()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/androlua/LuaActivity;->odexDir:Ljava/lang/String;

    invoke-virtual {v2}, Lcom/androlua/LuaApplication;->getLibDir()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/androlua/LuaActivity;->libDir:Ljava/lang/String;

    invoke-virtual {v2}, Lcom/androlua/LuaApplication;->getMdDir()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/androlua/LuaActivity;->luaMdDir:Ljava/lang/String;

    invoke-virtual {v2}, Lcom/androlua/LuaApplication;->getLuaCpath()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/androlua/LuaActivity;->luaCpath:Ljava/lang/String;

    iget-object v5, p0, Lcom/androlua/LuaActivity;->localDir:Ljava/lang/String;

    iput-object v5, p0, Lcom/androlua/LuaActivity;->luaDir:Ljava/lang/String;

    invoke-virtual {v2}, Lcom/androlua/LuaApplication;->getLuaLpath()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/androlua/LuaActivity;->luaLpath:Ljava/lang/String;

    new-instance v2, Lcom/androlua/LuaActivity$MainHandler;

    invoke-direct {v2, p0}, Lcom/androlua/LuaActivity$MainHandler;-><init>(Lcom/androlua/LuaActivity;)V

    iput-object v2, p0, Lcom/androlua/LuaActivity;->handler:Landroid/os/Handler;

    :try_start_0
    iget-object v2, p0, Lcom/androlua/LuaActivity;->status:Landroid/widget/TextView;

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v2, p0, Lcom/androlua/LuaActivity;->adapter:Landroid/widget/ArrayListAdapter;

    invoke-virtual {v2}, Landroid/widget/ArrayListAdapter;->clear()V

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v4

    if-eqz v4, :cond_0

    invoke-virtual {v2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    const-string v4, "arg"

    invoke-virtual {v2, v4}, Landroid/os/BaseBundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/Object;

    goto :goto_0

    :cond_0
    move-object v2, v1

    :goto_0
    const/4 v4, 0x0

    if-nez v2, :cond_1

    new-array v2, v4, [Ljava/lang/Object;

    :cond_1
    invoke-virtual {p0}, Lcom/androlua/LuaActivity;->getLuaPath()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/androlua/LuaActivity;->luaPath:Ljava/lang/String;

    new-instance v5, Ljava/io/File;

    iget-object v6, p0, Lcom/androlua/LuaActivity;->luaPath:Ljava/lang/String;

    invoke-direct {v5, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/androlua/LuaActivity;->pageName:Ljava/lang/String;

    const-string v6, "."

    invoke-virtual {v5, v6}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v5

    if-lez v5, :cond_2

    iget-object v6, p0, Lcom/androlua/LuaActivity;->pageName:Ljava/lang/String;

    invoke-virtual {v6, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/androlua/LuaActivity;->pageName:Ljava/lang/String;

    :cond_2
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/androlua/LuaActivity;->luaDir:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "/?.lua;"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/androlua/LuaActivity;->luaDir:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "/lua/?.lua;"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/androlua/LuaActivity;->luaDir:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "/?/init.lua;"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/androlua/LuaActivity;->luaLpath:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/androlua/LuaActivity;->luaLpath:Ljava/lang/String;

    invoke-direct {p0}, Lcom/androlua/LuaActivity;->initLua()V

    new-instance v5, Lcom/androlua/LuaDexLoader;

    invoke-direct {v5, p0}, Lcom/androlua/LuaDexLoader;-><init>(Lcom/androlua/LuaContext;)V

    iput-object v5, p0, Lcom/androlua/LuaActivity;->mLuaDexLoader:Lcom/androlua/LuaDexLoader;

    invoke-virtual {v5}, Lcom/androlua/LuaDexLoader;->loadLibs()V

    iget-object v5, p0, Lcom/androlua/LuaActivity;->luaPath:Ljava/lang/String;

    invoke-virtual {p0, v5, v2}, Lcom/androlua/LuaActivity;->doFile(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v5, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iput-object v5, p0, Lcom/androlua/LuaActivity;->isCreate:Ljava/lang/Boolean;

    iget-object v5, p0, Lcom/androlua/LuaActivity;->pageName:Ljava/lang/String;

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3

    invoke-virtual {p0, v0, v2}, Lcom/androlua/LuaActivity;->runFunc(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    iget-object v0, p0, Lcom/androlua/LuaActivity;->pageName:Ljava/lang/String;

    invoke-virtual {p0, v0, v2}, Lcom/androlua/LuaActivity;->runFunc(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "onCreate"

    new-array v2, v3, [Ljava/lang/Object;

    aput-object p1, v2, v4

    invoke-virtual {p0, v0, v2}, Lcom/androlua/LuaActivity;->runFunc(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    iget-boolean p1, p0, Lcom/androlua/LuaActivity;->isSetViewed:Z

    if-nez p1, :cond_4

    invoke-virtual {p0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object p1

    const/4 v0, 0x3

    new-array v0, v0, [I

    const v2, 0x1010031

    aput v2, v0, v4

    const v2, 0x1010036

    aput v2, v0, v3

    const/4 v2, 0x2

    const v5, 0x101034f

    aput v5, v0, v2

    invoke-virtual {p1, v0}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object p1

    const v0, 0xff00ff

    invoke-virtual {p1, v4, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v2

    invoke-virtual {p1, v3, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    iget-object p1, p0, Lcom/androlua/LuaActivity;->status:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object p1, p0, Lcom/androlua/LuaActivity;->layout:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v2}, Landroid/view/View;->setBackgroundColor(I)V

    iget-object p1, p0, Lcom/androlua/LuaActivity;->layout:Landroid/widget/LinearLayout;

    invoke-virtual {p0, p1}, Lcom/androlua/LuaActivity;->setContentView(Landroid/view/View;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_4
    iget-object p1, p0, Lcom/androlua/LuaActivity;->L:Lcom/luajava/LuaState;

    const-string v0, "onKeyDown"

    invoke-virtual {p1, v0}, Lcom/luajava/LuaState;->v(Ljava/lang/String;)Lcom/luajava/LuaObject;

    move-result-object p1

    iput-object p1, p0, Lcom/androlua/LuaActivity;->mOnKeyDown:Lcom/luajava/LuaObject;

    invoke-virtual {p1}, Lcom/luajava/LuaObject;->isNil()Z

    move-result p1

    if-eqz p1, :cond_5

    iput-object v1, p0, Lcom/androlua/LuaActivity;->mOnKeyDown:Lcom/luajava/LuaObject;

    :cond_5
    iget-object p1, p0, Lcom/androlua/LuaActivity;->L:Lcom/luajava/LuaState;

    const-string v0, "onKeyUp"

    invoke-virtual {p1, v0}, Lcom/luajava/LuaState;->v(Ljava/lang/String;)Lcom/luajava/LuaObject;

    move-result-object p1

    iput-object p1, p0, Lcom/androlua/LuaActivity;->mOnKeyUp:Lcom/luajava/LuaObject;

    invoke-virtual {p1}, Lcom/luajava/LuaObject;->isNil()Z

    move-result p1

    if-eqz p1, :cond_6

    iput-object v1, p0, Lcom/androlua/LuaActivity;->mOnKeyUp:Lcom/luajava/LuaObject;

    :cond_6
    iget-object p1, p0, Lcom/androlua/LuaActivity;->L:Lcom/luajava/LuaState;

    const-string v0, "onKeyLongPress"

    invoke-virtual {p1, v0}, Lcom/luajava/LuaState;->v(Ljava/lang/String;)Lcom/luajava/LuaObject;

    move-result-object p1

    iput-object p1, p0, Lcom/androlua/LuaActivity;->mOnKeyLongPress:Lcom/luajava/LuaObject;

    invoke-virtual {p1}, Lcom/luajava/LuaObject;->isNil()Z

    move-result p1

    if-eqz p1, :cond_7

    iput-object v1, p0, Lcom/androlua/LuaActivity;->mOnKeyLongPress:Lcom/luajava/LuaObject;

    :cond_7
    iget-object p1, p0, Lcom/androlua/LuaActivity;->L:Lcom/luajava/LuaState;

    const-string v0, "onTouchEvent"

    invoke-virtual {p1, v0}, Lcom/luajava/LuaState;->v(Ljava/lang/String;)Lcom/luajava/LuaObject;

    move-result-object p1

    iput-object p1, p0, Lcom/androlua/LuaActivity;->mOnTouchEvent:Lcom/luajava/LuaObject;

    invoke-virtual {p1}, Lcom/luajava/LuaObject;->isNil()Z

    move-result p1

    if-eqz p1, :cond_8

    iput-object v1, p0, Lcom/androlua/LuaActivity;->mOnTouchEvent:Lcom/luajava/LuaObject;

    :cond_8
    invoke-virtual {p0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object p1

    if-eqz p1, :cond_9

    invoke-virtual {p1, v3}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    const v0, 0x1080038

    invoke-virtual {p1, v0}, Landroid/app/ActionBar;->setHomeAsUpIndicator(I)V

    const v0, 0x7f0700be

    invoke-virtual {p1, v0}, Landroid/app/ActionBar;->setHomeActionContentDescription(I)V

    :cond_9
    return-void

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onCreated "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/androlua/LuaActivity;->sendMsg(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/androlua/LuaActivity;->layout:Landroid/widget/LinearLayout;

    invoke-virtual {p0, p1}, Lcom/androlua/LuaActivity;->setContentView(Landroid/view/View;)V

    return-void
.end method

.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 2

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 v1, 0x1

    aput-object p2, v0, v1

    const/4 v1, 0x2

    aput-object p3, v0, v1

    const-string v1, "onCreateContextMenu"

    invoke-virtual {p0, v1, v0}, Lcom/androlua/LuaActivity;->runFunc(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V

    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2

    iput-object p1, p0, Lcom/androlua/LuaActivity;->optionsMenu:Landroid/view/Menu;

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const-string v1, "onCreateOptionsMenu"

    invoke-virtual {p0, v1, v0}, Lcom/androlua/LuaActivity;->runFunc(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result p1

    return p1
.end method

.method protected onDestroy()V
    .locals 3

    iget-object v0, p0, Lcom/androlua/LuaActivity;->mReceiver:Lcom/androlua/LuaBroadcastReceiver;

    if-eqz v0, :cond_0

    invoke-virtual {p0, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    :cond_0
    iget-object v0, p0, Lcom/androlua/LuaActivity;->gclist:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/androlua/LuaGcable;

    if-eqz v1, :cond_1

    invoke-interface {v1}, Lcom/androlua/LuaGcable;->gc()V

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "onDestroy"

    invoke-virtual {p0, v1, v0}, Lcom/androlua/LuaActivity;->runFunc(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    invoke-static {}, Ljava/lang/System;->gc()V

    iget-object v0, p0, Lcom/androlua/LuaActivity;->L:Lcom/luajava/LuaState;

    if-eqz v0, :cond_3

    const/4 v1, 0x2

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/luajava/LuaState;->k(II)I

    :cond_3
    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 p1, 0x1

    aput-object p2, v0, p1

    const/4 p1, 0x2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, v0, p1

    const/4 p1, 0x3

    invoke-static {p4, p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    aput-object p2, v0, p1

    const-string p1, "onItemClick"

    invoke-virtual {p0, p1, v0}, Lcom/androlua/LuaActivity;->runFunc(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

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

    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 p1, 0x1

    aput-object p2, v0, p1

    const/4 p1, 0x2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, v0, p1

    const/4 p1, 0x3

    invoke-static {p4, p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    aput-object p2, v0, p1

    const-string p1, "onItemLongClick"

    invoke-virtual {p0, p1, v0}, Lcom/androlua/LuaActivity;->runFunc(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    return p1
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 4

    iget-object v0, p0, Lcom/androlua/LuaActivity;->mOnKeyDown:Lcom/luajava/LuaObject;

    if-eqz v0, :cond_0

    const/4 v1, 0x2

    :try_start_0
    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const/4 v2, 0x1

    aput-object p2, v1, v2

    invoke-virtual {v0, v1}, Lcom/luajava/LuaObject;->call([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-class v3, Ljava/lang/Boolean;

    if-ne v1, v3, :cond_0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0
    :try_end_0
    .catch Lcom/luajava/LuaException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v0, :cond_0

    return v2

    :catch_0
    move-exception v0

    const-string v1, "onKeyDown"

    invoke-virtual {p0, v1, v0}, Lcom/androlua/LuaActivity;->sendError(Ljava/lang/String;Ljava/lang/Exception;)V

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method public onKeyLongPress(ILandroid/view/KeyEvent;)Z
    .locals 4

    iget-object v0, p0, Lcom/androlua/LuaActivity;->mOnKeyLongPress:Lcom/luajava/LuaObject;

    if-eqz v0, :cond_0

    const/4 v1, 0x2

    :try_start_0
    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const/4 v2, 0x1

    aput-object p2, v1, v2

    invoke-virtual {v0, v1}, Lcom/luajava/LuaObject;->call([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-class v3, Ljava/lang/Boolean;

    if-ne v1, v3, :cond_0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0
    :try_end_0
    .catch Lcom/luajava/LuaException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v0, :cond_0

    return v2

    :catch_0
    move-exception v0

    const-string v1, "onKeyLongPress"

    invoke-virtual {p0, v1, v0}, Lcom/androlua/LuaActivity;->sendError(Ljava/lang/String;Ljava/lang/Exception;)V

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyLongPress(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 4

    iget-object v0, p0, Lcom/androlua/LuaActivity;->mOnKeyUp:Lcom/luajava/LuaObject;

    if-eqz v0, :cond_0

    const/4 v1, 0x2

    :try_start_0
    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const/4 v2, 0x1

    aput-object p2, v1, v2

    invoke-virtual {v0, v1}, Lcom/luajava/LuaObject;->call([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-class v3, Ljava/lang/Boolean;

    if-ne v1, v3, :cond_0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0
    :try_end_0
    .catch Lcom/luajava/LuaException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v0, :cond_0

    return v2

    :catch_0
    move-exception v0

    const-string v1, "onKeyUp"

    invoke-virtual {p0, v1, v0}, Lcom/androlua/LuaActivity;->sendError(Ljava/lang/String;Ljava/lang/Exception;)V

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method public onMenuItemSelected(ILandroid/view/MenuItem;)Z
    .locals 3

    invoke-interface {p2}, Landroid/view/MenuItem;->hasSubMenu()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    aput-object p2, v0, v1

    const-string v1, "onMenuItemSelected"

    invoke-virtual {p0, v1, v0}, Lcom/androlua/LuaActivity;->runFunc(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onMenuItemSelected(ILandroid/view/MenuItem;)Z

    move-result p1

    return p1
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 4

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    const/4 v2, 0x1

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/androlua/LuaActivity;->finish()V

    return v2

    :cond_0
    invoke-interface {p1}, Landroid/view/MenuItem;->hasSubMenu()Z

    move-result v0

    if-nez v0, :cond_1

    new-array v0, v2, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const-string v1, "onOptionsItemSelected"

    invoke-virtual {p0, v1, v0}, Lcom/androlua/LuaActivity;->runFunc(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-class v3, Ljava/lang/Boolean;

    if-ne v1, v3, :cond_2

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_2

    return v2

    :cond_2
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1
.end method

.method protected onPause()V
    .locals 2

    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "onPause"

    invoke-virtual {p0, v1, v0}, Lcom/androlua/LuaActivity;->runFunc(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 p1, 0x1

    aput-object p2, v0, p1

    const-string p1, "onReceive"

    invoke-virtual {p0, p1, v0}, Lcom/androlua/LuaActivity;->runFunc(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method protected onResume()V
    .locals 2

    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "onResume"

    invoke-virtual {p0, v1, v0}, Lcom/androlua/LuaActivity;->runFunc(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method protected onStart()V
    .locals 2

    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "onStart"

    invoke-virtual {p0, v1, v0}, Lcom/androlua/LuaActivity;->runFunc(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method protected onStop()V
    .locals 2

    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "onStop"

    invoke-virtual {p0, v1, v0}, Lcom/androlua/LuaActivity;->runFunc(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4

    iget-object v0, p0, Lcom/androlua/LuaActivity;->mOnTouchEvent:Lcom/luajava/LuaObject;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    :try_start_0
    new-array v2, v1, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-virtual {v0, v2}, Lcom/luajava/LuaObject;->call([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-class v3, Ljava/lang/Boolean;

    if-ne v2, v3, :cond_0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0
    :try_end_0
    .catch Lcom/luajava/LuaException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v0, :cond_0

    return v1

    :catch_0
    move-exception v0

    const-string v1, "onTouchEvent"

    invoke-virtual {p0, v1, v0}, Lcom/androlua/LuaActivity;->sendError(Ljava/lang/String;Ljava/lang/Exception;)V

    :cond_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public push(ILjava/lang/String;)V
    .locals 3

    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "data"

    invoke-virtual {v1, v2, p2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    iput p1, v0, Landroid/os/Message;->what:I

    iget-object p1, p0, Lcom/androlua/LuaActivity;->handler:Landroid/os/Handler;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public push(ILjava/lang/String;[Ljava/lang/Object;)V
    .locals 3

    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "data"

    invoke-virtual {v1, v2, p2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p2, "args"

    invoke-virtual {v1, p2, p3}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    invoke-virtual {v0, v1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    iput p1, v0, Landroid/os/Message;->what:I

    iget-object p1, p0, Lcom/androlua/LuaActivity;->handler:Landroid/os/Handler;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public readAsset(Ljava/lang/String;)[B
    .locals 1

    invoke-virtual {p0}, Lcom/androlua/LuaActivity;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object p1

    invoke-static {p1}, Lcom/androlua/LuaActivity;->readAll(Ljava/io/InputStream;)[B

    move-result-object v0

    invoke-virtual {p1}, Ljava/io/InputStream;->close()V

    return-object v0
.end method

.method public regGc(Lcom/androlua/LuaGcable;)V
    .locals 1

    iget-object v0, p0, Lcom/androlua/LuaActivity;->gclist:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public registerReceiver(Landroid/content/IntentFilter;)Landroid/content/Intent;
    .locals 1

    iget-object v0, p0, Lcom/androlua/LuaActivity;->mReceiver:Lcom/androlua/LuaBroadcastReceiver;

    if-eqz v0, :cond_0

    invoke-virtual {p0, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    :cond_0
    new-instance v0, Lcom/androlua/LuaBroadcastReceiver;

    invoke-direct {v0, p0}, Lcom/androlua/LuaBroadcastReceiver;-><init>(Lcom/androlua/LuaBroadcastReceiver$OnReceiveListerer;)V

    iput-object v0, p0, Lcom/androlua/LuaActivity;->mReceiver:Lcom/androlua/LuaBroadcastReceiver;

    invoke-super {p0, v0, p1}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-result-object p1

    return-object p1
.end method

.method public registerReceiver(Lcom/androlua/LuaBroadcastReceiver$OnReceiveListerer;Landroid/content/IntentFilter;)Landroid/content/Intent;
    .locals 1

    new-instance v0, Lcom/androlua/LuaBroadcastReceiver;

    invoke-direct {v0, p1}, Lcom/androlua/LuaBroadcastReceiver;-><init>(Lcom/androlua/LuaBroadcastReceiver$OnReceiveListerer;)V

    invoke-super {p0, v0, p2}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-result-object p1

    return-object p1
.end method

.method public registerReceiver(Lcom/androlua/LuaBroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;
    .locals 0

    invoke-super {p0, p1, p2}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-result-object p1

    return-object p1
.end method

.method public result([Ljava/lang/Object;)V
    .locals 3

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "name"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "data"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    const/4 p1, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    invoke-virtual {p0}, Lcom/androlua/LuaActivity;->finish()V

    return-void
.end method

.method public varargs runFunc(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    iget-object v0, p0, Lcom/androlua/LuaActivity;->L:Lcom/luajava/LuaState;

    if-eqz v0, :cond_3

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/androlua/LuaActivity;->L:Lcom/luajava/LuaState;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/luajava/LuaState;->p0(I)V

    iget-object v1, p0, Lcom/androlua/LuaActivity;->L:Lcom/luajava/LuaState;

    invoke-virtual {v1}, Lcom/luajava/LuaState;->T()V

    iget-object v1, p0, Lcom/androlua/LuaActivity;->L:Lcom/luajava/LuaState;

    invoke-virtual {v1, p1}, Lcom/luajava/LuaState;->c0(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/androlua/LuaActivity;->L:Lcom/luajava/LuaState;

    const/4 v3, -0x2

    invoke-virtual {v1, v3}, Lcom/luajava/LuaState;->f0(I)I

    iget-object v1, p0, Lcom/androlua/LuaActivity;->L:Lcom/luajava/LuaState;

    const/4 v4, -0x1

    invoke-virtual {v1, v4}, Lcom/luajava/LuaState;->C(I)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/androlua/LuaActivity;->L:Lcom/luajava/LuaState;

    const-string v5, "debug"

    invoke-virtual {v1, v5}, Lcom/luajava/LuaState;->p(Ljava/lang/String;)I

    iget-object v1, p0, Lcom/androlua/LuaActivity;->L:Lcom/luajava/LuaState;

    const-string v5, "traceback"

    invoke-virtual {v1, v4, v5}, Lcom/luajava/LuaState;->m(ILjava/lang/String;)I

    iget-object v1, p0, Lcom/androlua/LuaActivity;->L:Lcom/luajava/LuaState;

    invoke-virtual {v1, v3}, Lcom/luajava/LuaState;->j0(I)V

    iget-object v1, p0, Lcom/androlua/LuaActivity;->L:Lcom/luajava/LuaState;

    invoke-virtual {v1, v3}, Lcom/luajava/LuaState;->A(I)V

    array-length v1, p2

    :goto_0
    if-ge v2, v1, :cond_0

    iget-object v3, p0, Lcom/androlua/LuaActivity;->L:Lcom/luajava/LuaState;

    aget-object v5, p2, v2

    invoke-virtual {v3, v5}, Lcom/luajava/LuaState;->a0(Ljava/lang/Object;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    iget-object p2, p0, Lcom/androlua/LuaActivity;->L:Lcom/luajava/LuaState;

    rsub-int/lit8 v2, v1, -0x2

    const/4 v3, 0x1

    invoke-virtual {p2, v1, v3, v2}, Lcom/luajava/LuaState;->P(III)I

    move-result p2

    if-nez p2, :cond_1

    iget-object p2, p0, Lcom/androlua/LuaActivity;->L:Lcom/luajava/LuaState;

    invoke-virtual {p2, v4}, Lcom/luajava/LuaState;->t0(I)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catch Lcom/luajava/LuaException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-object p1

    :cond_1
    :try_start_2
    new-instance v1, Lcom/luajava/LuaException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0, p2}, Lcom/androlua/LuaActivity;->errorReason(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ": "

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/androlua/LuaActivity;->L:Lcom/luajava/LuaState;

    invoke-virtual {p2, v4}, Lcom/luajava/LuaState;->v0(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {v1, p2}, Lcom/luajava/LuaException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_2
    .catch Lcom/luajava/LuaException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :catch_0
    move-exception p2

    :try_start_3
    invoke-virtual {p0, p1, p2}, Lcom/androlua/LuaActivity;->sendError(Ljava/lang/String;Ljava/lang/Exception;)V

    :cond_2
    monitor-exit v0

    goto :goto_2

    :goto_1
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw p1

    :cond_3
    :goto_2
    const/4 p1, 0x0

    return-object p1
.end method

.method public sendError(Ljava/lang/String;Ljava/lang/Exception;)V
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 v1, 0x1

    aput-object p2, v0, v1

    const-string v1, "onError"

    invoke-virtual {p0, v1, v0}, Lcom/androlua/LuaActivity;->runFunc(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-class v2, Ljava/lang/Boolean;

    if-ne v1, v2, :cond_0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ": "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/androlua/LuaActivity;->sendMsg(Ljava/lang/String;)V

    return-void
.end method

.method public sendMsg(Ljava/lang/String;)V
    .locals 3

    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "data"

    invoke-virtual {v1, v2, p1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    const/4 v1, 0x0

    iput v1, v0, Landroid/os/Message;->what:I

    iget-object v1, p0, Lcom/androlua/LuaActivity;->handler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    const-string v0, "lua"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public set(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 3

    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p2, v1, v2

    invoke-virtual {p0, v0, p1, v1}, Lcom/androlua/LuaActivity;->push(ILjava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public setAdapter(Landroid/widget/ListAdapter;)V
    .locals 2

    iget-object v0, p0, Lcom/androlua/LuaActivity;->mListView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/androlua/LuaActivity;->mView:Landroid/view/View;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/androlua/LuaActivity;->mListView:Landroid/widget/ListView;

    invoke-virtual {p0, v0}, Lcom/androlua/LuaActivity;->setContentView(Landroid/view/View;)V

    :cond_0
    iget-object v0, p0, Lcom/androlua/LuaActivity;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0, p1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    return-void
.end method

.method public setContentView(Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lcom/androlua/LuaActivity;->mView:Landroid/view/View;

    invoke-super {p0, p1}, Landroid/app/Activity;->setContentView(Landroid/view/View;)V

    return-void
.end method

.method public setContentView(Lcom/luajava/LuaObject;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/androlua/LuaActivity;->setContentView(Lcom/luajava/LuaObject;Lcom/luajava/LuaObject;)V

    return-void
.end method

.method public setContentView(Lcom/luajava/LuaObject;Lcom/luajava/LuaObject;)V
    .locals 5

    iget-object v0, p0, Lcom/androlua/LuaActivity;->L:Lcom/luajava/LuaState;

    const-string v1, "loadlayout"

    invoke-virtual {v0, v1}, Lcom/luajava/LuaState;->v(Ljava/lang/String;)Lcom/luajava/LuaObject;

    move-result-object v0

    invoke-virtual {p1}, Lcom/luajava/LuaObject;->isString()Z

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x2

    if-eqz v1, :cond_0

    new-array v1, v4, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/luajava/LuaObject;->getString()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v1, v3

    aput-object p2, v1, v2

    invoke-virtual {v0, v1}, Lcom/luajava/LuaObject;->call([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    :goto_0
    check-cast p1, Landroid/view/View;

    goto :goto_1

    :cond_0
    invoke-virtual {p1}, Lcom/luajava/LuaObject;->isTable()Z

    move-result v1

    if-eqz v1, :cond_1

    new-array v1, v4, [Ljava/lang/Object;

    aput-object p1, v1, v3

    aput-object p2, v1, v2

    invoke-virtual {v0, v1}, Lcom/luajava/LuaObject;->call([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    goto :goto_0

    :goto_1
    invoke-virtual {p0, p1}, Lcom/androlua/LuaActivity;->setContentView(Landroid/view/View;)V

    return-void

    :cond_1
    new-instance p1, Lcom/luajava/LuaException;

    const-string p2, "layout may be table or string."

    invoke-direct {p1, p2}, Lcom/luajava/LuaException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setContentView(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/androlua/LuaActivity;->setContentView(Ljava/lang/String;Lcom/luajava/LuaObject;)V

    return-void
.end method

.method public setContentView(Ljava/lang/String;Lcom/luajava/LuaObject;)V
    .locals 3

    iget-object v0, p0, Lcom/androlua/LuaActivity;->L:Lcom/luajava/LuaState;

    const-string v1, "loadlayout"

    invoke-virtual {v0, v1}, Lcom/luajava/LuaState;->v(Ljava/lang/String;)Lcom/luajava/LuaObject;

    move-result-object v0

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 p1, 0x1

    aput-object p2, v1, p1

    invoke-virtual {v0, v1}, Lcom/luajava/LuaObject;->call([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    invoke-virtual {p0, p1}, Lcom/androlua/LuaActivity;->setContentView(Landroid/view/View;)V

    return-void
.end method

.method public setDebug(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/androlua/LuaActivity;->mDebug:Z

    return-void
.end method

.method public setFragment(Landroid/app/Fragment;)V
    .locals 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/androlua/LuaActivity;->isSetViewed:Z

    invoke-virtual {p0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v0

    const v1, 0x1020002

    invoke-virtual {v0, v1, p1}, Landroid/app/FragmentTransaction;->replace(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/FragmentTransaction;->commit()I

    return-void
.end method

.method public setItems([Ljava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    new-instance p1, Landroid/widget/ArrayListAdapter;

    const v1, 0x1090003

    invoke-direct {p1, p0, v1, v0}, Landroid/widget/ArrayListAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    invoke-virtual {p0, p1}, Lcom/androlua/LuaActivity;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-object p1, p0, Lcom/androlua/LuaActivity;->mListView:Landroid/widget/ListView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/AbsListView;->setChoiceMode(I)V

    return-void
.end method

.method public setLuaDir(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/androlua/LuaActivity;->luaDir:Ljava/lang/String;

    return-void
.end method

.method public setLuaExtDir(Ljava/lang/String;)V
    .locals 7

    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0

    const-string v1, "mounted"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    :goto_0
    iput-object p1, p0, Lcom/androlua/LuaActivity;->luaExtDir:Ljava/lang/String;

    goto :goto_3

    :cond_0
    new-instance v0, Ljava/io/File;

    const-string v1, "/storage"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v1, :cond_3

    aget-object v4, v0, v3

    invoke-virtual {v4}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_1

    goto :goto_2

    :cond_1
    array-length v5, v5

    const/4 v6, 0x5

    if-le v5, v6, :cond_2

    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v4, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/androlua/LuaActivity;->luaExtDir:Ljava/lang/String;

    :cond_2
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lcom/androlua/LuaActivity;->luaExtDir:Ljava/lang/String;

    if-nez v0, :cond_4

    invoke-virtual {p0, p1, v2}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object p1

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_4
    :goto_3
    new-instance p1, Ljava/io/File;

    iget-object v0, p0, Lcom/androlua/LuaActivity;->luaExtDir:Ljava/lang/String;

    invoke-direct {p1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_5

    invoke-virtual {p1}, Ljava/io/File;->mkdirs()Z

    :cond_5
    return-void
.end method

.method public setMultiChoiceItems([Ljava/lang/CharSequence;)V
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [I

    invoke-virtual {p0, p1, v0}, Lcom/androlua/LuaActivity;->setMultiChoiceItems([Ljava/lang/CharSequence;[I)V

    return-void
.end method

.method public setMultiChoiceItems([Ljava/lang/CharSequence;[I)V
    .locals 4

    new-instance v0, Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    new-instance p1, Landroid/widget/ArrayListAdapter;

    const v1, 0x1090010

    invoke-direct {p1, p0, v1, v0}, Landroid/widget/ArrayListAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    invoke-virtual {p0, p1}, Lcom/androlua/LuaActivity;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-object p1, p0, Lcom/androlua/LuaActivity;->mListView:Landroid/widget/ListView;

    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Landroid/widget/AbsListView;->setChoiceMode(I)V

    array-length p1, p2

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p1, :cond_0

    aget v1, p2, v0

    iget-object v2, p0, Lcom/androlua/LuaActivity;->mListView:Landroid/widget/ListView;

    aget v1, p2, v1

    const/4 v3, 0x1

    invoke-virtual {v2, v1, v3}, Landroid/widget/AbsListView;->setItemChecked(IZ)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V
    .locals 1

    iget-object v0, p0, Lcom/androlua/LuaActivity;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0, p1}, Landroid/widget/AdapterView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    return-void
.end method

.method public setSharedData(Ljava/lang/String;Ljava/lang/Object;)Z
    .locals 1

    invoke-static {}, Lcom/androlua/LuaApplication;->getInstance()Lcom/androlua/LuaApplication;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/androlua/LuaApplication;->setSharedData(Ljava/lang/String;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public setSingleChoiceItems([Ljava/lang/CharSequence;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/androlua/LuaActivity;->setSingleChoiceItems([Ljava/lang/CharSequence;I)V

    return-void
.end method

.method public setSingleChoiceItems([Ljava/lang/CharSequence;I)V
    .locals 2

    new-instance v0, Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    new-instance p1, Landroid/widget/ArrayListAdapter;

    const v1, 0x109000f

    invoke-direct {p1, p0, v1, v0}, Landroid/widget/ArrayListAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    invoke-virtual {p0, p1}, Lcom/androlua/LuaActivity;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-object p1, p0, Lcom/androlua/LuaActivity;->mListView:Landroid/widget/ListView;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/widget/AbsListView;->setChoiceMode(I)V

    iget-object p1, p0, Lcom/androlua/LuaActivity;->mListView:Landroid/widget/ListView;

    invoke-virtual {p1, p2, v0}, Landroid/widget/AbsListView;->setItemChecked(IZ)V

    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .locals 3

    invoke-super {p0, p1}, Landroid/app/Activity;->setTitle(Ljava/lang/CharSequence;)V

    :try_start_0
    new-instance v0, Landroid/app/ActivityManager$TaskDescription;

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "icon.png"

    invoke-virtual {p0, v2}, Lcom/androlua/LuaActivity;->getLuaPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/androlua/LuaActivity;->loadBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/app/ActivityManager$TaskDescription;-><init>(Ljava/lang/String;Landroid/graphics/Bitmap;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    new-instance v0, Landroid/app/ActivityManager$TaskDescription;

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Landroid/app/ActivityManager$TaskDescription;-><init>(Ljava/lang/String;)V

    :goto_0
    invoke-virtual {p0, v0}, Landroid/app/Activity;->setTaskDescription(Landroid/app/ActivityManager$TaskDescription;)V

    return-void
.end method

.method public shareFile(Ljava/lang/String;)V
    .locals 3

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.SEND"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v1}, Lcom/androlua/LuaActivity;->getType(Ljava/io/File;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    const/4 p1, 0x1

    invoke-virtual {v0, p1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const-string p1, "android.intent.extra.STREAM"

    invoke-virtual {p0, v1}, Lcom/androlua/LuaActivity;->getUriForFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v0, p1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public showToast(Ljava/lang/String;)V
    .locals 8

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lcom/androlua/LuaActivity;->toast:Landroid/widget/Toast;

    const/4 v3, 0x1

    if-eqz v2, :cond_1

    iget-wide v4, p0, Lcom/androlua/LuaActivity;->lastShow:J

    sub-long v4, v0, v4

    const-wide/16 v6, 0x3e8

    cmp-long v2, v4, v6

    if-lez v2, :cond_0

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lcom/androlua/LuaActivity;->toastbuilder:Ljava/lang/StringBuilder;

    const-string v4, "\n"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/androlua/LuaActivity;->toastbuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/androlua/LuaActivity;->toast:Landroid/widget/Toast;

    iget-object v2, p0, Lcom/androlua/LuaActivity;->toastbuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/widget/Toast;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/androlua/LuaActivity;->toast:Landroid/widget/Toast;

    invoke-virtual {p1, v3}, Landroid/widget/Toast;->setDuration(I)V

    goto :goto_1

    :cond_1
    :goto_0
    iget-object v2, p0, Lcom/androlua/LuaActivity;->toastbuilder:Ljava/lang/StringBuilder;

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->setLength(I)V

    invoke-static {p0, p1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    iput-object v2, p0, Lcom/androlua/LuaActivity;->toast:Landroid/widget/Toast;

    iget-object v2, p0, Lcom/androlua/LuaActivity;->toastbuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_1
    iput-wide v0, p0, Lcom/androlua/LuaActivity;->lastShow:J

    iget-object p1, p0, Lcom/androlua/LuaActivity;->toast:Landroid/widget/Toast;

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method public task(JLcom/luajava/LuaObject;)Lcom/androlua/LuaAsyncTask;
    .locals 1

    new-instance v0, Lcom/androlua/LuaAsyncTask;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/androlua/LuaAsyncTask;-><init>(Lcom/androlua/LuaContext;JLcom/luajava/LuaObject;)V

    invoke-virtual {v0}, Lcom/androlua/LuaAsyncTask;->execute()V

    return-object v0
.end method

.method public task(Lcom/luajava/LuaObject;)Lcom/androlua/LuaAsyncTask;
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, v0}, Lcom/androlua/LuaActivity;->task(Lcom/luajava/LuaObject;Lcom/luajava/LuaObject;Lcom/luajava/LuaObject;)Lcom/androlua/LuaAsyncTask;

    move-result-object p1

    return-object p1
.end method

.method public task(Lcom/luajava/LuaObject;Lcom/luajava/LuaObject;)Lcom/androlua/LuaAsyncTask;
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p2}, Lcom/androlua/LuaActivity;->task(Lcom/luajava/LuaObject;Lcom/luajava/LuaObject;Lcom/luajava/LuaObject;)Lcom/androlua/LuaAsyncTask;

    move-result-object p1

    return-object p1
.end method

.method public task(Lcom/luajava/LuaObject;Lcom/luajava/LuaObject;Lcom/luajava/LuaObject;)Lcom/androlua/LuaAsyncTask;
    .locals 1

    new-instance v0, Lcom/androlua/LuaAsyncTask;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/androlua/LuaAsyncTask;-><init>(Lcom/androlua/LuaContext;Lcom/luajava/LuaObject;Lcom/luajava/LuaObject;Lcom/luajava/LuaObject;)V

    invoke-virtual {v0}, Lcom/androlua/LuaAsyncTask;->execute()V

    return-object v0
.end method

.method public thread(Lcom/luajava/LuaObject;)Lcom/androlua/LuaThread;
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/androlua/LuaActivity;->newThread(Lcom/luajava/LuaObject;[Ljava/lang/Object;)Lcom/androlua/LuaThread;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    return-object p1
.end method

.method public thread(Lcom/luajava/LuaObject;[Ljava/lang/Object;)Lcom/androlua/LuaThread;
    .locals 2

    new-instance v0, Lcom/androlua/LuaThread;

    const/4 v1, 0x1

    invoke-direct {v0, p0, p1, v1, p2}, Lcom/androlua/LuaThread;-><init>(Lcom/androlua/LuaContext;Lcom/luajava/LuaObject;Z[Ljava/lang/Object;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-object v0
.end method

.method public ticker(Lcom/luajava/LuaObject;J)Lcom/androlua/Ticker;
    .locals 2

    new-instance v0, Lcom/androlua/Ticker;

    invoke-direct {v0}, Lcom/androlua/Ticker;-><init>()V

    new-instance v1, Lcom/androlua/LuaActivity$3;

    invoke-direct {v1, p0, p1}, Lcom/androlua/LuaActivity$3;-><init>(Lcom/androlua/LuaActivity;Lcom/luajava/LuaObject;)V

    invoke-virtual {v0, v1}, Lcom/androlua/Ticker;->setOnTickListener(Lcom/androlua/Ticker$OnTickListener;)V

    invoke-virtual {v0, p2, p3}, Lcom/androlua/Ticker;->setPeriod(J)V

    invoke-virtual {v0}, Lcom/androlua/Ticker;->start()V

    return-object v0
.end method

.method public timer(Lcom/luajava/LuaObject;J)Lcom/androlua/LuaTimer;
    .locals 7

    const-wide/16 v2, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-wide v4, p2

    invoke-virtual/range {v0 .. v6}, Lcom/androlua/LuaActivity;->timer(Lcom/luajava/LuaObject;JJ[Ljava/lang/Object;)Lcom/androlua/LuaTimer;

    move-result-object p1

    return-object p1
.end method

.method public timer(Lcom/luajava/LuaObject;JJ)Lcom/androlua/LuaTimer;
    .locals 7

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move-wide v4, p4

    invoke-virtual/range {v0 .. v6}, Lcom/androlua/LuaActivity;->timer(Lcom/luajava/LuaObject;JJ[Ljava/lang/Object;)Lcom/androlua/LuaTimer;

    move-result-object p1

    return-object p1
.end method

.method public timer(Lcom/luajava/LuaObject;JJ[Ljava/lang/Object;)Lcom/androlua/LuaTimer;
    .locals 1

    new-instance v0, Lcom/androlua/LuaTimer;

    invoke-direct {v0, p0, p1, p6}, Lcom/androlua/LuaTimer;-><init>(Lcom/androlua/LuaContext;Lcom/luajava/LuaObject;[Ljava/lang/Object;)V

    invoke-virtual {v0, p2, p3, p4, p5}, Lcom/androlua/LuaTimer;->start(JJ)V

    return-object v0
.end method

.method public timer(Lcom/luajava/LuaObject;J[Ljava/lang/Object;)Lcom/androlua/LuaTimer;
    .locals 7

    const-wide/16 v2, 0x0

    move-object v0, p0

    move-object v1, p1

    move-wide v4, p2

    move-object v6, p4

    invoke-virtual/range {v0 .. v6}, Lcom/androlua/LuaActivity;->timer(Lcom/luajava/LuaObject;JJ[Ljava/lang/Object;)Lcom/androlua/LuaTimer;

    move-result-object p1

    return-object p1
.end method

.method public toPinyin(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    invoke-static {p1}, Lk2/a0;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public unZipAssets(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    :cond_0
    :try_start_0
    invoke-virtual {p0}, Lcom/androlua/LuaActivity;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    new-instance v0, Ljava/util/zip/ZipInputStream;

    invoke-direct {v0, p1}, Ljava/util/zip/ZipInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-virtual {v0}, Ljava/util/zip/ZipInputStream;->getNextEntry()Ljava/util/zip/ZipEntry;

    move-result-object p1

    const v1, 0x8000

    new-array v1, v1, [B

    :goto_0
    if-eqz p1, :cond_3

    invoke-virtual {p1}, Ljava/util/zip/ZipEntry;->isDirectory()Z

    move-result v2

    if-eqz v2, :cond_1

    new-instance v2, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v4, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->mkdir()Z

    goto :goto_2

    :cond_1
    new-instance v2, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v4, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->createNewFile()Z

    new-instance p1, Ljava/io/FileOutputStream;

    invoke-direct {p1, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    :goto_1
    invoke-virtual {v0, v1}, Ljava/io/InputStream;->read([B)I

    move-result v2

    if-lez v2, :cond_2

    const/4 v3, 0x0

    invoke-virtual {p1, v1, v3, v2}, Ljava/io/FileOutputStream;->write([BII)V

    goto :goto_1

    :cond_2
    invoke-virtual {p1}, Ljava/io/FileOutputStream;->close()V

    :goto_2
    invoke-virtual {v0}, Ljava/util/zip/ZipInputStream;->getNextEntry()Ljava/util/zip/ZipEntry;

    move-result-object p1

    goto :goto_0

    :cond_3
    invoke-virtual {v0}, Ljava/util/zip/ZipInputStream;->close()V

    :catch_0
    return-void
.end method
