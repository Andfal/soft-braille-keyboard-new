.class public Lcom/androlua/LuaService;
.super Landroid/accessibilityservice/AccessibilityService;
.source "SourceFile"

# interfaces
.implements Lcom/androlua/LuaContext;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/androlua/LuaService$MainHandler;
    }
.end annotation


# static fields
.field private static final ARG:Ljava/lang/String; = "arg"

.field private static final DATA:Ljava/lang/String; = "data"

.field private static final NAME:Ljava/lang/String; = "name"

.field private static final PATH:Ljava/lang/String; = "path"

.field private static _this:Lcom/androlua/LuaService;

.field private static lastShow:J

.field private static mDlg:Lcom/androlua/LuaDialog;

.field private static toast:Landroid/widget/Toast;

.field private static toastBuilder:Ljava/lang/StringBuilder;


# instance fields
.field private gcList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/androlua/LuaGcable;",
            ">;"
        }
    .end annotation
.end field

.field private handler:Lcom/androlua/LuaService$MainHandler;

.field private libDir:Ljava/lang/String;

.field private localDir:Ljava/lang/String;

.field public luaCpath:Ljava/lang/String;

.field public luaDir:Ljava/lang/String;

.field private luaExtDir:Ljava/lang/String;

.field private luaLpath:Ljava/lang/String;

.field private luaMdDir:Ljava/lang/String;

.field private luaPath:Ljava/lang/String;

.field private mDisplayHeight:I

.field private mDisplayWidth:I

.field private mL:Lcom/luajava/LuaState;

.field private mLuaDexLoader:Lcom/androlua/LuaDexLoader;

.field private mLuaMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/luajava/LuaState;",
            ">;"
        }
    .end annotation
.end field

.field private mReceiver:Landroid/content/BroadcastReceiver;

.field private mResources:Lcom/androlua/LuaResources;

.field private mScreenDensity:I

.field private mScreenHeight:I

.field private mScreenWidth:I

.field private noCheck:Z

.field private odexDir:Ljava/lang/String;

.field private output:Ljava/lang/StringBuilder;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sput-object v0, Lcom/androlua/LuaService;->toastBuilder:Ljava/lang/StringBuilder;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/accessibilityservice/AccessibilityService;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/androlua/LuaService;->gcList:Ljava/util/ArrayList;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/androlua/LuaService;->output:Ljava/lang/StringBuilder;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/androlua/LuaService;->mLuaMap:Ljava/util/HashMap;

    return-void
.end method

