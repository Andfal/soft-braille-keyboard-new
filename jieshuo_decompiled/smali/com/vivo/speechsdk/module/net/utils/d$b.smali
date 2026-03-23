.class Lcom/vivo/speechsdk/module/net/utils/d$b;
.super Landroid/telephony/PhoneStateListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vivo/speechsdk/module/net/utils/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "b"
.end annotation


# static fields
.field public static a:I

.field public static b:I

.field public static c:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/telephony/PhoneStateListener;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/util/concurrent/Executor;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/telephony/PhoneStateListener;-><init>(Ljava/util/concurrent/Executor;)V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    sget v0, Lcom/vivo/speechsdk/module/net/utils/d$b;->b:I

    if-eqz v0, :cond_1

    sget v1, Lcom/vivo/speechsdk/module/net/utils/d$b;->a:I

    if-eqz v1, :cond_1

    sget v1, Lcom/vivo/speechsdk/module/net/utils/d$b;->c:I

    if-eqz v1, :cond_1

    invoke-static {v0}, Lcom/vivo/speechsdk/module/net/utils/d;->a(I)I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    sget v0, Lcom/vivo/speechsdk/module/net/utils/d$b;->c:I

    sget v1, Lcom/vivo/speechsdk/module/net/utils/d$b;->a:I

    sget v2, Lcom/vivo/speechsdk/module/net/utils/d$b;->b:I

    invoke-static {v0, v1, v2}, Lcom/vivo/speechsdk/module/net/utils/d;->a(III)V

    goto :goto_0

    :cond_0
    sget v0, Lcom/vivo/speechsdk/module/net/utils/d$b;->a:I

    sget v1, Lcom/vivo/speechsdk/module/net/utils/d$b;->b:I

    const/4 v2, 0x1

    invoke-static {v2, v0, v1}, Lcom/vivo/speechsdk/module/net/utils/d;->a(III)V

    :cond_1
    :goto_0
    return-void
.end method

.method public a(I)V
    .locals 0

    sput p1, Lcom/vivo/speechsdk/module/net/utils/d$b;->a:I

    return-void
.end method

.method public onDataConnectionStateChanged(II)V
    .locals 0

    invoke-super {p0, p1, p2}, Landroid/telephony/PhoneStateListener;->onDataConnectionStateChanged(II)V

    sput p2, Lcom/vivo/speechsdk/module/net/utils/d$b;->b:I

    return-void
.end method

.method public onSignalStrengthsChanged(Landroid/telephony/SignalStrength;)V
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_0

    if-eqz p1, :cond_0

    invoke-static {p1}, Lcom/vivo/speechsdk/module/net/utils/h;->a(Landroid/telephony/SignalStrength;)I

    move-result p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x4

    :goto_0
    sget v0, Lcom/vivo/speechsdk/module/net/utils/d$b;->c:I

    if-eq p1, v0, :cond_1

    sput p1, Lcom/vivo/speechsdk/module/net/utils/d$b;->c:I

    invoke-virtual {p0}, Lcom/vivo/speechsdk/module/net/utils/d$b;->a()V

    :cond_1
    return-void
.end method
