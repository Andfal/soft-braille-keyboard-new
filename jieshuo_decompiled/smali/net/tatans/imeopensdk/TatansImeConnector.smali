.class public final Lnet/tatans/imeopensdk/TatansImeConnector;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/tatans/imeopensdk/TatansImeConnector$TatansImeCreateReceiver;,
        Lnet/tatans/imeopensdk/TatansImeConnector$TatansImeStateObserver;,
        Lnet/tatans/imeopensdk/TatansImeConnector$TatansImeConnection;
    }
.end annotation


# static fields
.field private static final ACTION_TATANS_IME_CREATE:Ljava/lang/String; = "tatans.open.action.IME_SERVICE_CREATE"

.field private static final ACTION_TATANS_IME_HIDE:Ljava/lang/String; = "tatans.open.action.IME_SERVICE_HIDE"

.field private static final ACTION_TATANS_IME_SHOW:Ljava/lang/String; = "tatans.open.action.IME_SERVICE_SHOW"

.field private static final IME_HIDE:I = 0x0

.field private static final IME_SHOW:I = 0x1

.field private static final INTENT_ACTION_IME_SERVICE:Ljava/lang/String; = "tatans.open.intent.action.IME_SERVICE"

.field private static final PACKAGE_TATANS_IME:Ljava/lang/String; = "com.tatans.inputmethod"

.field private static final TAG:Ljava/lang/String; = "TatansImeConnector"

.field private static final TATANS_IME_ARGS_URI:Landroid/net/Uri;


# instance fields
.field private connectingConnection:Lnet/tatans/imeopensdk/TatansImeConnector$TatansImeConnection;

.field private final context:Landroid/content/Context;

.field private hasRegister:Z

.field private imeConnection:Lnet/tatans/imeopensdk/TatansImeConnector$TatansImeConnection;

.field private imeOpenService:Lnet/tatans/imeopensdk/ITatansImeOpenService;

.field private imeReceiver:Lnet/tatans/imeopensdk/TatansImeConnector$TatansImeCreateReceiver;

.field private imeShowState:I

.field private final imeStateObserver:Lnet/tatans/imeopensdk/TatansImeConnector$TatansImeStateObserver;

.field private final lock:Ljava/lang/Object;

.field private screenReaderActor:Lnet/tatans/imeopensdk/ScreenReaderActor;