.method static bridge synthetic a(Lcom/androlua/LuaService;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/androlua/LuaService;->noCheck:Z

    return-void
.end method

.method static bridge synthetic b(Lcom/androlua/LuaDialog;)V
    .locals 0

    sput-object p0, Lcom/androlua/LuaService;->mDlg:Lcom/androlua/LuaDialog;

    return-void
.end method

.method private checkFile()V
    .locals 3

    iget-boolean v0, p0, Lcom/androlua/LuaService;->noCheck:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_1

    const-string v0, "android.permission.WRITE_EXTERNAL_STORAGE"

    invoke-virtual {p0, v0}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0700ad

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v2, 0x7f0703e2

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v2, Lcom/androlua/LuaService$3;

    invoke-direct {v2, p0}, Lcom/androlua/LuaService$3;-><init>(Lcom/androlua/LuaService;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/androlua/LuaService$2;

    invoke-direct {v1, p0}, Lcom/androlua/LuaService$2;-><init>(Lcom/androlua/LuaService;)V

    const v2, 0x7f07026b

    invoke-virtual {v0, v2, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-static {v0}, Lh2/i;->b(Landroid/app/AlertDialog;)Landroid/app/AlertDialog;

    :cond_1
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

.method public static getService()Lcom/androlua/LuaService;
    .locals 1

    sget-object v0, Lcom/androlua/LuaService;->_this:Lcom/androlua/LuaService;

    return-object v0
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

.method private init()V
    .locals 4

    const-string v0, "window"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v2, Landroid/util/DisplayMetrics;

    invoke-direct {v2}, Landroid/util/DisplayMetrics;-><init>()V

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/view/Display;->getRealMetrics(Landroid/util/DisplayMetrics;)V

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    iget v0, v1, Landroid/util/DisplayMetrics;->densityDpi:I

    iput v0, p0, Lcom/androlua/LuaService;->mScreenDensity:I

    iget v0, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    iput v0, p0, Lcom/androlua/LuaService;->mScreenWidth:I

    iget v0, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    iput v0, p0, Lcom/androlua/LuaService;->mScreenHeight:I

    iget v0, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    iput v0, p0, Lcom/androlua/LuaService;->mDisplayWidth:I

    iget v0, v2, Landroid/util/DisplayMetrics;->heightPixels:I

    iput v0, p0, Lcom/androlua/LuaService;->mDisplayHeight:I

    return-void
.end method

.method private initLua()Lcom/luajava/LuaState;
    .locals 3

    invoke-static {}, Lcom/luajava/LuaStateFactory;->c()Lcom/luajava/LuaState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/luajava/LuaState;->O()V

    invoke-virtual {v0, p0}, Lcom/luajava/LuaState;->X(Ljava/lang/Object;)V

    const-string v1, "service"

    invoke-virtual {v0, v1}, Lcom/luajava/LuaState;->m0(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/luajava/LuaState;->p(Ljava/lang/String;)I

    const-string v1, "this"

    invoke-virtual {v0, v1}, Lcom/luajava/LuaState;->m0(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Lcom/luajava/LuaState;->S(Lcom/androlua/LuaContext;)V

    const-string v1, "package"

    invoke-virtual {v0, v1}, Lcom/luajava/LuaState;->p(Ljava/lang/String;)I

    iget-object v1, p0, Lcom/androlua/LuaService;->luaLpath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/luajava/LuaState;->c0(Ljava/lang/String;)V

    const-string v1, "path"

    const/4 v2, -0x2

    invoke-virtual {v0, v2, v1}, Lcom/luajava/LuaState;->l0(ILjava/lang/String;)V

    iget-object v1, p0, Lcom/androlua/LuaService;->luaCpath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/luajava/LuaState;->c0(Ljava/lang/String;)V

    const-string v1, "cpath"

    invoke-virtual {v0, v2, v1}, Lcom/luajava/LuaState;->l0(ILjava/lang/String;)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/luajava/LuaState;->Q(I)V

    new-instance v1, Lcom/androlua/LuaPrint;

    invoke-direct {v1, p0, v0}, Lcom/androlua/LuaPrint;-><init>(Lcom/androlua/LuaContext;Lcom/luajava/LuaState;)V

    :try_start_0
    const-string v2, "print"

    invoke-virtual {v1, v2}, Lcom/luajava/JavaFunction;->register(Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/luajava/LuaException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    return-object v0
.end method

.method private initLua(Ljava/lang/String;)Lcom/luajava/LuaState;
    .locals 3

    iget-object v0, p0, Lcom/androlua/LuaService;->mLuaMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/luajava/LuaState;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    invoke-static {}, Lcom/luajava/LuaStateFactory;->c()Lcom/luajava/LuaState;

    move-result-object v0

    iget-object v1, p0, Lcom/androlua/LuaService;->mLuaMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v0}, Lcom/luajava/LuaState;->O()V

    invoke-virtual {v0, p0}, Lcom/luajava/LuaState;->X(Ljava/lang/Object;)V

    const-string v1, "service"

    invoke-virtual {v0, v1}, Lcom/luajava/LuaState;->m0(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/luajava/LuaState;->p(Ljava/lang/String;)I

    const-string v1, "this"

    invoke-virtual {v0, v1}, Lcom/luajava/LuaState;->m0(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Lcom/luajava/LuaState;->S(Lcom/androlua/LuaContext;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/?.lua;"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/lua/?.lua;"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "/?/init.lua;"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/androlua/LuaService;->luaLpath:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "package"

    invoke-virtual {v0, v1}, Lcom/luajava/LuaState;->p(Ljava/lang/String;)I

    invoke-virtual {v0, p1}, Lcom/luajava/LuaState;->c0(Ljava/lang/String;)V

    const-string p1, "path"

    const/4 v1, -0x2

    invoke-virtual {v0, v1, p1}, Lcom/luajava/LuaState;->l0(ILjava/lang/String;)V

    iget-object p1, p0, Lcom/androlua/LuaService;->luaCpath:Ljava/lang/String;

    invoke-virtual {v0, p1}, Lcom/luajava/LuaState;->c0(Ljava/lang/String;)V

    const-string p1, "cpath"

    invoke-virtual {v0, v1, p1}, Lcom/luajava/LuaState;->l0(ILjava/lang/String;)V

    const/4 p1, 0x1

    invoke-virtual {v0, p1}, Lcom/luajava/LuaState;->Q(I)V

    new-instance p1, Lcom/androlua/LuaPrint;

    invoke-direct {p1, p0, v0}, Lcom/androlua/LuaPrint;-><init>(Lcom/androlua/LuaContext;Lcom/luajava/LuaState;)V

    :try_start_0
    const-string v1, "print"

    invoke-virtual {p1, v1}, Lcom/luajava/JavaFunction;->register(Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/luajava/LuaException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    return-object v0
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

.method public static showToast(Ljava/lang/String;)V
    .locals 4

    const/4 v0, 0x1

    :try_start_0
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x18

    if-lt v1, v2, :cond_0

    invoke-static {}, Lcom/androlua/LuaApplication;->getInstance()Lcom/androlua/LuaApplication;

    move-result-object v1

    const-class v2, Landroid/os/UserManager;

    invoke-virtual {v1, v2}, Landroid/app/Application;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/UserManager;

    if-eqz v1, :cond_0

    invoke-static {v1}, Lcom/androlua/k;->a(Landroid/os/UserManager;)Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Lcom/androlua/LuaService;->_this:Lcom/androlua/LuaService;

    invoke-static {v1, p0, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_0
    sget-object v1, Lcom/androlua/LuaService;->mDlg:Lcom/androlua/LuaDialog;

    if-nez v1, :cond_1

    sget-object v1, Lcom/androlua/LuaService;->_this:Lcom/androlua/LuaService;

    const v2, 0x7f070394

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object p0, v0, v3

    invoke-virtual {v1, v2, v0}, Lcom/androlua/LuaService;->createDialog(Ljava/lang/String;[Ljava/lang/String;)Lcom/androlua/LuaDialog;

    move-result-object p0

    sput-object p0, Lcom/androlua/LuaService;->mDlg:Lcom/androlua/LuaDialog;

    invoke-virtual {p0}, Lcom/androlua/LuaDialog;->show()V

    sget-object p0, Lcom/androlua/LuaService;->mDlg:Lcom/androlua/LuaDialog;

    new-instance v0, Lcom/androlua/LuaService$4;

    invoke-direct {v0}, Lcom/androlua/LuaService$4;-><init>()V

    invoke-virtual {p0, v0}, Lcom/androlua/LuaDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    goto :goto_0

    :cond_1
    invoke-virtual {v1}, Lcom/androlua/LuaDialog;->getListView()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    check-cast v0, Landroid/widget/ArrayListAdapter;

    invoke-virtual {v0, p0}, Landroid/widget/ArrayListAdapter;->add(Ljava/lang/Object;)V

    :goto_0
    return-void
.end method


# virtual methods
.method public varargs call(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 0

    return-void
.end method

.method public callPhone(Ljava/lang/String;)V
    .locals 5

    const-string v0, "tel:"

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x17

    if-lt v1, v2, :cond_0

    const-string v1, "android.permission.CALL_PHONE"

    invoke-virtual {p0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {}, Lcom/nirenr/talkman/TalkManAccessibilityService;->getInstance()Lcom/nirenr/talkman/TalkManAccessibilityService;

    move-result-object p1

    invoke-virtual {p1, v1}, Lcom/nirenr/talkman/TalkManAccessibilityService;->requestPermissions(Ljava/lang/String;)V

    return-void

    :cond_0
    const/high16 v1, 0x10000000

    :try_start_0
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.CALL"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {v2, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/androlua/LuaService;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    new-instance v2, Landroid/content/Intent;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    const-string v0, "android.intent.action.DIAL"

    invoke-direct {v2, v0, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {v2, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/androlua/LuaService;->startActivity(Landroid/content/Intent;)V

    :goto_0
    return-void
.end method

.method public checkCmdPath(Ljava/lang/String;)Z
    .locals 2

    new-instance v0, Ljava/io/File;

    const v1, 0x7f0701f1

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/androlua/LuaService;->getLuaExtDir(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p1

    return p1
.end method

.method public checkPluginPath(Ljava/lang/String;)Z
    .locals 2

    new-instance v0, Ljava/io/File;

    const v1, 0x7f0701f9

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/androlua/LuaService;->getLuaExtDir(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p1

    return p1
.end method

.method public checkToolPath(Ljava/lang/String;)Z
    .locals 2

    new-instance v0, Ljava/io/File;

    const v1, 0x7f0701fe

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/androlua/LuaService;->getLuaExtDir(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p1

    return p1
.end method

.method public clearLuaCache()V
    .locals 1

    iget-object v0, p0, Lcom/androlua/LuaService;->mLuaMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    return-void
.end method

.method public createDialog()Lcom/androlua/LuaDialog;
    .locals 1

    new-instance v0, Lcom/androlua/LuaDialog;

    invoke-direct {v0, p0}, Lcom/androlua/LuaDialog;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public createDialog(Ljava/lang/String;Ljava/lang/String;)Lcom/androlua/LuaDialog;
    .locals 1

    new-instance v0, Lcom/androlua/LuaDialog;

    invoke-direct {v0, p0}, Lcom/androlua/LuaDialog;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p1}, Lcom/androlua/LuaDialog;->setTitle(Ljava/lang/CharSequence;)V

    invoke-virtual {v0, p2}, Lcom/androlua/LuaDialog;->setMessage(Ljava/lang/CharSequence;)V

    const p1, 0x7f070095

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {v0, p1, p2}, Lcom/androlua/LuaDialog;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    return-object v0
.end method

.method public createDialog(Ljava/lang/String;Ljava/util/List;)Lcom/androlua/LuaDialog;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/androlua/LuaDialog;"
        }
    .end annotation

    new-instance v0, Lcom/androlua/LuaDialog;

    invoke-direct {v0, p0}, Lcom/androlua/LuaDialog;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p1}, Lcom/androlua/LuaDialog;->setTitle(Ljava/lang/CharSequence;)V

    invoke-virtual {v0, p2}, Lcom/androlua/LuaDialog;->setItems(Ljava/util/List;)V

    const p1, 0x7f070095

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {v0, p1, p2}, Lcom/androlua/LuaDialog;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    return-object v0
.end method

.method public createDialog(Ljava/lang/String;[Ljava/lang/String;)Lcom/androlua/LuaDialog;
    .locals 1

    new-instance v0, Lcom/androlua/LuaDialog;

    invoke-direct {v0, p0}, Lcom/androlua/LuaDialog;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p1}, Lcom/androlua/LuaDialog;->setTitle(Ljava/lang/CharSequence;)V

    invoke-virtual {v0, p2}, Lcom/androlua/LuaDialog;->setItems([Ljava/lang/String;)V

    const p1, 0x7f070095

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {v0, p1, p2}, Lcom/androlua/LuaDialog;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    return-object v0
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
    .locals 5

    :try_start_0
    invoke-direct {p0}, Lcom/androlua/LuaService;->initLua()Lcom/luajava/LuaState;

    move-result-object v0

    invoke-virtual {p0, p1}, Lcom/androlua/LuaService;->readAsset(Ljava/lang/String;)[B

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/luajava/LuaState;->p0(I)V

    invoke-virtual {v0, v1, p1}, Lcom/luajava/LuaState;->a([BLjava/lang/String;)I

    move-result p1

    const/4 v1, -0x1

    if-nez p1, :cond_2

    const-string p1, "debug"

    invoke-virtual {v0, p1}, Lcom/luajava/LuaState;->p(Ljava/lang/String;)I

    const-string p1, "traceback"

    invoke-virtual {v0, v1, p1}, Lcom/luajava/LuaState;->m(ILjava/lang/String;)I

    const/4 p1, -0x2

    invoke-virtual {v0, p1}, Lcom/luajava/LuaState;->j0(I)V

    invoke-virtual {v0, p1}, Lcom/luajava/LuaState;->A(I)V

    if-eqz p2, :cond_0

    array-length p1, p2

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    const/4 v3, 0x0

    :goto_1
    if-ge v3, p1, :cond_1

    aget-object v4, p2, v3

    invoke-virtual {v0, v4}, Lcom/luajava/LuaState;->a0(Ljava/lang/Object;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_1
    rsub-int/lit8 p2, p1, -0x2

    invoke-virtual {v0, p1, v2, p2}, Lcom/luajava/LuaState;->P(III)I

    move-result p1

    if-nez p1, :cond_2

    invoke-virtual {v0, v1}, Lcom/luajava/LuaState;->t0(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_2
    new-instance p2, Lcom/luajava/LuaException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0, p1}, Lcom/androlua/LuaService;->errorReason(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ": "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Lcom/luajava/LuaState;->v0(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/luajava/LuaException;-><init>(Ljava/lang/String;)V

    throw p2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/androlua/LuaService;->sendMsg(Ljava/lang/String;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method public doFile(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {p0, p1, v0}, Lcom/androlua/LuaService;->doFile(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public doFile(Ljava/lang/String;Landroid/view/accessibility/AccessibilityNodeInfo;)Ljava/lang/Object;
    .locals 3

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x2f

    if-eq v1, v2, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/androlua/LuaService;->luaDir:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :cond_0
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return-object v2

    :cond_1
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->canRead()Z

    move-result v1

    if-nez v1, :cond_2

    invoke-direct {p0}, Lcom/androlua/LuaService;->checkFile()V

    return-object v2

    :cond_2
    iget-object v1, p0, Lcom/androlua/LuaService;->mL:Lcom/luajava/LuaState;

    if-nez v1, :cond_3

    invoke-direct {p0}, Lcom/androlua/LuaService;->initLua()Lcom/luajava/LuaState;

    move-result-object v1

    iput-object v1, p0, Lcom/androlua/LuaService;->mL:Lcom/luajava/LuaState;

    :cond_3
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/androlua/LuaService;->initLua(Ljava/lang/String;)Lcom/luajava/LuaState;

    move-result-object v1

    invoke-virtual {v1, p2}, Lcom/luajava/LuaState;->X(Ljava/lang/Object;)V

    const-string v2, "node"

    invoke-virtual {v1, v2}, Lcom/luajava/LuaState;->m0(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Lcom/luajava/LuaState;->p0(I)V

    invoke-virtual {v1, p1}, Lcom/luajava/LuaState;->b(Ljava/lang/String;)I

    move-result p1

    const/4 v0, -0x1

    if-nez p1, :cond_4

    const-string p1, "debug"

    invoke-virtual {v1, p1}, Lcom/luajava/LuaState;->p(Ljava/lang/String;)I

    const-string p1, "traceback"

    invoke-virtual {v1, v0, p1}, Lcom/luajava/LuaState;->m(ILjava/lang/String;)I

    const/4 p1, -0x2

    invoke-virtual {v1, p1}, Lcom/luajava/LuaState;->j0(I)V

    invoke-virtual {v1, p1}, Lcom/luajava/LuaState;->A(I)V

    invoke-virtual {v1, p2}, Lcom/luajava/LuaState;->a0(Ljava/lang/Object;)V

    const/4 p1, -0x3

    const/4 p2, 0x1

    invoke-virtual {v1, p2, p2, p1}, Lcom/luajava/LuaState;->P(III)I

    move-result p1

    if-nez p1, :cond_4

    invoke-virtual {v1, v0}, Lcom/luajava/LuaState;->t0(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_4
    new-instance p2, Lcom/luajava/LuaException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0, p1}, Lcom/androlua/LuaService;->errorReason(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ": "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Lcom/luajava/LuaState;->v0(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/luajava/LuaException;-><init>(Ljava/lang/String;)V

    throw p2
    :try_end_0
    .catch Lcom/luajava/LuaException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/androlua/LuaService;->sendMsg(Ljava/lang/String;)V

    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object p1
.end method

.method public doFile(Ljava/lang/String;Landroid/view/accessibility/AccessibilityNodeInfo;Ljava/lang/String;)Ljava/lang/Object;
    .locals 3

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x2f

    if-eq v1, v2, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/androlua/LuaService;->luaDir:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :cond_0
    iget-object v1, p0, Lcom/androlua/LuaService;->mL:Lcom/luajava/LuaState;

    if-nez v1, :cond_1

    invoke-direct {p0}, Lcom/androlua/LuaService;->initLua()Lcom/luajava/LuaState;

    move-result-object v1

    iput-object v1, p0, Lcom/androlua/LuaService;->mL:Lcom/luajava/LuaState;

    :cond_1
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/androlua/LuaService;->initLua(Ljava/lang/String;)Lcom/luajava/LuaState;

    move-result-object v1

    invoke-virtual {v1, p2}, Lcom/luajava/LuaState;->X(Ljava/lang/Object;)V

    const-string v2, "node"

    invoke-virtual {v1, v2}, Lcom/luajava/LuaState;->m0(Ljava/lang/String;)V

    invoke-virtual {v1, p3}, Lcom/luajava/LuaState;->c0(Ljava/lang/String;)V

    const-string p3, "cmd"

    invoke-virtual {v1, p3}, Lcom/luajava/LuaState;->m0(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Lcom/luajava/LuaState;->p0(I)V

    invoke-virtual {v1, p1}, Lcom/luajava/LuaState;->b(Ljava/lang/String;)I

    move-result p1

    const/4 p3, -0x1

    if-nez p1, :cond_2

    const-string p1, "debug"

    invoke-virtual {v1, p1}, Lcom/luajava/LuaState;->p(Ljava/lang/String;)I

    const-string p1, "traceback"

    invoke-virtual {v1, p3, p1}, Lcom/luajava/LuaState;->m(ILjava/lang/String;)I

    const/4 p1, -0x2

    invoke-virtual {v1, p1}, Lcom/luajava/LuaState;->j0(I)V

    invoke-virtual {v1, p1}, Lcom/luajava/LuaState;->A(I)V

    invoke-virtual {v1, p2}, Lcom/luajava/LuaState;->a0(Ljava/lang/Object;)V

    const/4 p1, -0x3

    const/4 p2, 0x1

    invoke-virtual {v1, p2, p2, p1}, Lcom/luajava/LuaState;->P(III)I

    move-result p1

    if-nez p1, :cond_2

    invoke-virtual {v1, p3}, Lcom/luajava/LuaState;->t0(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_2
    new-instance p2, Lcom/luajava/LuaException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0, p1}, Lcom/androlua/LuaService;->errorReason(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ": "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Lcom/luajava/LuaState;->v0(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/luajava/LuaException;-><init>(Ljava/lang/String;)V

    throw p2
    :try_end_0
    .catch Lcom/luajava/LuaException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    const/4 p1, 0x0

    return-object p1
.end method

.method public varargs doFile(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x2f

    if-eq v1, v2, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/androlua/LuaService;->luaDir:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :cond_0
    iget-object v1, p0, Lcom/androlua/LuaService;->mL:Lcom/luajava/LuaState;

    if-nez v1, :cond_1

    invoke-direct {p0}, Lcom/androlua/LuaService;->initLua()Lcom/luajava/LuaState;

    move-result-object v1

    iput-object v1, p0, Lcom/androlua/LuaService;->mL:Lcom/luajava/LuaState;

    :cond_1
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/androlua/LuaService;->initLua(Ljava/lang/String;)Lcom/luajava/LuaState;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/luajava/LuaState;->p0(I)V

    invoke-virtual {v1, p1}, Lcom/luajava/LuaState;->b(Ljava/lang/String;)I

    move-result p1

    const/4 v2, -0x1

    if-nez p1, :cond_4

    const-string p1, "debug"

    invoke-virtual {v1, p1}, Lcom/luajava/LuaState;->p(Ljava/lang/String;)I

    const-string p1, "traceback"

    invoke-virtual {v1, v2, p1}, Lcom/luajava/LuaState;->m(ILjava/lang/String;)I

    const/4 p1, -0x2

    invoke-virtual {v1, p1}, Lcom/luajava/LuaState;->j0(I)V

    invoke-virtual {v1, p1}, Lcom/luajava/LuaState;->A(I)V

    if-eqz p2, :cond_2

    array-length p1, p2

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    :goto_0
    if-ge v0, p1, :cond_3

    aget-object v3, p2, v0

    invoke-virtual {v1, v3}, Lcom/luajava/LuaState;->a0(Ljava/lang/Object;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    rsub-int/lit8 p2, p1, -0x2

    const/4 v0, 0x1

    invoke-virtual {v1, p1, v0, p2}, Lcom/luajava/LuaState;->P(III)I

    move-result p1

    if-nez p1, :cond_4

    invoke-virtual {v1, v2}, Lcom/luajava/LuaState;->t0(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_4
    new-instance p2, Lcom/luajava/LuaException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0, p1}, Lcom/androlua/LuaService;->errorReason(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ": "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Lcom/luajava/LuaState;->v0(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/luajava/LuaException;-><init>(Ljava/lang/String;)V

    throw p2
    :try_end_0
    .catch Lcom/luajava/LuaException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/androlua/LuaService;->sendMsg(Ljava/lang/String;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method public varargs doString(Lcom/luajava/LuaState;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/androlua/LuaService;->mL:Lcom/luajava/LuaState;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/androlua/LuaService;->initLua()Lcom/luajava/LuaState;

    move-result-object v0

    iput-object v0, p0, Lcom/androlua/LuaService;->mL:Lcom/luajava/LuaState;

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/luajava/LuaState;->p0(I)V

    invoke-virtual {p1, p2}, Lcom/luajava/LuaState;->c(Ljava/lang/String;)I

    move-result p2

    const/4 v1, -0x1

    if-nez p2, :cond_3

    const-string p2, "debug"

    invoke-virtual {p1, p2}, Lcom/luajava/LuaState;->p(Ljava/lang/String;)I

    const-string p2, "traceback"

    invoke-virtual {p1, v1, p2}, Lcom/luajava/LuaState;->m(ILjava/lang/String;)I

    const/4 p2, -0x2

    invoke-virtual {p1, p2}, Lcom/luajava/LuaState;->j0(I)V

    invoke-virtual {p1, p2}, Lcom/luajava/LuaState;->A(I)V

    if-eqz p3, :cond_1

    array-length p2, p3

    goto :goto_0

    :cond_1
    const/4 p2, 0x0

    :goto_0
    if-ge v0, p2, :cond_2

    aget-object v2, p3, v0

    invoke-virtual {p1, v2}, Lcom/luajava/LuaState;->a0(Ljava/lang/Object;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    rsub-int/lit8 p3, p2, -0x2

    const/4 v0, 0x1

    invoke-virtual {p1, p2, v0, p3}, Lcom/luajava/LuaState;->P(III)I

    move-result p2

    if-nez p2, :cond_3

    invoke-virtual {p1, v1}, Lcom/luajava/LuaState;->t0(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_3
    new-instance p3, Lcom/luajava/LuaException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0, p2}, Lcom/androlua/LuaService;->errorReason(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ": "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Lcom/luajava/LuaState;->v0(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p3, p1}, Lcom/luajava/LuaException;-><init>(Ljava/lang/String;)V

    throw p3
    :try_end_0
    .catch Lcom/luajava/LuaException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/androlua/LuaService;->sendMsg(Ljava/lang/String;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method public varargs doString(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    :try_start_0
    iget-object v0, p0, Lcom/androlua/LuaService;->mL:Lcom/luajava/LuaState;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/androlua/LuaService;->initLua()Lcom/luajava/LuaState;

    move-result-object v0

    iput-object v0, p0, Lcom/androlua/LuaService;->mL:Lcom/luajava/LuaState;

    :cond_0
    iget-object v0, p0, Lcom/androlua/LuaService;->mL:Lcom/luajava/LuaState;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/luajava/LuaState;->p0(I)V

    invoke-virtual {v0, p1}, Lcom/luajava/LuaState;->c(Ljava/lang/String;)I

    move-result p1

    const/4 v2, -0x1

    if-nez p1, :cond_3

    const-string p1, "debug"

    invoke-virtual {v0, p1}, Lcom/luajava/LuaState;->p(Ljava/lang/String;)I

    const-string p1, "traceback"

    invoke-virtual {v0, v2, p1}, Lcom/luajava/LuaState;->m(ILjava/lang/String;)I

    const/4 p1, -0x2

    invoke-virtual {v0, p1}, Lcom/luajava/LuaState;->j0(I)V

    invoke-virtual {v0, p1}, Lcom/luajava/LuaState;->A(I)V

    if-eqz p2, :cond_1

    array-length p1, p2

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    if-ge v1, p1, :cond_2

    aget-object v3, p2, v1

    invoke-virtual {v0, v3}, Lcom/luajava/LuaState;->a0(Ljava/lang/Object;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    rsub-int/lit8 p2, p1, -0x2

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1, p2}, Lcom/luajava/LuaState;->P(III)I

    move-result p1

    if-nez p1, :cond_3

    invoke-virtual {v0, v2}, Lcom/luajava/LuaState;->t0(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_3
    new-instance p2, Lcom/luajava/LuaException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0, p1}, Lcom/androlua/LuaService;->errorReason(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ": "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Lcom/luajava/LuaState;->v0(I)Ljava/lang/String;

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

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/androlua/LuaService;->sendMsg(Ljava/lang/String;)V

    const/4 p1, 0x0

    return-object p1
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

    iget-object v0, p0, Lcom/androlua/LuaService;->mLuaDexLoader:Lcom/androlua/LuaDexLoader;

    invoke-virtual {v0}, Lcom/androlua/LuaDexLoader;->getClassLoaders()Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public getContext()Landroid/content/Context;
    .locals 0

    return-object p0
.end method

.method public getDensity()I
    .locals 1

    iget v0, p0, Lcom/androlua/LuaService;->mScreenDensity:I

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/androlua/LuaService;->init()V

    :cond_0
    iget v0, p0, Lcom/androlua/LuaService;->mScreenDensity:I

    return v0
.end method

.method public getDisplayHeight()I
    .locals 1

    iget v0, p0, Lcom/androlua/LuaService;->mDisplayHeight:I

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/androlua/LuaService;->init()V

    :cond_0
    iget v0, p0, Lcom/androlua/LuaService;->mDisplayHeight:I

    return v0
.end method

.method public getDisplayWidth()I
    .locals 1

    iget v0, p0, Lcom/androlua/LuaService;->mDisplayWidth:I

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/androlua/LuaService;->init()V

    :cond_0
    iget v0, p0, Lcom/androlua/LuaService;->mDisplayWidth:I

    return v0
.end method

.method public getGlobalData()Ljava/util/Map;
    .locals 1

    invoke-virtual {p0}, Landroid/app/Service;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lcom/androlua/LuaApplication;

    invoke-virtual {v0}, Lcom/androlua/LuaApplication;->getGlobalData()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public getHeight()I
    .locals 1

    iget v0, p0, Lcom/androlua/LuaService;->mScreenHeight:I

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/androlua/LuaService;->init()V

    :cond_0
    iget v0, p0, Lcom/androlua/LuaService;->mScreenHeight:I

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

    iget-object v0, p0, Lcom/androlua/LuaService;->mLuaDexLoader:Lcom/androlua/LuaDexLoader;

    invoke-virtual {v0}, Lcom/androlua/LuaDexLoader;->getLibrarys()Ljava/util/HashMap;

    move-result-object v0

    return-object v0
.end method

.method public getLuaCpath()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/androlua/LuaService;->luaCpath:Ljava/lang/String;

    return-object v0
.end method

.method public getLuaDir()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/androlua/LuaService;->luaDir:Ljava/lang/String;

    return-object v0
.end method

.method public getLuaDir(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/androlua/LuaService;->luaDir:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

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

    iget-object v0, p0, Lcom/androlua/LuaService;->luaExtDir:Ljava/lang/String;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    invoke-static {}, Lcom/androlua/LuaApplication;->getInstance()Lcom/androlua/LuaApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/androlua/LuaApplication;->getLuaExtDir()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/androlua/LuaService;->luaExtDir:Ljava/lang/String;

    return-object v0
.end method

.method public getLuaExtDir(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Lcom/androlua/LuaService;->getLuaExtDir()Ljava/lang/String;

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

    invoke-virtual {p0}, Lcom/androlua/LuaService;->getLuaExtDir()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getLuaExtPath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    const-string v0, "\n"

    invoke-virtual {p2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    new-instance v1, Ljava/io/File;

    invoke-virtual {p0, p1}, Lcom/androlua/LuaService;->getLuaExtDir(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, p2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    const-string v1, ""

    invoke-virtual {p2, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p2

    :cond_1
    new-instance v0, Ljava/io/File;

    invoke-virtual {p0, p1}, Lcom/androlua/LuaService;->getLuaExtDir(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1, p2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getLuaLpath()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/androlua/LuaService;->luaLpath:Ljava/lang/String;

    return-object v0
.end method

.method public getLuaPath()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/androlua/LuaService;->luaPath:Ljava/lang/String;

    return-object v0
.end method

.method public getLuaPath(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Lcom/androlua/LuaService;->getLuaDir()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getLuaPath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    new-instance v0, Ljava/io/File;

    invoke-virtual {p0, p1}, Lcom/androlua/LuaService;->getLuaDir(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1, p2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getLuaState()Lcom/luajava/LuaState;
    .locals 1

    iget-object v0, p0, Lcom/androlua/LuaService;->mL:Lcom/luajava/LuaState;

    return-object v0
.end method

.method public getResources()Landroid/content/res/Resources;
    .locals 5

    invoke-static {}, Lcom/androlua/LuaResources;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-super {p0}, Landroid/accessibilityservice/AccessibilityService;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/androlua/LuaService;->mResources:Lcom/androlua/LuaResources;

    if-eqz v0, :cond_1

    return-object v0

    :cond_1
    invoke-super {p0}, Landroid/accessibilityservice/AccessibilityService;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/androlua/LuaResources;->init(Landroid/content/Context;Landroid/content/res/Resources;)V

    new-instance v1, Lcom/androlua/LuaResources;

    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v2

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v4

    invoke-direct {v1, v0, v2, v3, v4}, Lcom/androlua/LuaResources;-><init>(Landroid/content/res/Resources;Landroid/content/res/AssetManager;Landroid/util/DisplayMetrics;Landroid/content/res/Configuration;)V

    iput-object v1, p0, Lcom/androlua/LuaService;->mResources:Lcom/androlua/LuaResources;

    return-object v1
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

    iget v0, p0, Lcom/androlua/LuaService;->mScreenWidth:I

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/androlua/LuaService;->init()V

    :cond_0
    iget v0, p0, Lcom/androlua/LuaService;->mScreenWidth:I

    return v0
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

    invoke-virtual {p0, v1}, Lcom/androlua/LuaService;->getUriForFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object p1

    invoke-direct {p0, v1}, Lcom/androlua/LuaService;->getType(Ljava/io/File;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    const/high16 p1, 0x10000000

    invoke-virtual {v0, p1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/androlua/LuaService;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public loadDex(Ljava/lang/String;)Ldalvik/system/DexClassLoader;
    .locals 1

    iget-object v0, p0, Lcom/androlua/LuaService;->mLuaDexLoader:Lcom/androlua/LuaDexLoader;

    invoke-virtual {v0, p1}, Lcom/androlua/LuaDexLoader;->loadDex(Ljava/lang/String;)Ldalvik/system/DexClassLoader;

    move-result-object p1

    return-object p1
.end method

.method public newActivity(ILjava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {p0, p1, p2, v0}, Lcom/androlua/LuaService;->newActivity(ILjava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public newActivity(ILjava/lang/String;Z)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0, p3}, Lcom/androlua/LuaService;->newActivity(ILjava/lang/String;[Ljava/lang/Object;Z)V

    return-void
.end method

.method public newActivity(ILjava/lang/String;[Ljava/lang/Object;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/androlua/LuaService;->newActivity(ILjava/lang/String;[Ljava/lang/Object;Z)V

    return-void
.end method

.method public newActivity(ILjava/lang/String;[Ljava/lang/Object;Z)V
    .locals 4

    new-instance p1, Landroid/content/Intent;

    const-class v0, Lcom/androlua/LuaActivity;

    invoke-direct {p1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    if-eqz p4, :cond_0

    new-instance p1, Landroid/content/Intent;

    const-class v0, Lcom/androlua/LuaActivityX;

    invoke-direct {p1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    :cond_0
    const-string v0, "name"

    invoke-virtual {p1, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x2f

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/androlua/LuaService;->luaDir:Ljava/lang/String;

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/androlua/LuaService;->luaDir:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    :cond_1
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-eqz v1, :cond_2

    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "/main.lua"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    :cond_2
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-nez v1, :cond_3

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_4

    :cond_3
    const-string v0, ".lua"

    invoke-virtual {p2, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_4

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    :cond_4
    :goto_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_7

    if-eqz p4, :cond_5

    const/high16 v0, 0x80000

    invoke-virtual {p1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const/high16 v0, 0x8000000

    invoke-virtual {p1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    :cond_5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "file://"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    if-eqz p3, :cond_6

    const-string p2, "arg"

    invoke-virtual {p1, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    :cond_6
    invoke-virtual {p0, p1}, Lcom/androlua/LuaService;->startActivity(Landroid/content/Intent;)V

    return-void

    :cond_7
    new-instance p1, Ljava/io/FileNotFoundException;

    invoke-direct {p1, p2}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public newActivity(Ljava/lang/String;)V
    .locals 2

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x1

    invoke-virtual {p0, v1, p1, v0}, Lcom/androlua/LuaService;->newActivity(ILjava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public newActivity(Ljava/lang/String;Z)V
    .locals 2

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1, p2}, Lcom/androlua/LuaService;->newActivity(ILjava/lang/String;[Ljava/lang/Object;Z)V

    return-void
.end method

.method public newActivity(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, v0, p1, p2}, Lcom/androlua/LuaService;->newActivity(ILjava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public newActivity(Ljava/lang/String;[Ljava/lang/Object;Z)V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, v0, p1, p2, p3}, Lcom/androlua/LuaService;->newActivity(ILjava/lang/String;[Ljava/lang/Object;Z)V

    return-void
.end method

.method public newTask(Lcom/luajava/LuaObject;)Lcom/androlua/LuaAsyncTask;
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, v0}, Lcom/androlua/LuaService;->newTask(Lcom/luajava/LuaObject;Lcom/luajava/LuaObject;Lcom/luajava/LuaObject;)Lcom/androlua/LuaAsyncTask;

    move-result-object p1

    return-object p1
.end method

.method public newTask(Lcom/luajava/LuaObject;Lcom/luajava/LuaObject;)Lcom/androlua/LuaAsyncTask;
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p2}, Lcom/androlua/LuaService;->newTask(Lcom/luajava/LuaObject;Lcom/luajava/LuaObject;Lcom/luajava/LuaObject;)Lcom/androlua/LuaAsyncTask;

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

    invoke-virtual {p0, p1, v0}, Lcom/androlua/LuaService;->newThread(Lcom/luajava/LuaObject;[Ljava/lang/Object;)Lcom/androlua/LuaThread;

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

    invoke-virtual {p0, p1, v0}, Lcom/androlua/LuaService;->newTimer(Lcom/luajava/LuaObject;[Ljava/lang/Object;)Lcom/androlua/LuaTimer;

    move-result-object p1

    return-object p1
.end method

.method public newTimer(Lcom/luajava/LuaObject;[Ljava/lang/Object;)Lcom/androlua/LuaTimer;
    .locals 1

    new-instance v0, Lcom/androlua/LuaTimer;

    invoke-direct {v0, p0, p1, p2}, Lcom/androlua/LuaTimer;-><init>(Lcom/androlua/LuaContext;Lcom/luajava/LuaObject;[Ljava/lang/Object;)V

    return-object v0
.end method

.method public onAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 0

    return-void
.end method

.method public onCreate()V
    .locals 2

    invoke-super {p0}, Landroid/accessibilityservice/AccessibilityService;->onCreate()V

    invoke-direct {p0}, Lcom/androlua/LuaService;->init()V

    sput-object p0, Lcom/androlua/LuaService;->_this:Lcom/androlua/LuaService;

    invoke-virtual {p0}, Landroid/app/Service;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lcom/androlua/LuaApplication;

    invoke-virtual {v0}, Lcom/androlua/LuaApplication;->getLocalDir()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/androlua/LuaService;->localDir:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/androlua/LuaApplication;->getOdexDir()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/androlua/LuaService;->odexDir:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/androlua/LuaApplication;->getLibDir()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/androlua/LuaService;->libDir:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/androlua/LuaApplication;->getMdDir()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/androlua/LuaService;->luaMdDir:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/androlua/LuaApplication;->getLuaCpath()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/androlua/LuaService;->luaCpath:Ljava/lang/String;

    iget-object v1, p0, Lcom/androlua/LuaService;->localDir:Ljava/lang/String;

    iput-object v1, p0, Lcom/androlua/LuaService;->luaDir:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/androlua/LuaApplication;->getLuaLpath()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/androlua/LuaService;->luaLpath:Ljava/lang/String;

    new-instance v0, Lcom/androlua/LuaService$MainHandler;

    invoke-direct {v0}, Lcom/androlua/LuaService$MainHandler;-><init>()V

    iput-object v0, p0, Lcom/androlua/LuaService;->handler:Lcom/androlua/LuaService$MainHandler;

    :try_start_0
    new-instance v0, Lcom/androlua/LuaDexLoader;

    invoke-direct {v0, p0}, Lcom/androlua/LuaDexLoader;-><init>(Lcom/androlua/LuaContext;)V

    iput-object v0, p0, Lcom/androlua/LuaService;->mLuaDexLoader:Lcom/androlua/LuaDexLoader;

    invoke-virtual {v0}, Lcom/androlua/LuaDexLoader;->loadLibs()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public onDestroy()V
    .locals 1

    iget-object v0, p0, Lcom/androlua/LuaService;->mLuaMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    invoke-super {p0}, Landroid/accessibilityservice/AccessibilityService;->onDestroy()V

    return-void
.end method

.method public onInterrupt()V
    .locals 0

    return-void
.end method

.method public openActivity(Ljava/lang/String;Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 2

    const/4 v0, 0x1

    :try_start_0
    new-array v0, v0, [Landroid/os/Parcelable;

    invoke-static {p2}, Landroid/view/accessibility/AccessibilityNodeInfo;->obtain(Landroid/view/accessibility/AccessibilityNodeInfo;)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object p2

    const/4 v1, 0x0

    aput-object p2, v0, v1

    invoke-virtual {p0, p1, v0}, Lcom/androlua/LuaService;->openActivity(Ljava/lang/String;[Landroid/os/Parcelable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    const-string p2, "openActivity"

    invoke-virtual {p0, p2, p1}, Lcom/androlua/LuaService;->sendError(Ljava/lang/String;Ljava/lang/Exception;)V

    :goto_0
    return-void
.end method

.method public openActivity(Ljava/lang/String;[Landroid/os/Parcelable;)V
    .locals 3

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/androlua/LuaActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const v1, 0x10808000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

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

    if-eqz p2, :cond_0

    const-string p1, "arg"

    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Landroid/os/Parcelable;)Landroid/content/Intent;

    :cond_0
    invoke-virtual {p0, v0}, Lcom/androlua/LuaService;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public openActivity(Ljava/lang/String;[Ljava/io/Serializable;)V
    .locals 3

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/androlua/LuaActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const v1, 0x10808000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

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

    if-eqz p2, :cond_0

    const-string p1, "arg"

    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    :cond_0
    invoke-virtual {p0, v0}, Lcom/androlua/LuaService;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public reSize()V
    .locals 0

    invoke-direct {p0}, Lcom/androlua/LuaService;->init()V

    return-void
.end method

.method public readAsset(Ljava/lang/String;)[B
    .locals 1

    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object p1

    invoke-static {p1}, Lcom/androlua/LuaService;->readAll(Ljava/io/InputStream;)[B

    move-result-object v0

    invoke-virtual {p1}, Ljava/io/InputStream;->close()V

    return-object v0
.end method

.method public regGc(Lcom/androlua/LuaGcable;)V
    .locals 1

    iget-object v0, p0, Lcom/androlua/LuaService;->gcList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public registerReceiver(Lcom/androlua/LuaBroadcastReceiver$OnReceiveListerer;Landroid/content/IntentFilter;)Landroid/content/Intent;
    .locals 1

    new-instance v0, Lcom/androlua/LuaBroadcastReceiver;

    invoke-direct {v0, p1}, Lcom/androlua/LuaBroadcastReceiver;-><init>(Lcom/androlua/LuaBroadcastReceiver$OnReceiveListerer;)V

    invoke-super {p0, v0, p2}, Landroid/accessibilityservice/AccessibilityService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-result-object p1

    return-object p1
.end method

.method public registerReceiver(Lcom/androlua/LuaBroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;
    .locals 0

    invoke-super {p0, p1, p2}, Landroid/accessibilityservice/AccessibilityService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-result-object p1

    return-object p1
.end method

.method public requestPermissions([Ljava/lang/String;)V
    .locals 2

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/nirenr/talkman/RequestPermissionsActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "PERMISSIONS"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/androlua/LuaService;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public sendError(Ljava/lang/String;Ljava/lang/Exception;)V
    .locals 1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ": "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/androlua/LuaService;->sendMsg(Ljava/lang/String;)V

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

    iget-object v1, p0, Lcom/androlua/LuaService;->handler:Lcom/androlua/LuaService$MainHandler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    const-string v0, "lua"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public set(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

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
    iput-object p1, p0, Lcom/androlua/LuaService;->luaExtDir:Ljava/lang/String;

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

    iput-object v4, p0, Lcom/androlua/LuaService;->luaExtDir:Ljava/lang/String;

    :cond_2
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lcom/androlua/LuaService;->luaExtDir:Ljava/lang/String;

    if-nez v0, :cond_4

    invoke-virtual {p0, p1, v2}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object p1

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_4
    :goto_3
    new-instance p1, Ljava/io/File;

    iget-object v0, p0, Lcom/androlua/LuaService;->luaExtDir:Ljava/lang/String;

    invoke-direct {p1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_5

    invoke-virtual {p1}, Ljava/io/File;->mkdirs()Z

    :cond_5
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

.method public shareFile(Ljava/lang/String;)V
    .locals 3

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.SEND"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v1}, Lcom/androlua/LuaService;->getType(Ljava/io/File;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    const/4 p1, 0x1

    invoke-virtual {v0, p1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const-string p1, "android.intent.extra.STREAM"

    invoke-virtual {p0, v1}, Lcom/androlua/LuaService;->getUriForFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v0, p1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/androlua/LuaService;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public startActivity(Landroid/content/Intent;)V
    .locals 3

    if-nez p1, :cond_0

    return-void

    :cond_0
    const/high16 v0, 0x10000000

    invoke-virtual {p1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->resolveActivityInfo(Landroid/content/pm/PackageManager;I)Landroid/content/pm/ActivityInfo;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1f

    if-lt v1, v2, :cond_2

    :try_start_0
    iget-boolean v0, v0, Landroid/content/pm/ActivityInfo;->exported:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v0, :cond_2

    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_2
    invoke-super {p0, p1}, Landroid/accessibilityservice/AccessibilityService;->startActivity(Landroid/content/Intent;)V

    return-void

    :cond_3
    :goto_0
    invoke-super {p0, p1}, Landroid/accessibilityservice/AccessibilityService;->startActivity(Landroid/content/Intent;)V

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

    invoke-virtual {p0, p1, v0, v0}, Lcom/androlua/LuaService;->task(Lcom/luajava/LuaObject;Lcom/luajava/LuaObject;Lcom/luajava/LuaObject;)Lcom/androlua/LuaAsyncTask;

    move-result-object p1

    return-object p1
.end method

.method public task(Lcom/luajava/LuaObject;Lcom/luajava/LuaObject;)Lcom/androlua/LuaAsyncTask;
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p2}, Lcom/androlua/LuaService;->task(Lcom/luajava/LuaObject;Lcom/luajava/LuaObject;Lcom/luajava/LuaObject;)Lcom/androlua/LuaAsyncTask;

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

    invoke-virtual {p0, p1, v0}, Lcom/androlua/LuaService;->newThread(Lcom/luajava/LuaObject;[Ljava/lang/Object;)Lcom/androlua/LuaThread;

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

    new-instance v1, Lcom/androlua/LuaService$1;

    invoke-direct {v1, p0, p1}, Lcom/androlua/LuaService$1;-><init>(Lcom/androlua/LuaService;Lcom/luajava/LuaObject;)V

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

    invoke-virtual/range {v0 .. v6}, Lcom/androlua/LuaService;->timer(Lcom/luajava/LuaObject;JJ[Ljava/lang/Object;)Lcom/androlua/LuaTimer;

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

    invoke-virtual/range {v0 .. v6}, Lcom/androlua/LuaService;->timer(Lcom/luajava/LuaObject;JJ[Ljava/lang/Object;)Lcom/androlua/LuaTimer;

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

    invoke-virtual/range {v0 .. v6}, Lcom/androlua/LuaService;->timer(Lcom/luajava/LuaObject;JJ[Ljava/lang/Object;)Lcom/androlua/LuaTimer;

    move-result-object p1

    return-object p1
.end method