.field private final screenReaderController:Lnet/tatans/imeopensdk/IScreenReaderController;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroid/net/Uri$Builder;

    invoke-direct {v0}, Landroid/net/Uri$Builder;-><init>()V

    const-string v1, "content"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "com.tatans.inputmethod.providers.ImeOpenProvider"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "open_args"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->path(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lnet/tatans/imeopensdk/TatansImeConnector;->TATANS_IME_ARGS_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lnet/tatans/imeopensdk/TatansImeConnector;->lock:Ljava/lang/Object;

    const/4 v0, 0x0

    iput v0, p0, Lnet/tatans/imeopensdk/TatansImeConnector;->imeShowState:I

    iput-boolean v0, p0, Lnet/tatans/imeopensdk/TatansImeConnector;->hasRegister:Z

    new-instance v0, Lnet/tatans/imeopensdk/TatansImeConnector$1;

    invoke-direct {v0, p0}, Lnet/tatans/imeopensdk/TatansImeConnector$1;-><init>(Lnet/tatans/imeopensdk/TatansImeConnector;)V

    iput-object v0, p0, Lnet/tatans/imeopensdk/TatansImeConnector;->screenReaderController:Lnet/tatans/imeopensdk/IScreenReaderController;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lnet/tatans/imeopensdk/TatansImeConnector;->context:Landroid/content/Context;

    const-string v0, "TatansImeConnector"

    const-string v1, "init connector"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "tatans.open.action.IME_SERVICE_CREATE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    new-instance v1, Lnet/tatans/imeopensdk/TatansImeConnector$TatansImeCreateReceiver;

    invoke-direct {v1, p0}, Lnet/tatans/imeopensdk/TatansImeConnector$TatansImeCreateReceiver;-><init>(Lnet/tatans/imeopensdk/TatansImeConnector;)V

    iput-object v1, p0, Lnet/tatans/imeopensdk/TatansImeConnector;->imeReceiver:Lnet/tatans/imeopensdk/TatansImeConnector$TatansImeCreateReceiver;

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x1a

    if-lt v2, v3, :cond_0

    const/4 v2, 0x1

    invoke-static {p1, v1, v0, v2}, Lnet/tatans/imeopensdk/a;->a(Landroid/content/Context;Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;

    goto :goto_0

    :cond_0
    invoke-virtual {p1, v1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    :goto_0
    new-instance p1, Lnet/tatans/imeopensdk/TatansImeConnector$TatansImeStateObserver;

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    invoke-direct {p1, p0, v0}, Lnet/tatans/imeopensdk/TatansImeConnector$TatansImeStateObserver;-><init>(Lnet/tatans/imeopensdk/TatansImeConnector;Landroid/os/Handler;)V

    iput-object p1, p0, Lnet/tatans/imeopensdk/TatansImeConnector;->imeStateObserver:Lnet/tatans/imeopensdk/TatansImeConnector$TatansImeStateObserver;

    invoke-direct {p0}, Lnet/tatans/imeopensdk/TatansImeConnector;->registerTatansObserver()V

    return-void
.end method

.method static synthetic access$100(Lnet/tatans/imeopensdk/TatansImeConnector;)Lnet/tatans/imeopensdk/ScreenReaderActor;
    .locals 0

    iget-object p0, p0, Lnet/tatans/imeopensdk/TatansImeConnector;->screenReaderActor:Lnet/tatans/imeopensdk/ScreenReaderActor;

    return-object p0
.end method

.method static synthetic access$1000(Lnet/tatans/imeopensdk/TatansImeConnector;)Z
    .locals 0

    invoke-direct {p0}, Lnet/tatans/imeopensdk/TatansImeConnector;->connectToTatansIme()Z

    move-result p0

    return p0
.end method

.method static synthetic access$1100(Lnet/tatans/imeopensdk/TatansImeConnector;)V
    .locals 0

    invoke-direct {p0}, Lnet/tatans/imeopensdk/TatansImeConnector;->registerTatansObserver()V

    return-void
.end method

.method static synthetic access$200(Lnet/tatans/imeopensdk/TatansImeConnector;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lnet/tatans/imeopensdk/TatansImeConnector;->lock:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$302(Lnet/tatans/imeopensdk/TatansImeConnector;Lnet/tatans/imeopensdk/TatansImeConnector$TatansImeConnection;)Lnet/tatans/imeopensdk/TatansImeConnector$TatansImeConnection;
    .locals 0

    iput-object p1, p0, Lnet/tatans/imeopensdk/TatansImeConnector;->connectingConnection:Lnet/tatans/imeopensdk/TatansImeConnector$TatansImeConnection;

    return-object p1
.end method

.method static synthetic access$402(Lnet/tatans/imeopensdk/TatansImeConnector;Lnet/tatans/imeopensdk/TatansImeConnector$TatansImeConnection;)Lnet/tatans/imeopensdk/TatansImeConnector$TatansImeConnection;
    .locals 0

    iput-object p1, p0, Lnet/tatans/imeopensdk/TatansImeConnector;->imeConnection:Lnet/tatans/imeopensdk/TatansImeConnector$TatansImeConnection;

    return-object p1
.end method

.method static synthetic access$500(Lnet/tatans/imeopensdk/TatansImeConnector;)Lnet/tatans/imeopensdk/ITatansImeOpenService;
    .locals 0

    iget-object p0, p0, Lnet/tatans/imeopensdk/TatansImeConnector;->imeOpenService:Lnet/tatans/imeopensdk/ITatansImeOpenService;

    return-object p0
.end method

.method static synthetic access$502(Lnet/tatans/imeopensdk/TatansImeConnector;Lnet/tatans/imeopensdk/ITatansImeOpenService;)Lnet/tatans/imeopensdk/ITatansImeOpenService;
    .locals 0

    iput-object p1, p0, Lnet/tatans/imeopensdk/TatansImeConnector;->imeOpenService:Lnet/tatans/imeopensdk/ITatansImeOpenService;

    return-object p1
.end method

.method static synthetic access$600(Lnet/tatans/imeopensdk/TatansImeConnector;)Landroid/os/IBinder;
    .locals 0

    invoke-direct {p0}, Lnet/tatans/imeopensdk/TatansImeConnector;->getCallerIdentity()Landroid/os/IBinder;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$700(Lnet/tatans/imeopensdk/TatansImeConnector;)Lnet/tatans/imeopensdk/IScreenReaderController;
    .locals 0

    iget-object p0, p0, Lnet/tatans/imeopensdk/TatansImeConnector;->screenReaderController:Lnet/tatans/imeopensdk/IScreenReaderController;

    return-object p0
.end method

.method static synthetic access$800(Lnet/tatans/imeopensdk/TatansImeConnector;)V
    .locals 0

    invoke-direct {p0}, Lnet/tatans/imeopensdk/TatansImeConnector;->disconnect()V

    return-void
.end method

.method static synthetic access$900(Lnet/tatans/imeopensdk/TatansImeConnector;)V
    .locals 0

    invoke-direct {p0}, Lnet/tatans/imeopensdk/TatansImeConnector;->onTatansImeVisibleChanged()V

    return-void
.end method

.method private connectToTatansIme()Z
    .locals 4

    iget-object v0, p0, Lnet/tatans/imeopensdk/TatansImeConnector;->imeConnection:Lnet/tatans/imeopensdk/TatansImeConnector$TatansImeConnection;

    const/4 v1, 0x1

    if-nez v0, :cond_1

    iget-object v0, p0, Lnet/tatans/imeopensdk/TatansImeConnector;->connectingConnection:Lnet/tatans/imeopensdk/TatansImeConnector$TatansImeConnection;

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    new-instance v0, Lnet/tatans/imeopensdk/TatansImeConnector$TatansImeConnection;

    const/4 v2, 0x0

    invoke-direct {v0, p0, v2}, Lnet/tatans/imeopensdk/TatansImeConnector$TatansImeConnection;-><init>(Lnet/tatans/imeopensdk/TatansImeConnector;Lnet/tatans/imeopensdk/TatansImeConnector$1;)V

    new-instance v2, Landroid/content/Intent;

    const-string v3, "tatans.open.intent.action.IME_SERVICE"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v3, "com.tatans.inputmethod"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    :try_start_0
    iget-object v3, p0, Lnet/tatans/imeopensdk/TatansImeConnector;->context:Landroid/content/Context;

    invoke-virtual {v3, v2, v0, v1}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_1

    iput-object v0, p0, Lnet/tatans/imeopensdk/TatansImeConnector;->connectingConnection:Lnet/tatans/imeopensdk/TatansImeConnector$TatansImeConnection;

    :cond_1
    :goto_1
    return v1
.end method

.method private disconnect()V
    .locals 4

    iget-object v0, p0, Lnet/tatans/imeopensdk/TatansImeConnector;->lock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lnet/tatans/imeopensdk/TatansImeConnector;->connectingConnection:Lnet/tatans/imeopensdk/TatansImeConnector$TatansImeConnection;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    iget-object v3, p0, Lnet/tatans/imeopensdk/TatansImeConnector;->context:Landroid/content/Context;

    invoke-virtual {v3, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    iput-object v2, p0, Lnet/tatans/imeopensdk/TatansImeConnector;->connectingConnection:Lnet/tatans/imeopensdk/TatansImeConnector$TatansImeConnection;

    :cond_0
    iget-object v1, p0, Lnet/tatans/imeopensdk/TatansImeConnector;->imeConnection:Lnet/tatans/imeopensdk/TatansImeConnector$TatansImeConnection;

    if-eqz v1, :cond_1

    iget-object v3, p0, Lnet/tatans/imeopensdk/TatansImeConnector;->context:Landroid/content/Context;

    invoke-virtual {v3, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    iput-object v2, p0, Lnet/tatans/imeopensdk/TatansImeConnector;->imeConnection:Lnet/tatans/imeopensdk/TatansImeConnector$TatansImeConnection;

    :cond_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private getCallerIdentity()Landroid/os/IBinder;
    .locals 2

    iget-object v0, p0, Lnet/tatans/imeopensdk/TatansImeConnector;->lock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lnet/tatans/imeopensdk/TatansImeConnector;->imeOpenService:Lnet/tatans/imeopensdk/ITatansImeOpenService;

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    invoke-interface {v1}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    return-object v0

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method private isValid()Z
    .locals 1

    iget-object v0, p0, Lnet/tatans/imeopensdk/TatansImeConnector;->imeConnection:Lnet/tatans/imeopensdk/TatansImeConnector$TatansImeConnection;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnet/tatans/imeopensdk/TatansImeConnector;->imeOpenService:Lnet/tatans/imeopensdk/ITatansImeOpenService;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private onTatansImeVisibleChanged()V
    .locals 10

    const-string v0, "TatansImeConnector"

    sget-object v1, Lnet/tatans/imeopensdk/TatansImeConnector;->TATANS_IME_ARGS_URI:Landroid/net/Uri;

    const-wide/16 v2, 0x1

    invoke-static {v1, v2, v3}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v5

    :try_start_0
    iget-object v1, p0, Lnet/tatans/imeopensdk/TatansImeConnector;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v5, v3}, Landroid/content/Context;->grantUriPermission(Ljava/lang/String;Landroid/net/Uri;I)V

    iget-object v1, p0, Lnet/tatans/imeopensdk/TatansImeConnector;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {v4 .. v9}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-lez v2, :cond_1

    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    const-string v2, "isImeShow"

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    if-lez v2, :cond_1

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "get tatans ime show state = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget v2, p0, Lnet/tatans/imeopensdk/TatansImeConnector;->imeShowState:I

    if-eq v1, v2, :cond_1

    iput v1, p0, Lnet/tatans/imeopensdk/TatansImeConnector;->imeShowState:I

    if-nez v1, :cond_0

    invoke-direct {p0}, Lnet/tatans/imeopensdk/TatansImeConnector;->disconnect()V

    goto :goto_0

    :cond_0
    if-ne v1, v3, :cond_1

    invoke-direct {p0}, Lnet/tatans/imeopensdk/TatansImeConnector;->connectToTatansIme()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    return-void
.end method

.method private registerTatansObserver()V
    .locals 5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "registerTatansObserver = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lnet/tatans/imeopensdk/TatansImeConnector;->hasRegister:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TatansImeConnector"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v0, p0, Lnet/tatans/imeopensdk/TatansImeConnector;->hasRegister:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    :try_start_0
    sget-object v0, Lnet/tatans/imeopensdk/TatansImeConnector;->TATANS_IME_ARGS_URI:Landroid/net/Uri;

    const-wide/16 v2, 0x1

    invoke-static {v0, v2, v3}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    iget-object v2, p0, Lnet/tatans/imeopensdk/TatansImeConnector;->context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    iget-object v3, p0, Lnet/tatans/imeopensdk/TatansImeConnector;->imeStateObserver:Lnet/tatans/imeopensdk/TatansImeConnector$TatansImeStateObserver;

    const/4 v4, 0x0

    invoke-virtual {v2, v0, v4, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lnet/tatans/imeopensdk/TatansImeConnector;->hasRegister:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method


# virtual methods
.method public commitText(Ljava/lang/String;)Z
    .locals 2

    invoke-direct {p0}, Lnet/tatans/imeopensdk/TatansImeConnector;->isValid()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnet/tatans/imeopensdk/TatansImeConnector;->lock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lnet/tatans/imeopensdk/TatansImeConnector;->imeOpenService:Lnet/tatans/imeopensdk/ITatansImeOpenService;

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    :try_start_1
    invoke-direct {p0}, Lnet/tatans/imeopensdk/TatansImeConnector;->getCallerIdentity()Landroid/os/IBinder;

    move-result-object v0

    invoke-interface {v1, v0, p1}, Lnet/tatans/imeopensdk/ITatansImeOpenService;->commitText(Landroid/os/IBinder;Ljava/lang/String;)Z

    move-result p1
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    return p1

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    :catchall_0
    move-exception p1

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1

    :cond_0
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method public delete()Z
    .locals 2

    invoke-direct {p0}, Lnet/tatans/imeopensdk/TatansImeConnector;->isValid()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnet/tatans/imeopensdk/TatansImeConnector;->lock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lnet/tatans/imeopensdk/TatansImeConnector;->imeOpenService:Lnet/tatans/imeopensdk/ITatansImeOpenService;

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    :try_start_1
    invoke-direct {p0}, Lnet/tatans/imeopensdk/TatansImeConnector;->getCallerIdentity()Landroid/os/IBinder;

    move-result-object v0

    invoke-interface {v1, v0}, Lnet/tatans/imeopensdk/ITatansImeOpenService;->delete(Landroid/os/IBinder;)Z

    move-result v0
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    return v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    :catchall_0
    move-exception v1

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    :cond_0
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method public deleteAll()Z
    .locals 2

    invoke-direct {p0}, Lnet/tatans/imeopensdk/TatansImeConnector;->isValid()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnet/tatans/imeopensdk/TatansImeConnector;->lock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lnet/tatans/imeopensdk/TatansImeConnector;->imeOpenService:Lnet/tatans/imeopensdk/ITatansImeOpenService;

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    :try_start_1
    invoke-direct {p0}, Lnet/tatans/imeopensdk/TatansImeConnector;->getCallerIdentity()Landroid/os/IBinder;

    move-result-object v0

    invoke-interface {v1, v0}, Lnet/tatans/imeopensdk/ITatansImeOpenService;->deleteAll(Landroid/os/IBinder;)Z

    move-result v0
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    return v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    :catchall_0
    move-exception v1

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    :cond_0
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method public isInputViewShow()Z
    .locals 3

    invoke-direct {p0}, Lnet/tatans/imeopensdk/TatansImeConnector;->isValid()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lnet/tatans/imeopensdk/TatansImeConnector;->lock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v2, p0, Lnet/tatans/imeopensdk/TatansImeConnector;->imeOpenService:Lnet/tatans/imeopensdk/ITatansImeOpenService;

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v2, :cond_1

    goto :goto_0

    :cond_1
    :try_start_1
    invoke-direct {p0}, Lnet/tatans/imeopensdk/TatansImeConnector;->getCallerIdentity()Landroid/os/IBinder;

    move-result-object v0

    invoke-interface {v2, v0}, Lnet/tatans/imeopensdk/ITatansImeOpenService;->isInputViewShown(Landroid/os/IBinder;)Z

    move-result v1
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    :goto_0
    return v1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    return v1

    :catchall_0
    move-exception v1

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public selectPreviousOrNextCandidates(Z)Z
    .locals 3

    invoke-direct {p0}, Lnet/tatans/imeopensdk/TatansImeConnector;->isValid()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lnet/tatans/imeopensdk/TatansImeConnector;->lock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v2, p0, Lnet/tatans/imeopensdk/TatansImeConnector;->imeOpenService:Lnet/tatans/imeopensdk/ITatansImeOpenService;

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v2, :cond_1

    goto :goto_0

    :cond_1
    :try_start_1
    invoke-direct {p0}, Lnet/tatans/imeopensdk/TatansImeConnector;->getCallerIdentity()Landroid/os/IBinder;

    move-result-object v0

    invoke-interface {v2, v0, p1}, Lnet/tatans/imeopensdk/ITatansImeOpenService;->selectPreviousOrNextCandidatas(Landroid/os/IBinder;Z)Z

    move-result v1
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    :goto_0
    return v1

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    return v1

    :catchall_0
    move-exception p1

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method

.method public setScreenReaderActor(Lnet/tatans/imeopensdk/ScreenReaderActor;)V
    .locals 0

    iput-object p1, p0, Lnet/tatans/imeopensdk/TatansImeConnector;->screenReaderActor:Lnet/tatans/imeopensdk/ScreenReaderActor;

    return-void
.end method

.method public shutdown()V
    .locals 2

    iget-object v0, p0, Lnet/tatans/imeopensdk/TatansImeConnector;->imeReceiver:Lnet/tatans/imeopensdk/TatansImeConnector$TatansImeCreateReceiver;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lnet/tatans/imeopensdk/TatansImeConnector;->context:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lnet/tatans/imeopensdk/TatansImeConnector;->imeReceiver:Lnet/tatans/imeopensdk/TatansImeConnector$TatansImeCreateReceiver;

    :cond_0
    const-string v0, "TatansImeConnector"

    const-string v1, "shutdown"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lnet/tatans/imeopensdk/TatansImeConnector;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lnet/tatans/imeopensdk/TatansImeConnector;->imeStateObserver:Lnet/tatans/imeopensdk/TatansImeConnector$TatansImeStateObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lnet/tatans/imeopensdk/TatansImeConnector;->hasRegister:Z

    return-void
.end method
